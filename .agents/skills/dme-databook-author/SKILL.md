---
name: dme-databook-author
description: Expert skill for creating, formatting, and compiling Typst mechanical engineering data books from example solutions markdown files, enforcing landscape 2-column layout standards, single-page overflow guardrails, perpendicular side headers, strict math notation rules, and 1-to-1 label-formula alignment.
---

# DME Databook Typst Authoring Skill Guide

This document defines the authoritative, standardized engineering protocol for transforming raw Mechanical Engineering solved problems (e.g., `examples_solutions.md`) into production-grade **Typst Design Data Books** (`.typ` documents).

---

## 1. Document Architecture & Page Setup

### 1.1 Page Geometry & Margins
- **Paper**: A4 Landscape (`paper: "a4", flipped: true`).
- **Margins**: `top: 30pt, bottom: 25pt, left: 55pt, right: 30pt`. Left margin is wider (`55pt`) to accommodate the vertical binder side header.
- **Headers/Footers**: `header: none, footer: none`. Standard horizontal footers are eliminated.

### 1.2 Perpendicular Side-Margin Header & Page Counter
A rotated (90°) side header anchors inside the left margin using a background context placement.

```typst
#set page(
  paper: "a4",
  flipped: true,
  margin: (top: 30pt, bottom: 25pt, left: 55pt, right: 30pt),
  header: none,
  footer: none,
  background: context {
    place(
      top + left,
      dx: 24pt,
      dy: 30pt,
      rotate(
        90deg,
        origin: top + left,
        block(width: 535pt)[
          #grid(
            columns: (1fr, auto),
            align: (left + horizon, right + horizon),
            [#text(fill: rgb("#000000"), size: 11pt, weight: "bold")[DESIGN DATA BOOK — SCREWED JOINTS & FASTENERS]],
            [#text(fill: rgb("#000000"), weight: "bold", size: 11pt)[Page #counter(page).display("1 of 1", both: true)]]
          )
          #v(3pt)
          #line(length: 100%, stroke: 1.2pt + rgb("#000000"))
        ]
      )
    )
  }
)
```

### 1.3 Global Typography & Show Rules
These global rules MUST appear immediately after the `#set page(...)` block in every databook `.typ` file.

```typst
#set text(font: ("Times New Roman", "Georgia"), size: 15pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.9em)
#show math.equation: set block(spacing: 8pt)
#show math.equation.where(block: true): set align(left)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))
```

---

## 2. Extraction & Authoring Workflow from `examples_solutions.md`

When converting solved engineering examples from `examples_solutions.md` into Typst databook sections, strictly follow this extraction mapping:

| Raw Problem Component | Typst Target Component | Conversion & Extraction Rule |
| :--- | :--- | :--- |
| **Given Data & Operating Parameters** | `#section-overview(sys-params, ...)` | Convert raw inputs ($D, p, \sigma_t, \tau, n$) into bold parameter list in `System Parameters`. |
| **Design Objective / Method Steps** | `#section-overview(..., design-proto)` | Extract high-level engineering protocol steps into `Design Protocol`. |
| **Individual Solved Equations** | `#item-row(left-desc, right-math)` | Create a dedicated `#item-row` for **each** specific formula so that its title sits in `left-desc` and its math sits in `right-math`. |
| **Intermediate Textbook Conclusions** | `#item-row([*N. Selected Bolt*], [*Size = M 24*])` | When the textbook states an intermediate answer (e.g., "Size of Bolt = M 24 Ans.", "Adopt t = 10 mm"), add it as its own standalone `#item-row`. |
| **Problem Figure / Diagram** | `#figure-page(sec-num, ...)` | Append dedicated figure page with constrained image height (`340pt` / `310pt`, `fit: "contain"`). |
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

### 3.3 Parallel 2-Column Item Row (`item-row`)
Open 2-column split with a thin vertical center divider line (`0.5pt`).

```typst
#let item-row(left-desc, right-math) = {
  v(3pt)
  grid(
    columns: (1fr, 1.2fr),
    column-gutter: 20pt,
    stroke: (x, y) => if x == 0 { (right: 0.5pt + rgb("#aaaaaa")) },
    inset: (right: 10pt),
    align: (left + top, left + top),
    [#left-desc],
    [#right-math]
  )
  v(3pt)
  line(length: 100%, stroke: 0.3pt + rgb("#cccccc"))
}
```

### 3.4 Dedicated Single-Figure Page Container (`figure-page`)
Guarantees header, mechanical diagram, and caption stay together on a dedicated landscape page with enlarged bounds (`width: 85%, height: 420pt`). Each diagram receives its own dedicated page for maximum legibility.

```typst
#let figure-page(sec-num, title, fig-path, caption, second-fig: "", second-caption: "") = {
  pagebreak()
  block(width: 100%, breakable: false)[
    #section-heading(sec-num, title + " — MECHANICAL DIAGRAM")
    #v(2pt)
    #if second-fig == "" [
      #align(center)[
        #image(fig-path, width: 85%, height: 420pt, fit: "contain")
        #v(6pt)
        #text(weight: "bold", size: 14pt)[#caption]
      ]
    ] else [
      #grid(
        columns: (1fr, 1fr),
        gutter: 12pt,
        align: center + horizon,
        [
          #image(fig-path, width: 85%, height: 310pt, fit: "contain")
          #v(6pt)
          #text(weight: "bold", size: 13pt)[#caption]
        ],
        [
          #image(second-fig, width: 85%, height: 310pt, fit: "contain")
          #v(6pt)
          #text(weight: "bold", size: 13pt)[#second-caption]
        ]
      )
    ]
  ]
}
```

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

### Rule 3: Streamlined Arithmetic Derivations
- Remove redundant intermediate arithmetic calculation steps.
- Transition directly from **General Formula** → **Numerical Substitution** → **Final Result**.

```typst
$
  #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$M / Z$] \
  60 &= 773265 / (40 (t_1)^2) \
  (t_1)^2 &= 773265 / (40 times 60) \
  &= 322 \
  t_1 &= bold(18 "mm")
$
```

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

### Rule 6: Enlarged Primary Variable & General Formula
- The first line of every equation block must enlarge both the **primary output variable** (left of `&=`) and the **general symbolic formula** (right of `&=`) using `#text(size: 20pt)[...]`.
- Subsequent substitution and result lines use the default text size.

```typst
$
  #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
  &= pi/4 (120)^2 times 6 \
  &= 67860 "N"
$
```

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
- Backslashes in content strings cause string-escape syntax errors (e.g., `\theta` parses `\t` as tab, causing `unknown variable: heta`).
- Always use native Typst math symbols:
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

### Rule 12: Multiline Selection Callouts (No Inline `quad &=>` Overflow)
- **CRITICAL**: Fastener selections, bolt choices (`&=> bold("Select M 12 Bolts")`), or size adoptions MUST be placed on a **dedicated new line** using `\` inside math blocks:
  ```typst
  // CORRECT (Zero Horizontal Overflow):
  d_1 &= 11.25 "mm" \
  &=> bold("Select M 12 Bolts")

  // INCORRECT (Pushes text past right page margin):
  d_1 &= 11.25 "mm" quad &=> bold("Select M 12 Bolts")
  ```
- Never append `quad &=>` horizontally to the end of an active calculation line.

---

## 5. Single-Page Overflow Guardrails

To guarantee 100% protection against vertical or horizontal content spillover:

1. **Global Image Fitting**:
   ```typst
   #show image: set image(fit: "contain")
   ```
2. **Constrained Figure Heights**:
   - Single Figure: `height: 420pt`, `width: 85%`.
   - Dual Figures (if requested): `height: 310pt`, `width: 85%`.
3. **Table Widths**:
   - Use fractional column widths `columns: (1fr, 1fr, ...)` so tables automatically span `100%` of printable width without horizontal clipping.
4. **Tuned Vertical Spacing**:
   - Set `#show math.equation: set block(spacing: 8pt)`.
   - Set `#set text(size: 15pt)` with `#set par(leading: 0.9em)`.
   - Item row vertical padding: `v(3pt)`.

---

## 6. Pre-Flight Verification Checklist for Agents

Before completing any `.typ` databook document, perform this 7-point verification:

- [ ] **1. Clean Compilation**: Execute `typst compile file.typ` and verify zero errors/warnings.
- [ ] **2. Single Equals Check**: Audit all math blocks to ensure no line contains multiple `=` signs.
- [ ] **3. 1-to-1 Label Alignment**: Confirm every formula step has a dedicated left-side label in its own `#item-row`.
- [ ] **4. Column Scoping**: Verify zero math expressions sit in `left-desc` (all math must be in `right-math`).
- [ ] **5. Page Bounds & Section Parameter Check**: Verify each section's items fit on 1 landscape page without spilling, and verify that `#figure-page(sec-num, ...)` section string strictly matches the active Section number.
- [ ] **6. Subscript & Text Quoting**: Confirm multi-character subscripts (`$sigma_("tb")$`) and text strings in math (`"Text"`) are quoted.
- [ ] **7. Intermediate Conclusions**: Verify that textbook intermediate answers (e.g., "Size of Bolt = M 24", "Adopt t = 10 mm") appear as standalone `#item-row` entries, not merged into the final Design Output.

---

## 7. Common Errors & Pitfalls to Avoid

| Pitfall / Error | Cause | Correct Typst Solution |
| :--- | :--- | :--- |
| `error: unknown variable` | Unquoted text string inside math `$ ... $` | Wrap text in quotes: `"Fine thread: M 20"` |
| `&times` invalid syntax | Using HTML entities inside Typst math | Use native Typst symbol: `times` or `dot` |
| `\ \` multi-line breaks | Double backslash inserts blank math line | Use single backslash `\` for line breaks |
| Multiple `=` on 1 line | Violates single equals sign rule | Break every `=` onto its own line with `\` |
| Math in `left-desc` | Violates left/right column separation | Move ALL math expressions to `right-math` |
| Image overflow into margin | Unconstrained image height | Specify `height: 340pt` and `fit: "contain"` |
| Header split onto page 2 | `section-heading` separated from figure | Wrap inside `block(breakable: false)[...]` |
| Tables side-by-side | Reference tables placed in `#grid` | Stack sequentially with `#pagebreak()` between |
| Missing enlarged formula | Primary variable not visually prominent | Use `#text(size: 20pt)[...]` on first equation line |
