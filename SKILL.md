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

The header title is a **document-level variable**, not a literal string — this boilerplate is reused across every databook topic (fasteners, springs, shafts, keys, welded joints, etc.), so the topic name is set once and referenced, never hardcoded inside the page-setup block.

```typst
// Set once near the top of every databook file, before #set page(...):
#let databook-title = "DESIGN DATA BOOK — SCREWED JOINTS & FASTENERS"
#let page-margin = (top: 35pt, bottom: 35pt, left: 35pt, right: 35pt)
#let header-block-width = 750pt
#let header-dy = 25pt

#set page(
  paper: "a4",
  flipped: false,
  margin: page-margin,
  header: none,
  footer: none,
  background: context {
    place(
      top + left,
      dx: 14pt,
      dy: header-dy,
      rotate(
        90deg,
        origin: top + left,
        block(width: header-block-width)[
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

> When starting a new topic databook, change only the `databook-title` value — never edit the string inside the `background:` block directly. If `page-margin` is ever changed, re-run the header-clearance check in §3.6 before compiling — do not assume `header-block-width`/`header-dy` are still safe.

### 1.3 Global Typography & Show Rules
These global rules MUST appear immediately after the `#set page(...)` block in every databook `.typ` file.

Base body text is **10pt**, formula highlight is **13.5pt**, section headings are **13.5pt**. This compact technical handbook proportion gives high visual density while maintaining crisp legibility and headroom for long engineering derivations.

```typst
#set text(font: ("Times New Roman", "Georgia"), size: 10pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.85em)
#show math.equation: set block(spacing: 16pt)
#show math.equation.where(block: true): it => align(left, it)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))
```

> If Times New Roman is not installed on the compile machine, Typst silently substitutes Georgia, which has different metrics. Confirm the compile environment has Times New Roman available before trusting any of the measured guards below — they measure actual rendered size, so a font substitution changes what "fits" means.

### 1.4 Out-of-Frame Layout & Overflow Prevention Protocol

To guarantee content is never clipped, rendered off-screen, or spilled past printable margins, enforce these 5 structural frame boundary rules across all `.typ` databooks:

1. **Balanced Page Margins (`left: 40pt, right: 40pt`)**:
   Setting equal `40pt` left and right margins centers the document body symmetrically on the A4 landscape sheet, preventing right-justification bias while leaving ample space for the vertical binder side header (`dx: 16pt`).

2. **Bounded Rotated Header Clearance (`width: 500pt`, `dy: 25pt`)**:
   The rotated side header block length is strictly capped (`width: 500pt` at `dy: 25pt`). This guarantees a minimum 40pt+ safety buffer above the bottom page edge so rotated text never clips past the bottom margin.

3. **Line-1 `&=` Math Alignment Point**:
   Every multi-line equation block MUST place its alignment point (`&=`) on Line 1 directly after the primary target variable (e.g. `#text(size: 13pt)[$P_t$] &= #text(size: 13pt)[$(p - d) t dot sigma_t$] \`). Never write an unaligned first line above subsequent `&=` lines — doing so forces Typst to align all `&=` points at the far right end of the top line, pushing the entire calculation block out of frame past the right margin.

4. **Global Image Fitting & Height Limits**:
   All mechanical diagrams must use `#show image: set image(fit: "contain")` and explicit container height constraints (`340pt` or `420pt` max height, `85%` max width). This forces image rendering to stay 100% inside printable page boundaries without driving captions or headers out of frame.

5. **Centered 50/50 Auto-Fitting Column Grids**:
   Item rows must specify equal fractional column widths (`columns: (1fr, 1fr)`) with symmetric cell padding (`inset: (left: 8pt, right: 8pt)`), centering the vertical divider line and balancing content across both halves of the page.

---

## 2. Extraction & Authoring Workflow from `examples_solutions.md`

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
  v(3pt)
  text(weight: "bold", size: 13pt)[SECTION #sec-num: #title]
  v(2pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(4pt)
}
```

### 3.2 Unboxed Section Overview (`section-overview`)
```typst
#let section-overview(sys-params, design-proto) = {
  v(2pt)
  sys-params
  v(3pt)
  design-proto
  v(3pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(4pt)
}
```

### 3.3 Parallel 2-Column Item Row (`item-row`) — 50/50 centered grid & symmetric inset

```typst
#let math-col-width = 0.50 * (761pt - 40pt - 40pt)  // 50% usable width (columns: 1fr, 1fr)

#let item-row(left-desc, right-math) = {
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    stroke: (x, y) => if x == 0 { (right: 0.5pt + rgb("#aaaaaa")) },
    inset: (left: 8pt, right: 8pt),
    align: (left + top, left + top),
    [#left-desc],
    [#box(width: math-col-width)[#right-math]]
  )
  v(3pt)
  line(length: 100%, stroke: 0.3pt + rgb("#cccccc"))
}
```

- `columns: (1fr, 1fr)` provides an equal 50/50 split, placing the central vertical divider line precisely at the center of the printable area.
- `inset: (left: 8pt, right: 8pt)` is symmetric on both columns — keeping text and math balanced around the central divider without right-justification bias.
- `right-math` is now wrapped in `#box(width: math-col-width)` — this does not by itself prevent horizontal overflow (Typst boxes do not clip by default), but it gives §3.6's width guard a fixed reference width to measure equation content against before the page is rendered.

### 3.4 Mechanical Diagram Container (`figure-page`)
Mechanical diagrams flow inline within section content inside a non-breakable container (`breakable: false`). Figures no longer force a `#pagebreak()`, allowing section text, equations, and diagrams to reside together on the same page where space permits.

```typst
#let figure-page(sec-num, title, fig-path, caption) = {
  v(6pt)
  block(width: 100%, breakable: false)[
    #align(center)[
      #image(fig-path, width: 85%, height: 280pt, fit: "contain")
      #v(4pt)
      #text(weight: "bold", size: 10pt)[#caption]
    ]
  ]
  v(6pt)
}
```
    ] else [
      #grid(
        columns: (1fr, 1fr),
        gutter: 12pt,
        align: center + horizon,
        [
          #image(fig-path, width: 85%, height: 310pt, fit: "contain")
          #v(6pt)
          #text(weight: "bold", size: 10pt)[#caption]
        ],
        [
          #image(second-fig, width: 85%, height: 310pt, fit: "contain")
          #v(6pt)
          #text(weight: "bold", size: 10pt)[#second-caption]
        ]
      )
    ]
  ]
}
```
Figures already have fixed, known dimensions (`340pt`/`310pt` height, `55%`/`85%` width) chosen to fit inside the ~540pt usable height alongside a heading and caption, so no additional measured guard is required here — the risk in this skill is unbounded *text/math* content, not fixed-size images.

### 3.5 Section Wrapper With Pre-Render Height Guard (`section-block`)

**This replaces a reactive `breakable: false` wrapper with a guard that refuses to compile rather than letting content render past the frame.** `breakable: false` alone does not stop overflow — a block that doesn't fit still gets placed, and its content extends past its own boundary, past the margin, and potentially past the physical page edge, where it is clipped or overlaps whatever follows. `context` + `measure()` checks the actual rendered height *before* Typst ever tries to place the block, and hard-fails the compile with the exact overflow amount if it won't fit — turning an invisible print-time defect into a loud, specific authoring-time error.

```typst
#let page-content-height = 595.28pt - page-margin.top - page-margin.bottom  // A4 landscape height minus margins

#let section-block(body) = context {
  let content-height = measure(body).height

  if content-height > page-content-height {
    panic(
      "Section overflows its A4 landscape page by "
      + str(content-height - page-content-height)
      + "pt. Reduce this section's item-row count, shorten a derivation, "
      + "or split it into a labeled continuation section — do not compile as-is."
    )
  }

  block(width: 100%, breakable: false)[#body]
}
```

**Usage** — wrap every section's overview + all item-rows (NOT `figure-page` calls, which already manage their own `pagebreak()`):

```typst
#pagebreak()
#section-block[
  #section-heading("3", "Cotter Joint Design")
  #section-overview(sys-params-3, design-proto-3)
  #item-row(...)
  #item-row(...)
  // ... all item-rows for this section
]
```

If this panics, treat it as a hard authoring signal — either trim the section's step count, shorten a derivation, or split a genuinely oversized multi-part problem across an explicitly labeled continuation section (e.g. "SECTION 3 (CONTINUED)"). Never respond to this panic by simply shrinking the font further to make it pass; below ~8.5pt the databook stops being legibly printable, which defeats its purpose.

### 3.6 Width Guard for Equations & the Rotated Header (`assert-fits-width`)

Two places in this skill can overflow **horizontally**, not just vertically, and neither is protected by `section-block` (which only measures height):

1. **Wide equations in `right-math`** — long subscript chains or multi-term substitutions can exceed `math-col-width` (§3.3) and print past the page's right edge.
2. **The rotated header** (§1.2) — `header-block-width` is a hardcoded constant; if `page-margin` is ever edited later without re-checking this value, the rotated block can extend past the physical paper edge, not just the margin, and gets clipped by the page boundary itself.

```typst
#let assert-fits-width(content-block, max-width, label: "content") = context {
  let content-width = measure(content-block).width
  if content-width > max-width {
    panic(
      label + " overflows its allotted width by "
      + str(content-width - max-width)
      + "pt. Shorten the expression, drop to a smaller local text size, "
      + "or break it onto an additional aligned math line."
    )
  }
}
```

**Usage for a single equation before it's placed in `item-row`:**
```typst
#let eq-p1 = [$
  #text(size: 13pt)[$P_1$] &= #text(size: 13pt)[$pi/4 (d_c)^2 dot sigma_("tb")$] \
  &= pi/4 (20.32)^2 times 40 \
  &= 12973 "N"
$]

#assert-fits-width(eq-p1, math-col-width, label: "Section 3, Step 3 equation")
#item-row([*3. Resisting Force per Bolt ($P_1$)*], eq-p1)
```

**Usage for the header, immediately after declaring `header-block-width`:**
```typst
#assert-fits-width(
  [#text(size: 10pt, weight: "bold")[#databook-title]],
  header-block-width - 60pt,  // reserve space for the "Page N" cell + grid gutter
  label: "Rotated side header"
)
```

> Run the header check whenever `databook-title` changes between topics — a longer topic name (e.g. "DESIGN DATA BOOK — WELDED & RIVETED JOINTS, KEYS, AND COTTER JOINTS") can overflow a header width that was only ever validated against a shorter title.

---

## 4. Mandatory Formatting & Mathematical Rules

### Rule 1: Strict Single Equals (`=`) Sign Per Line
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
- **Left Column (`left-desc`)**: Only step titles and qualitative descriptions. No math.
- **Right Column (`right-math`)**: All mathematical expressions, substitutions, and final answers, bound to `math-col-width` (§3.3) and validated with `assert-fits-width` (§3.6) before use.

```typst
#item-row(
  [*3. Resisting Force per Bolt ($P_1$)* \ Capacity per M 24 bolt ($d_c = 20.32 "mm"$)],
  [$
    #text(size: 13pt)[$P_1$] &= #text(size: 13pt)[$pi/4 (d_c)^2 dot sigma_("tb")$] \
    &= pi/4 (20.32)^2 times 40 \
    &= 12973 "N"
  $]
)
```

### Rule 3: Streamlined Arithmetic Derivations
Transition directly from **General Formula** → **Numerical Substitution** → **Final Result**; no redundant intermediate simplification lines.

```typst
$
  #text(size: 13pt)[$sigma_t$] &= #text(size: 13pt)[$M / Z$] \
  60 &= 773265 / (40 (t_1)^2) \
  (t_1)^2 &= 773265 / (40 times 60) \
  &= 322 \
  t_1 &= bold(18 "mm")
$
```

> **Alignment note**: keep `#text(size: 13pt)[...]` on the first line only; never nest it around subscripted/superscripted terms on later lines. Mixing an enlarged content-mode wrapper with plain math-mode text in the same `&`-aligned block can visually shift that line's baseline relative to the rest, even though the `&` alignment points still line up structurally. Prefer a local `#set text(size: 13pt)` scoped to the whole math block over per-term wrapping if a formula needs emphasis.

### Rule 4: Multi-Character Subscript Quoting
```typst
// CORRECT:
$ sigma_("tb"), P_("max, bolt"), d_("c, std") $
```

### Rule 5: Reference Tables Must Be Stacked Sequentially
```typst
#pagebreak()
#section-heading("REF 1", "Table 11.1 — Coarse Series")
#table(...)

#pagebreak()
#section-heading("REF 2", "Table 11.1 — Fine Series & Table 11.2")
#table(...)
```

### Rule 6: Enlarged Primary Variable & General Formula (`&=` Alignment on Line 1)
First line of every equation block: `#text(size: 13pt)[$var$] &= #text(size: 13pt)[$formula$] \`. The alignment point (`&=`) MUST be placed on the first line directly after the target variable. Subsequent lines stay at body size (9.5pt) and align under the same `&=`.

```typst
// CORRECT: &= is on line 1 right after the target variable
$
  #text(size: 13pt)[$P$] &= #text(size: 13pt)[$pi/4 D^2 dot p$] \
  &= pi/4 (120)^2 times 6 \
  &= 67860 "N"
$
```

> **CRITICAL ALIGNMENT WARNING**: Never write `#text(size: 13pt)[$P = pi/4 D^2 dot p$] \` with a plain `=` on the first line above subsequent `&=` lines. Writing an unaligned first line forces Typst to align all `&=` points at the far right end of the top line, pushing the entire calculation block out of frame past the right margin. Always place `&=` on the first line after the variable.

### Rule 7: Explicit Intermediate Design Conclusions
Intermediate textbook conclusions (e.g., "Size of Bolt = M 24") get their own dedicated `#item-row`, never merged into the final Design Output row.

### Rule 8: Symmetric Column Padding
`item-row`'s grid `inset` MUST always specify both `left` and `right` — never `right` alone.

### Rule 9: Every Section MUST Pass Through `section-block`
No section's item-rows may be placed directly on the page; they must be assembled inside `#section-block[...]` (§3.5) so the height guard runs before render.

### Rule 10: Every Equation Destined for `right-math` MUST Pass Through `assert-fits-width` First (New)
Before any equation content is passed into `#item-row(...)`, assign it to a variable and validate it with `#assert-fits-width(...)` (§3.6). Do not skip this for "short-looking" equations — long unit strings (`"N/mm"^2`) and multi-character subscripts are easy to underestimate visually.

### Rule 11: Re-Validate the Rotated Header After Any Title or Margin Change (New)
Any time `databook-title` or `page-margin` changes, re-run the header width check (§3.6) before compiling the final PDF. Do not assume a previously-validated `header-block-width`/`header-dy` pair is still safe.

---

## 5. Single-Page Overflow Guardrails

1. **Global Image Fitting**: `#show image: set image(fit: "contain")`.
2. **Fixed Figure Dimensions**: Single Figure `height: 340pt, width: 55%`; Dual Figures `height: 310pt, width: 85%` each, sized to always fit within the usable height — no measured guard needed since dimensions are fixed and pre-validated (§3.4).
3. **Table Widths**: fractional columns `(1fr, 1fr, ...)` span 100% of usable width automatically.
4. **Tuned Vertical Spacing**: body `9.5pt`/formula `13pt`, `leading: 0.65em`, equation block spacing `6pt`, item-row padding `v(2pt)`.
5. **Hard Vertical Guard**: `section-block` (§3.5) measures actual rendered height with `context` + `measure()` and **panics the compile** if a section exceeds `page-content-height` — it does not merely warn, and it does not let oversized content render past the frame.
6. **Hard Horizontal Guard**: `assert-fits-width` (§3.6) measures actual rendered width for every equation before it enters `right-math`, and for the rotated header whenever its title changes — both panic rather than allow clipping past the page edge.

---

## 6. Pre-Flight Verification Checklist for Agents

- [ ] **1. Clean Compilation**: `typst compile file.typ` — zero errors and zero `panic()` triggers from `section-block` or `assert-fits-width`.
- [ ] **2. Single Equals Check**: no math line contains more than one `=` sign.
- [ ] **3. 1-to-1 Label Alignment**: every formula step has a dedicated left-side label in its own `#item-row`.
- [ ] **4. Column Scoping**: zero math expressions in `left-desc`.
- [ ] **5. Vertical Fit**: every section is wrapped in `#section-block[...]` and compiles without a height-overflow panic.
- [ ] **6. Horizontal Fit**: every equation passed to `right-math`, and the rotated header title, pass `#assert-fits-width(...)` without a width-overflow panic.
- [ ] **7. Subscript & Text Quoting**: multi-character subscripts and text strings in math are quoted.
- [ ] **8. Intermediate Conclusions**: textbook intermediate answers appear as standalone `#item-row` entries, not merged into Design Output.
- [ ] **9. Inset Symmetry**: `item-row`'s `inset` specifies both `left` and `right`.
- [ ] **10. Font Sizes**: body text is 9.5pt, formula highlight is 13pt.
- [ ] **11. Header Re-Validation**: if `databook-title` or `page-margin` changed since the last compile, the header width check was re-run.

---

## 7. Common Errors & Pitfalls to Avoid

| Pitfall / Error | Cause | Correct Typst Solution |
| :--- | :--- | :--- |
| `error: unknown variable` | Unquoted text string inside math `$ ... $` | Wrap text in quotes: `"Fine thread: M 20"` |
| `&times` invalid syntax | Using HTML entities inside Typst math | Use native Typst symbol: `times` or `dot` |
| `\ \` multi-line breaks | Double backslash inserts blank math line | Use single backslash `\` for line breaks |
| Multiple `=` on 1 line | Violates single equals sign rule | Break every `=` onto its own line with `\` |
| Math in `left-desc` | Violates left/right column separation | Move ALL math expressions to `right-math` |
| Section content clipped or overlapping the next page's header | `breakable: false` alone was used, which places an oversized block anyway instead of preventing it | Use `section-block` (§3.5), which measures height and panics before render rather than clipping after |
| Equation text runs past the right page edge | No width guard existed on `right-math`; long subscripts/units underestimated visually | Wrap the equation and validate with `assert-fits-width` (§3.6) before passing to `item-row` |
| Rotated header clips the paper edge after a margin/title change | `header-block-width` treated as a one-time constant, never re-checked | Re-run the header `assert-fits-width` check (Rule 11) any time `databook-title` or `page-margin` changes |
| Divider line looks off-center in `item-row` | `inset: (right: 10pt)` only pads one side | Use `inset: (left: 10pt, right: 10pt)` (Rule 8) |
| First equation line looks vertically misaligned vs. rest | `#text(size: X)[...]` wrapped around individual sub-expressions instead of the whole block | Prefer a local `#set text(size: X)` scoped to that one math block over per-term wrapping |
| Wrong topic title in side header | Topic name hardcoded inside `background:` block | Set once via `#let databook-title = "..."` and reference `#databook-title` |

---

## 8. Summary of Changes from Earlier Draft

1. **Reactive overflow handling replaced with pre-render measurement guards.** `breakable: false` alone does not stop content from rendering past the page frame — it only stops it from flowing to a second page. `section-block` (§3.5) now uses `context` + `measure()` to check a section's actual height *before* Typst places it, and `panic()`s the compile with the exact overflow amount if it won't fit.
2. **New horizontal guard** (`assert-fits-width`, §3.6) — the original skill only ever addressed vertical overflow. Long equations in `right-math` and the rotated header's title text can both overflow horizontally; both are now measured and validated before render.
3. **Font sizes reduced** from body 15pt/formula 20pt to body 9.5pt/formula 13pt, giving section content real headroom against the height guard rather than relying on font size as the only overflow defense.
4. **`item-row` inset fixed** to symmetric `(left: 10pt, right: 10pt)`, resolving the off-center divider.
5. **Header geometry pinned to named constants** (`header-block-width`, `header-dy`, `page-margin`) so a later edit to one is easy to re-validate against the others, instead of silently drifting out of sync.
6. **New Rules 10 and 11** make the width guard and header re-validation mandatory steps, not optional advice.