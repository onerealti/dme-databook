---
name: dme-databook-author
description: Expert skill for creating, formatting, and compiling Typst mechanical engineering data books from example solutions markdown files, enforcing landscape 2-column layout standards, single-page overflow guardrails, perpendicular side headers, strict math notation rules, and 1-to-1 label-formula alignment.
---

# DME Databook Typst Authoring Skill Guide

This document defines the authoritative, standardized engineering protocol for transforming raw Mechanical Engineering solved problems (e.g., `examples_solutions.md`) into production-grade **Typst Design Data Books** (`.typ` documents).

---

## 1. Document Architecture & Page Setup

### 1.1 Page Geometry & Margins
- **Paper**: A4 Portrait (`paper: "a4", flipped: false`).
- **Margins**: `top: 35pt, bottom: 35pt, left: 35pt, right: 35pt`. Balanced 35pt left/right margins center the document grid while providing clearance for the vertical binder side header (`dx: 14pt, dy: 25pt`).
- **Headers/Footers**: `header: none, footer: none`. Standard horizontal footers are eliminated.

### 1.2 Perpendicular Side-Margin Header & Page Counter
A rotated (90°) side header anchors inside the left margin using a background context placement.

The header title is a **document-level variable**, not a literal string — this same boilerplate is reused across every databook topic (fasteners, springs, shafts, keys, welded joints, etc.), so the topic name must be set once at the top of the file and referenced, never hardcoded inside the page-setup block.

```typst
// Set once near the top of every databook file, before #set page(...):
#let databook-title = "DESIGN DATA BOOK — SCREWED JOINTS & FASTENERS"

#set page(
  paper: "a4",
  flipped: false,
  margin: (top: 35pt, bottom: 35pt, left: 35pt, right: 35pt),
  header: none,
  footer: none,
  background: context {
    place(
      top + left,
      dx: 14pt,
      dy: 25pt,
      rotate(
        90deg,
        origin: top + left,
        block(width: 750pt)[
          #grid(
            columns: (1fr, auto),
            align: (left + horizon, right + horizon),
            [#text(fill: rgb("#000000"), size: 9.5pt, weight: "bold")[#databook-title]],
            [#text(fill: rgb("#000000"), weight: "bold", size: 9.5pt)[Page #counter(page).display("1 of 1", both: true)]]
          )
          #v(2.5pt)
          #line(length: 100%, stroke: 1.2pt + rgb("#000000"))
        ]
      )
    )
  }
)
```

> When starting a new topic databook, change only the `databook-title` value — never edit the string inside the `background:` block directly.

### 1.3 Global Typography & Show Rules
These global rules MUST appear immediately after the `#set page(...)` block in every databook `.typ` file.

```typst
#set text(font: ("Times New Roman", "Georgia"), size: 10pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.85em)
#show math.equation: set block(spacing: 16pt)
#show math.equation.where(block: true): it => align(left, it)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))
```

### 1.4 Out-of-Frame Layout & Overflow Prevention Protocol

To guarantee content is never clipped, rendered off-screen, or spilled past printable margins, enforce these 5 structural frame boundary rules across all `.typ` databooks:

1. **Balanced Page Margins (`left: 40pt, right: 40pt`)**:
   Setting equal `40pt` left and right margins centers the document body symmetrically on the A4 landscape sheet, preventing right-justification bias while leaving ample space for the vertical binder side header (`dx: 16pt`).

2. **Bounded Rotated Header Clearance (`width: 500pt`, `dy: 25pt`)**:
   The rotated side header block length is strictly capped (`width: 500pt` at `dy: 25pt`). This guarantees a minimum 40pt+ safety buffer above the bottom page edge so rotated text never clips past the bottom margin.

3. **Line-1 `&=` Math Alignment Point**:
   Every multi-line equation block MUST place its alignment point (`&=`) on Line 1 directly after the primary target variable (e.g. `#text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(p - d) t dot sigma_t$] \`). Never write an unaligned first line above subsequent `&=` lines — doing so forces Typst to align all `&=` points at the far right end of the top line, pushing the entire calculation block out of frame past the right margin.

4. **Global Image Fitting & Height Limits**:
   All mechanical diagrams must use `#show image: set image(fit: "contain")` and explicit container height constraints (`340pt` or `420pt` max height, `85%` max width). This forces image rendering to stay 100% inside printable page boundaries without driving captions or headers out of frame.

5. **Centered 50/50 Auto-Fitting Column Grids**:
   Item rows must specify equal fractional column widths (`columns: (1fr, 1fr)`) with symmetric cell padding (`inset: (left: 8pt, right: 8pt)`), centering the vertical divider line and balancing content across both halves of the page.

---

## 2. Extraction & Authoring Workflow from `examples_solutions.md`

When converting solved engineering examples from `examples_solutions.md` into Typst databook sections, strictly follow this extraction mapping:

| Raw Problem Component | Typst Target Component | Conversion & Extraction Rule |
| :--- | :--- | :--- |
| **Given Data & Operating Parameters** | `#section-overview(sys-params, ...)` | Convert raw inputs ($D, p, \sigma_t, \tau, n$) into bold parameter list in `System Parameters`. |
| **Design Objective / Method Steps** | `#section-overview(..., design-proto)` | Extract high-level engineering protocol steps into `Design Protocol`. |
| **Individual Solved Equations** | `#item-row(left-desc, right-math)` | Create a dedicated `#item-row` for **each** specific formula so that its title sits in `left-desc` and its math sits in `right-math`. |
| **Intermediate Textbook Conclusions** | `#item-row([*N. Selected Bolt*], [*Size = M 24*])` | When the textbook states an intermediate answer (e.g., "Size of Bolt = M 24 Ans.", "Adopt t = 10 mm"), add it as its own standalone `#item-row`. |
| **Problem Figure / Diagram** | `#figure-page(sec-num, ...)` | Append dedicated figure page with constrained image height (`420pt`, `fit: "contain"`). |
| **Final Answer / Sized Fastener** | `[*Design Output*]` | Add explicit design result row summarizing chosen fastener size, count, or plate dimensions. |

---

## 3. Reusable Component Definitions

### 3.1 Custom Section Header (`section-heading`)
```typst
#let section-heading(sec-num, title) = {
  v(4pt)
  text(weight: "bold", size: 18pt)[SECTION #sec-num: #title]
  v(2pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(6pt)
}
```

### 3.2 Unboxed Section Overview (`section-overview`)
Stacked system parameters and design protocol without borders or background boxes.

```typst
#let section-overview(sys-params, design-proto) = {
  v(2pt)
  sys-params
  v(3pt)
  design-proto
  v(4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(6pt)
}
```

### 3.3 Parallel 2-Column Item Row (`item-row`) — 50/50 centered grid & symmetric inset
Open 2-column split with a thin vertical center divider line (`0.5pt`).

```typst
#let item-row(left-desc, right-math) = {
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    stroke: (x, y) => if x == 0 { (right: 0.5pt + rgb("#aaaaaa")) },
    inset: (left: 8pt, right: 8pt),
    align: (left + top, left + top),
    [#left-desc],
    [#right-math]
  )
  v(3pt)
  line(length: 100%, stroke: 0.3pt + rgb("#cccccc"))
}
```

### 3.1 Section Heading Component (`section-heading`)
Every section starting from Section 2 automatically begins on a new page.

```typst
#let section-heading(sec-num, title) = {
  if sec-num != "1" { pagebreak() }
  v(4pt)
  text(weight: "bold", size: 13.5pt)[SECTION #sec-num: #title]
  v(2.5pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(5pt)
}
```

### 3.4 Mechanical Diagram Container (`figure-page`)
Mechanical diagrams flow inline within section content inside a non-breakable container (`breakable: false`). Compact image sizing (`width: 70%, height: 200pt`) ensures diagrams fit cleanly on the section page.

```typst
#let figure-page(sec-num, title, fig-path, caption) = {
  v(4pt)
  block(width: 100%, breakable: false)[
    #align(center)[
      #image(fig-path, width: 70%, height: 200pt, fit: "contain")
      #v(3pt)
      #text(weight: "bold", size: 9.5pt)[#caption]
    ]
  ]
  v(4pt)
}
```
```

> If two diagrams must appear together for direct visual comparison (rare — e.g., before/after load states of the same part), that is a deliberate exception to this rule and must be justified in an authoring note above the call; do not silently branch the shared component to support it.

---

## 4. Mandatory Formatting & Mathematical Rules

### Rule 1: Strict Single Equals (`=`) Sign Per Line
- **CRITICAL**: Never place 2 or more `=` signs on the same line in math blocks.
- Every intermediate evaluation or substitution step MUST be on its own line using `\`.

```typst
// INCORRECT (FORBIDDEN):
$ W_s = W / n = 12000 / 4 = 3000 "N" $

// CORRECT (ENFORCED):
$
  W_s &= W / n \
  &= 12000 / 4 \
  &= 3000 "N"
$
```

### Rule 2: Strict Left/Right Column Separation (1-to-1 Label Alignment)
- **Left Column (`left-desc`)**: Must contain **only** step titles (e.g. `[*1. Pitch Circle Diameter ($D_p$)*]`) and qualitative descriptions. ALL mathematical formulas and calculations are strictly forbidden in the left column.
- **Right Column (`right-math`)**: Must contain **all** mathematical expressions, variable assignments, equations, numerical substitutions, and final answers.
- **1-to-1 Alignment**: Split multi-formula steps into individual `#item-row` calls so that every specific calculation has its dedicated left-side label directly beside it.

```typst
#item-row(
  [*3. Resisting Force per Bolt ($P_1$)* \ Capacity per M 24 bolt ($d_c = 20.32 "mm"$)],
  [$
    #text(size: 20pt)[$P_1$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_("tb")$] \
    &= pi/4 (20.32)^2 times 40 \
    &= 12973 "N"
  $]
)

#item-row(
  [*4. Required Bolt Count ($n$)* \ Number of M 24 fixing bolts required],
  [$
    #text(size: 20pt)[$n$] &= #text(size: 20pt)[$P / P_1$] \
    &= 67860 / 12973 \
    &= 5.23 \
    &=> bold(n = 6 "bolts")
  $]
)
```

### Rule 3: Formula → Substitution → Answer Derivation Pattern — No Intermediate Simplification Lines

Every solved equation follows this fixed sequence of stages, though the number of lines within the substitution/derivation stage varies with the equation's complexity:
1. **Formula stage**: `#text(size: 20pt)[$P = ...$]` — the governing formula at 20pt (always one line).
2. **Substitution/derivation stage**: values plugged in and, if the formula must be rearranged to isolate the target variable, the rearrangement step(s) (`X &= formula_with_numbers`, `target^n &= ...`). Use as many lines as the algebra genuinely requires — do not force this into a single line, and do not pad it with redundant restatements.
3. **Answer stage**: the solved variable (`var &= result "unit"`), then `&=> adopted` on its own line if rounding or selecting a standard size.

**FORBIDDEN**: lines that merely restate an already-simplified expression without progressing the derivation — `&= simplified_product` lines inserted between substitution and solve that add no new information:
- `&= 39.3 d^2` (RHS numeric simplification before rearranging, when the next line already does the rearranged division)
- `&= 1540 b`, `&= 3380 sigma_t`, `&= 4248 tau` (product expansion before dividing, when it duplicates the following line's work)

**CORRECT (formula, substitution+rearrangement, answer):**
```typst
$
  #text(size: 20pt)[$P = pi/4 d^2 dot sigma_t$] \
  30000 &= pi/4 d^2 (50) \
  d^2 &= 30000 / 39.3 \
  d &= 27.6 "mm" \
  &=> d = 28 "mm"
$
```

**INCORRECT (redundant intermediate — forbidden):**
```typst
$
  #text(size: 20pt)[$P = pi/4 d^2 dot sigma_t$] \
  30000 &= pi/4 d^2 (50) \
  &= 39.3 d^2 \              // ← REMOVE: adds nothing, next line already isolates d^2
  d^2 &= 30000 / 39.3 \
  d &= 27.6 "mm" \
  &=> d = 28 "mm"
$
```

**Lines that ARE kept** (they progress the derivation, not restate it):
- `&= 35.7 "mm"` after `d &= sqrt(1273)` — this IS the answer.
- `&= 0.55 times 65` after `#text(size: 20pt)[$b_1 = 0.55 B$]` — the substitution step.
- `&= 35.75 "mm"` after `&= 0.55 times 65` — result of that substitution.

### Rule 4: Multi-Character Subscript Quoting
- In Typst, multi-character math subscripts MUST be quoted inside double quotes `"..."` or wrapped in parentheses to prevent syntax parsing errors.

```typst
// INCORRECT:
$ sigma_tb, P_max, bolt, d_c, std $

// CORRECT:
$ sigma_("tb"), P_("max, bolt"), d_("c, std") $
```

### Rule 5: Reference Tables Must Be Stacked Sequentially
- Reference data tables (e.g., Table 11.1 Coarse, Table 11.1 Fine, Table 11.2) must be placed **one after another on separate pages**, never side-by-side in a grid.
- Each reference page gets its own `#pagebreak()` and `#section-heading("REF N", ...)`.
- This same "one page, one item" philosophy applies to figures — see the note under §3.4.

```typst
// INCORRECT (FORBIDDEN):
#grid(columns: (1fr, 1fr), [Table 11.1 Coarse], [Table 11.1 Fine])

// CORRECT (ENFORCED):
#pagebreak()
#section-heading("REF 1", "Table 11.1 — Coarse Series")
#table(...)

#pagebreak()
#section-heading("REF 2", "Table 11.1 — Fine Series & Table 11.2")
#table(...)
```

### Rule 6: Primary Formula Sizing & `&=` Alignment Hierarchy
- **CRITICAL SIZING & ALIGNMENT HIERARCHY**:
  1. **Primary Governing Formula (TOP Line)**: MUST place the alignment point (`&=`) on the top line directly after the target variable: `#text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \`.
  2. **Calculation Content & Answers (Subsequent Lines)**: Intermediate numerical substitutions, evaluation steps, and answer values MUST remain standard size (15pt) and align under the same `&=`.

```typst
// CORRECT: &= is placed on line 1 right after $P$
$
  #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
  &= pi/4 (120)^2 times 6 \
  &= 67860 "N"
$
```

> **CRITICAL ALIGNMENT WARNING**: Never write `#text(size: 20pt)[$P = pi/4 D^2 dot p$] \` with a plain `=` on the first line above subsequent `&=` lines. Writing an unaligned first line forces Typst to align all `&=` points at the far right end of the top line, pushing the entire calculation block out of frame past the right margin. Always place `&=` on the first line after the variable.

### Rule 7: Explicit Intermediate Design Conclusions
- When the textbook solution includes an intermediate conclusion (e.g., "Size of Bolt = M 24", "Adopt Shell Thickness t = 10 mm"), it MUST appear as its **own dedicated `#item-row`** with a descriptive left-side label.
- Do NOT merge these into the final "Design Output" row; they are verification milestones that belong inline at the point in the solution where the textbook states them.

```typst
#item-row(
  [*10. Selected Bolt Designation* \ Pitch is within acceptable limits],
  [*Size of Bolt = M 24 Fasteners ($d = 24 "mm", d_c = 20.32 "mm"$)*]
)
```

### Rule 8: Dedicated Single-Figure Pages & Section Number Matching
- Every schematic diagram, structural detail, or force distribution vector plot MUST be placed on its own dedicated `#figure-page` call with container bounds `width: 85%, height: 420pt`.
- **CRITICAL**: The `sec-num` argument passed to `#figure-page(sec-num, ...)` MUST strictly match the Section number of the preceding item rows (e.g., `#figure-page("9", ...)` for Section 9). Never copy-paste hardcoded section strings.

### Rule 9: Strict Native Typst Math Symbols (No TeX Backslashes)
- **CRITICAL**: Never use LaTeX/TeX backslashes inside Typst equation blocks or bracketed content labels (`[*...*]`).
- In Typst, a backslash is the line-break / escape character, not a command prefix like in TeX. Writing `\theta` is parsed as an escaped `t` followed by the bare text `heta` — Typst never sees a symbol named `theta`, so it reports something like `unknown variable: heta`. The failure is a parsing/escaping issue, not a tab-character issue.
- Always use native Typst math symbols instead of TeX macros:
  - `theta` instead of `\theta`
  - `tau` instead of `\tau`
  - `sigma` instead of `\sigma`
  - `overline(y)` instead of `\bar{y}`

### Rule 10: Unified Section Mapping (1 Textbook Example = 1 Section)
- **CRITICAL**: Each complete textbook solved problem MUST map 1-to-1 with a single Databook Section number (`SECTION 1`, `SECTION 2`, ...).
- Do NOT split multi-part comprehensive problems (e.g., Part 1 Screw, Part 2 Nut, Part 3 Handle, Part 4 Body) into separate section numbers.
- Consolidate all subsystem parts continuously within that single unified section using sequential item rows (`1.`, `2.`, ..., `25.`).

### Rule 11: Clean Text Formatting in Summary & Header Blocks
- In bracketed text mode (`[*...*]`), avoid placing complex inline math blocks containing commas or quotes.
- In Typst text mode, `%` acts as a line comment starter unless written in clean text strings.
- Design output summary rows MUST use clean plain text (e.g., `[*Screw Jack Summary: do = 46 mm, dc = 38 mm, Efficiency eta = 15.4%*]`).

### Rule 12: Multiline Selection Callouts & Vertical Empirical Proportions (No Inline Overflow)
- **CRITICAL**: Fastener selections, bolt choices (`&=> bold("Select M 12 Bolts")`), or size adoptions MUST be placed on a **dedicated new line** using `\` inside math blocks:
  ```typst
  // CORRECT (Zero Horizontal Overflow):
  d_1 &= 11.25 "mm" \
  &=> bold("Select M 12 Bolts")

  // INCORRECT (Pushes text past right page margin):
  d_1 &= 11.25 "mm" quad &=> bold("Select M 12 Bolts")
  ```
- **Vertical Empirical Proportions**: Never chain empirical dimensions horizontally with `quad`. Every empirical dimension ($d_1, d_2, d_3, t, t_1, t_2$) MUST be vertically aligned line-by-line with `&=`, and each formula and its result on **separate lines** (Rule 1 compliance):
  ```typst
  // CORRECT — single = per line, formula and result separated:
  d_1 &= d \
  &= 52 "mm" \
  d_2 &= 2 d \
  &= 104 "mm" \
  d_3 &= 1.5 d \
  &= 78 "mm" \
  t &= 1.25 d \
  &= 65 "mm" \
  t_1 &= 0.75 d \
  &= 40 "mm" \
  t_2 &= 0.5 d \
  &= 26 "mm"

  // INCORRECT — two = signs on one line (violates Rule 1):
  d_1 &= d = 52 "mm" \
  d_2 &= 2 d = 104 "mm" \
  ```

### Rule 13: Native Tool Usage Discipline
- Do NOT generate or execute scratch Python scripts for viewing, editing, or auditing databook files.
- Use workspace native tools (`view_file`, `replace_file_content`, `grep_search`, `list_dir`) exclusively to inspect and modify `.typ` files.

### Rule 14: Strict Bolding Policy & No Artificial `(Ans.)` Annotations
- **FORBIDDEN**: Never append `(Ans.)` or `bold("(Ans.)")` to any equation line, result string, or calculation output. Keep all math and values completely clean without artificial suffix markers.
- **Bolding Policy**:
  - Do NOT bold arbitrary intermediate variables, calculations, or un-selected numbers.
  - ONLY bold standard adopted dimensions/selected sizes (e.g. `d = 50 "mm"`), safety status evaluations (`"(SAFE)"`, `"(UNSAFE)"`), and step title headers.

### Rule 15: Document-Level Title Variable
- The rotated side-header title (§1.2) MUST be set via a single `#let databook-title = "..."` declaration near the top of the file and referenced with `#databook-title` inside the page-setup block.
- Never hardcode the topic name as a literal string inside the `background:` block — doing so means the boilerplate silently carries over the wrong topic title when reused for a new databook (e.g., springs, shafts, keys, welded joints).

---

## 5. Single-Page Overflow Guardrails

To guarantee 100% protection against vertical or horizontal content spillover:

1. **Global Image Fitting**:
   ```typst
   #show image: set image(fit: "contain")
   ```
2. **Constrained Figure Heights**:
   - Every figure page: `height: 420pt`, `width: 85%` (see §3.4 — one diagram per page, no dual-figure variant).
3. **Table Widths**:
   - Use fractional column widths `columns: (1fr, 1fr, ...)` so tables automatically span `100%` of printable width without horizontal clipping.
4. **Tuned Vertical Spacing**:
   - Set `#show math.equation: set block(spacing: 8pt)`.
   - Set `#set text(size: 15pt)` with `#set par(leading: 0.9em)`.
   - Item row vertical padding: `v(3pt)`.

---

## 6. Pre-Flight Verification Checklist for Agents

Before completing any `.typ` databook document, perform this 8-point verification:

- [ ] **1. Clean Compilation**: Execute `typst compile file.typ` and verify zero errors/warnings.
- [ ] **2. Single Equals + No Redundant Intermediates Check**: Audit ALL math blocks for:
  - No line contains more than one `=` sign (including lines outside `#text(size: 20pt)[...]`).
  - No `&= simplified_product` line exists that merely restates an already-simplified expression without progressing the derivation (e.g. `&= 39.3 d^2` immediately followed by a line doing the same division again).
  - `#text(size: 20pt)[$formula$]` lines must NOT have extra `= value` appended after the closing `]`.
- [ ] **3. 1-to-1 Label Alignment**: Confirm every formula step has a dedicated left-side label in its own `#item-row`.
- [ ] **4. Column Scoping**: Verify zero math expressions sit in `left-desc` (all math must be in `right-math`).
- [ ] **5. Page Bounds Check**: Verify each section's items fit on 1 landscape page without spilling vertically or horizontally.
- [ ] **6. Section Parameter Check**: Verify every `#figure-page(sec-num, ...)` call's section string strictly matches the active Section number, and that every figure is on its own dedicated page.
- [ ] **7. Subscript & Text Quoting**: Confirm multi-character subscripts (`$sigma_("tb")$`) and text strings in math (`"Text"`) are quoted.
- [ ] **8. Intermediate Conclusions & Title Variable**: Verify that textbook intermediate answers (e.g., "Size of Bolt = M 24", "Adopt t = 10 mm") appear as standalone `#item-row` entries, not merged into the final Design Output — and that the side header uses `#databook-title` rather than a hardcoded topic string.

---

## 7. Common Errors & Pitfalls to Avoid

| Pitfall / Error | Cause | Correct Typst Solution |
| :--- | :--- | :--- |
| `error: unknown variable` | Backslash before a symbol name inside math `$ ... $` is parsed as an escape, not a command prefix (e.g. `\theta` → escaped `t` + bare text `heta`) | Use the native Typst symbol name directly: `theta`, not `\theta` |
| Unquoted text string inside math | Bare words in `$ ... $` are parsed as variables | Wrap text in quotes: `"Fine thread: M 20"` |
| `&times` invalid syntax | Using HTML entities inside Typst math | Use native Typst symbol: `times` or `dot` |
| `\ \` multi-line breaks | Double backslash inserts blank math line | Use single backslash `\` for line breaks |
| Multiple `=` on 1 line | Violates single equals sign rule | Break every `=` onto its own line with `\` |
| Math in `left-desc` | Violates left/right column separation | Move ALL math expressions to `right-math` |
| Image overflow into margin | Unconstrained image height | Specify `height: 420pt` and `fit: "contain"` |
| Header split onto page 2 | `section-heading` separated from figure | Wrap inside `block(breakable: false)[...]` |
| Tables (or figures) side-by-side | Reference tables/figures placed in `#grid` | Stack sequentially with `#pagebreak()` between each |
| Missing enlarged formula | Primary variable not visually prominent | Use `#text(size: 20pt)[...]` on first equation line |
| Wrong topic title in side header | Topic name hardcoded inside `background:` block instead of set once via `#databook-title` | Declare `#let databook-title = "..."` at the top of the file and reference `#databook-title` in the header |