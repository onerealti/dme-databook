// Design Data Book — Shaft Couplings
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
            [#text(fill: rgb("#000000"), size: 11pt, weight: "bold")[DESIGN DATA BOOK — SHAFT COUPLINGS]],
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

// Title Card Header
#align(center)[
  #v(10pt)
  #text(fill: rgb("#000000"), weight: "bold", size: 24pt)[DESIGN DATA BOOK — SHAFT COUPLINGS] \
  #v(6pt)
  #text(fill: rgb("#000000"), size: 16pt, style: "italic")[Standard Mechanical Engineering Design Data, Formulas & Solved Protocols (IS: 2048 - 1962 / IS: 4218 - 1976)]
  #v(10pt)
  #line(length: 100%, stroke: 1.5pt + rgb("#000000"))
]

#v(14pt)

// System Classification Index
#text(weight: "bold", size: 18pt)[Shaft Couplings Classification & Design Index]
#v(8pt)
#grid(
  columns: (1.2fr, 1.8fr, 1fr),
  column-gutter: 16pt,
  row-gutter: 8pt,
  align: (left, left, center),
  [*Coupling Type*], [*Design Requirements & Conditions*], [*Data Book Section*],
  [Muff (Sleeve) Coupling], [Design shaft $d$, cast iron sleeve $D, L$, and key $w, t, l$], [Section 1],
  [Clamp / Split-Muff Coupling], [Design shaft $d$, sleeve $D, L$, key, and clamping bolts $d_b$], [Section 2],
  [CI Protective Flange Coupling], [Design hub, key, web $t_f$, bolts $n, d_1$, and flange $D_2, t_p$], [Section 3],
  [Protective Flange Coupling], [Design for peak torque $T_("max") = 1.25 T_("mean")$ and bolt sizing], [Section 4],
  [Flange Coupling (Rigidity Limit)], [Size shaft $d$ for strength & rigidity ($theta <= 1^deg$ in $20d$)], [Section 5],
  [Rigid Flange Coupling], [Direct torque $T = 250 "N"dot"m"$ design for 4 bolts], [Section 6],
  [Flanged Coupling Analysis], [Analyze fixed shaft $d = 35 "mm"$ for key length $l$ & power $P$], [Section 7],
  [Marine Engine Forged Flange], [Design $3 "MW"$ engine shaft $d$, 8 bolts ($D_1 = 1.6d$), and $t_f$], [Section 8],
  [Bushed-Pin Flexible Coupling], [Design flexible pins, rubber bushes, hub, key & web $t_f$], [Section 9]
)

// ==========================================
// STANDARD REFERENCE TABLES (TABLE 13.1 & TABLE 11.1)
// SEQUENTIAL STACKED LAYOUT (ONE AFTER ANOTHER)
// ==========================================
#pagebreak()
#section-heading("REF 1", "Table 13.1 — Standard Key Proportions (IS: 2048 - 1962)")

#v(4pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: (center, center, center, center, center, center),
  stroke: 0.4pt + rgb("#aaaaaa"),
  fill: (col, row) => if row == 0 { rgb("#e9ecef") } else if calc.even(row) { rgb("#f8f9fa") },
  [*Shaft Dia $d$ (mm)*], [*Key Width $w$ (mm)*], [*Key Thick $t$ (mm)*], [*Shaft Dia $d$ (mm)*], [*Key Width $w$ (mm)*], [*Key Thick $t$ (mm)*],
  [Up to 6], [2], [2], [Up to 85], [25], [14],
  [Up to 8], [3], [3], [Up to 95], [28], [16],
  [Up to 10], [4], [4], [Up to 110], [32], [18],
  [Up to 12], [5], [5], [Up to 130], [36], [20],
  [Up to 17], [6], [6], [Up to 150], [40], [22],
  [Up to 22], [8], [7], [Up to 170], [45], [25],
  [Up to 30], [10], [8], [Up to 200], [50], [28],
  [Up to 38], [12], [8], [Up to 230], [56], [32],
  [Up to 44], [14], [9], [Up to 260], [63], [32],
  [Up to 50], [16], [10], [Up to 290], [70], [36],
  [Up to 58], [18], [11], [Up to 330], [80], [40],
  [Up to 65], [20], [12], [Up to 380], [90], [45],
  [Up to 75], [22], [14], [Up to 440], [100], [50]
)

#v(10pt)
#block(
  width: 100%,
  stroke: 0.8pt + rgb("#000000"),
  inset: 10pt,
  fill: rgb("#f8f9fa")
)[
  #text(size: 12pt, weight: "bold")[Empirical Key Design Rules & Strength Constants:] \
  #v(4pt)
  #text(size: 11pt)[1. Rectangular Sunk Key: Width $w approx d / 4$, Thickness $t approx d / 6$ \
  2. Square Sunk Key: Width $w = t approx d / 4$ (used when allowable crushing stress $sigma_c = 2 tau$) \
  3. Keyway Shaft Strength Factor: $e = 1 - 0.2(w/d) - 1.1(h/d)$]
]

#pagebreak()
#section-heading("REF 2", "Table 11.1 — Standard Metric Screw Threads (Coarse Series)")

#v(4pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
  align: (center, center, center, center, center, center),
  stroke: 0.4pt + rgb("#aaaaaa"),
  fill: (col, row) => if row == 0 { rgb("#e9ecef") } else if calc.even(row) { rgb("#f8f9fa") },
  [*Designation*], [*Pitch $p$*], [*Nominal $d$*], [*Pitch $d_p$*], [*Core $d_c$*], [*Stress Area $A_c$*],
  [M 6], [1.0 mm], [6.0 mm], [5.350 mm], [4.773 mm], [20.1 mm²],
  [M 8], [1.25 mm], [8.0 mm], [7.188 mm], [6.466 mm], [36.6 mm²],
  [M 10], [1.5 mm], [10.0 mm], [9.026 mm], [8.160 mm], [58.3 mm²],
  [M 12], [1.75 mm], [12.0 mm], [10.863 mm], [9.858 mm], [84.0 mm²],
  [M 16], [2.0 mm], [16.0 mm], [14.701 mm], [13.546 mm], [157 mm²],
  [M 18], [2.5 mm], [18.0 mm], [16.376 mm], [14.933 mm], [192 mm²],
  [M 20], [2.5 mm], [20.0 mm], [18.376 mm], [16.933 mm], [245 mm²],
  [M 24], [3.0 mm], [24.0 mm], [22.051 mm], [20.320 mm], [353 mm²],
  [M 27], [3.0 mm], [27.0 mm], [25.051 mm], [23.320 mm], [459 mm²],
  [M 30], [3.5 mm], [30.0 mm], [27.727 mm], [25.706 mm], [561 mm²]
)

// ==========================================
// SECTION 1
// ==========================================
#pagebreak()
#section-heading("1", "Solid Sleeve / Muff Coupling Design")

#section-overview(
  [*System Parameters* \ Transmitted Power: $P = 40 "kW" = 40000 "W"$ \ Rotational Speed: $N = 350 "rpm"$ \ Shaft & Key Stresses: Shear $tau_s = 40 "MPa"$, Crushing $sigma_c = 80 "MPa"$ | Muff CI Shear: $tau_c = 15 "MPa"$],
  [*Design Protocol* \ Part 1: Calculate design torque $T$ and solve shaft diameter $d$ \ Part 2: Determine muff proportions $D, L$ and verify induced CI shear stress $tau_c$ \ Part 3: Select key size from Table 13.1 and verify shearing $tau_s$ and crushing $sigma_("cs")$]
)

#item-row(
  [*1. Transmitted Design Torque ($T$)* \ Torsional moment transmitted by connected shafts],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
    &= (60 times 40000) / (2 pi times 350) \
    &= 1091.35 "N"dot"m" \
    &= 1100 times 10^3 "N"dot"mm"
  $]
)

#item-row(
  [*2. Shaft Diameter Sizing ($d$)* \ Torsional shear strength formula for solid shaft],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T) / (pi tau_s))$] \
    &= root(3, (16 times 1.09135 times 10^6) / (pi times 40)) \
    &= 51.8 "mm"
  $]
)

#item-row(
  [*3. Standard Shaft Diameter Selection* \ Select standard nominal shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 55 "mm"$*]
)

#item-row(
  [*4. Cast Iron Muff Dimensions ($D, L$)* \ Empirical sleeve proportions],
  [
    $
      #text(size: 20pt)[$D$] &= #text(size: 20pt)[$2d + 13 "mm"$] \
      &= 2(55) + 13 \
      &= 123 "mm" \
      &approx 125 "mm"
    $
    #v(4pt)
    $
      #text(size: 20pt)[$L$] &= #text(size: 20pt)[$3.5 d$] \
      &= 3.5 times 55 \
      &= 192.5 "mm" \
      &approx 195 "mm"
    $
  ]
)

#item-row(
  [*5. Induced Shear Stress in Muff ($tau_c$)* \ Hollow shaft torsional shear check],
  [$
    #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(16 T D) / (pi (D^4 - d^4))$] \
    &= (16 times 1.09135 times 10^6 times 125) / (pi (125^4 - 55^4)) \
    &= 2.96 "MPa" \
    &<= 15 "MPa" quad bold("(SAFE & SATISFACTORY)")
  $]
)

#item-row(
  [*6. Key Proportions Selection (Table 13.1)* \ Square key selected as $sigma_c = 2 tau_s$],
  [
    $
      #text(size: 20pt)[$w$] &= #text(size: 20pt)[$18 "mm"$] \
      #text(size: 20pt)[$t$] &= #text(size: 20pt)[$18 "mm" quad ("Square Key")$] \
      #text(size: 20pt)[$l$] &= #text(size: 20pt)[$L / 2 = 195 / 2 = 97.5 "mm"$]
    $
  ]
)

#item-row(
  [*7. Induced Shear Stress in Key ($tau_s$)* \ Key shear strength verification],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$l dot w dot tau_s dot (d / 2)$] \
    1100 times 10^3 &= 97.5 times 18 times tau_s times (55 / 2) \
    tau_s &= bold(22.8 "N/mm"^2) \
    &<= 40 "MPa" quad bold("(SAFE)")
  $]
)

#item-row(
  [*8. Induced Crushing Stress in Key ($sigma_("cs")$)* \ Key crushing strength verification],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$l dot (t / 2) dot sigma_("cs") dot (d / 2)$] \
    1100 times 10^3 &= 97.5 times (18 / 2) times sigma_("cs") times (55 / 2) \
    sigma_("cs") &= bold(45.6 "N/mm"^2) \
    &<= 80 "MPa" quad bold("(SAFE)")
  $]
)

#item-row(
  [*9. Design Output*],
  [*Final Design: Shaft $d = 55 "mm"$, Muff $D = 125 "mm", L = 195 "mm"$, Square Key $18 times 18 times 97.5 "mm"$*]
)

#figure-page("1", "Muff Coupling", "sleeve or muff coupling.png", "Figure 13.1: Sleeve or Muff Coupling Assembly & Empirical Proportions")

// ==========================================
// SECTION 2
// ==========================================
#pagebreak()
#section-heading("2", "Clamp / Split-Muff Coupling Design")

#section-overview(
  [*System Parameters* \ Power: $P = 30 "kW" = 30000 "W"$ \ Speed: $N = 100 "rpm"$ \ Shaft & Key Shear: $tau = 40 "MPa"$ \ Bolt Tensile Stress: $sigma_("tb") = 70 "MPa"$ | Bolt Count: $n = 6$ | Friction Coefficient: $mu = 0.3$],
  [*Design Protocol* \ Part 1: Calculate torque $T$ and solve shaft diameter $d$ \ Part 2: Determine split muff dimensions $D, L$ \ Part 3: Select key dimensions from Table 13.1 and verify shear stress $tau_k$ \ Part 4: Calculate required bolt core diameter $d_b$ from friction torque equation]
)

#item-row(
  [*1. Transmitted Design Torque ($T$)* \ Torsional moment transmitted through clamp coupling],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
    &= (60 times 30000) / (2 pi times 100) \
    &= 2864.8 "N"dot"m" \
    &= 2865 times 10^3 "N"dot"mm"
  $]
)

#item-row(
  [*2. Shaft Diameter Sizing ($d$)* \ Torsional shear strength evaluation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T) / (pi tau_s))$] \
    &= root(3, (16 times 2.8648 times 10^6) / (pi times 40)) \
    &= 71.45 "mm"
  $]
)

#item-row(
  [*3. Standard Shaft Diameter Selection* \ Select standard nominal shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 75 "mm"$*]
)

#item-row(
  [*4. Split Muff Dimensions ($D, L$)* \ Empirical muff proportions],
  [
    $
      #text(size: 20pt)[$D$] &= #text(size: 20pt)[$2d + 13 "mm"$] \
      &= 2(75) + 13 \
      &= 163 "mm" \
      &approx 165 "mm"
    $
    #v(4pt)
    $
      #text(size: 20pt)[$L$] &= #text(size: 20pt)[$3.5 d$] \
      &= 3.5 times 75 \
      &= 262.5 "mm" \
      &approx 265 "mm"
    $
  ]
)

#item-row(
  [*5. Key Dimensions (Table 13.1) & Shear Check ($tau_k$)* \ Key proportions for $d = 75 "mm"$],
  [
    $
      w &= 22 "mm", quad t = 14 "mm", quad l = L = 265 "mm" \
      #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$(2 T) / (w dot d dot L)$] \
      &= (2 times 2.8648 times 10^6) / (22 times 75 times 265) \
      &= 13.1 "MPa" \
      &<= 40 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Clamping Bolt Core Diameter ($d_b$)* \ Torque transmission by friction force balance],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$pi^2 / 16 dot mu dot d dot [pi/4 d_b^2 dot sigma_("tb")] dot n$] \
    2865 times 10^3 &= pi^2 / 16 times 0.3 times 75 times [pi/4 d_b^2 times 70] times 6 \
    2865 times 10^3 &= 5830 d_b^2 \
    d_b^2 &= 492 \
    d_b &= bold(22.2 "mm")
  $]
)

#item-row(
  [*7. Standard Bolt Selection (Table 11.1)* \ Standard coarse series thread lookup],
  [
    $
      d_("c, std") &>= d_b \
      &= 22.2 "mm" \
      d_c &= 23.320 "mm" \
      d &= 27 "mm"
    $
  ]
)

#item-row(
  [*8. Design Output*],
  [*Final Design: Shaft $d = 75 "mm"$, Split Muff $D = 165 "mm", L = 265 "mm"$, 6 Bolts of M 27 Size*]
)

#figure-page("2", "Clamp / Split-Muff Coupling", "clamp or compression coupling.png", "Figure 13.2: Clamp / Split-Muff Compression Coupling Assembly & Bolt Layout")

// ==========================================
// SECTION 3
// ==========================================
#pagebreak()
#section-heading("3", "Cast Iron Protective Flange Coupling Design")

#section-overview(
  [*System Parameters* \ Power: $P = 15 "kW" = 15000 "W"$ \ Speed: $N = 900 "rpm"$ \ Service Factor: $"K"_s = 1.35$ \ Shaft, Bolt & Key Shear: $tau = 40 "MPa"$ \ Crushing Stress: $sigma_c = 80 "MPa"$ | Cast Iron Shear: $tau_c = 8 "MPa"$],
  [*Design Protocol* \ Part 1: Calculate $T_("max") = 1.35 T_("mean")$ and solve shaft diameter $d$ \ Part 2: Determine hub dimensions $D, L$ and check CI shear stress $tau_c$ \ Part 3: Verify key shearing and crushing stresses \ Part 4: Calculate web thickness $t_f$, bolt size $d_1$ ($n = 3$), and outer flange $D_2, t_p$]
)

#item-row(
  [*1. Mean & Maximum Design Torque ($T_("max")$)* \ Maximum torque incorporating service factor],
  [
    $
      #text(size: 20pt)[$T_("mean")$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
      &= (60 times 15000) / (2 pi times 900) \
      &= 159.13 "N"dot"m"
    $
    #v(4pt)
    $
      #text(size: 20pt)[$T_("max")$] &= #text(size: 20pt)[$1.35 times T_("mean")$] \
      &= 1.35 times 159.13 \
      &= 215 "N"dot"m" \
      &= 215 times 10^3 "N"dot"mm"
    $
  ]
)

#item-row(
  [*2. Shaft Diameter Sizing ($d$)* \ Torsional shear strength evaluation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T_("max")) / (pi tau_s))$] \
    &= root(3, (16 times 215 times 10^3) / (pi times 40)) \
    &= 30.1 "mm"
  $]
)

#item-row(
  [*3. Standard Shaft Diameter Selection* \ Select standard nominal shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 35 "mm"$*]
)

#item-row(
  [*4. Cast Iron Hub Proportions ($D, L$) & Shear Check ($tau_c$)* \ Hub dimensions and hollow shaft shear check],
  [
    $
      D &= 2d = 2(35) = 70 "mm", quad L = 1.5d = 52.5 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(16 T_("max") D) / (pi (D^4 - d^4))$] \
      &= (16 times 215 times 10^3 times 70) / (pi (70^4 - 35^4)) \
      &= 3.4 "MPa" \
      &<= 8 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*5. Key Design & Stress Verification ($tau_k, sigma_("ck")$)* \ Table 13.1 square key ($w = 12 "mm", t = 12 "mm", l = 52.5 "mm"$)],
  [
    $
      #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$T_("max") / (l dot w dot (d/2))$] \
      &= (215 times 10^3) / (52.5 times 12 times 17.5) \
      &= 19.5 "MPa" \
      &<= 40 "MPa" quad bold("(SAFE)")
    $
    #v(4pt)
    $
      #text(size: 20pt)[$sigma_("ck")$] &= #text(size: 20pt)[$T_("max") / (l dot (t/2) dot (d/2))$] \
      &= (215 times 10^3) / (52.5 times 6 times 17.5) \
      &= 39 "MPa" \
      &<= 80 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Flange Web Thickness ($t_f$) & Shear Check ($tau_c$)* \ Circumferential flange web shear check],
  [
    $
      t_f &= 0.5 d = 0.5(35) = 17.5 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(2 T_("max")) / (pi D^2 t_f)$] \
      &= (2 times 215 times 10^3) / (pi times 70^2 times 17.5) \
      &= 1.6 "MPa" \
      &<= 8 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*7. Coupling Bolts Sizing ($n, D_1, d_1$)* \ Bolt circle geometry for $d = 35 "mm" <= 40 "mm"$],
  [
    $
      n &= 3 "bolts", quad D_1 = 3d = 3(35) = 105 "mm" \
      #text(size: 20pt)[$T_("max")$] &= #text(size: 20pt)[$n dot [pi/4 d_1^2] dot tau_b dot (D_1 / 2)$] \
      215 times 10^3 &= 3 times [pi/4 d_1^2] times 40 times (105 / 2) \
      d_1^2 &= 43.43 \
      d_1 &= 6.6 "mm" \
      &=> \
      & bold("Select M 8 Bolts")
    $
  ]
)

#item-row(
  [*8. Outer Flange Proportions ($D_2, t_p$)* \ Protective flange outer dimensions],
  [
    $
      #text(size: 20pt)[$D_2$] &= #text(size: 20pt)[$4d = 4(35) = 140 "mm"$] \
      #text(size: 20pt)[$t_p$] &= #text(size: 20pt)[$0.25d = 0.25(35) = 8.75 "mm" &approx 10 "mm"$]
    $
  ]
)

#item-row(
  [*9. Design Output*],
  [*Final Design: Shaft $d = 35 "mm"$, Hub $D = 70 "mm", L = 52.5 "mm"$, Flange $t_f = 17.5 "mm", D_2 = 140 "mm"$, 3 Bolts of M 8 Size*]
)

#figure-page("3", "Cast Iron Protective Flange Coupling", "protective flange coupling.png", "Figure 13.3: Cast Iron Protective Type Flange Coupling Mechanical Diagram")

// ==========================================
// SECTION 4
// ==========================================
#pagebreak()
#section-heading("4", "Protective Flange Coupling Sizing for Peak Torque")

#section-overview(
  [*System Parameters* \ Power: $P = 15 "kW" = 15000 "W"$ \ Speed: $N = 200 "rpm"$ \ Overload: $T_("max") = 1.25 T_("mean")$ \ Shaft & Key Shear: $tau = 40 "MPa"$ \ Bolt Shear: $tau_b = 30 "MPa"$ \ Key Crushing: $sigma_c = 80 "MPa"$ | CI Shear: $tau_c = 14 "MPa"$],
  [*Design Protocol* \ Part 1: Calculate peak torque $T_("max")$ and size shaft diameter $d$ \ Part 2: Determine hub dimensions $D, L$ and check CI shear stress $tau_c$ \ Part 3: Verify key shearing $tau_k$ and crushing $sigma_("ck")$ \ Part 4: Calculate web thickness $t_f$, bolt size $d_1$ ($n = 4$), and outer flange $D_2, t_p$]
)

#item-row(
  [*1. Peak Design Torque ($T_("max")$)* \ Maximum torque calculation],
  [
    $
      #text(size: 20pt)[$T_("mean")$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
      &= (60 times 15000) / (2 pi times 200) \
      &= 716 "N"dot"m" \
      &= 716 times 10^3 "N"dot"mm"
    $
    #v(4pt)
    $
      #text(size: 20pt)[$T_("max")$] &= #text(size: 20pt)[$1.25 times T_("mean")$] \
      &= 1.25 times 716 times 10^3 \
      &= 895 times 10^3 "N"dot"mm"
    $
  ]
)

#item-row(
  [*2. Shaft Diameter Sizing ($d$)* \ Torsional strength calculation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T_("max")) / (pi tau_s))$] \
    &= root(3, (16 times 895 times 10^3) / (pi times 40)) \
    &= 48.4 "mm"
  $]
)

#item-row(
  [*3. Standard Shaft Diameter Selection* \ Select standard nominal shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 50 "mm"$*]
)

#item-row(
  [*4. Cast Iron Hub Proportions ($D, L$) & Shear Check ($tau_c$)* \ Hub dimensions and hollow shaft shear check],
  [
    $
      D &= 2d = 2(50) = 100 "mm", quad L = 1.5d = 75 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(16 T_("max") D) / (pi (D^4 - d^4))$] \
      &= (16 times 895 times 10^3 times 100) / (pi (100^4 - 50^4)) \
      &= 4.86 "MPa" \
      &<= 14 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*5. Key Design & Stress Verification ($tau_k, sigma_("ck")$)* \ Table 13.1 square key ($w = 16 "mm", t = 16 "mm", l = 75 "mm"$)],
  [
    $
      #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$T_("max") / (l dot w dot (d/2))$] \
      &= (895 times 10^3) / (75 times 16 times 25) \
      &= 29.8 "MPa" \
      &<= 40 "MPa" quad bold("(SAFE)")
    $
    #v(4pt)
    $
      #text(size: 20pt)[$sigma_("ck")$] &= #text(size: 20pt)[$T_("max") / (l dot (t/2) dot (d/2))$] \
      &= (895 times 10^3) / (75 times 8 times 25) \
      &= 59.6 "MPa" \
      &<= 80 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Flange Web Thickness ($t_f$) & Shear Check ($tau_c$)* \ Flange web shear stress check],
  [
    $
      t_f &= 0.5 d = 0.5(50) = 25 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(2 T_("max")) / (pi D^2 t_f)$] \
      &= (2 times 895 times 10^3) / (pi times 100^2 times 25) \
      &= 2.5 "MPa" \
      &<= 14 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*7. Coupling Bolts Sizing ($n, D_1, d_1$)* \ Bolt circle geometry for $d = 50 "mm"$],
  [
    $
      n &= 4 "bolts", quad D_1 = 3d = 3(50) = 150 "mm" \
      #text(size: 20pt)[$T_("max")$] &= #text(size: 20pt)[$n dot [pi/4 d_1^2] dot tau_b dot (D_1 / 2)$] \
      895 times 10^3 &= 4 times [pi/4 d_1^2] times 30 times (150 / 2) \
      d_1^2 &= 126.6 \
      d_1 &= 11.25 "mm" \
      &=> bold("Select M 12 Bolts")
    $
  ]
)

#item-row(
  [*8. Outer Flange Proportions ($D_2, t_p$)* \ Protective flange outer dimensions],
  [
    $
      #text(size: 20pt)[$D_2$] &= #text(size: 20pt)[$4d = 4(50) = 200 "mm"$] \
      #text(size: 20pt)[$t_p$] &= #text(size: 20pt)[$0.25d = 0.25(50) = 12.5 "mm"$]
    $
  ]
)

#item-row(
  [*9. Design Output*],
  [*Final Design: Shaft $d = 50 "mm"$, Hub $D = 100 "mm", L = 75 "mm"$, Flange $t_f = 25 "mm", D_2 = 200 "mm"$, 4 Bolts of M 12 Size*]
)

#figure-page("4", "Protective Flange Coupling", "protective flange coupling.png", "Figure 13.4: Protective Type Flange Coupling Mechanical Assembly")

// ==========================================
// SECTION 5
// ==========================================
#pagebreak()
#section-heading("5", "Flange Coupling Design under Torsional Rigidity Constraint")

#section-overview(
  [*System Parameters* \ Power: $P = 90 "kW" = 90000 "W"$ \ Speed: $N = 250 "rpm"$ \ Shaft Shear: $tau_s = 40 "MPa"$ \ Rigidity Limit: $theta <= 1^deg = 0.0175 "rad"$ in length $L = 20d$ \ Modulus of Rigidity: $G = 84 "kN/mm"^2$ | Bolt Shear: $tau_b = 30 "MPa"$],
  [*Design Protocol* \ Part 1: Calculate torque $T$ and evaluate shaft diameter $d$ for both strength and torsional rigidity \ Part 2: Determine hub dimensions $D, L$ and check CI shear stress $tau_c$ \ Part 3: Select key size from Table 13.1 and verify shear stress $tau_k$ \ Part 4: Calculate web thickness $t_f$, bolt size $d_1$ ($n = 4$), and outer flange $D_2, t_p$]
)

#item-row(
  [*1. Transmitted Design Torque ($T$)* \ Torsional moment calculation],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
    &= (60 times 90000) / (2 pi times 250) \
    &= 3440 "N"dot"m" \
    &= 3440 times 10^3 "N"dot"mm"
  $]
)

#item-row(
  [*2. Shaft Sizing for Strength & Rigidity ($d$)* \ Dual criterion evaluation],
  [
    $
      "(a) Strength:" quad #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T) / (pi tau_s))$] \
      &= root(3, (16 times 3440 times 10^3) / (pi times 40)) \
      &= 76 "mm"
    $
    #v(4pt)
    $
      "(b) Rigidity:" quad #text(size: 20pt)[$T / J$] &= #text(size: 20pt)[$(G theta) / (20 d)$] \
      (3440 times 10^3) / (pi/32 d^4) &= (84 times 10^3 times 0.0175) / (20 d) \
      d^3 &= 0.476 times 10^6 \
      d &= 78 "mm"
    $
  ]
)

#item-row(
  [*3. Governing Shaft Diameter Selection* \ Select larger diameter for strength + rigidity],
  [*Adopt Standard Shaft Diameter $d = 80 "mm"$*]
)

#item-row(
  [*4. Cast Iron Hub Proportions ($D, L$) & Shear Check ($tau_c$)* \ Hub dimensions and shear stress check],
  [
    $
      D &= 2d = 160 "mm", quad L = 1.5d = 120 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(16 T D) / (pi (D^4 - d^4))$] \
      &= (16 times 3440 times 10^3 times 160) / (pi (160^4 - 80^4)) \
      &= 4.56 "MPa" \
      &<= 14 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*5. Key Design & Stress Verification ($tau_k$)* \ Table 13.1 key ($w = 25 "mm", t = 14 "mm", l = 120 "mm"$)],
  [$
    #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$T / (l dot w dot (d/2))$] \
    &= (3440 times 10^3) / (120 times 25 times 40) \
    &= 28.7 "MPa" \
    &<= 40 "MPa" quad bold("(SAFE)")
  $]
)

#item-row(
  [*6. Flange Web Thickness ($t_f$) & Shear Check ($tau_c$)* \ Flange web shear check],
  [
    $
      t_f &= 0.5 d = 40 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(2 T) / (pi D^2 t_f)$] \
      &= (2 times 3440 times 10^3) / (pi times 160^2 times 40) \
      &= 2.14 "MPa" \
      &<= 14 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*7. Coupling Bolts Sizing ($n, D_1, d_1$)* \ Bolt PCD geometry for $d = 80 "mm"$],
  [
    $
      n &= 4 "bolts", quad D_1 = 3d = 3(80) = 240 "mm" \
      #text(size: 20pt)[$T$] &= #text(size: 20pt)[$n dot [pi/4 d_1^2] dot tau_b dot (D_1 / 2)$] \
      3440 times 10^3 &= 4 times [pi/4 d_1^2] times 30 times (240 / 2) \
      d_1^2 &= 304 \
      d_1 &= 17.4 "mm" \
      &=> bold("Select M 18 Bolts")
    $
  ]
)

#item-row(
  [*8. Outer Flange Proportions ($D_2, t_p$)* \ Protective outer flange dimensions],
  [
    $
      #text(size: 20pt)[$D_2$] &= #text(size: 20pt)[$4d = 4(80) = 320 "mm"$] \
      #text(size: 20pt)[$t_p$] &= #text(size: 20pt)[$0.25d = 0.25(80) = 20 "mm"$]
    $
  ]
)

#item-row(
  [*9. Design Output*],
  [*Final Design: Shaft d = 80 mm, Hub D = 160 mm, L = 120 mm, Flange tf = 40 mm, D2 = 320 mm, 4 Bolts of M 18 Size*]
)

#figure-page("5", "Protective Flange Coupling", "protective flange coupling.png", "Figure 13.5: Protective Type Flange Coupling Mechanical Diagram")

// ==========================================
// SECTION 6
// ==========================================
#pagebreak()
#section-heading("6", "Rigid Flange Coupling Design for Direct Torque")

#section-overview(
  [*System Parameters* \ Direct Transmitted Torque: $T = 250 "N"dot"m" = 250 times 10^3 "N"dot"mm"$ \ Bolt Count: $n = 4$ \ Shaft & Key Shear: $tau = 100 "MPa"$ \ Crushing Stress: $sigma_c = 250 "MPa"$ \ Cast Iron Shear: $tau_c = 200 "MPa"$ | Bolt Shear: $tau_b = 100 "MPa"$],
  [*Design Protocol* \ Part 1: Solve shaft diameter $d$ for given torque $T$ \ Part 2: Determine hub dimensions $D, L$ and check CI shear stress $tau_c$ \ Part 3: Select key dimensions from Table 13.1 and verify shear $tau_k$ and crushing $sigma_("ck")$ \ Part 4: Calculate web thickness $t_f$, bolt size $d_1$, and outer flange $D_2, t_p$]
)

#item-row(
  [*1. Shaft Diameter Sizing ($d$)* \ Torsional shear strength evaluation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T) / (pi tau_s))$] \
    &= root(3, (16 times 250 times 10^3) / (pi times 100)) \
    &= 23.35 "mm"
  $]
)

#item-row(
  [*2. Standard Shaft Diameter Selection* \ Select standard nominal shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 25 "mm"$*]
)

#item-row(
  [*3. Cast Iron Hub Proportions ($D, L$) & Shear Check ($tau_c$)* \ Hub dimensions and shear stress check],
  [
    $
      D &= 2d = 50 "mm", quad L = 1.5d = 37.5 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(16 T D) / (pi (D^4 - d^4))$] \
      &= (16 times 250 times 10^3 times 50) / (pi (50^4 - 25^4)) \
      &= 10.86 "MPa" \
      &<= 200 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*4. Key Design & Stress Verification ($tau_k, sigma_("ck")$)* \ Table 13.1 key ($w = 10 "mm", t = 8 "mm", l = 37.5 "mm"$)],
  [
    $
      #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$T / (l dot w dot (d/2))$] \
      &= (250 times 10^3) / (37.5 times 10 times 12.5) \
      &= 53.3 "MPa" \
      &<= 100 "MPa" quad bold("(SAFE)")
    $
    #v(4pt)
    $
      #text(size: 20pt)[$sigma_("ck")$] &= #text(size: 20pt)[$T / (l dot (t/2) dot (d/2))$] \
      &= (250 times 10^3) / (37.5 times 4 times 12.5) \
      &= 133.3 "MPa" \
      &<= 250 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*5. Flange Web Thickness ($t_f$) & Shear Check ($tau_c$)* \ Flange web shear check],
  [
    $
      t_f &= 0.5 d = 12.5 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(2 T) / (pi D^2 t_f)$] \
      &= (2 times 250 times 10^3) / (pi times 50^2 times 12.5) \
      &= 5.1 "MPa" \
      &<= 200 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Coupling Bolts Sizing ($n, D_1, d_1$)* \ Bolt circle geometry for $d = 25 "mm"$],
  [
    $
      n &= 4 "bolts", quad D_1 = 3d = 3(25) = 75 "mm" \
      #text(size: 20pt)[$T$] &= #text(size: 20pt)[$n dot [pi/4 d_1^2] dot tau_b dot (D_1 / 2)$] \
      250 times 10^3 &= 4 times [pi/4 d_1^2] times 100 times (75 / 2) \
      d_1^2 &= 21.22 \
      d_1 &= 4.6 "mm" \
      &=> bold("Select M 6 Bolts")
    $
  ]
)

#item-row(
  [*7. Outer Flange Proportions ($D_2, t_p$)* \ Protective flange outer dimensions],
  [
    $
      #text(size: 20pt)[$D_2$] &= #text(size: 20pt)[$4d = 4(25) = 100 "mm"$] \
      #text(size: 20pt)[$t_p$] &= #text(size: 20pt)[$0.25d = 0.25(25) = 6.25 "mm"$]
    $
  ]
)

#item-row(
  [*8. Design Output*],
  [*Final Design: Shaft $d = 25 "mm"$, Hub $D = 50 "mm", L = 37.5 "mm"$, Flange $t_f = 12.5 "mm", D_2 = 100 "mm"$, 4 Bolts of M 6 Size*]
)

#figure-page("6", "Marine Flange Coupling", "marine flange coupling.png", "Figure 13.6: Marine Type Flange Coupling Mechanical Assembly Diagram")

// ==========================================
// SECTION 7
// ==========================================
#pagebreak()
#section-heading("7", "Flanged Coupling Analysis for Fixed Shaft Diameter")

#section-overview(
  [*System Parameters* \ Fixed Shaft Diameter: $d = 35 "mm"$ \ Transmitted Torque: $T = 800 "N"dot"m" = 800 times 10^3 "N"dot"mm"$ \ Speed: $N = 350 "rpm"$ \ Bolts: $n = 6$ on PCD $D_1 = 125 "mm"$ | Stresses: Shaft $tau_s = 63 "MPa"$, Bolt $tau_b = 56 "MPa"$, CI $tau_c = 10 "MPa"$, Key $tau_k = 46 "MPa"$],
  [*Design Protocol* \ Part 1: Size bolt diameter $d_1$ from torque equation \ Part 2: Determine web thickness $t_f$ from hub shear \ Part 3: Verify key length $l$ against allowable shear stress $tau_k$ and modify $l$ if unsafe \ Part 4: Match hub length $L = l$ and calculate transmitted power $P$]
)

#item-row(
  [*1. Bolt Diameter Sizing ($d_1$)* \ Torque capacity for $n = 6$ bolts on PCD $D_1 = 125 "mm"$],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$n dot [pi/4 d_1^2] dot tau_b dot (D_1 / 2)$] \
    800 times 10^3 &= 6 times [pi/4 d_1^2] times 56 times (125 / 2) \
    d_1^2 &= 48.5 \
    d_1 &= 6.96 "mm" \
    &=> bold("Select M 8 Bolts")
  $]
)

#item-row(
  [*2. Flange Web Thickness ($t_f$)* \ Hub diameter $D = 2d = 70 "mm"$ shear force check],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$pi/2 D^2 t_f tau_c$] \
    800 times 10^3 &= pi/2 (70)^2 times t_f times 10 \
    t_f &= 10.4 "mm" \
    &=> bold("Adopt Flange Thickness " t_f = 12 "mm")
  $]
)

#item-row(
  [*3. Key Trial Length ($l$) & Shear Verification* \ Table 13.1 for $d = 35 "mm"$ ($w = 12 "mm", t = 8 "mm"$)],
  [
    $
      "Trial Length " l = L = 1.5d = 52.5 "mm" \
      #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$T / (l dot w dot (d/2))$] \
      &= (800 times 10^3) / (52.5 times 12 times 17.5) \
      &= 72.5 "MPa" > 46 "MPa" quad bold("(UNSAFE!)")
    $
  ]
)

#item-row(
  [*4. Recalculated Safe Key Length ($l$)* \ Solve required key length for allowable $tau_k = 46 "MPa"$],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$l dot w dot tau_k dot (d/2)$] \
    800 times 10^3 &= l times 12 times 46 times 17.5 \
    l &= 82.8 "mm" \
    &=> bold("Adopt Key Length " l = 85 "mm")
  $]
)

#item-row(
  [*5. Hub Length ($L$)* \ Set hub length equal to extended key length],
  [*Adopt Hub Length $L = l = 85 "mm"$*]
)

#item-row(
  [*6. Transmitted Power Capacity ($P$)* \ Power transmitted at $N = 350 "rpm"$],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$(2 pi N T) / 60$] \
    &= (2 pi times 350 times 800) / 60 \
    &= 29325 "W" \
    &= bold(29.325 "kW")
  $]
)

#item-row(
  [*7. Design Output*],
  [*Final Answers: (1) M 8 Bolts, (2) $t_f = 12 "mm"$, (3) Key $12 times 8 times 85 "mm"$, (4) Hub $L = 85 "mm"$, (5) Power $P = 29.325 "kW"$*]
)

// ==========================================
// SECTION 8
// ==========================================
#pagebreak()
#section-heading("8", "Marine Engine Forged Flange Coupling Design")

#section-overview(
  [*System Parameters* \ Engine Power: $P = 3 "MW" = 3 times 10^6 "W"$ \ Speed: $N = 100 "rpm"$ \ Permissible Shear Stress: Shaft & Bolts $tau_s = tau_b = 60 "MPa"$ | Bolt Count: $n = 8$ | Pitch Circle Diameter: $D_1 = 1.6 d$],
  [*Design Protocol* \ Part 1: Calculate design torque $T$ and solve shaft diameter $d$ \ Part 2: Size fitted bolt diameter $d_1$ for $n = 8$ on PCD $D_1 = 1.6 d$ \ Part 3: Calculate flange thickness $t_f = 0.25 d$ and verify shear stress $tau_c$ \ Part 4: Calculate outer flange diameter $D_2 = D_1 + 2.5 d_1$]
)

#item-row(
  [*1. Transmitted Design Torque ($T$)* \ High power marine engine torque calculation],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
    &= (60 times 3 times 10^6) / (2 pi times 100) \
    &= 286479 "N"dot"m" \
    &= 286.48 times 10^6 "N"dot"mm"
  $]
)

#item-row(
  [*2. Marine Shaft Diameter Sizing ($d$)* \ Solid shaft torsional strength evaluation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T) / (pi tau_s))$] \
    &= root(3, (16 times 286.48 times 10^6) / (pi times 60)) \
    &= 290 "mm"
  $]
)

#item-row(
  [*3. Standard Shaft Diameter Selection* \ Select standard nominal marine shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 300 "mm"$*]
)

#item-row(
  [*4. Coupling Bolts PCD & Shank Diameter ($D_1, d_1$)* \ Torque capacity for $n = 8$ fitted bolts on PCD $D_1 = 1.6 d$],
  [
    $
      D_1 &= 1.6 d = 1.6(300) = 480 "mm" \
      #text(size: 20pt)[$T$] &= #text(size: 20pt)[$n dot [pi/4 d_1^2] dot tau_b dot (D_1 / 2)$] \
      286.48 times 10^6 &= 8 times [pi/4 d_1^2] times 60 times (480 / 2) \
      d_1^2 &= 3166 \
      d_1 &= 56.3 "mm" \
      &=> bold("Adopt Standard Bolt Size " d_1 = 60 "mm (M 60)")
    $
  ]
)

#item-row(
  [*5. Forged Flange Thickness ($t_f$) & Shear Check ($tau_s$)* \ Flange web shear stress check at junction],
  [
    $
      t_f &= d / 3 = 300 / 3 = 100 "mm" \
      #text(size: 20pt)[$tau_s$] &= #text(size: 20pt)[$(2 T) / (pi d^2 t_f)$] \
      &= (2 times 286.48 times 10^6) / (pi times 300^2 times 100) \
      &= 20.26 "MPa" \
      &<= 60 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Outer Flange Diameter ($D_2$)* \ Overall diameter of forged marine flange],
  [$
    #text(size: 20pt)[$D_2$] &= #text(size: 20pt)[$2.2 d$] \
    &= 2.2(300) \
    &= 660 "mm" quad bold("(Ans.)")
  $]
)

#item-row(
  [*7. Complete Design Output*],
  [*Final Answers: (1) Shaft d = 300 mm, (2) 8 Bolts d1 = 60 mm (M 60), (3) Flange tf = 100 mm, (4) Flange D2 = 660 mm*]
)

#figure-page("8", "Marine Engine Forged Flange Coupling", "marine flange coupling.png", "Figure 13.6: Marine Engine Forged Flange Coupling Mechanical Assembly Diagram")

// ==========================================
// SECTION 9
// ==========================================
#pagebreak()
#section-heading("9", "Bushed-Pin Flexible Coupling Design")

#section-overview(
  [*System Parameters* \ Power: $P = 32 "kW" = 32000 "W"$ \ Speed: $N = 960 "rpm"$ \ Overload Capacity: $1.20 T_("mean")$ \ Shaft, Key & Pin Shear: $tau = 40 "MPa"$ \ Key Crushing: $sigma_c = 80 "MPa"$ \ CI Shear: $tau_c = 15 "MPa"$ | Rubber Bush Bearing Pressure: $p_b = 0.8 "N/mm"^2$],
  [*Design Protocol* \ Part 1: Calculate peak torque $T_("max")$ and size shaft diameter $d$ \ Part 2: Layout flexible pins ($n = 6, d_1 = 20 "mm"$), bush $d_2 = 40 "mm"$, PCD $D_1 = 132 "mm"$, and solve bush length $l$ \ Part 3: Verify pin direct shear, bending stress, and principal stresses \ Part 4: Determine hub dimensions $D, L$, key $w, t, l$, and flange web $t_f$]
)

#item-row(
  [*1. Peak Design Torque ($T_("max")$)* \ Torque calculation incorporating 20% overload],
  [
    $
      #text(size: 20pt)[$T_("mean")$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
      &= (60 times 32000) / (2 pi times 960) \
      &= 318.3 "N"dot"m"
    $
    #v(4pt)
    $
      #text(size: 20pt)[$T_("max")$] &= #text(size: 20pt)[$1.20 times T_("mean")$] \
      &= 1.20 times 318.3 \
      &= 382 "N"dot"m" \
      &= 382 times 10^3 "N"dot"mm"
    $
  ]
)

#item-row(
  [*2. Shaft Diameter Sizing ($d$)* \ Torsional strength evaluation],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$root(3, (16 T_("max")) / (pi tau_s))$] \
    &= root(3, (16 times 382 times 10^3) / (pi times 40)) \
    &= 36.5 "mm"
  $]
)

#item-row(
  [*3. Standard Shaft Diameter Selection* \ Select standard nominal shaft diameter],
  [*Adopt Standard Shaft Diameter $d = 40 "mm"$*]
)

#item-row(
  [*4. Pin & Rubber Bush Proportions ($n, d_1, d_2, D_1$)* \ Flexible pin geometry],
  [
    $
      n &= 6 "pins", quad d_1 = 20 "mm" quad ("Pin Shank") \
      d_2 &= 40 "mm" quad ("Rubber Bush Outer Diameter") \
      #text(size: 20pt)[$D_1$] &= #text(size: 20pt)[$2d + d_2 + 2(6) = 2(40) + 40 + 12 = 132 "mm"$]
    $
  ]
)

#item-row(
  [*5. Bush Length ($l$) & Bearing Load ($W$)* \ Bearing pressure and torque moment equilibrium],
  [
    $
      W &= p_b dot d_2 dot l = 0.8 times 40 times l = 32 l "N" \
      #text(size: 20pt)[$T_("max")$] &= #text(size: 20pt)[$W dot n dot (D_1 / 2)$] \
      382 times 10^3 &= (32 l) times 6 times (132 / 2) \
      382 times 10^3 &= 12672 l \
      l &= 30.1 "mm" \
      &=> bold("Adopt Bush Length " l = 32 "mm") \
      W &= 32(32) = bold(1024 "N")
    $
  ]
)

#item-row(
  [*6. Flexible Pin Direct Shear Stress ($tau$)* \ Direct shear force on pin shank],
  [$
    #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$W / (pi/4 d_1^2)$] \
    &= 1024 / (pi/4 (20)^2) \
    &= 3.26 "N/mm"^2
  $]
)

#item-row(
  [*7. Flexible Pin Bending Moment ($M$) & Bending Stress ($sigma_b$)* \ Bending moment and section modulus],
  [
    $
      M &= W(l/2 + 5) \
      &= 1024(16 + 5) \
      &= 21504 "N"dot"mm" \
      Z &= pi/32 d_1^3 \
      &= pi/32 (20)^3 \
      &= 785.5 "mm"^3
    $
    #v(4pt)
    $
      #text(size: 20pt)[$sigma_b$] &= #text(size: 20pt)[$M / Z$] \
      &= 21504 / 785.5 \
      &= 27.4 "N/mm"^2
    $
  ]
)

#item-row(
  [*8. Flexible Pin Maximum Principal Stress ($sigma_("max")$)* \ Maximum principal stress theory check],
  [$
    #text(size: 20pt)[$sigma_("max")$] &= #text(size: 20pt)[$1/2 [sigma_b + sqrt(sigma_b^2 + 4 tau^2)]$] \
    &= 1/2 [27.4 + sqrt((27.4)^2 + 4(3.26)^2)] \
    &= 27.8 "MPa" \
    &<= 40 "MPa" quad bold("(SAFE)")
  $]
)

#item-row(
  [*9. Flexible Pin Maximum Shear Stress ($tau_("max")$)* \ Maximum shear stress theory check],
  [$
    #text(size: 20pt)[$tau_("max")$] &= #text(size: 20pt)[$1/2 sqrt(sigma_b^2 + 4 tau^2)$] \
    &= 1/2 sqrt((27.4)^2 + 4(3.26)^2) \
    &= 14.1 "MPa" \
    &<= 40 "MPa" quad bold("(SAFE)")
  $]
)

#item-row(
  [*10. Cast Iron Hub Proportions ($D, L$) & Shear Check ($tau_c$)* \ Hub dimensions and shear stress check],
  [
    $
      D &= 2d = 80 "mm", quad L = 1.5d = 60 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(16 T_("max") D) / (pi (D^4 - d^4))$] \
      &= (16 times 382 times 10^3 times 80) / (pi (80^4 - 40^4)) \
      &= 4.05 "MPa" \
      &<= 15 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*11. Key Design & Stress Verification ($tau_k, sigma_("ck")$)* \ Table 13.1 square key ($w = 14 "mm", t = 14 "mm", l = 60 "mm"$)],
  [
    $
      #text(size: 20pt)[$tau_k$] &= #text(size: 20pt)[$T_("max") / (l dot w dot (d/2))$] \
      &= (382 times 10^3) / (60 times 14 times 20) \
      &= 22.74 "MPa" \
      &<= 40 "MPa" quad bold("(SAFE)")
    $
    #v(4pt)
    $
      #text(size: 20pt)[$sigma_("ck")$] &= #text(size: 20pt)[$T_("max") / (l dot (t/2) dot (d/2))$] \
      &= (382 times 10^3) / (60 times 7 times 20) \
      &= 45.48 "MPa" \
      &<= 80 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*12. Flange Web Thickness ($t_f$) & Shear Check ($tau_c$)* \ Flange web shear stress check],
  [
    $
      t_f &= 0.5 d = 20 "mm" \
      #text(size: 20pt)[$tau_c$] &= #text(size: 20pt)[$(2 T_("max")) / (pi D^2 t_f)$] \
      &= (2 times 382 times 10^3) / (pi times 80^2 times 20) \
      &= 1.9 "MPa" \
      &<= 15 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*13. Design Output*],
  [*Final Design: Shaft d = 40 mm, 6 Flexible Pins d1 = 20 mm, Rubber Bush d2 = 40 mm, l = 32 mm, Hub D = 80 mm, L = 60 mm, Flange tf = 20 mm*]
)

#figure-page("9", "Bushed-Pin Flexible Coupling", "bushed pin flexible.png", "Figure 13.7: Bushed-Pin Flexible Coupling Mechanical Assembly & Rubber Bush Details")
