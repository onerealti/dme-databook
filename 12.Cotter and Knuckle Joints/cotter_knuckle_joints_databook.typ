// Design Data Book — Cotter & Knuckle Joints
// Classic Engineering Data Book Manual (Exact Master Copy from examples_solutions.md)

#set page(
  paper: "a4",
  flipped: true,
  margin: (top: 30pt, bottom: 25pt, left: 55pt, right: 30pt),
  header: none,
  footer: none,
  background: context {
    // Perpendicular Side-Margin Header & Page Numbers (Vertical Binder Orientation)
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
            [#text(fill: rgb("#000000"), size: 11pt, weight: "bold")[DESIGN DATA BOOK — COTTER & KNUCKLE JOINTS]],
            [#text(fill: rgb("#000000"), weight: "bold", size: 11pt)[Page #counter(page).display("1 of 1", both: true)]]
          )
          #v(3pt)
          #line(length: 100%, stroke: 1.2pt + rgb("#000000"))
        ]
      )
    )
  }
)

#set text(font: ("Times New Roman", "Georgia"), size: 15pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.9em)
#show math.equation: set block(spacing: 8pt)
#show math.equation.where(block: true): set align(left)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))

// Custom Clean Section Header
#let section-heading(sec-num, title) = {
  v(4pt)
  text(weight: "bold", size: 18pt)[SECTION #sec-num: #title]
  v(2pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(6pt)
}

// Section Overview Component (Unboxed & Vertically Stacked Parameters & Protocol)
#let section-overview(sys-params, design-proto) = {
  v(2pt)
  sys-params
  v(3pt)
  design-proto
  v(4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(6pt)
}

// Parallel Item Row Component (Open 2-Column Split with Vertical Center Divider Line)
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

// Dedicated Figure Page Component (Guaranteed Single Page Layout - Heading, Image & Caption within strict bounds)
#let figure-page(sec-num, title, fig-path, caption) = {
  pagebreak()
  block(width: 100%, breakable: false)[
    #section-heading(sec-num, title + " — MECHANICAL DIAGRAM")
    #v(4pt)
    #align(center)[
      #image(fig-path, width: 85%, height: 420pt, fit: "contain")
      #v(6pt)
      #text(weight: "bold", size: 14pt)[#caption]
    ]
  ]
}

// ==========================================
// CLASSIFICATION INDEX & SCOPE
// ==========================================
#section-heading("INDEX", "Cotter & Knuckle Joints Classification Index")

#v(4pt)
#table(
  columns: (1.2fr, 2.5fr, 1fr),
  inset: 7pt,
  align: (left, left, center),
  table.header(
    [*Machine Element / Joint Type*], [*Primary Design Parameter / Objective*], [*Databook Section*]
  ),
  [Socket and Spigot Cotter Joint], [Design 30 kN joint ($d, d_2, t, d_1, b, d_4, c, a, d_3, t_1$), crushing & shear checks], [Section 1],
  [Sleeve and Cotter Joint], [Design 60 kN sleeve joint ($d, d_2, t, d_1, b, a, c$), double shear & crushing checks], [Section 2],
  [Gib and Cotter Joint], [Design 50 kN connecting rod big end joint ($B_1, t, t_1, t_3, B, b_1, b, t_4, l_1, l_2$)], [Section 3],
  [Knuckle Joint (Standard)], [Design 150 kN knuckle joint ($d, d_1, d_2, d_3, t, t_1, t_2$), 8 stress checks], [Section 4],
  [Knuckle Joint (with FOS)], [Design 70 kN tie rod knuckle joint with FOS = 6 ($d, d_1, d_2, d_3, t, t_1$), 4 stress checks], [Section 5]
)

#v(8pt)
#text(size: 13pt, style: "italic")[
  *Design Standard Note*: All design equations, shear failures, crushing stress limits, and empirical proportion checks conform strictly to standard mechanical design principles (R.S. Khurmi & J.K. Gupta).
]

// ==========================================
// SECTION 1: SOCKET & SPIGOT COTTER JOINT (EX 12.1)
// ==========================================
#pagebreak()
#section-heading("1", "Socket and Spigot Cotter Joint (30 kN Load)")

#section-overview(
  [*System Parameters* \ Tension / Compression Load: $P = 30 "kN" = 30000 "N"$ \ Carbon Steel Stresses: Tensile/Compressive $sigma_t = sigma_c = 50 "MPa"$, Shear $tau = 35 "MPa"$, Crushing $sigma_c = 90 "MPa"$],
  [*Design Protocol* \ Step 1: Size rod diameter $d$ in tension \ Step 2: Size spigot diameter $d_2$ & cotter thickness $t$ (Trial & Crushing Check) \ Step 3: Size socket outer diameter $d_1$, cotter width $b$, socket collar $d_4, c$, rod end $a$, & spigot collar $d_3, t_1$]
)

#item-row(
  [*1. Rod Diameter ($d$)* \ Tensile failure of rod],
  [
    $
      #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 d^2 dot sigma_t$] \
      30000 &= pi/4 d^2 (50) = 39.3 d^2 \
      d^2 &= 30000 / 39.3 = 763 \
      #text(size: 20pt)[$d$] &= #text(size: 20pt)[$27.6 "mm"$] quad &=> bold(d = 28 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*2. Trial Spigot Diameter ($d_2$) & Cotter Thickness ($t$)* \ Tension failure of spigot across slot ($t = d_2/4$)],
  [
    $
      P &= [pi/4 d_2^2 - d_2 t] sigma_t \
      30000 &= [pi/4 d_2^2 - d_2 (d_2/4)] 50 = 26.8 (d_2)^2 \
      (d_2)^2 &= 30000 / 26.8 = 1119.4 \
      d_2 &= 33.4 "mm" => 34 "mm", quad t = 34 / 4 = 8.5 "mm"
    $
  ]
)

#item-row(
  [*3. Crushing Stress Check & Recalculation ($d_2, t$)* \ Check crushing stress for trial dimensions],
  [
    $
      sigma_c &= P / (d_2 dot t) = 30000 / (34 times 8.5) = 103.8 "N/mm"^2 > 90 "MPa" quad bold("(UNSAFE)") \
      30000 &= d_2 (d_2 / 4) 90 = 22.5 (d_2)^2 \
      (d_2)^2 &= 30000 / 22.5 = 1333 \
      #text(size: 20pt)[$d_2$] &= #text(size: 20pt)[$40 "mm" quad bold("(Ans.)")$] \
      #text(size: 20pt)[$t$] &= #text(size: 20pt)[$40 / 4$] = bold(10 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*4. Socket Outer Diameter ($d_1$)* \ Tension failure of socket across slot],
  [
    $
      P &= [pi/4 (d_1^2 - d_2^2) - (d_1 - d_2) t] sigma_t \
      30000 &= [pi/4 (d_1^2 - 40^2) - (d_1 - 40)(10)] 50 \
      0.7854 d_1^2 - 10 d_1 - 1854.6 &= 0 \
      #text(size: 20pt)[$d_1$] &= #text(size: 20pt)[$49.9 "mm"$] quad &=> bold(d_1 = 50 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*5. Width of Cotter ($b$)* \ Double shear failure of cotter],
  [
    $
      P &= 2 b dot t dot tau \
      30000 &= 2 b times 10 times 35 = 700 b \
      #text(size: 20pt)[$b$] &= #text(size: 20pt)[$30000 / 700$] = bold(43 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*6. Socket Collar Diameter ($d_4$)* \ Crushing failure of socket collar],
  [
    $
      P &= (d_4 - d_2) t dot sigma_c \
      30000 &= (d_4 - 40) times 10 times 90 = 900 (d_4 - 40) \
      d_4 - 40 &= 30000 / 900 = 33.3 \
      #text(size: 20pt)[$d_4$] &= #text(size: 20pt)[$73.3 "mm"$] quad &=> bold(d_4 = 75 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*7. Socket Collar Thickness ($c$)* \ Double shear failure of socket end],
  [
    $
      P &= 2 (d_4 - d_2) c dot tau \
      30000 &= 2 (75 - 40) c times 35 = 2450 c \
      #text(size: 20pt)[$c$] &= #text(size: 20pt)[$30000 / 2450$] = bold(12 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*8. Slot End to Rod End Distance ($a$)* \ Double shear failure of rod end],
  [
    $
      P &= 2 a dot d_2 dot tau \
      30000 &= 2 a times 40 times 35 = 2800 a \
      #text(size: 20pt)[$a$] &= #text(size: 20pt)[$30000 / 2800$] = 10.7 "mm" quad &=> bold(a = 11 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*9. Spigot Collar Diameter ($d_3$)* \ Crushing failure of spigot collar],
  [
    $
      P &= pi/4 (d_3^2 - d_2^2) sigma_c \
      30000 &= pi/4 (d_3^2 - 40^2) 90 \
      d_3^2 - 1600 &= 424 \
      #text(size: 20pt)[$d_3$] &= #text(size: 20pt)[$sqrt(2024)$] = bold(45 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*10. Spigot Collar Thickness ($t_1$)* \ Shear failure of spigot collar],
  [
    $
      P &= pi d_2 dot t_1 dot tau \
      30000 &= pi times 40 times t_1 times 35 = 4400 t_1 \
      #text(size: 20pt)[$t_1$] &= #text(size: 20pt)[$30000 / 4400$] = 6.8 "mm" quad &=> bold(t_1 = 8 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*11. Cotter Length ($l$) & Clearance Dimension ($e$)* \ Empirical length and clearance],
  [
    $
      #text(size: 20pt)[$l$] &= #text(size: 20pt)[$4 d$] = 4 times 28 = bold(112 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$e$] &= #text(size: 20pt)[$1.2 d$] = 1.2 times 28 = 33.6 "mm" quad &=> bold(e = 34 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*12. Complete Design Output*],
  [*Socket & Spigot Joint Summary: d = 28 mm, d2 = 40 mm, t = 10 mm, d1 = 50 mm, b = 43 mm, d4 = 75 mm, c = 12 mm, a = 11 mm, d3 = 45 mm, t1 = 8 mm, l = 112 mm, e = 34 mm*]
)

// ==========================================
// SECTION 2: SLEEVE & COTTER JOINT (EX 12.2)
// ==========================================
#pagebreak()
#section-heading("2", "Sleeve and Cotter Joint (60 kN Load)")

#section-overview(
  [*System Parameters* \ Tensile Load: $P = 60 "kN" = 60000 "N"$ \ Allowable Stresses: Tensile $sigma_t = 60 "MPa"$, Shear $tau = 70 "MPa"$, Crushing $sigma_c = 125 "MPa"$],
  [*Design Protocol* \ Step 1: Size rod diameter $d$ in tension \ Step 2: Size enlarged rod end $d_2$ & cotter thickness $t$ ($t = d_2/4$) with crushing check \ Step 3: Size sleeve outer diameter $d_1$, cotter width $b$, rod shear distance $a$, & sleeve shear distance $c$]
)

#item-row(
  [*1. Rod Diameter ($d$)* \ Tensile failure of rod],
  [
    $
      #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 d^2 dot sigma_t$] \
      60000 &= pi/4 d^2 (60) = 47.13 d^2 \
      d^2 &= 60000 / 47.13 = 1273 \
      #text(size: 20pt)[$d$] &= #text(size: 20pt)[$35.7 "mm"$] quad &=> bold(d = 36 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*2. Enlarged Rod Diameter ($d_2$) & Cotter Thickness ($t$)* \ Tension failure of rod across slot ($t = d_2/4$)],
  [
    $
      P &= [pi/4 d_2^2 - d_2 t] sigma_t \
      60000 &= [pi/4 d_2^2 - d_2 (d_2/4)] 60 = 32.13 (d_2)^2 \
      (d_2)^2 &= 60000 / 32.13 = 1867 \
      #text(size: 20pt)[$d_2$] &= #text(size: 20pt)[$43.2 "mm"$] quad &=> bold(d_2 = 44 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$t$] &= #text(size: 20pt)[$44 / 4$] = bold(11 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*3. Crushing Stress Check* \ Check crushing stress on rod end / cotter],
  [
    $
      #text(size: 20pt)[$sigma_c$] &= #text(size: 20pt)[$P / (d_2 dot t)$] \
      &= 60000 / (44 times 11) \
      &= bold(124 "N/mm"^2) &<= 125 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*4. Sleeve Outer Diameter ($d_1$)* \ Tension failure of sleeve across slot],
  [
    $
      P &= [pi/4 (d_1^2 - d_2^2) - (d_1 - d_2) t] sigma_t \
      60000 &= [pi/4 (d_1^2 - 44^2) - (d_1 - 44)(11)] 60 \
      0.7854 d_1^2 - 11 d_1 - 1036.7 &= 0 \
      #text(size: 20pt)[$d_1$] &= #text(size: 20pt)[$58.4 "mm"$] quad &=> bold(d_1 = 60 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*5. Width of Cotter ($b$)* \ Double shear failure of cotter],
  [
    $
      P &= 2 b dot t dot tau \
      60000 &= 2 b times 11 times 70 = 1540 b \
      #text(size: 20pt)[$b$] &= #text(size: 20pt)[$60000 / 1540$] = 38.96 "mm" quad &=> bold(b = 40 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*6. Rod End Shear Distance ($a$)* \ Double shear failure of rod end],
  [
    $
      P &= 2 a dot d_2 dot tau \
      60000 &= 2 a times 44 times 70 = 6160 a \
      #text(size: 20pt)[$a$] &= #text(size: 20pt)[$60000 / 6160$] = 9.74 "mm" quad &=> bold(a = 10 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*7. Sleeve End Shear Distance ($c$)* \ Double shear failure of sleeve end],
  [
    $
      P &= 2 (d_1 - d_2) c dot tau \
      60000 &= 2 (60 - 44) c times 70 = 2240 c \
      #text(size: 20pt)[$c$] &= #text(size: 20pt)[$60000 / 2240$] = 26.78 "mm" quad &=> bold(c = 28 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*8. Complete Design Output*],
  [*Sleeve & Cotter Joint Summary: d = 36 mm, d2 = 44 mm, t = 11 mm, d1 = 60 mm, b = 40 mm, a = 10 mm, c = 28 mm*]
)

// ==========================================
// SECTION 3: GIB & COTTER JOINT FOR CONNECTING ROD (EX 12.3)
// ==========================================
#pagebreak()
#section-heading("3", "Gib and Cotter Joint for Connecting Rod Big End (50 kN Load)")

#section-overview(
  [*System Parameters* \ Max Load: $P = 50 "kN" = 50000 "N"$ | Rod Diameter Adjacent to Strap: $d = 75 "mm"$ \ Strap Tensile Stress: $sigma_t = 25 "MPa"$ | Cotter & Gib Shear Stress: $tau = 20 "MPa"$],
  [*Design Protocol* \ Step 1: Determine strap width $B_1 = d = 75 "mm"$, cotter/gib thickness $t = B_1/4 = 20 "mm"$ \ Step 2: Size strap thinnest section $t_1$, strap thickness at cotter $t_3$, & total width $B$ (divided into gib $b_1$ & cotter $b$) \ Step 3: Determine strap end $t_4$, rod end $l_1$, & overhang $l_2$]
)

#item-row(
  [*1. Strap Width ($B_1$) & Cotter/Gib Thickness ($t$)* \ Width equal to rod diameter $d = 75 "mm"$],
  [
    $
      #text(size: 20pt)[$B_1$] &= #text(size: 20pt)[$d$] = bold(75 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$t$] &= #text(size: 20pt)[$B_1 / 4$] = 75 / 4 = 18.75 "mm" quad &=> bold(t = 20 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*2. Thinnest Strap Thickness ($t_1$)* \ Tensile failure of strap at thinnest section],
  [
    $
      P &= 2 B_1 dot t_1 dot sigma_t \
      50000 &= 2 times 75 times t_1 times 25 = 3750 t_1 \
      #text(size: 20pt)[$t_1$] &= #text(size: 20pt)[$50000 / 3750$] = 13.3 "mm" quad &=> bold(t_1 = 15 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*3. Strap Thickness at Cotter Hole ($t_3$)* \ Equal cross-sectional area criterion],
  [
    $
      2 t_3 (B_1 - t) &= 2 t_1 B_1 \
      2 t_3 (75 - 20) &= 2 times 15 times 75 \
      110 t_3 &= 2250 \
      #text(size: 20pt)[$t_3$] &= #text(size: 20pt)[$2250 / 110$] = 20.45 "mm" quad &=> bold(t_3 = 21 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*4. Total Width of Gib & Cotter ($B$)* \ Double shear failure of gib and cotter],
  [
    $
      P &= 2 B dot t dot tau \
      50000 &= 2 B times 20 times 20 = 800 B \
      #text(size: 20pt)[$B$] &= #text(size: 20pt)[$50000 / 800$] = 62.5 "mm" quad &=> bold(B = 65 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*5. Division of Width between Gib ($b_1$) & Cotter ($b$)* \ Empirical proportions ($55\%$ gib, $45\%$ cotter)],
  [
    $
      #text(size: 20pt)[$b_1$] &= #text(size: 20pt)[$0.55 B$] = 0.55 times 65 = 35.75 "mm" quad &=> bold(b_1 = 36 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$b$] &= #text(size: 20pt)[$0.45 B$] = 0.45 times 65 = 29.25 "mm" quad &=> bold(b = 30 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*6. Empirical Proportions ($t_4, l_1, l_2$)* \ Strap end, rod end, and overhang dimensions],
  [
    $
      #text(size: 20pt)[$t_4$] &= #text(size: 20pt)[$1.25 t_1$] = 1.25 times 15 = 18.75 "mm" quad &=> bold(t_4 = 20 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$l_1$] &= #text(size: 20pt)[$2 t_1$] = 2 times 15 = bold(30 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$l_2$] &= #text(size: 20pt)[$2.5 t_1$] = 2.5 times 15 = 37.5 "mm" quad &=> bold(l_2 = 40 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*7. Complete Design Output*],
  [*Gib & Cotter Joint Summary: B1 = 75 mm, t = 20 mm, t1 = 15 mm, t3 = 21 mm, B = 65 mm (Gib b1 = 36 mm, Cotter b = 30 mm), t4 = 20 mm, l1 = 30 mm, l2 = 40 mm*]
)

#figure-page(
  "3",
  "Gib and Cotter Joint Assembly",
  "fig 12.12.png",
  "Figure 12.12: Gib and Cotter Joint Construction for Connecting Rod Big End"
)

// ==========================================
// SECTION 4: KNUCKLE JOINT (EX 12.7)
// ==========================================
#pagebreak()
#section-heading("4", "Knuckle Joint Design & Stress Checks (150 kN Load)")

#section-overview(
  [*System Parameters* \ Tensile Load: $P = 150 "kN" = 150000 "N"$ \ Allowable Stresses: Tension $sigma_t = 75 "MPa"$, Shear $tau = 60 "MPa"$, Compression $sigma_c = 150 "MPa"$],
  [*Design Protocol* \ Step 1: Size rod diameter $d$ in tension & calculate empirical dimensions ($d_1, d_2, d_3, t, t_1, t_2$) \ Step 2: Verify pin shear, single eye tension/shear/crushing, & fork end tension/shear/crushing]
)

#item-row(
  [*1. Rod Diameter ($d$) & Empirical Proportions* \ Tensile failure of solid rod],
  [
    $
      P &= pi/4 d^2 dot sigma_t \
      150000 &= pi/4 d^2 (75) = 59 d^2 \
      d^2 &= 150000 / 59 = 2540 \
      #text(size: 20pt)[$d$] &= #text(size: 20pt)[$52 "mm" quad bold("(Ans.)")$] \
      d_1 &= d = bold(52 "mm"), quad d_2 = 2d = bold(104 "mm"), quad d_3 = 1.5d = bold(78 "mm") \
      t &= 1.25d = bold(65 "mm"), quad t_1 = 0.75d = bold(40 "mm"), quad t_2 = 0.5d = bold(26 "mm")
    $
  ]
)

#item-row(
  [*2. Knuckle Pin Double Shear Check ($tau$)* \ Shear stress check on pin],
  [
    $
      P &= 2 (pi/4 d_1^2) tau \
      150000 &= 2 (pi/4) (52)^2 tau = 4248 tau \
      #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$150000 / 4248$] = bold(35.3 "MPa") &<= 60 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*3. Single Eye Tension Check ($sigma_t$)* \ Tearing across pin hole],
  [
    $
      P &= (d_2 - d_1) t dot sigma_t \
      150000 &= (104 - 52) 65 dot sigma_t = 3380 sigma_t \
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$150000 / 3380$] = bold(44.4 "MPa") &<= 75 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*4. Single Eye Shear Check ($tau$)* \ Double shearing of eye end],
  [
    $
      P &= (d_2 - d_1) t dot tau \
      150000 &= (104 - 52) 65 dot tau = 3380 tau \
      #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$150000 / 3380$] = bold(44.4 "MPa") &<= 60 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*5. Single Eye Crushing Check ($sigma_c$)* \ Crushing between pin and eye],
  [
    $
      P &= d_1 dot t dot sigma_c \
      150000 &= 52 times 65 dot sigma_c = 3380 sigma_c \
      #text(size: 20pt)[$sigma_c$] &= #text(size: 20pt)[$150000 / 3380$] = bold(44.4 "MPa") &<= 150 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Fork End Tension Check ($sigma_t$)* \ Tearing across fork pin holes],
  [
    $
      P &= (d_2 - d_1) 2 t_1 dot sigma_t \
      150000 &= (104 - 52) 2(40) dot sigma_t = 4160 sigma_t \
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$150000 / 4160$] = bold(36 "MPa") &<= 75 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*7. Fork End Shear Check ($tau$)* \ Double shearing of fork ends],
  [
    $
      P &= (d_2 - d_1) 2 t_1 dot tau \
      150000 &= (104 - 52) 2(40) dot tau = 4160 tau \
      #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$150000 / 4160$] = bold(36 "MPa") &<= 60 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*8. Fork End Crushing Check ($sigma_c$)* \ Crushing between pin and fork],
  [
    $
      P &= d_1 dot 2 t_1 dot sigma_c \
      150000 &= 52 times 2(40) dot sigma_c = 4160 sigma_c \
      #text(size: 20pt)[$sigma_c$] &= #text(size: 20pt)[$150000 / 4160$] = bold(36 "MPa") &<= 150 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*9. Complete Design Output*],
  [*Knuckle Joint Summary: d = 52 mm, d1 = 52 mm, d2 = 104 mm, d3 = 78 mm, t = 65 mm, t1 = 40 mm, t2 = 26 mm, All 8 Stress Checks SAFE*]
)

#figure-page(
  "4",
  "Knuckle Joint Assembly",
  "fig 12.13.jpeg",
  "Figure 12.13: Knuckle Joint Construction & Pin Assembly Details"
)

// ==========================================
// SECTION 5: KNUCKLE JOINT WITH FOS (EX 12.8)
// ==========================================
#pagebreak()
#section-heading("5", "Knuckle Joint Design with Factor of Safety (70 kN Load)")

#section-overview(
  [*System Parameters* \ Pull Load: $P = 70 "kN" = 70000 "N"$ | Factor of Safety: $"FOS" = 6$ \ Rod Ultimate Strength: $sigma_("tu") = 420 "MPa" => "Permissible " sigma_t = 420 / 6 = 70 "N/mm"^2$ \ Pin Ultimate Shear Strength: $tau_u = 396 "MPa" => "Permissible " tau = 396 / 6 = 66 "N/mm"^2$],
  [*Design Protocol* \ Step 1: Size rod diameter $d$ in tension & calculate empirical dimensions ($d_1, d_2, d_3, t, t_1$) \ Step 2: Verify pin shear stress $tau$, single eye tension $sigma_t$, & fork end tension $sigma_t$]
)

#item-row(
  [*1. Rod Diameter ($d$) & Empirical Proportions* \ Tensile failure of tie rod under allowable $sigma_t = 70 "MPa"$],
  [
    $
      P &= pi/4 d^2 dot sigma_t \
      70000 &= pi/4 d^2 (70) = 55 d^2 \
      d^2 &= 70000 / 55 = 1273 \
      #text(size: 20pt)[$d$] &= #text(size: 20pt)[$36 "mm" quad bold("(Ans.)")$] \
      d_1 &= d = bold(36 "mm"), quad d_2 = 2d = bold(72 "mm"), quad d_3 = 1.5d = bold(54 "mm") \
      t &= 1.25d = bold(45 "mm"), quad t_1 = 0.75d = bold(27 "mm")
    $
  ]
)

#item-row(
  [*2. Knuckle Pin Double Shear Check ($tau$)* \ Check shear stress for allowable $tau = 66 "MPa"$],
  [
    $
      P &= 2 (pi/4 d_1^2) tau \
      70000 &= 2 (pi/4) (36)^2 tau = 2036 tau \
      #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$70000 / 2036$] = bold(34.4 "MPa") &<= 66 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*3. Single Eye Tension Check ($sigma_t$)* \ Check tensile stress for allowable $sigma_t = 70 "MPa"$],
  [
    $
      P &= (d_2 - d_1) t dot sigma_t \
      70000 &= (72 - 36) 45 dot sigma_t = 1620 sigma_t \
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$70000 / 1620$] = bold(43.2 "MPa") &<= 70 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*4. Fork End Tension Check ($sigma_t$)* \ Check tensile stress for allowable $sigma_t = 70 "MPa"$],
  [
    $
      P &= (d_2 - d_1) 2 t_1 dot sigma_t \
      70000 &= (72 - 36) 2(27) dot sigma_t = 1944 sigma_t \
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$70000 / 1944$] = bold(36 "MPa") &<= 70 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*5. Complete Design Output*],
  [*Knuckle Joint (FOS = 6) Summary: d = 36 mm, d1 = 36 mm, d2 = 72 mm, d3 = 54 mm, t = 45 mm, t1 = 27 mm, All Stress Checks SAFE*]
)

#figure-page(
  "5",
  "Knuckle Joint Assembly",
  "fig 12.13.jpeg",
  "Figure 12.13: Knuckle Joint Fork & Pin Details"
)
