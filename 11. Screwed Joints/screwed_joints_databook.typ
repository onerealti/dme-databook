// Design Data Book — Screwed Joints & Fasteners
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
#let figure-page(sec-num, title, fig-path, caption, second-fig: "", second-caption: "") = {
  pagebreak()
  block(width: 100%, breakable: false)[
    #section-heading(sec-num, title + " — MECHANICAL DIAGRAM")
    #v(2pt)
    #if second-fig == "" [
      #align(center)[
        #image(fig-path, width: 55%, height: 340pt, fit: "contain")
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

// Title Card Header
#align(center)[
  #v(10pt)
  #text(fill: rgb("#000000"), weight: "bold", size: 24pt)[DESIGN DATA BOOK — SCREWED JOINTS & FASTENERS] \
  #v(6pt)
  #text(fill: rgb("#000000"), size: 16pt, style: "italic")[Standard Engineering Design Data, Formulas & Solved Protocols (IS: 4218 - 1976)]
  #v(10pt)
  #line(length: 100%, stroke: 1.5pt + rgb("#000000"))
]

#v(14pt)

// System Classification Index
#text(weight: "bold", size: 18pt)[Fastener Joint Classification & Design Index]
#v(8pt)
#grid(
  columns: (1.2fr, 1.8fr, 1fr),
  column-gutter: 16pt,
  row-gutter: 10pt,
  align: (left, left, center),
  [*Mechanical Setup*], [*Design Requirements*], [*Data Book Section*],
  [Tap Bolt / Known Diameter], [Calculate safe load $P$ or tightening stress $sigma_t$], [Section 1 & 2],
  [Lifting Eye Bolt], [Size nominal bolt diameter $d$ for axial load], [Section 3],
  [Flanged Shaft Coupling], [Size bolts under torsional shear torque $T$], [Section 4],
  [Safety Valve Fulcrum Pin], [Size threaded pin under lever equilibrium], [Section 5],
  [Cylinder Cover Studs], [Calculate stud count $n$, size $d$ & pitch $p_c$], [Section 6],
  [Pressure Vessel Cover], [Design shell $t$, bolt count $n$ & cover plate $t_1$], [Section 7],
  [Preloaded Flange Joint], [Size bolts with gasket factor $K$ via quadratic], [Section 8],
  [Fatigue-Loaded Studs], [Size preloaded fasteners via Soderberg criterion], [Section 9],
  [Boiler Bar Stays], [Size stays under boiler steam pressure], [Section 10],
  [Uniform Strength Bolt], [Calculate axial hole diameter $D_h$], [Section 11],
  [Wall Bracket (Parallel)], [Size bolts for wall bracket tilting about edge], [Section 12],
  [Crane Runway T-Bracket], [Calculate section stresses & bolt stress], [Section 13],
  [Travelling Crane Bracket], [Size bolts (shear + tension) & arm $t$], [Section 14],
  [Inclined Load Bracket], [Size bolts (principal stress) & arm thickness $t$], [Section 15],
  [Offset I-Section Bracket], [Size bolts & I-section arm ($b = 3t$)], [Section 16],
  [Pillar Crane Base (8-Bolt)], [Size PCD bolts under overturning moment], [Section 17],
  [Flanged Bearing Base], [Size 4 PCD bolts for bearing foundation], [Section 18],
  [Pillar Crane 2-Line Analysis], [Determine max load distance $e$ & stress along Y-Y], [Section 19],
  [Solid Forged Bracket], [Size arm dia $D$ (bending+torsion), $d$ & bolt shear], [Section 20]
)

// ==========================================
// STANDARD REFERENCE TABLES (TABLE 11.1 & TABLE 11.2)
// SEQUENTIAL STACKED LAYOUT (ONE AFTER ANOTHER)
// ==========================================
#pagebreak()
#section-heading("REF 1", "Table 11.1 — Standard Screw Threads (Coarse Series)")

#v(4pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
  align: (center, center, center, center, center, center, center),
  stroke: 0.4pt + rgb("#aaaaaa"),
  fill: (col, row) => if row == 0 { rgb("#e9ecef") } else if calc.even(row) { rgb("#f8f9fa") },
  [*Designation*], [*Pitch $p$*], [*Nominal $d$*], [*Pitch $d_p$*], [*Core $d_c$*], [*Depth $h$*], [*Stress Area $A_c$*],
  [M 4], [0.7 mm], [4.0 mm], [3.545 mm], [3.141 mm], [0.429 mm], [8.78 mm²],
  [M 5], [0.8 mm], [5.0 mm], [4.480 mm], [4.019 mm], [0.491 mm], [14.2 mm²],
  [M 6], [1.0 mm], [6.0 mm], [5.350 mm], [4.773 mm], [0.613 mm], [20.1 mm²],
  [M 8], [1.25 mm], [8.0 mm], [7.188 mm], [6.466 mm], [0.767 mm], [36.6 mm²],
  [M 10], [1.5 mm], [10.0 mm], [9.026 mm], [8.160 mm], [0.920 mm], [58.3 mm²],
  [M 12], [1.75 mm], [12.0 mm], [10.863 mm], [9.858 mm], [1.074 mm], [84.0 mm²],
  [M 14], [2.0 mm], [14.0 mm], [12.701 mm], [11.546 mm], [1.227 mm], [115 mm²],
  [M 16], [2.0 mm], [16.0 mm], [14.701 mm], [13.546 mm], [1.227 mm], [157 mm²],
  [M 18], [2.5 mm], [18.0 mm], [16.376 mm], [14.933 mm], [1.534 mm], [192 mm²],
  [M 20], [2.5 mm], [20.0 mm], [18.376 mm], [16.933 mm], [1.534 mm], [245 mm²],
  [M 22], [2.5 mm], [22.0 mm], [20.376 mm], [18.933 mm], [1.534 mm], [303 mm²],
  [M 24], [3.0 mm], [24.0 mm], [22.051 mm], [20.320 mm], [1.840 mm], [353 mm²],
  [M 27], [3.0 mm], [27.0 mm], [25.051 mm], [23.320 mm], [1.840 mm], [459 mm²],
  [M 30], [3.5 mm], [30.0 mm], [27.727 mm], [25.706 mm], [2.147 mm], [561 mm²],
  [M 33], [3.5 mm], [33.0 mm], [30.727 mm], [28.706 mm], [2.147 mm], [694 mm²],
  [M 36], [4.0 mm], [36.0 mm], [33.402 mm], [31.093 mm], [2.454 mm], [817 mm²],
  [M 42], [4.5 mm], [42.0 mm], [39.077 mm], [36.416 mm], [2.760 mm], [1104 mm²],
  [M 48], [5.0 mm], [48.0 mm], [44.752 mm], [41.795 mm], [3.067 mm], [1465 mm²],
  [M 52], [5.0 mm], [52.0 mm], [48.752 mm], [45.795 mm], [3.067 mm], [1755 mm²],
  [M 56], [5.5 mm], [56.0 mm], [52.428 mm], [49.177 mm], [3.067 mm], [2022 mm²]
)

#pagebreak()
#section-heading("REF 2", "Table 11.1 (Fine Series) & Table 11.2 (Joint Constants K)")

#text(weight: "bold", size: 14pt)[1. Table 11.1 — Fine Series Screw Threads]
#v(6pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
  align: (center, center, center, center, center, center),
  stroke: 0.4pt + rgb("#aaaaaa"),
  fill: (col, row) => if row == 0 { rgb("#e9ecef") } else if calc.even(row) { rgb("#f8f9fa") },
  [*Designation*], [*Pitch $p$*], [*Nominal $d$*], [*Pitch $d_p$*], [*Core $d_c$*], [*Stress Area $A_c$*],
  [M 8 x 1], [1.0 mm], [8.0 mm], [7.350 mm], [6.773 mm], [39.2 mm²],
  [M 10 x 1.25], [1.25 mm], [10.0 mm], [9.188 mm], [8.466 mm], [61.6 mm²],
  [M 12 x 1.25], [1.25 mm], [12.0 mm], [11.184 mm], [10.466 mm], [92.1 mm²],
  [M 14 x 1.5], [1.5 mm], [14.0 mm], [12.160 mm], [125 mm²], [125 mm²],
  [M 16 x 1.5], [1.5 mm], [16.0 mm], [15.026 mm], [14.160 mm], [167 mm²],
  [M 20 x 1.5], [1.5 mm], [20.0 mm], [19.026 mm], [18.160 mm], [272 mm²],
  [M 24 x 2], [2.0 mm], [24.0 mm], [22.701 mm], [21.546 mm], [384 mm²]
)

#v(16pt)
#text(weight: "bold", size: 14pt)[2. Table 11.2 — Joint Constants & Gasket Factors ($K$)]
#v(6pt)
#table(
  columns: (2fr, 1fr),
  align: (left, center),
  stroke: 0.4pt + rgb("#aaaaaa"),
  fill: (col, row) => if row == 0 { rgb("#e9ecef") } else if calc.even(row) { rgb("#f8f9fa") },
  [*Type of Joint / Gasket Connection*], [*Gasket Factor Value ($K$)*],
  [Metal to metal joint with through bolts], [0.00 to 0.10],
  [Hard copper gasket with long through bolts], [0.25 to 0.50],
  [Soft copper gasket with long through bolts], [0.50 to 0.75],
  [Soft packing with through bolts], [0.75 to 1.00],
  [Soft packing with studs], [1.00]
)

#v(14pt)
#block(
  width: 100%,
  stroke: 0.8pt + rgb("#000000"),
  inset: 10pt,
  fill: rgb("#f8f9fa")
)[
  #text(size: 12pt, weight: "bold")[Empirical Core Diameter Rule (When Tables are Unavailable):] \
  #v(4pt)
  #text(size: 11pt)[For standard metric coarse series fasteners: \
  Core Diameter: $d_c approx 0.84 d$ \
  Core Stress Area: $A_c approx pi/4 (0.84 d)^2$]
]

// ==========================================
// SECTION 1
// ==========================================
#pagebreak()
#section-heading("1", "Standard Tensile Capacity Analysis (M 30 Fasteners)")

#section-overview(
  [*System Parameters* \ Nominal Bolt Diameter: $d = 30 "mm"$ (M 30 Coarse Series) \ Safe Tensile Stress: $sigma_t = 42 "MPa" = 42 "N/mm"^2$ \ Preload $F_i = 0$],
  [*Design Protocol* \ Retrieve core stress area $A_c$ from Table 11.1 \ Calculate safe tensile load capacity $P = A_c sigma_t$]
)

#item-row(
  [*1. Core Stress Area Lookup ($A_c$)* \ Table 11.1 lookup for M 30 coarse series thread],
  [$
    #text(size: 20pt)[$A_c$] &= #text(size: 20pt)[$f(d)$] \
    &= 561 "mm"^2
  $]
)

#item-row(
  [*2. Safe Tensile Load Capacity ($P$)* \ Maximum allowable axial tension force without initial tightening],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$A_c times sigma_t$] \
    &= 561 "mm"^2 times 42 "N/mm"^2 \
    &= bold(23.562 "kN")
  $]
)

#item-row(
  [*3. Design Output*],
  [*Safe Tensile Load $P = 23.562 "kN"$*]
)

// ==========================================
// SECTION 2
// ==========================================
#pagebreak()
#section-heading("2", "Initial Tightening Stress & Preload Analysis (Tap Bolts)")

#section-overview(
  [*System Parameters* \ Nominal Tap Bolt Size: $d = 24 "mm"$ (M 24 Coarse Series) \ Clamped Rigid Machine Joint \ Neglect external separation load],
  [*Design Protocol* \ Lookup core root diameter $d_c$ from Table 11.1 \ Calculate initial tightening load $P = 2840 d$ \ Calculate induced tensile stress $sigma_t = P / (pi/4 d_c^2)$]
)

#item-row(
  [*1. Core Root Diameter Lookup ($d_c$)* \ Table 11.1 (coarse series) lookup for M 24 thread],
  [
    $ #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$20.32 "mm"$] $
  ]
)

#item-row(
  [*2. Initial Tightening Load ($P$)* \ Empirical initial tightening tension equation],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$2840 dot d$] \
    &= 2840 times 24 \
    &= 68160 "N"
  $]
)

#item-row(
  [*3. Induced Tightening Stress ($sigma_t$)* \ Initial tension force balance equation],
  [$
    68160 &= pi/4 (20.32)^2 dot sigma_t \
    #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$68160 / 324$] \
    &= bold(210 "MPa")
  $]
)

#item-row(
  [*4. Design Output*],
  [*Tightening Stress $sigma_t = 210 "MPa"$*]
)

// ==========================================
// SECTION 3
// ==========================================
#pagebreak()
#section-heading("3", "Lifting Eye Bolt Sizing & Thread Selection")

#section-overview(
  [*System Parameters* \ Lifting Load: $P = 60 "kN" = 60000 "N"$ \ Permissible Tensile Stress: $sigma_t = 100 "MPa" = 100 "N/mm"^2$ \ Thread Series: ISO Metric Coarse],
  [*Design Protocol* \ Equate lifting load to tensile capacity $P = pi/4 d_c^2 sigma_t$ \ Solve required core root diameter $d_c$ \ Select standard bolt from Table 11.1]
)

#item-row(
  [*1. Required Core Root Diameter ($d_c$)* \ Axial tension load equation for lifting eye bolt],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    60000 &= pi/4 (d_c)^2 times 100 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$27.64 "mm"$]
  $]
)

#item-row(
  [*2. Standard Thread Selection (Table 11.1)* \ Select standard coarse series thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 27.64 "mm" \
      d_c &= 28.706 "mm" \
      d &= 33 "mm"
    $
  ]
)

#item-row(
  [*3. Design Output*],
  [*Select Fastener Designation: M 33 Bolt ($d = 33 "mm", d_c = 28.706 "mm"$)*]
)

#figure-page(
  "3",
  "Lifting Eye Bolt",
  "Figures/fig 11.23.png",
  "Figure 11.23: Structural Lifting Eye Bolt Configuration and Load Path"
)

// ==========================================
// SECTION 4
// ==========================================
#pagebreak()
#section-heading("4", "Flanged Shaft Coupling Fastener Sizing under Torsional Shear")

#section-overview(
  [*System Parameters* \ Transmitted Torque: $T = 25 "N"dot"m" = 25000 "N"dot"mm"$ \ Pitch Circle Radius: $R_p = 30 "mm"$ \ Bolt Count: $n = 4$ | Allowable Shear Stress: $tau = 30 "MPa" = 30 "N/mm"^2$],
  [*Design Protocol* \ Calculate total tangential shearing load $P_s = T / R_p$ \ Equate $P_s$ to shear capacity of $n$ bolts $P_s = n (pi/4 d_c^2) tau$ \ Select standard bolt size from Table 11.1]
)

#item-row(
  [*1. Total Shearing Load ($P_s$)* \ Total tangential shearing force acting at PCD],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$T / R_p$] \
    &= 25000 / 30 \
    &= 833.3 "N"
  $]
)

#item-row(
  [*2. Required Core Diameter ($d_c$)* \ Solve root diameter for $n = 4$ bolts carrying shear],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$n dot [pi/4 (d_c)^2] dot tau$] \
    833.3 &= 4 dot [pi/4 (d_c)^2] times 30 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$2.97 "mm"$]
  $]
)

#item-row(
  [*3. Standard Thread Selection (Table 11.1)* \ Select standard coarse series thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 2.97 "mm" \
      d_c &= 3.141 "mm" \
      d &= 4 "mm"
    $
  ]
)

#item-row(
  [*4. Design Output*],
  [*Select Fastener Designation: M 4 Bolt ($d = 4 "mm", d_c = 3.141 "mm"$)*]
)

// ==========================================
// SECTION 5
// ==========================================
#pagebreak()
#section-heading("5", "Safety Valve Fulcrum Pin Sizing & Lever Equilibrium")

#section-overview(
  [*System Parameters* \ Valve Diameter: $D = 100 "mm"$ \ Blow-off Steam Pressure: $p = 1.6 "N/mm"^2$ \ Leverage Ratio: $L_1/L_2 = 8$ | Permissible Tensile Stress: $sigma_t = 50 "MPa"$],
  [*Design Protocol* \ Calculate upward steam force $F = pi/4 D^2 p$ \ Apply lever moment equilibrium for end load $W$ and fulcrum load $P = F - W$ \ Size fine metric thread $d_c$ for fulcrum pin]
)

#item-row(
  [*1. Total Upward Force on Valve ($F$)* \ Total steam pressure load on valve disc],
  [$
    #text(size: 20pt)[$F$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
    &= pi/4 (100)^2 times 1.6 \
    &= 12568 "N"
  $]
)

#item-row(
  [*2. Lever End Load ($W$) & Fulcrum Load ($P$)* \ Static moment equilibrium for Type 1 lever],
  [
    $
      #text(size: 20pt)[$W$] &= #text(size: 20pt)[$F / (L_1/L_2)$] \
      &= 12568 / 8 \
      &= 1571 "N"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$P$] &= #text(size: 20pt)[$F - W$] \
      &= 12568 - 1571 \
      &= 10997 "N"
    $
  ]
)

#item-row(
  [*3. Required Core Diameter ($d_c$)* \ Solve root core diameter for fulcrum screw],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    10997 &= pi/4 (d_c)^2 times 50 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$16.7 "mm"$]
  $]
)

#item-row(
  [*4. Standard Fine Thread Selection (Table 11.1)* \ Select fine series metric thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 16.7 "mm" \
      d_c &= 18.376 "mm" \
      "Fine thread: M 20" times 1.5
    $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Select Fine Series Thread: M 20 x 1.5 ($d = 20 "mm", d_c = 18.376 "mm"$)*]
)

// ==========================================
// SECTION 6
// ==========================================
#pagebreak()
#section-heading("6", "Cylinder Head Cover Stud Layout & Leak-Proof Pitch Verification")

#section-overview(
  [*System Parameters* \ Cylinder Effective Diameter: $D = 350 "mm"$ \ Maximum Steam Pressure: $p = 1.25 "N/mm"^2$ \ Permissible Stud Stress: $sigma_t = 33 "MPa" = 33 "N/mm"^2$],
  [*Design Protocol* \ Calculate total upward steam load $P = pi/4 D^2 p$ \ Assume M 24 studs ($d_c = 20.32 "mm"$) to find count $n = P / P_1$ \ Verify leak-proof pitch limits $20 sqrt(d_1) <= p_c <= 30 sqrt(d_1)$]
)

#item-row(
  [*1. Total Upward Steam Load ($P$)* \ Total gas pressure load on cylinder cover],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
    &= pi/4 (350)^2 times 1.25 \
    &= 120265 "N"
  $]
)

#item-row(
  [*2. Capacity per M 24 Stud ($P_1$) & Stud Count ($n$)* \ Resisting force capacity per M 24 stud],
  [
    $
      #text(size: 20pt)[$P_1$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
      &= pi/4 (20.32)^2 times 33 \
      &= 10700 "N"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$n$] &= #text(size: 20pt)[$P / P_1$] \
      &= 120265 / 10700 \
      &= 11.24 \
      &=> bold(n = 12 "studs")
    $
  ]
)

#item-row(
  [*3. Pitch Circle Diameter ($D_p$) & Circumferential Pitch ($p_c$)* \ Pitch circle geometry],
  [
    $
      #text(size: 20pt)[$D_p$] &= #text(size: 20pt)[$D + 2t + 3d_1$] \
      &= 350 + 2(10) + 3(25) \
      &= 445 "mm"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$p_c$] &= #text(size: 20pt)[$(pi D_p) / n$] \
      &= (pi times 445) / 12 \
      &= 116.5 "mm"
    $
  ]
)

#item-row(
  [*4. Leak-Proof Pitch Verification* \ Empirical leak-tight pitch limits],
  [
    $
      #text(size: 20pt)[$p_c, "min"$] &= #text(size: 20pt)[$20 sqrt(d_1)$] \
      &= 20 sqrt(25) \
      &= 100 "mm"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$p_c, "max"$] &= #text(size: 20pt)[$30 sqrt(d_1)$] \
      &= 30 sqrt(25) \
      &= 150 "mm"
    $
    #v(10pt)
    $ 100 "mm" <= 116.5 "mm" <= 150 "mm" bold("(SAFE & SATISFACTORY)") $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Use 12 Studs of M 24 Size ($n = 12$, M 24 Studs)*]
)

#figure-page(
  "6",
  "Cylinder Cover Stud Layout",
  "Figures/fig 11.27.png",
  "Figure 11.27: Cylinder Head Joint & Stud Pitch Circle Assembly"
)

// ==========================================
// SECTION 7
// ==========================================
#pagebreak()
#section-heading("7", "Pressure Vessel Inspection Cover Plate & Bolt Sizing")

#section-overview(
  [*System Parameters* \ Inspection Hole Diameter: $D = 120 "mm"$ ($r = 60 "mm"$) \ Internal Vessel Pressure: $p = 6 "N/mm"^2$ \ Plate Tensile Stress: $sigma_t = 60 "MPa"$ | Bolt Stress: $sigma_("tb") = 40 "MPa"$],
  [*Design Protocol* \ Part 1: Calculate shell wall thickness $t$ via Lame \ Part 2: Determine bolt count $n$ for M 24 and check pitch $p_c$ \ Part 3: Calculate cover plate thickness $t_1$ under bending moment]
)

#item-row(
  [*1. Shell Wall Thickness ($t$)* \ Lame equation for thick pressure vessels],
  [
    $
      #text(size: 20pt)[$t$] &= #text(size: 20pt)[$r [sqrt((sigma_t + p)/(sigma_t - p)) - 1]$] \
      &= 60 [sqrt((60 + 6)/(60 - 6)) - 1] \
      &= 6.3 "mm"
    $
    #v(4pt)
    #text(weight: "bold")[Adopt Shell Thickness $t = 10 "mm"$]
  ]
)

#item-row(
  [*2. Total Upward Force ($P$)* \ Upward pressure force acting on inspection cover plate],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
    &= pi/4 (120)^2 times 6 \
    &= 67860 "N"
  $]
)

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

#item-row(
  [*5. Pitch Circle Diameter ($D_p$)* \ Hole diameter $d_1 = 25 "mm"$ for M 24 bolts],
  [$
    #text(size: 20pt)[$D_p$] &= #text(size: 20pt)[$D + 2t + 3d_1$] \
    &= 120 + 2(10) + 3(25) \
    &= 215 "mm"
  $]
)

#item-row(
  [*6. Circumferential Pitch ($p_c$)* \ Pitch spacing for $n = 6$ bolts on PCD],
  [$
    #text(size: 20pt)[$p_c$] &= #text(size: 20pt)[$(pi D_p) / n$] \
    &= (pi times 215) / 6 \
    &= 112.6 "mm"
  $]
)

#item-row(
  [*7. Minimum Pitch Limit ($p_c, "min"$)* \ Empirical lower limit $20 sqrt(d_1)$],
  [$
    #text(size: 20pt)[$p_c, "min"$] &= #text(size: 20pt)[$20 sqrt(d_1)$] \
    &= 20 sqrt(25) \
    &= 100 "mm"
  $]
)

#item-row(
  [*8. Maximum Pitch Limit ($p_c, "max"$)* \ Empirical upper limit $30 sqrt(d_1)$],
  [$
    #text(size: 20pt)[$p_c, "max"$] &= #text(size: 20pt)[$30 sqrt(d_1)$] \
    &= 30 sqrt(25) \
    &= 150 "mm"
  $]
)

#item-row(
  [*9. Leak-Proof Pitch Verification* \ Pitch range verification],
  [$ 100 "mm" <= 112.6 "mm" <= 150 "mm" bold("(SAFE & SATISFACTORY)") $]
)

#item-row(
  [*10. Selected Bolt Designation* \ Pitch $112.6 "mm"$ is within $100 "mm"$ to $150 "mm"$ limit],
  [*Size of Bolt = M 24 Fasteners ($d = 24 "mm", d_c = 20.32 "mm"$)*]
)

#item-row(
  [*11. Cover Plate Bending Moment ($M$)* \ Bending moment acting at central section A-A],
  [$
    #text(size: 20pt)[$M$] &= #text(size: 20pt)[$0.053 P D_p$] \
    &= 0.053 times 67860 times 215 \
    &= 773265 "N"dot"mm"
  $]
)

#item-row(
  [*12. Outside Diameter of Cover ($D_o$)* \ Outer plate boundary diameter],
  [$
    #text(size: 20pt)[$D_o$] &= #text(size: 20pt)[$D_p + 3d_1$] \
    &= 215 + 3(25) \
    &= 290 "mm"
  $]
)

#item-row(
  [*13. Plate Bending Width ($w$)* \ Net plate width carrying bending],
  [$
    #text(size: 20pt)[$w$] &= #text(size: 20pt)[$D_o - 2d_1$] \
    &= 290 - 2(25) \
    &= 240 "mm"
  $]
)

#item-row(
  [*14. Cover Section Modulus ($Z$)* \ Bending section modulus of plate],
  [$
    #text(size: 20pt)[$Z$] &= #text(size: 20pt)[$1/6 w (t_1)^2$] \
    &= 1/6 (240) (t_1)^2 \
    &= 40 (t_1)^2
  $]
)

#item-row(
  [*15. Required Cover Thickness ($t_1$)* \ Solved thickness of cover plate],
  [$
    #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$M / Z$] \
    60 &= 773265 / (40 (t_1)^2) \
    (t_1)^2 &= 773265 / (40 times 60) \
    &= 322 \
    t_1 &= bold(18 "mm")
  $]
)

#item-row(
  [*16. Design Output*],
  [*Final Design: 6 Bolts of M 24 Size, Cover Plate Thickness $t_1 = 18 "mm"$*]
)

// ==========================================
// SECTION 8
// ==========================================
#pagebreak()
#section-heading("8", "Preloaded Flange Fasteners with Gasket Compression (Soft Copper)")

#section-overview(
  [*System Parameters* \ Steam Pressure: $p = 0.7 "N/mm"^2$ \ Number of Bolts: $n = 12$ \ Effective Cylinder Diameter: $D = 300 "mm"$ \ Allowable Stress: $sigma_t = 100 "MPa"$ | Soft Copper Gasket Ratio: $K = 0.5$],
  [*Design Protocol* \ Calculate external load per bolt $P_2 = P_("total") / 12$ \ Formulate resultant axial load $P = 2840 d + K P_2$ \ Solve governing quadratic for nominal diameter $d$]
)

#item-row(
  [*1. Total External Load on Cylinder Head ($P_("total")$)* \ Upward steam pressure force on 12 bolts],
  [$
    #text(size: 20pt)[$P_("total")$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
    &= pi/4 (300)^2 times 0.7 \
    &= 49490 "N"
  $]
)

#item-row(
  [*2. External Load per Bolt ($P_2$)* \ External load shared per bolt],
  [$
    #text(size: 20pt)[$P_2$] &= #text(size: 20pt)[$P_("total") / n$] \
    &= 49490 / 12 \
    &= 4124 "N"
  $]
)

#item-row(
  [*3. Initial Tightening Tension ($P_1$)* \ Empirical tightening tension formula],
  [$
    #text(size: 20pt)[$P_1$] &= #text(size: 20pt)[$2840 d "N" quad (d "in mm")$]
  $]
)

#item-row(
  [*4. Gasket Compression Factor ($K$)* \ Table 11.2 for soft copper gasket with long through bolts],
  [*Minimum Gasket Factor $K = 0.5$*]
)

#item-row(
  [*5. Resultant Axial Load per Bolt ($P$)* \ Combined preload and gasket compression load],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$P_1 + K dot P_2$] \
    &= 2840 d + 0.5 times 4124 \
    &= (2840 d + 2062) "N"
  $]
)

#item-row(
  [*6. Resisting Load Capacity per Bolt ($P$)* \ Tensile strength with core diameter $d_c = 0.84 d$],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    &= pi/4 (0.84 d)^2 times 100 \
    &= 55.4 d^2
  $]
)

#item-row(
  [*7. Governing Quadratic Equation for Size ($d$)* \ Equating resultant load to resisting load],
  [$
    55.4 d^2 &= 2840 d + 2062 \
    55.4 d^2 - 2840 d - 2062 &= 0 \
    d^2 - 51.3 d - 37.2 &= 0
  $]
)

#item-row(
  [*8. Quadratic Solution for Nominal Diameter ($d$)* \ Quadratic formula evaluation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$(51.3 + sqrt((51.3)^2 + 4(37.2))) / 2$] \
    &= (51.3 + 52.7) / 2 \
    &= 52 "mm"
  $]
)

#item-row(
  [*9. Design Output / Selected Bolt*],
  [*Size of Bolt = M 52 Fasteners ($d = 52 "mm"$)*]
)

// ==========================================
// SECTION 9
// ==========================================
#pagebreak()
#section-heading("9", "Soderberg Fatigue & Preload Design Criterion")

#section-overview(
  [*System Parameters* \ $D = 300 "mm", p = 1.5 "N/mm"^2, n = 8, sigma_y = 330 "MPa", sigma_e = 240 "MPa"$ \ Initial Preload: $P_1 = 1.5 P_2$, Gasket Factor: $K = 0.5$, "F.S." = 2],
  [*Design Protocol* \ Calculate maximum load $P_1 + K P_2$ & minimum load $P_1$ per bolt \ Determine mean load $P_m$ and variable load $P_v$ per bolt \ Apply Soderberg fatigue equation to solve core diameter $d_c$]
)

#item-row(
  [*1. Total Steam Load ($P_2$) & Initial Preload ($P_1$)* \ Steam pressure force and initial preload tension],
  [
    $
      #text(size: 20pt)[$P_2$] &= #text(size: 20pt)[$pi/4 D^2 dot p$] \
      &= pi/4 (300)^2 times 1.5 \
      &= 106040 "N"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$P_1$] &= #text(size: 20pt)[$1.5 P_2$] \
      &= 1.5 times 106040 \
      &= 159060 "N"
    $
  ]
)

#item-row(
  [*2. Maximum & Minimum Load per Bolt* \ Load allocation shared across $n = 8$ bolts],
  [$
    #text(size: 20pt)[$P_("max")$] &= #text(size: 20pt)[$P_1 + K P_2$] \
    &= 159060 + 0.5(106040) \
    &= 212080 "N" \
    P_("max, bolt") &= 212080 / 8 \
    &= 26510 "N" \
    P_("min, bolt") &= 159060 / 8 \
    &= 19882 "N"
  $]
)

#item-row(
  [*3. Mean ($P_m$) & Variable ($P_v$) Loads per Bolt* \ Mean and alternating cyclic load components],
  [
    $
      #text(size: 20pt)[$P_m$] &= #text(size: 20pt)[$(P_("max, bolt") + P_("min, bolt")) / 2$] \
      &= (26510 + 19882) / 2 \
      &= 23196 "N"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$P_v$] &= #text(size: 20pt)[$(P_("max, bolt") - P_("min, bolt")) / 2$] \
      &= (26510 - 19882) / 2 \
      &= 3314 "N"
    $
  ]
)

#item-row(
  [*4. Mean ($sigma_m$) & Variable ($sigma_v$) Stresses* \ Stress area $A_c = pi/4 (d_c)^2 = 0.7854 (d_c)^2$],
  [
    $
      #text(size: 20pt)[$sigma_m$] &= #text(size: 20pt)[$P_m / A_c$] \
      &= 29534 / (d_c)^2 "N/mm"^2
    $
    #v(10pt)
    $
      #text(size: 20pt)[$sigma_v$] &= #text(size: 20pt)[$P_v / A_c$] \
      &= 4220 / (d_c)^2 "N/mm"^2
    $
  ]
)

#item-row(
  [*5. Soderberg Fatigue Failure Equation* \ Soderberg line equation substitution],
  [$
    #text(size: 20pt)[$sigma_v$] &= #text(size: 20pt)[$(sigma_e / "F.S.") [1 - (sigma_m dot "F.S.") / sigma_y]$] \
    4220 / (d_c)^2 &= (240 / 2) [1 - (29534 / (d_c)^2) dot (2 / 330)] \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$14.63 "mm"$]
  $]
)

#item-row(
  [*6. Standard Thread Selection (Table 11.1)* \ Select standard coarse thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 14.63 "mm" \
      d_c &= 14.933 "mm" \
      d &= 18 "mm"
    $
  ]
)

#item-row(
  [*7. Design Output*],
  [*Select Fastener Designation: M 18 Bolt ($d = 18 "mm", d_c = 14.933 "mm"$)*]
)

// ==========================================
// SECTION 10
// ==========================================
#pagebreak()
#section-heading("10", "Boiler Longitudinal Bar Stay Sizing")

#section-overview(
  [*System Parameters* \ Pitch of Stays: $350 "mm" times 350 "mm"$ \ Steam Pressure: $p = 0.84 "N/mm"^2$ \ Permissible Tensile Stress: $sigma_t = 56 "MPa" = 56 "N/mm"^2$],
  [*Design Protocol* \ Calculate area supported by each stay $A = p_s times p_s$ \ Calculate steam force $P = A dot p$ \ Solve required core diameter $d_c$ and select bolt size]
)

#item-row(
  [*1. Area Supported by Each Stay ($A$)* \ Area of boiler plate supported per stay],
  [$
    #text(size: 20pt)[$A$] &= #text(size: 20pt)[$p_s times p_s$] \
    &= 350 times 350 \
    &= 122500 "mm"^2
  $]
)

#item-row(
  [*2. Steam Force Acting on Stay ($P$)* \ Total steam pressure load on supported area],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$A dot p$] \
    &= 122500 "mm"^2 times 0.84 "N/mm"^2 \
    &= 102900 "N"
  $]
)

#item-row(
  [*3. Required Core Root Diameter ($d_c$)* \ Core diameter required for permissible tension stress],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    102900 &= pi/4 (d_c)^2 times 56 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$48.37 "mm"$]
  $]
)

#item-row(
  [*4. Standard Thread Selection (Table 11.1)* \ Select standard coarse thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 48.37 "mm" \
      d_c &= 49.177 "mm" \
      d &= 56 "mm"
    $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Select Fastener Designation: M 56 Bolt ($d = 56 "mm", d_c = 49.177 "mm"$)*]
)

#figure-page(
  "10",
  "Boiler Bar Stay Arrangement",
  "Figures/fig 11.29.png",
  "Figure 11.29: Boiler Longitudinal Bar Stay Mounting Scheme"
)

// ==========================================
// SECTION 11
// ==========================================
#pagebreak()
#section-heading("11", "Turned Shank & Drilled Hole Bolts of Uniform Strength")

#section-overview(
  [*System Parameters* \ Nominal Bolt Size: $D_o = 48 "mm"$ (M 48 Coarse Series) \ Objective: Determine drilled axial hole diameter $D$ for uniform strength],
  [*Design Protocol* \ Lookup core root diameter $D_c$ from Table 11.1 \ Equate unthreaded drilled shank area to core root area \ Solve $D = sqrt(D_o^2 - D_c^2)$]
)

#item-row(
  [*1. Core Diameter Lookup ($D_c$)* \ Table 11.1 lookup for M 48 coarse thread],
  [$
    #text(size: 20pt)[$D_c$] &= #text(size: 20pt)[$f(D_o)$] \
    &= 41.795 "mm"
  $]
)

#item-row(
  [*2. Area Equality Condition for Uniform Strength* \ Equate unthreaded drilled shank area to root area],
  [$
    #text(size: 20pt)[$pi/4 (D_o^2 - D^2)$] &= #text(size: 20pt)[$pi/4 D_c^2$] \
    D_o^2 - D^2 &= D_c^2
  $]
)

#item-row(
  [*3. Drilled Axial Hole Diameter ($D$)* \ Solve central axial hole diameter],
  [$
    #text(size: 20pt)[$D$] &= #text(size: 20pt)[$sqrt(D_o^2 - D_c^2)$] \
    &= sqrt((48)^2 - (41.795)^2) \
    &= bold(23.64 "mm")
  $]
)

#item-row(
  [*4. Design Output / Hole Diameter*],
  [*Diameter of Hole $D = 23.64 "mm"quad bold("Ans.")$*]
)

// ==========================================
// SECTION 12
// ==========================================
#pagebreak()
#section-heading("12", "Wall Brackets under Parallel Eccentric Tensile Loading")

#section-overview(
  [*System Parameters* \ Load: $W = 30 "kN" = 30000 "N"$ \ Eccentricity Arm: $L = 500 "mm"$ \ Distances: $L_1 = 80 "mm", L_2 = 250 "mm"$ \ Bolt Count: $n = 4$ (2 per row) | Allowable Stress: $sigma_t = 60 "MPa"$],
  [*Design Protocol* \ Calculate direct tensile load $W_("t1") = W / n$ \ Calculate unit secondary load $w = (W L)/(2(L_1^2 + L_2^2))$ \ Calculate total tension $W_t = W_("t1") + w L_2$ and core size $d_c$]
)

#item-row(
  [*1. Direct Tensile Load per Bolt ($W_("t1")$)* \ Direct load shared equally by 4 bolts],
  [$
    #text(size: 20pt)[$W_("t1")$] &= #text(size: 20pt)[$W / n$] \
    &= 30000 / 4 \
    &= 7500 "N" \
    &= 7.5 "kN"
  $]
)

#item-row(
  [*2. Secondary Tensile Load on Upper Bolts ($W_("t2")$)* \ Moment equilibrium load factor $w$],
  [
    $
      #text(size: 20pt)[$w$] &= #text(size: 20pt)[$(W dot L) / (2 (L_1^2 + L_2^2))$] \
      &= (30 times 500) / (2 (80^2 + 250^2)) \
      &= 0.10886 "kN/mm"
    $
    #v(10pt)
    $
      #text(size: 20pt)[$W_("t2")$] &= #text(size: 20pt)[$w dot L_2$] \
      &= 0.10886 times 250 \
      &= 27.215 "kN" \
      &= 27215 "N"
    $
  ]
)

#item-row(
  [*3. Total Maximum Tensile Load ($W_t$)* \ Combined direct and secondary tension on critical top bolts],
  [$
    #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$W_("t1") + W_("t2")$] \
    &= 7.5 + 27.215 \
    &= 34.715 "kN" \
    &= 34715 "N"
  $]
)

#item-row(
  [*4. Required Core Diameter ($d_c$)* \ Solve root diameter for top row fasteners],
  [$
    #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    34715 &= pi/4 (d_c)^2 times 60 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$27.14 "mm"$]
  $]
)

#item-row(
  [*5. Standard Thread Selection (Table 11.1)* \ Select standard coarse series thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 27.14 "mm" \
      d_c &= 28.706 "mm" \
      d &= 33 "mm"
    $
  ]
)

#item-row(
  [*6. Design Output*],
  [*Select Fastener Designation: M 33 Bolt ($d = 33 "mm", d_c = 28.706 "mm"$)*]
)

#figure-page(
  "12",
  "Wall Bracket (Parallel Load)",
  "Figures/fig 11.31.png",
  "Figure 11.31: Wall Bracket under Parallel Eccentric Load"
)

// ==========================================
// SECTION 13
// ==========================================
#pagebreak()
#section-heading("13", "Crane Runway T-Bracket Stress Analysis & Fastening Bolts")

#section-overview(
  [*System Parameters* \ Wheel Load: $W = 15 "kN" = 15000 "N"$ \ Fastening Bolts: $d = 25 "mm"$ ($n = 4$) \ T-Section: Flange $135 times 25$, Web $175 times 25$, Total Depth $200 "mm"$],
  [*Design Protocol* \ Part 1: Calculate centroid $overline(y)$, moment of inertia $I_("GG")$, and max arm stresses $sigma_t, sigma_c$ \ Part 2: Calculate direct & secondary bolt tension to find bolt stress $sigma_("tb")$]
)

#item-row(
  [*1. Centroid ($overline(y)$) & Section Area ($A$)* \ T-section geometry evaluation],
  [
    $
      A_1 &= 135 times 25 \
      &= 3375 "mm"^2 \
      A_2 &= 175 times 25 \
      &= 4375 "mm"^2
    $
    #v(6pt)
    $
      #text(size: 20pt)[$A$] &= #text(size: 20pt)[$A_1 + A_2$] \
      &= 7750 "mm"^2
    $
    #v(6pt)
    $
      #text(size: 20pt)[$overline(y)$] &= #text(size: 20pt)[$(A_1 y_1 + A_2 y_2) / A$] \
      &= (3375 times 12.5 + 4375 times 112.5) / 7750 \
      &= 68.95 "mm" \
      &approx 69 "mm" \
      y_1 &= 69 "mm" quad ("Top") \
      y_2 &= 200 - 69 \
      &= 131 "mm" quad ("Bottom")
    $
  ]
)

#item-row(
  [*2. Moment of Inertia ($I_("GG")$) & Section Moduli ($Z_1, Z_2$)* \ Parallel axis theorem for T-section],
  [
    $
      #text(size: 20pt)[$I_("GG")$] &= #text(size: 20pt)[$sum (I_i + A_i d_i^2)$] \
      &= [(135(25)^3)/12 + 3375(56.5)^2] + [(25(175)^3)/12 + 4375(43.5)^2] \
      &= 30.4 times 10^6 "mm"^4
    $
    #v(6pt)
    $
      #text(size: 20pt)[$Z_1$] &= #text(size: 20pt)[$I_("GG") / y_1$] \
      &= (30.4 times 10^6) / 69 \
      &= 440.6 times 10^3 "mm"^3
    $
    #v(6pt)
    $
      #text(size: 20pt)[$Z_2$] &= #text(size: 20pt)[$I_("GG") / y_2$] \
      &= (30.4 times 10^6) / 131 \
      &= 232 times 10^3 "mm"^3
    $
  ]
)

#item-row(
  [*3. Bracket Arm Stresses at Section X-X* \ Bending moment and direct stress combination],
  [
    $
      M &= 15000(200 + 69) \
      &= 4.035 times 10^6 "N"dot"mm" \
      sigma_("b1") &= M / Z_1 \
      &= 9.16 "N/mm"^2 \
      sigma_("b2") &= M / Z_2 \
      &= 17.4 "N/mm"^2 \
      sigma_("t1") &= W / A \
      &= 1.94 "N/mm"^2
    $
    #v(6pt)
    $
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$sigma_("b1") + sigma_("t1")$] \
      &= 9.16 + 1.94 \
      &= bold(11.1 "MPa" quad ("Tensile"))
    $
    #v(6pt)
    $
      #text(size: 20pt)[$sigma_c$] &= #text(size: 20pt)[$sigma_("b2") - sigma_("t1")$] \
      &= 17.4 - 1.94 \
      &= bold(15.46 "MPa" quad ("Compressive"))
    $
  ]
)

#item-row(
  [*4. Fastening Bolt Loads ($W_("t1"), W_("t2"), W_t$)* \ Tilting edge $EE$ load allocation],
  [
    $
      L_1 &= 50 "mm" \
      L_2 &= 375 "mm" \
      L &= 525 "mm" \
      W_("t1") &= W / n \
      &= 15000 / 4 \
      &= 3750 "N" \
      w &= (W dot L) / (2 (L_1^2 + L_2^2)) \
      &= 27.5 "N/mm" \
      W_("t2") &= w dot L_2 \
      &= 27.5 times 375 \
      &= 10312.5 "N"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$W_("t1") + W_("t2")$] \
      &= 3750 + 10312.5 \
      &= 14062.5 "N"
    $
  ]
)

#item-row(
  [*5. Maximum Tensile Stress in Fastening Bolts ($sigma_("tb")$)* \ Bolt stress evaluation],
  [
    $
      d_c &= 0.84 d \
      &= 0.84 times 25 \
      &= 21 "mm" \
      #text(size: 20pt)[$sigma_("tb")$] &= #text(size: 20pt)[$W_t / (pi/4 (d_c)^2)$] \
      &= 14062.5 / (pi/4 (21)^2) \
      &= bold(40.6 "MPa")
    $
  ]
)

#item-row(
  [*6. Design Output*],
  [*Arm Tensile $sigma_t = 11.1 "MPa"$, Arm Compressive $sigma_c = 15.46 "MPa"$, Bolt Stress $sigma_"tb" = 40.6 "MPa"$*]
)

#figure-page(
  "13",
  "Crane Runway T-Bracket",
  "Figures/fig 11.32.png",
  "Figure 11.32: Crane Runway T-Bracket Structure",
  second-fig: "Figures/fig 11.33 (diagram in solution of Eg. 11.13).png",
  second-caption: "Figure 11.33: T-Section Stress Distribution Diagram"
)

// ==========================================
// SECTION 14
// ==========================================
#pagebreak()
#section-heading("14", "Travelling Crane Bracket Sizing (Combined Shear & Tension)")

#section-overview(
  [*System Parameters* \ Load: $W = 12 "kN" = 12000 "N"$ \ Load Arm: $L = 400 "mm"$ \ Distances: $L_1 = 50 "mm", L_2 = 375 "mm"$ \ Permissible Tensile Stress: $sigma_t = 84 "MPa"$ | Bolt Count: $n = 4$],
  [*Design Protocol* \ Part 1: Calculate direct shear $W_s$, secondary tension $W_t$, and equivalent load $W_("te")$ via Maximum Principal Stress Theory \ Part 2: Calculate arm thickness $t$ for depth $b = 250 "mm"$]
)

#item-row(
  [*1. Direct Shear ($W_s$) & Secondary Tension ($W_t$)* \ Primary shear load and secondary tilting tension per bolt],
  [
    $
      #text(size: 20pt)[$W_s$] &= #text(size: 20pt)[$W / n$] \
      &= 12000 / 4 \
      &= 3000 "N" \
      &= 3 "kN"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$(W dot L dot L_2) / (2 (L_1^2 + L_2^2))$] \
      &= (12 times 400 times 375) / (2 (50^2 + 375^2)) \
      &= 6.288 "kN" \
      &= 6288 "N"
    $
  ]
)

#item-row(
  [*2. Equivalent Tensile Load ($W_("te")$)* \ Maximum Principal Stress Theory for combined shear & tension],
  [$
    #text(size: 20pt)[$W_("te")$] &= #text(size: 20pt)[$1/2 [W_t + sqrt(W_t^2 + 4 W_s^2)]$] \
    &= 1/2 [6.29 + sqrt((6.29)^2 + 4(3)^2)] \
    &= 7.49 "kN" \
    &= 7490 "N"
  $]
)

#item-row(
  [*3. Required Core Diameter ($d_c$) & Bolt Selection* \ Table 11.1 lookup for metric coarse thread],
  [$
    #text(size: 20pt)[$W_("te")$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    7490 &= pi/4 (d_c)^2 times 84 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$10.65 "mm"$]
  $]
)

#item-row(
  [*4. Rectangular Cross-Section of Bracket Arm ($t times b$)* \ Bracket arm bending modulus],
  [
    $
      M &= W dot L \
      &= 12 times 10^3 times 400 \
      &= 4.8 times 10^6 "N"dot"mm" \
      #text(size: 20pt)[$Z$] &= #text(size: 20pt)[$1/6 dot t dot b^2$] \
      &= 1/6 dot t dot 250^2
    $
    #v(6pt)
    $
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$M / Z$] \
      84 &= (4.8 times 10^6) / (1/6 dot t dot 250^2) \
      t &= bold(5.5 "mm")
    $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Final Design: M 14 Bolts, Bracket Arm Dimensions $5.5 "mm" times 250 "mm"$*]
)

#figure-page(
  "14",
  "Travelling Crane Bracket",
  "Figures/fig 11.35.png",
  "Figure 11.35: Travelling Crane Wall Bracket Structural Geometry"
)

// ==========================================
// SECTION 15
// ==========================================
#pagebreak()
#section-heading("15", "Inclined Load Bracket Fastener Sizing & Arm Thickness Analysis")

#section-overview(
  [*System Parameters* \ Inclined Load: $W = 40 "kN" = 40000 "N"$ at $theta = 60^deg$ to vertical \ Stresses: $sigma_t = 70 "MPa", tau = 50 "MPa", sigma_c = 105 "MPa"$ \ Arm Depth: $b = 130 "mm"$ | Bolts: $n = 4, L_1 = 60 "mm", L_2 = 180 "mm"$],
  [*Design Protocol* \ Part 1: Resolve load into $W_H, W_V$ and net moment $T_("net") = T_V - T_H$ \ Part 2: Calculate bolt tension $W_t$, equivalent load $W_("te")$, and size $d_c$ \ Part 3: Calculate arm thickness $t$ via principal tensile stress $sigma_("t(max)")$]
)

#item-row(
  [*1. Force Resolution & Net Turning Moment ($T_("net")$)* \ Horizontal and vertical force components],
  [
    $
      #text(size: 20pt)[$W_H$] &= #text(size: 20pt)[$W sin theta$] \
      &= 40 sin 60^deg \
      &= 34.64 "kN" \
      &= 34640 "N" \
      #text(size: 20pt)[$W_V$] &= #text(size: 20pt)[$W cos theta$] \
      &= 40 cos 60^deg \
      &= 20 "kN" \
      &= 20000 "N"
    $
    #v(6pt)
    $
      T_H &= 34640 times 20 \
      &= 692.8 times 10^3 "N"dot"mm" \
      T_V &= 20000 times 175 \
      &= 3500 times 10^3 "N"dot"mm" \
      #text(size: 20pt)[$T_("net")$] &= #text(size: 20pt)[$T_V - T_H$] \
      &= (3500 - 692.8) times 10^3 \
      &= 2807.2 times 10^3 "N"dot"mm"
    $
  ]
)

#item-row(
  [*2. Fixing Bolts Sizing ($W_t, W_s, W_("te"), d_c$)* \ Direct & secondary load combination on critical top bolts],
  [
    $
      W_("t1") &= W_H / n \
      &= 8660 "N" \
      W_s &= W_V / n \
      &= 5000 "N" \
      w &= (T_("net")) / (2 (L_1^2 + L_2^2)) \
      &= 38.99 "N/mm" \
      W_("t2") &= w dot L_2 \
      &= 38.99 times 180 \
      &= 7020 "N" \
      W_t &= W_("t1") + W_("t2") \
      &= 8660 + 7020 \
      &= 15680 "N"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$W_("te")$] &= #text(size: 20pt)[$1/2 [W_t + sqrt(W_t^2 + 4 W_s^2)]$] \
      &= 1/2 [15680 + sqrt((15680)^2 + 4(5000)^2)] \
      &= 17140 "N" \
      d_c &= 17.65 "mm"
    $
  ]
)

#item-row(
  [*3. Bracket Arm Thickness ($t$ via Principal Stress)* \ Arm stress combination],
  [
    $
      Z &= 2817 t \
      sigma_("t1") &= W_H / A \
      &= 266.5 / t \
      sigma_("t2") &= M_H / Z \
      &= 430.4 / t \
      sigma_("t3") &= M_V / Z \
      &= 1420 / t \
      sigma_t &= sigma_("t1") + sigma_("t2") + sigma_("t3") \
      &= 2116.9 / t \
      tau &= W_V / A \
      &= 154 / t
    $
    #v(6pt)
    $
      #text(size: 20pt)[$sigma_("t(max)")$] &= #text(size: 20pt)[$sigma_t / 2 + 1/2 sqrt(sigma_t^2 + 4 tau^2)$] \
      70 &= 2128.05 / t \
      t &= bold(31 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output*],
  [*Final Design: M 22 Bolts, Bracket Arm Thickness $t = 31 "mm"$*]
)

#figure-page(
  "15",
  "Inclined Load Bracket",
  "Figures/fig 11.36.png",
  "Figure 11.36: Wall Bracket under Inclined Load",
  second-fig: "Figures/fig 11.37 (diagram in solution of Eg. 11.15).png",
  second-caption: "Figure 11.37: Load Resolution & Moment Arm Diagram"
)

// ==========================================
// SECTION 16
// ==========================================
#pagebreak()
#section-heading("16", "Offset I-Section Bracket under Inclined Loading")

#section-overview(
  [*System Parameters* \ Pull Load: $W = 10 "kN" = 10000 "N"$ at $theta = 60^deg$ to vertical \ Stresses: $sigma_t = 100 "MPa", tau = 60 "MPa"$ \ Bolt Count: $n = 4$ | I-Section Flange Width: $b = 3t$],
  [*Design Protocol* \ Part 1: Resolve load into $W_H, W_V$ and net moment $T_("net") = T_V - T_H$ \ Part 2: Calculate bolt tension $W_t$, equivalent load $W_("te")$, and size $d_c$ \ Part 3: Calculate I-section arm thickness $t$ and width $b = 3t$]
)

#item-row(
  [*1. Force Resolution & Net Turning Moment ($T_("net")$)* \ Component forces and net moment about tilting edge $E$],
  [
    $
      #text(size: 20pt)[$W_H$] &= #text(size: 20pt)[$W sin theta$] \
      &= 10 sin 60^deg \
      &= 8.66 "kN" \
      &= 8660 "N" \
      #text(size: 20pt)[$W_V$] &= #text(size: 20pt)[$W cos theta$] \
      &= 10 cos 60^deg \
      &= 5 "kN" \
      &= 5000 "N"
    $
    #v(6pt)
    $
      T_H &= 433 "N"dot"m" \
      T_V &= 1500 "N"dot"m" \
      #text(size: 20pt)[$T_("net")$] &= #text(size: 20pt)[$T_V - T_H$] \
      &= 1500 - 433 \
      &= 1067 "N"dot"m"
    $
  ]
)

#item-row(
  [*2. Fixing Bolts Sizing ($W_t, W_s, W_("te"), d_c$)* \ Bolt load calculations],
  [
    $
      L_1 &= 0.0375 "m" \
      L_2 &= 0.2125 "m" \
      W_("t1") &= W_H / n \
      &= 2165 "N" \
      W_s &= W_V / n \
      &= 1250 "N" \
      w &= (T_("net")) / (2 (L_1^2 + L_2^2)) \
      &= 11470 "N/m" \
      W_("t2") &= w dot L_2 \
      &= 11470 times 0.2125 \
      &= 2435 "N" \
      W_t &= W_("t1") + W_("t2") \
      &= 2165 + 2435 \
      &= 4600 "N"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$W_("te")$] &= #text(size: 20pt)[$1/2 [W_t + sqrt(W_t^2 + 4 W_s^2)]$] \
      &= 1/2 [4600 + sqrt((4600)^2 + 4(1250)^2)] \
      &= 4920 "N" \
      d_c &= 7.91 "mm"
    $
  ]
)

#item-row(
  [*3. Dimensions of I-Section Bracket Arm ($t$ and $b = 3t$)* \ Arm section stress equation],
  [
    $
      A &= 9 t^2 \
      Z &= 10.7 t^3 \
      sigma_("t1") &= W_H / A \
      &= 962 / t^2 \
      sigma_("t2") &= M_H / Z \
      &= (40.5 times 10^3) / t^3 \
      sigma_("t3") &= M_V / Z \
      &= (140.2 times 10^3) / t^3
    $
    #v(6pt)
    $
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$sigma_("t1") - sigma_("t2") + sigma_("t3")$] \
      100 &= 962 / t^2 + (99.7 times 10^3) / t^3 => bold(t = 10.4 "mm") \
      bold(b = 3t = 31.2 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output*],
  [*Final Design: M 10 Bolts, I-Section Arm Dimensions $t = 10.4 "mm", b = 31.2 "mm"$*]
)

// ==========================================
// SECTION 17
// ==========================================
#pagebreak()
#section-heading("17", "Pillar Crane Circular Base Foundation Flange Sizing")

#section-overview(
  [*System Parameters* \ Bolt Count: $n = 8$ \ Bolt Circle Diameter: $d = 1.6 "m" => r = 0.8 "m"$ \ Pillar Base Diameter: $D = 2 "m" => R = 1 "m"$ \ Crane Load: $W = 100 "kN" = 100000 "N"$ at distance $e = 5 "m"$ | Allowable Stress: $sigma_t = 100 "MPa"$],
  [*Design Protocol* \ Calculate distance from tilting edge $A-A$: $L = e - R$ \ Calculate maximum tensile load $W_t$ on critical bolt using PCD formula \ Solve required core root diameter $d_c$ and select bolt size]
)

#item-row(
  [*1. Tilting Arm Distance ($L$)* \ Distance measured from base fulcrum edge $A-A$ of radius $R = 1 "m"$],
  [$
    #text(size: 20pt)[$L$] &= #text(size: 20pt)[$e - R$] \
    &= 5 - 1 \
    &= 4 "m"
  $]
)

#item-row(
  [*2. Maximum Tensile Load on Critical Bolt ($W_t$)* \ Circular foundation bolt layout equation for tilting about base edge],
  [$
    #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$(2 dot W dot L dot (R + r)) / (n (2 R^2 + r^2))$] \
    &= (2 times (100000) times 4 times (1 + 0.8)) / (8 times (2(1)^2 + 0.8^2)) \
    &= 68180 "N"
  $]
)

#item-row(
  [*3. Required Core Root Diameter ($d_c$)* \ Solve root diameter for allowable stress],
  [$
    #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    68180 &= pi/4 (d_c)^2 times 100 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$29.46 "mm"$]
  $]
)

#item-row(
  [*4. Standard Thread Selection (Table 11.1)* \ Select standard coarse thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 29.46 "mm" \
      d_c &= 31.093 "mm" \
      d &= 36 "mm"
    $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Select Fastener Designation: M 36 Bolt ($d = 36 "mm", d_c = 31.093 "mm"$)*]
)

#figure-page(
  "17",
  "Pillar Crane Foundation Flange",
  "Figures/fig 11.42 (diagram in solution of Eg. 11.17).png",
  "Figure 11.42: Pillar Crane Base Flange 8-Bolt PCD Layout"
)

// ==========================================
// SECTION 18
// ==========================================
#pagebreak()
#section-heading("18", "Circular Flanged Bearing Base Fastener Sizing")

#section-overview(
  [*System Parameters* \ Bolt Count: $n = 4$ \ Bolt Circle Diameter: $d = 500 "mm" => r = 250 "mm"$ \ Bearing Flange Diameter: $D = 650 "mm" => R = 325 "mm"$ \ Overturning Load: $W = 400 "kN" = 400000 "N"$ at arm $L = 250 "mm"$ | Stress: $sigma_t = 60 "MPa"$],
  [*Design Protocol* \ For $n = 4$ bolts on circular flange, critical bolt lies at angle $alpha = 180^deg / n = 45^deg$ \ Apply circular PCD overturning equation for $W_t$ \ Solve required core root diameter $d_c$]
)

#item-row(
  [*1. Maximum Tensile Load on Critical Bolt ($W_t$)* \ Overturning equation for $n = 4$ bolts at $alpha = 45^deg$],
  [$
    #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$(2 dot W dot L dot [R + r cos(180^deg / n)]) / (n (2 R^2 + r^2))$] \
    &= (2 times (400000) times 250 times [325 + 250 cos 45^deg]) / (4 times (2(325)^2 + (250)^2)) \
    &= 91643 "N"
  $]
)

#item-row(
  [*2. Required Core Root Diameter ($d_c$)* \ Solve root diameter for allowable stress],
  [$
    #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_t$] \
    91643 &= pi/4 (d_c)^2 times 60 \
    #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$44.1 "mm"$]
  $]
)

#item-row(
  [*3. Standard Thread Selection (Table 11.1)* \ Select standard coarse thread],
  [
    $
      d_("c, std") &>= d_c \
      &= 44.1 "mm" \
      d_c &= 45.795 "mm" \
      d &= 52 "mm"
    $
  ]
)

#item-row(
  [*4. Design Output*],
  [*Select Fastener Designation: M 52 Bolt ($d = 52 "mm", d_c = 45.795 "mm"$)*]
)

#figure-page(
  "18",
  "Flanged Bearing Base",
  "Figures/fig 11.40.png",
  "Figure 11.40: Circular Flanged Bearing Base PCD Layout"
)

// ==========================================
// SECTION 19
// ==========================================
#pagebreak()
#section-heading("19", "Pillar Crane Circular Foundation 2-Line Overturning Analysis")

#section-overview(
  [*System Parameters* \ Base Diameter: $D = 600 "mm" => R = 300 "mm" = 0.3 "m"$ \ PCD: $d = 500 "mm" => r = 250 "mm" = 0.25 "m"$ \ Fasteners: $n = 4$ M 30 bolts ($A_c = 561 "mm"^2$) \ Overturning Load: $W = 60 "kN" = 60000 "N"$ | Allowable Stress: $sigma_t = 60 "MPa"$],
  [*Design Protocol* \ Part 1: Analyze line X-X ($45^deg$ to bolts) to find max distance $e$ \ Part 2: Analyze line Y-Y (in line with bolts) at same $e$ to find max induced stress $sigma_("max")$]
)

#item-row(
  [*1. Line X-X Analysis ($45^deg$ Tilting)* \ Tilting moment equilibrium about axis X-X],
  [
    $
      P_("cap") &= 561 times 60 \
      &= 33.66 "kN" \
      W_("t1") &= 60 / 4 \
      &= 15 "kN" \
      P_("max") &= P_("cap") + W_("t1") \
      &= 33.66 + 15 \
      &= 48.66 "kN" \
      L_1 &= R - r cos 45^deg \
      &= 0.123 "m" \
      L_2 &= R + r cos 45^deg \
      &= 0.477 "m"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$M_("res")$] &= #text(size: 20pt)[$2 dot w dot [L_1^2 + L_2^2]$] \
      &= 49.4 "kN"dot"m"
    $
  ]
)

#item-row(
  [*2. Maximum Load Distance ($e$)* \ Overturning moment equation],
  [$
    #text(size: 20pt)[$M_("overturn")$] &= #text(size: 20pt)[$W (e - R)$] \
    60(e - 0.3) &= 49.4 \
    #text(size: 20pt)[$e$] &= #text(size: 20pt)[$bold(1.123 "m")$]
  $]
)

#item-row(
  [*3. Line Y-Y Analysis (In-Line with Bolts)* \ Tilting moment equilibrium about axis Y-Y],
  [$
    #text(size: 20pt)[$M_("res")$] &= #text(size: 20pt)[$w dot [L_1^2 + 2 L_2^2 + L_3^2]$] \
    49.4 &= 0.485 dot w \
    w &= 102 "kN/m"
  $]
)

#item-row(
  [*4. Line Y-Y Maximum Induced Stress ($sigma_("max")$)* \ Net load and induced tensile stress on critical bolt],
  [
    $
      W_("t2") &= w dot L_3 \
      &= 102 times 0.55 \
      &= 56.1 "kN" \
      P_("net") &= W_("t2") - W_("t1") \
      &= 56.1 - 15 \
      &= 41.1 "kN" \
      &= 41100 "N"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$sigma_("max")$] &= #text(size: 20pt)[$P_("net") / A_c$] \
      &= 41100 / 516 \
      &= bold(79.65 "MPa")
    $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Final Answers: (1) Maximum Distance $e = 1.123 "m"$, (2) Maximum Induced Stress $sigma_"max" = 79.65 "MPa"$*]
)

#figure-page(
  "19",
  "Pillar Crane 2-Line Analysis",
  "Figures/fig 11.43.png",
  "Figure 11.43: 2-Line Overturning Axis Analysis (X-X vs Y-Y)"
)

// ==========================================
// SECTION 20
// ==========================================
#pagebreak()
#section-heading("20", "Solid Forged Bracket under Combined Bending, Torsion & Coplanar Shear")

#section-overview(
  [*System Parameters* \ Vertical Load: $W = 13.5 "kN" = 13500 "N"$ \ Eccentricity: $e = 250 "mm"$ \ Stresses: Tensile $sigma_t = 110 "MPa"$, Shear $tau = 65 "MPa"$ | Flange: 4 bolts in square layout],
  [*Design Protocol* \ Part 1: Size arm dia $D$ for combined bending ($M$) and torsion ($T$) \ Part 2: Size arm dia $d$ for pure bending ($M$) \ Part 3: Calculate top bolt tensile load $W_t$ \ Part 4: Calculate maximum resultant shear force $W_s$ on bolts]
)

#item-row(
  [*1. Diameter $D$ for Arm (Combined Bending + Torsion)* \ Structural moment and torque resolution],
  [
    $
      M &= 13500 times (300 - 25) \
      &= 3.7125 times 10^6 "N"dot"mm" \
      T &= 13500 times 250 \
      &= 3.375 times 10^6 "N"dot"mm" \
      #text(size: 20pt)[$T_e$] &= #text(size: 20pt)[$sqrt(M^2 + T^2)$] \
      &= 5.017 times 10^6 "N"dot"mm"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$T_e$] &= #text(size: 20pt)[$pi/16 D^3 dot tau$] \
      5.017 times 10^6 &= pi/16 D^3 times 65 \
      D &= bold(75 "mm")
    $
  ]
)

#item-row(
  [*2. Diameter $d$ for Arm (Pure Bending)* \ Pure bending arm evaluation],
  [
    $
      M &= 13500 times (250 - 37.5) \
      &= 2.8688 times 10^6 "N"dot"mm" \
      #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$M / Z$] \
      110 &= (2.8688 times 10^6) / (pi/32 d^3) \
      d &= bold(65 "mm")
    $
  ]
)

#item-row(
  [*3. Tensile Load on Each Top Bolt ($W_t$)* \ Overturning moment equilibrium],
  [
    $
      M_("overturn") &= W dot L \
      &= 13500 times 300 \
      &= 4.05 times 10^6 "N"dot"mm" \
      w &= 35.03 "N/mm"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$W_t$] &= #text(size: 20pt)[$w dot L_2$] \
      &= 35.03 times 237.5 \
      &= bold(8.32 "kN")
    $
  ]
)

#item-row(
  [*4. Maximum Shearing Force on Each Bolt ($W_s$)* \ Vector sum of primary and secondary shear],
  [
    $
      W_("s1") &= 13500 / 4 \
      &= 3375 "N" \
      r_i &= sqrt(100^2 + 100^2) \
      &= 141.4 "mm" \
      W_("s2") &= (W dot e dot r_i) / (sum r_i^2) \
      &= 5967 "N"
    $
    #v(6pt)
    $
      #text(size: 20pt)[$W_s$] &= #text(size: 20pt)[$sqrt(W_("s1")^2 + W_("s2")^2 + 2 W_("s1") W_("s2") cos theta)$] \
      W_s quad ("Bolts 2 & 3") &= bold(8687 "N")
    $
  ]
)

#item-row(
  [*5. Design Output*],
  [*Final Answers: (1) $D = 75 "mm"$, (2) $d = 65 "mm"$, (3) Top Bolt $W_t = 8.32 "kN"$, (4) Max Shear Force $W_s = 8687 "N"$*]
)

#figure-page(
  "20",
  "Solid Forged Bracket",
  "Figures/fig 11.45 & 11.46.png",
  "Figure 11.45 & 11.46: Solid Forged Bracket Structure",
  second-fig: "Figures/fig 11.47 (diagram in solution of Eg. 11.20).png",
  second-caption: "Figure 11.47: Vector Shear Load Diagram on Fastener Group"
)
