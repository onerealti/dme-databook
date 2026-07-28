# Project Rules — DME Databook Authoring

## Typst Databook Formatting & Compact Technical Sizing Invariants
- **Vertical Portrait Page Orientation**: Use standard A4 Portrait orientation (`paper: "a4", flipped: false`).
- **Balanced Page Margins**: Always use symmetric 35pt left/right page margins (`margin: (top: 35pt, bottom: 35pt, left: 35pt, right: 35pt)`). Position vertical side header at `dx: 14pt, dy: 25pt` with `block(width: 750pt)`.
- **Automatic Section Page Breaks**: Every section starting from Section 2 automatically starts on a new page (`if sec-num != "1" { pagebreak() }` inside `#section-heading`).
- **Compact Body & Formula Sizing (~33% Scale)**:
  - Base body font size: `#set text(size: 10pt)`
  - Primary formula header: `#text(size: 13.5pt)[$var$] &= #text(size: 13.5pt)[$formula$] \`
  - Section headings: `size: 13.5pt`
  - Paragraph leading: `#set par(leading: 0.85em)`
  - Math block spacing: `#show math.equation: set block(spacing: 16pt)`
  - Mechanical diagram max bounds: `width: 70%, height: 200pt` (inline container)
  - Item row vertical padding: `v(3pt)` top and bottom
- **Centered 50/50 Column Grid**: Always set `#item-row` grid columns to `(1fr, 1fr)` with symmetric cell padding `inset: (left: 6pt, right: 6pt)` and `column-gutter: 14pt`.
- **Line-1 `&=` Alignment Point**: Every multi-line equation block MUST place its alignment point (`&=`) on Line 1 directly after the primary target variable (`#text(size: 13.5pt)[$var$] &= #text(size: 13.5pt)[$formula$] \`). Never write an unaligned top line above subsequent `&=` lines, as it forces Typst to align all `&=` points at the far right edge of the top line, pushing the entire calculation block out of frame past the right margin.
- **Inline Mechanical Diagram Flow**: Mechanical diagrams flow naturally within section content inside non-breakable containers (`breakable: false, height: 200pt`).





