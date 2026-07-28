// Design Data Book — Riveted Joints
// Mechanical Engineering Data Book (Compiled from examples_solutions.md)

#let databook-title = "DESIGN DATA BOOK — RIVETED JOINTS"

#set page(
  paper: "a4",
  flipped: true,
  margin: (top: 25pt, bottom: 25pt, left: 40pt, right: 40pt),
  header: none,
  footer: none,
  background: context {
    // Perpendicular Side-Margin Header & Page Numbers (Vertical Binder Orientation)
    place(
      top + left,
      dx: 16pt,
      dy: 25pt,
      rotate(
        90deg,
        origin: top + left,
        block(width: 535pt)[
          #grid(
            columns: (1fr, auto),
            align: (left + horizon, right + horizon),
            [#text(fill: rgb("#000000"), size: 10.5pt, weight: "bold")[#databook-title]],
            [#text(fill: rgb("#000000"), weight: "bold", size: 10.5pt)[Page #counter(page).display("1 of 1", both: true)]]
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
#show math.equation.where(block: true): it => align(left, it)
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

// Dedicated Figure Page Component
#let figure-page(sec-num, title, fig-path, caption) = {
  pagebreak()
  block(width: 100%, breakable: false)[
    #section-heading(sec-num, title + " — MECHANICAL DIAGRAM")
    #v(2pt)
    #align(center)[
      #image(fig-path, width: 85%, height: 420pt, fit: "contain")
      #v(6pt)
      #text(weight: "bold", size: 14pt)[#caption]
    ]
  ]
}

// ==========================================
// SECTION 1: EXAMPLE 9.1
// ==========================================

#section-heading("1", "DOUBLE RIVETED LAP JOINT UNDER TENSION, SHEAR, AND CRUSHING STRESSES")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 15 "mm"$, Rivet Diameter $d = 25 "mm"$, Pitch $p = 75 "mm"$, Ultimate Tensile Stress $sigma_("u") = 400 "MPa"$, Ultimate Shear Stress $tau_("u") = 320 "MPa"$, Ultimate Crushing Stress $sigma_("cu") = 640 "MPa"$, Factor of Safety $"FOS" = 4$.],
  [*Design Protocol:* Evaluate plate tearing, rivet shearing ($n = 2$), and rivet crushing strengths to determine minimum rupturing force $P_("u")$ per pitch; compute working load $P = P_("u")$ / FOS and evaluate working stresses.]
)

#item-row(
  [*1. Tearing Strength of Plate ($P_t$)* \ Plate tearing capacity per pitch length],
  [$
    #text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(p - d) t dot sigma_("u")$] \
    &= (75 - 25) times 15 times 400 \
    &= 300000 "N" \
    &=> P_t = 300 "kN"
  $]
)

#item-row(
  [*2. Shearing Strength of Rivets ($P_s$)* \ Single shear capacity of 2 rivets per pitch length],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$n dot pi/4 d^2 dot tau_("u")$] \
    &= 2 times pi/4 (25)^2 times 320 \
    &= 314160 "N" \
    &=> P_s = 314.16 "kN"
  $]
)

#item-row(
  [*3. Crushing Strength of Rivets ($P_c$)* \ Bearing capacity of 2 rivets per pitch length],
  [$
    #text(size: 20pt)[$P_c$] &= #text(size: 20pt)[$n dot d dot t dot sigma_("cu")$] \
    &= 2 times 25 times 15 times 640 \
    &= 480000 "N" \
    &=> P_c = 480 "kN"
  $]
)

#item-row(
  [*4. Rupturing Force per Pitch ($P_u$)* \ Minimum strength governing joint rupture],
  [$
    #text(size: 20pt)[$P_u$] &= #text(size: 20pt)[$min(P_t, P_s, P_c)$] \
    &= min(300, 314.16, 480) \
    &=> P_u = 300 "kN"
  $]
)

#item-row(
  [*5. Safe Working Load ($P$)* \ Applied force per pitch at FOS = 4],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$P_u / "FOS"$] \
    &= 300 / 4 \
    &= 75 "kN" \
    &= 75000 "N"
  $]
)

#item-row(
  [*6. Actual Tensile Stress ($sigma_t$)* \ Induced tensile stress on main plate],
  [$
    #text(size: 20pt)[$sigma_t$] &= #text(size: 20pt)[$P / ((p - d) t)$] \
    &= 75000 / ((75 - 25) times 15) \
    &= 100 "MPa"
  $]
)

#item-row(
  [*7. Actual Shear Stress ($tau$)* \ Induced shear stress in rivets],
  [$
    #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$P / (n dot pi/4 d^2)$] \
    &= 75000 / (2 times pi/4 (25)^2) \
    &= 76.4 "MPa"
  $]
)

#item-row(
  [*8. Actual Crushing Stress ($sigma_c$)* \ Induced crushing stress on rivets],
  [$
    #text(size: 20pt)[$sigma_c$] &= #text(size: 20pt)[$P / (n dot d dot t)$] \
    &= 75000 / (2 times 25 times 15) \
    &= 100 "MPa"
  $]
)

#item-row(
  [*Design Output*],
  [*Rupturing Force Pu = 300 kN | Working Load P = 75 kN | Working Stresses: sigma_t = 100 MPa, tau = 76.4 MPa, sigma_c = 100 MPa*]
)

#figure-page("1", "DOUBLE RIVETED LAP JOINT", "Fig 9.20.png", "Fig. 9.20: Double Riveted Lap Joint Scheme")

// ==========================================
// SECTION 2: EXAMPLE 9.2
// ==========================================

#pagebreak()

#section-heading("2", "EFFICIENCY OF SINGLE AND DOUBLE RIVETED LAP JOINTS")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 6 "mm"$, Rivet Diameter $d = 20 "mm"$, Case 1 Pitch $p_1 = 50 "mm"$ ($n=1$), Case 2 Pitch $p_2 = 65 "mm"$ ($n=2$), Allowable Stresses: Tensile $sigma_t = 120 "MPa"$, Shear $tau = 90 "MPa"$, Crushing $sigma_c = 180 "MPa"$.],
  [*Design Protocol:* Calculate un-punched solid plate strength, tearing, shearing, and crushing strengths for single and double riveted lap joints; compute joint efficiencies.]
)

#item-row(
  [*1. Solid Plate Strength — Single Lap ($P$)* \ Strength of un-punched plate ($p = 50 "mm"$)],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$p dot t dot sigma_t$] \
    &= 50 times 6 times 120 \
    &= 36000 "N"
  $]
)

#item-row(
  [*2. Tearing Strength — Single Lap ($P_t$)* \ Net section tensile capacity],
  [$
    #text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(p - d) t dot sigma_t$] \
    &= (50 - 20) times 6 times 120 \
    &= 21600 "N"
  $]
)

#item-row(
  [*3. Shearing Strength — Single Lap ($P_s$)* \ Single shear capacity ($n = 1$)],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$n dot pi/4 d^2 dot tau$] \
    &= 1 times pi/4 (20)^2 times 90 \
    &= 28274 "N"
  $]
)

#item-row(
  [*4. Crushing Strength — Single Lap ($P_c$)* \ Bearing capacity ($n = 1$)],
  [$
    #text(size: 20pt)[$P_c$] &= #text(size: 20pt)[$n dot d dot t dot sigma_c$] \
    &= 1 times 20 times 6 times 180 \
    &= 21600 "N"
  $]
)

#item-row(
  [*5. Efficiency — Single Riveted Lap Joint ($eta_1$)* \ Ratio of minimum strength to solid strength],
  [$
    #text(size: 20pt)[$eta_1$] &= #text(size: 20pt)[$min(P_t, P_s, P_c) / P times 100%$] \
    &= 21600 / 36000 times 100% \
    &=> bold(eta_1 = 60.0%)
  $]
)

#item-row(
  [*6. Solid Plate Strength — Double Lap ($P$)* \ Strength of un-punched plate ($p = 65 "mm"$)],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$p dot t dot sigma_t$] \
    &= 65 times 6 times 120 \
    &= 46800 "N"
  $]
)

#item-row(
  [*7. Tearing Strength — Double Lap ($P_t$)* \ Net section tensile capacity],
  [$
    #text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(p - d) t dot sigma_t$] \
    &= (65 - 20) times 6 times 120 \
    &= 32400 "N"
  $]
)

#item-row(
  [*8. Shearing Strength — Double Lap ($P_s$)* \ Single shear capacity ($n = 2$)],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$n dot pi/4 d^2 dot tau$] \
    &= 2 times pi/4 (20)^2 times 90 \
    &= 56548 "N"
  $]
)

#item-row(
  [*9. Crushing Strength — Double Lap ($P_c$)* \ Bearing capacity ($n = 2$)],
  [$
    #text(size: 20pt)[$P_c$] &= #text(size: 20pt)[$n dot d dot t dot sigma_c$] \
    &= 2 times 20 times 6 times 180 \
    &= 43200 "N"
  $]
)

#item-row(
  [*10. Efficiency — Double Riveted Lap Joint ($eta_2$)* \ Ratio of minimum strength to solid strength],
  [$
    #text(size: 20pt)[$eta_2$] &= #text(size: 20pt)[$min(P_t, P_s, P_c) / P times 100%$] \
    &= 32400 / 46800 times 100% \
    &=> bold(eta_2 = 69.2%)
  $]
)

#item-row(
  [*Design Output*],
  [*Single Riveted Lap Efficiency eta1 = 60.0% | Double Riveted Lap Efficiency eta2 = 69.2%*]
)

#figure-page("2", "SINGLE RIVETED LAP JOINT", "Fig 9.21.png", "Fig. 9.21: Single Riveted Lap Joint Scheme")

// ==========================================
// SECTION 3: EXAMPLE 9.3
// ==========================================

#pagebreak()

#section-heading("3", "EFFICIENCY OF DOUBLE RIVETED DOUBLE COVER BUTT JOINT")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 20 "mm"$, Rivet Diameter $d = 25 "mm"$, Pitch $p = 100 "mm"$, Allowable Stresses: Tensile $sigma_t = 120 "MPa"$, Shear $tau = 100 "MPa"$, Crushing $sigma_c = 150 "MPa"$, Double Shear Factor = 2.0.],
  [*Design Protocol:* Evaluate solid plate strength, plate tearing strength, rivet double shear strength ($n = 2$), and rivet crushing strength to determine joint efficiency.]
)

#item-row(
  [*1. Solid Plate Strength ($P$)* \ Un-punched solid plate tensile capacity],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$p dot t dot sigma_t$] \
    &= 100 times 20 times 120 \
    &= 240000 "N"
  $]
)

#item-row(
  [*2. Tearing Strength of Plate ($P_t$)* \ Net section tensile strength per pitch],
  [$
    #text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(p - d) t dot sigma_t$] \
    &= (100 - 25) times 20 times 120 \
    &= 180000 "N"
  $]
)

#item-row(
  [*3. Shearing Strength of Rivets ($P_s$)* \ Double shear capacity of 2 rivets per pitch ($n = 2$, factor = 2)],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$2 dot (2 dot pi/4 d^2) dot tau$] \
    &= 2 times (2 times pi/4 (25)^2) times 100 \
    &= 196350 "N"
  $]
)

#item-row(
  [*4. Crushing Strength of Rivets ($P_c$)* \ Bearing capacity of 2 rivets per pitch ($n = 2$)],
  [$
    #text(size: 20pt)[$P_c$] &= #text(size: 20pt)[$n dot d dot t dot sigma_c$] \
    &= 2 times 25 times 20 times 150 \
    &= 150000 "N"
  $]
)

#item-row(
  [*5. Joint Efficiency ($eta$)* \ Ratio of minimum strength to un-punched solid plate strength],
  [$
    #text(size: 20pt)[$eta$] &= #text(size: 20pt)[$min(P_t, P_s, P_c) / P times 100%$] \
    &= 150000 / 240000 times 100% \
    &=> bold(eta = 62.5%)
  $]
)

#item-row(
  [*Design Output*],
  [*Double Cover Butt Joint Efficiency eta = 62.5% (Governed by Rivet Crushing)*]
)

#figure-page("3", "DOUBLE RIVETED DOUBLE COVER BUTT JOINT", "Fig 9.22.png", "Fig. 9.22: Double Riveted Double Cover Butt Joint")

// ==========================================
// SECTION 4: EXAMPLE 9.4
// ==========================================

#pagebreak()

#section-heading("4", "DOUBLE RIVETED LAP JOINT — ZIG-ZAG RIVETING")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 13 "mm"$, Allowable Stresses: Tensile $sigma_t = 80 "MPa"$, Shear $tau = 60 "MPa"$, Crushing $sigma_c = 120 "MPa"$, Number of Rivets per pitch $n = 2$.],
  [*Design Protocol:* Determine rivet hole diameter using Unwin's formula, equate tearing strength to shearing strength to solve for pitch $p$, and evaluate joint efficiency.]
)

#item-row(
  [*1. Rivet Diameter ($d$)* \ Unwin's formula for $t = 13 "mm" >= 8 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(13) \
    &= 21.63 "mm" \
    &=> bold(d = 22 "mm")
  $]
)

#item-row(
  [*2. Selected Rivet Standard Size* \ Adopted standard nominal rivet diameter],
  [*Adopted Rivet Diameter d = 22 mm*]
)

#item-row(
  [*3. Rivet Pitch ($p$)* \ Equating tearing strength $P_t$ to shearing strength $P_s$ ($n = 2$)],
  [$
    #text(size: 20pt)[$(p - d) t dot sigma_t$] &= #text(size: 20pt)[$n dot pi/4 d^2 dot tau$] \
    (p - 22) times 13 times 80 &= 2 times pi/4 (22)^2 times 60 \
    1040 (p - 22) &= 45616 \
    p - 22 &= 45616 / 1040 \
    p - 22 &= 43.86 \
    p &= 65.86 "mm" \
    &=> bold(p = 66 "mm")
  $]
)

#item-row(
  [*4. Adopted Pitch Dimension* \ Selected longitudinal pitch length],
  [*Adopted Pitch p = 66 mm*]
)

#item-row(
  [*5. Joint Efficiency ($eta$)* \ Efficiency based on shear strength vs solid plate strength],
  [$
    #text(size: 20pt)[$eta$] &= #text(size: 20pt)[$P_s / (p dot t dot sigma_t) times 100%$] \
    &= 45616 / (66 times 13 times 80) times 100% \
    &= 45616 / 68640 times 100% \
    &=> bold(eta = 66.5%)
  $]
)

#item-row(
  [*Design Output*],
  [*Zig-zag Lap Joint: Rivet Diameter d = 22 mm | Pitch p = 66 mm | Efficiency eta = 66.5%*]
)

#figure-page("4", "DOUBLE RIVETED LAP JOINT (ZIG-ZAG)", "Fig 9.23.png", "Fig. 9.23: Double Riveted Lap Joint with Zig-Zag Riveting")

// ==========================================
// SECTION 5: EXAMPLE 9.5
// ==========================================

#pagebreak()

#section-heading("5", "TRIPLE RIVETED LAP JOINT — ZIG-ZAG PATTERN")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 7 "mm"$, Allowable Stresses: Tensile $sigma_t = 90 "MPa"$, Shear $tau = 60 "MPa"$, Crushing $sigma_c = 120 "MPa"$, Number of Rivets per pitch $n = 3$.],
  [*Design Protocol:* For thin plates ($t < 8 "mm"$), equate shearing strength to crushing strength to determine rivet diameter $d$; equate tearing strength to shearing strength to find pitch $p$; compute transverse row pitch $p_b$.]
)

#item-row(
  [*1. Rivet Diameter ($d$)* \ Equating shearing strength $P_s$ to crushing strength $P_c$ ($t < 8 "mm"$)],
  [$
    #text(size: 20pt)[$n dot pi/4 d^2 dot tau$] &= #text(size: 20pt)[$n dot d dot t dot sigma_c$] \
    3 times pi/4 d^2 times 60 &= 3 times d times 7 times 120 \
    141.37 d &= 2520 \
    d &= 2520 / 141.37 \
    d &= 17.82 "mm" \
    &=> bold(d = 19 "mm")
  $]
)

#item-row(
  [*2. Selected Rivet Standard Size* \ Adopted standard nominal rivet diameter],
  [*Adopted Rivet Diameter d = 19 mm*]
)

#item-row(
  [*3. Rivet Pitch ($p$)* \ Equating tearing strength $P_t$ to shearing strength $P_s$ ($n = 3$)],
  [$
    #text(size: 20pt)[$(p - d) t dot sigma_t$] &= #text(size: 20pt)[$n dot pi/4 d^2 dot tau$] \
    (p - 19) times 7 times 90 &= 3 times pi/4 (19)^2 times 60 \
    630 (p - 19) &= 51035 \
    p - 19 &= 51035 / 630 \
    p - 19 &= 81.01 \
    p &= 100.01 "mm" \
    &=> bold(p = 100 "mm")
  $]
)

#item-row(
  [*4. Adopted Pitch Dimension* \ Selected longitudinal pitch length],
  [*Adopted Pitch p = 100 mm*]
)

#item-row(
  [*5. Transverse Row Pitch ($p_b$)* \ Empirical relation for zig-zag riveting],
  [$
    #text(size: 20pt)[$p_b$] &= #text(size: 20pt)[$0.33 p + 0.67 d$] \
    &= 0.33 (100) + 0.67 (19) \
    &= 33 + 12.73 \
    &= 45.73 "mm" \
    &=> bold(p_b = 46 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*Triple Lap Joint: d = 19 mm | Pitch p = 100 mm | Row Pitch pb = 46 mm*]
)

#figure-page("5", "TRIPLE RIVETED LAP JOINT", "Fig 9.24.png", "Fig. 9.24: Triple Riveted Lap Joint with Zig-Zag Pattern")

// ==========================================
// SECTION 6: EXAMPLE 9.6
// ==========================================

#pagebreak()

#section-heading("6", "SINGLE RIVETED DOUBLE STRAP BUTT JOINT")

#section-overview(
  [*System Parameters:* Main Plate Thickness $t = 10 "mm"$, Allowable Tensile Stress $sigma_t = 80 "MPa"$, Allowable Shear Stress $tau = 60 "MPa"$, Double Shear Factor = 1.875.],
  [*Design Protocol:* Determine rivet diameter $d$ using Unwin's formula, calculate double shear capacity $P_s$ ($n = 1$), solve for pitch $p$, compute cover strap thickness $t_1$, and evaluate efficiency.]
)

#item-row(
  [*1. Rivet Diameter ($d$)* \ Unwin's formula for $t = 10 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(10) \
    &= 18.97 "mm" \
    &=> bold(d = 19 "mm")
  $]
)

#item-row(
  [*2. Double Shear Strength ($P_s$)* \ IS code double shear strength for single rivet ($n = 1$)],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$1.875 dot n dot pi/4 d^2 dot tau$] \
    &= 1.875 times 1 times pi/4 (19)^2 times 60 \
    &= 31895 "N"
  $]
)

#item-row(
  [*3. Rivet Pitch ($p$)* \ Equating tearing strength $P_t$ to double shear strength $P_s$],
  [$
    #text(size: 20pt)[$(p - d) t dot sigma_t$] &= #text(size: 20pt)[$P_s$] \
    (p - 19) times 10 times 80 &= 31895 \
    800 (p - 19) &= 31895 \
    p - 19 &= 31895 / 800 \
    p - 19 &= 39.87 \
    p &= 58.87 "mm" \
    &=> bold(p = 60 "mm")
  $]
)

#item-row(
  [*4. Cover Strap Thickness ($t_1$)* \ Standard proportion for double cover butt joint],
  [$
    #text(size: 20pt)[$t_1$] &= #text(size: 20pt)[$0.625 t$] \
    &= 0.625 times 10 \
    &= 6.25 "mm" \
    &=> bold(t_1 = 7 "mm")
  $]
)

#item-row(
  [*5. Joint Efficiency ($eta$)* \ Ratio of double shear strength to solid plate strength],
  [$
    #text(size: 20pt)[$eta$] &= #text(size: 20pt)[$P_s / (p dot t dot sigma_t) times 100%$] \
    &= 31895 / (60 times 10 times 80) times 100% \
    &= 31895 / 48000 times 100% \
    &=> bold(eta = 66.4%)
  $]
)

#item-row(
  [*Design Output*],
  [*Double Strap Butt Joint: d = 19 mm | Pitch p = 60 mm | Strap t1 = 7 mm | Efficiency eta = 66.4%*]
)

#figure-page("6", "SINGLE RIVETED DOUBLE STRAP BUTT JOINT", "Fig 9.25.png", "Fig. 9.25: Single Riveted Double Strap Butt Joint")

// ==========================================
// SECTION 7: EXAMPLE 9.7
// ==========================================

#pagebreak()

#section-heading("7", "BOILER LONGITUDINAL DOUBLE RIVETED BUTT JOINT")

#section-overview(
  [*System Parameters:* Boiler Shell Diameter $D = 1.5 "m" = 1500 "mm"$, Internal Steam Pressure $p_i = 0.95 "N/mm"^2$, Target Longitudinal Efficiency $eta_l = 75%$, Allowable Tensile Stress $sigma_t = 90 "MPa"$, Allowable Crushing Stress $sigma_c = 140 "MPa"$, Allowable Shear Stress $tau = 56 "MPa"$, Corrosion Allowance = 1.5 mm.],
  [*Design Protocol:* Calculate shell thickness $t$, size rivet diameter $d$, solve pitch $p$ from double shear strength ($n = 2$), check against maximum pitch $p_("max")$, and summarize design parameters.]
)

#item-row(
  [*1. Shell Plate Thickness ($t$)* \ Thin cylinder formula with corrosion allowance],
  [$
    #text(size: 20pt)[$t$] &= #text(size: 20pt)[$(p_i dot D) / (2 sigma_t dot eta_l) + 1.5$] \
    &= (0.95 times 1500) / (2 times 90 times 0.75) + 1.5 \
    &= 1425 / 135 + 1.5 \
    &= 10.55 + 1.5 \
    &= 12.05 "mm" \
    &=> bold(t = 13 "mm")
  $]
)

#item-row(
  [*2. Selected Shell Thickness* \ Adopted standard plate thickness],
  [*Adopted Shell Thickness t = 13 mm*]
)

#item-row(
  [*3. Rivet Diameter ($d$)* \ Unwin's formula for $t = 13 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(13) \
    &= 21.63 "mm" \
    &=> bold(d = 22 "mm")
  $]
)

#item-row(
  [*4. Selected Rivet Diameter* \ Adopted standard nominal rivet size],
  [*Adopted Rivet Diameter d = 22 mm*]
)

#item-row(
  [*5. Double Shear Strength ($P_s$)* \ IS double shear capacity for $n = 2$ rivets per pitch],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$1.875 dot n dot pi/4 d^2 dot tau$] \
    &= 1.875 times 2 times pi/4 (22)^2 times 56 \
    &= 79828 "N"
  $]
)

#item-row(
  [*6. Rivet Pitch ($p$)* \ Calculated pitch from $P_t = P_s$ and maximum pitch check ($p_("max")$)],
  [$
    #text(size: 20pt)[$(p - d) t dot sigma_t$] &= #text(size: 20pt)[$P_s$] \
    (p - 22) times 13 times 90 &= 79828 \
    1170 (p - 22) &= 79828 \
    p - 22 &= 68.23 \
    p &= 90.23 "mm" \
    p_("max") &= 3.5 t + 41.28 \
    &= 3.5 (13) + 41.28 \
    &= 86.78 "mm" \
    &=> bold(p = 86 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*Boiler Longitudinal Seam: Shell Thickness t = 13 mm | Rivet Diameter d = 22 mm | Pitch p = 86 mm*]
)

#figure-page("7", "BOILER LONGITUDINAL DOUBLE RIVETED BUTT JOINT", "Fig 9.26.png", "Fig. 9.26: Boiler Longitudinal Double Riveted Double Strap Butt Joint")

// ==========================================
// SECTION 8: EXAMPLE 9.8
// ==========================================

#pagebreak()

#section-heading("8", "PRESSURE VESSEL DOUBLE STRAP BUTT JOINT")

#section-overview(
  [*System Parameters:* Vessel Diameter $D = 1 "m" = 1000 "mm"$, Pressure $p_i = 2.75 "N/mm"^2$, Target Efficiency $eta_l = 79%$, Allowable Tensile Stress $sigma_t = 88 "MPa"$, Allowable Shear Stress $tau = 64 "MPa"$, Double Shear Factor = 1.8.],
  [*Design Protocol:* Size shell thickness $t$, solve rivet diameter $d$, determine outer and inner row pitches ($p_("outer"), p_("inner")$), and verify efficiency.]
)

#item-row(
  [*1. Plate Thickness ($t$)* \ Thin cylinder formula],
  [$
    #text(size: 20pt)[$t$] &= #text(size: 20pt)[$(p_i dot D) / (2 sigma_t dot eta_l)$] \
    &= (2.75 times 1000) / (2 times 88 times 0.79) \
    &= 2750 / 139.04 \
    &= 19.78 "mm" \
    &=> bold(t = 20 "mm")
  $]
)

#item-row(
  [*2. Rivet Diameter ($d$)* \ Unwin's formula for $t = 20 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(20) \
    &= 26.83 "mm" \
    &=> bold(d = 28.5 "mm")
  $]
)

#item-row(
  [*3. Outer Pitch ($p$) & Efficiency ($eta$)* \ Selected pitch dimensions and verified efficiency],
  [$
    p_("outer") &= 150 "mm" \
    p_("inner") &= 75 "mm" \
    #text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(p_("outer") - d) t dot sigma_t$] \
    &= (150 - 28.5) times 20 times 88 \
    &= 213840 "N" \
    P &= 150 times 20 times 88 \
    &= 264000 "N" \
    eta &= 213840 / 264000 times 100% \
    &=> bold(eta = 81%)
  $]
)

#item-row(
  [*Design Output*],
  [*Pressure Vessel Joint: Thickness t = 20 mm | Rivet Diameter d = 28.5 mm | Outer Pitch p = 150 mm | Efficiency eta = 81%*]
)

#figure-page("8", "PRESSURE VESSEL BUTT JOINT", "Fig 9.27&9.28.png", "Fig. 9.27 & 9.28: Pressure Vessel Double Strap Butt Joint")

// ==========================================
// SECTION 9: EXAMPLE 9.9
// ==========================================

#pagebreak()

#section-heading("9", "BOILER LONGITUDINAL SEAM DESIGN")

#section-overview(
  [*System Parameters:* Boiler Diameter $D = 1.25 "m" = 1250 "mm"$, Steam Pressure $p_i = 2.5 "N/mm"^2$, Ultimate Tensile Stress $sigma_("u") = 420 "MPa"$, Ultimate Crushing Stress $sigma_("cu") = 650 "MPa"$, Ultimate Shear Stress $tau_("u") = 300 "MPa"$, Target Efficiency $eta_l = 80%$, Factor of Safety $"FOS" = 5$, Corrosion Allowance = 1.5 mm.],
  [*Design Protocol:* Calculate working allowable stresses, determine plate thickness $t$, and compute rivet diameter $d$.]
)

#item-row(
  [*1. Allowable Working Stresses* \ Ultimate stress divided by FOS = 5],
  [$
    sigma_t &= sigma_("u") / "FOS" \
    &= 420 / 5 \
    &= 84 "MPa" \
    sigma_c &= sigma_("cu") / "FOS" \
    &= 650 / 5 \
    &= 130 "MPa" \
    tau &= tau_("u") / "FOS" \
    &= 300 / 5 \
    &= 60 "MPa"
  $]
)

#item-row(
  [*2. Plate Thickness ($t$)* \ Thin cylinder formula with corrosion allowance],
  [$
    #text(size: 20pt)[$t$] &= #text(size: 20pt)[$(p_i dot D) / (2 sigma_t dot eta_l) + 1.5$] \
    &= (2.5 times 1250) / (2 times 84 times 0.80) + 1.5 \
    &= 3125 / 134.4 + 1.5 \
    &= 23.25 + 1.5 \
    &= 24.75 "mm" \
    &=> bold(t = 25 "mm")
  $]
)

#item-row(
  [*3. Rivet Diameter ($d$)* \ Unwin's formula for $t = 25 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(25) \
    &= 30 "mm" \
    &=> bold(d = 30 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*Boiler Seam: Allowable Stresses (84, 130, 60 MPa) | Plate Thickness t = 25 mm | Rivet Diameter d = 30 mm*]
)

#figure-page("9", "BOILER LONGITUDINAL SEAM", "Fig 9.29&9.30.png", "Fig. 9.29 & 9.30: Boiler Longitudinal Seam Triple Riveted Butt Joint")

// ==========================================
// SECTION 10: EXAMPLE 9.10
// ==========================================

#pagebreak()

#section-heading("10", "BOILER LONGITUDINAL & CIRCUMFERENTIAL JOINTS")

#section-overview(
  [*System Parameters:* Boiler Diameter $D = 1.6 "m" = 1600 "mm"$, Pressure $p_i = 2.5 "N/mm"^2$, Allowable Stresses: Tensile $sigma_t = 75 "MPa"$, Shear $tau = 60 "MPa"$, Crushing $sigma_c = 125 "MPa"$.],
  [*Design Protocol:* Summarize longitudinal joint plate thickness $t$ and rivet diameter $d$; design circumferential joint by calculating total steam thrust $F$ and required rivet count $N_c$.]
)

#item-row(
  [*1. Longitudinal Joint Parameters* \ Plate thickness and rivet diameter selection],
  [$
    t &= 35 "mm" \
    d &= 35.5 "mm"
  $]
)

#item-row(
  [*2. Total Steam End Thrust ($F$)* \ Axial burst force acting on boiler end cap],
  [$
    #text(size: 20pt)[$F$] &= #text(size: 20pt)[$pi/4 D^2 dot p_i$] \
    &= pi/4 (1600)^2 times 2.5 \
    &= 5.026 times 10^6 "N"
  $]
)

#item-row(
  [*3. Number of Circumferential Rivets ($N_c$)* \ Number of single shear rivets required to resist axial thrust],
  [$
    #text(size: 20pt)[$N_c$] &= #text(size: 20pt)[$F / (pi/4 d^2 dot tau)$] \
    &= (5.026 times 10^6) / (pi/4 (35.5)^2 times 60) \
    &= (5.026 times 10^6) / 59390 \
    &= 84.6 \
    &=> bold(N_c = 85 "rivets")
  $]
)

#item-row(
  [*Design Output*],
  [*Longitudinal: t = 35 mm, d = 35.5 mm | Circumferential Joint Thrust F = 5.026 MN | Rivet Count Nc = 85 rivets*]
)

#figure-page("10", "BOILER CIRCUMFERENTIAL & LONGITUDINAL JOINTS", "Fig 9.31&9.32.png", "Fig. 9.31 & 9.32: Boiler Longitudinal and Circumferential Joints")

// ==========================================
// SECTION 11: EXAMPLE 9.11
// ==========================================

#pagebreak()

#section-heading("11", "TIE ROD DOUBLE COVER BUTT JOINT")

#section-overview(
  [*System Parameters:* Tie Rod Cross-Section $b = 200 "mm"$, $t = 12.5 "mm"$, Allowable Stresses: Tensile $sigma_t = 80 "MPa"$, Shear $tau = 65 "MPa"$, Crushing $sigma_c = 160 "MPa"$, Double Shear Factor = 1.875.],
  [*Design Protocol:* Calculate rivet diameter $d$, evaluate maximum tensile load capacity $P$, compute single rivet double shear strength $P_s$, and determine required rivet count $n$.]
)

#item-row(
  [*1. Rivet Diameter ($d$)* \ Unwin's formula for $t = 12.5 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(12.5) \
    &= 21.21 "mm" \
    &=> bold(d = 21.5 "mm")
  $]
)

#item-row(
  [*2. Full Tensile Load ($P$)* \ Solid tie-rod tensile capacity],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$b dot t dot sigma_t$] \
    &= 200 times 12.5 times 80 \
    &= 200000 "N" \
    &= 200 "kN"
  $]
)

#item-row(
  [*3. Single Rivet Double Shear Capacity ($P_s$)* \ Shear strength per rivet in double cover butt joint],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$1.875 dot pi/4 d^2 dot tau$] \
    &= 1.875 times pi/4 (21.5)^2 times 65 \
    &= 44250 "N" \
    &= 44.25 "kN"
  $]
)

#item-row(
  [*4. Required Rivet Count ($n$)* \ Total rivets needed per side of joint],
  [$
    #text(size: 20pt)[$n$] &= #text(size: 20pt)[$P / P_s$] \
    &= 200 / 44.25 \
    &= 4.52 \
    &=> bold(n = 5 "rivets")
  $]
)

#item-row(
  [*Design Output*],
  [*Tie Rod Joint: Rivet Diameter d = 21.5 mm | Tensile Load P = 200 kN | Required Rivets n = 5 rivets*]
)

#figure-page("11", "TIE ROD DOUBLE COVER BUTT JOINT", "Fig 9.33&9.34.png", "Fig. 9.33 & 9.34: Tie Rod Double Cover Butt Joint")

// ==========================================
// SECTION 12: EXAMPLE 9.12
// ==========================================

#pagebreak()

#section-heading("12", "BRIDGE TIE-BAR LOZENGE (DIAMOND) JOINT")

#section-overview(
  [*System Parameters:* Flat Bar Width $b = 350 "mm"$, Thickness $t = 20 "mm"$, Allowable Stresses: Tensile $sigma_t = 90 "MPa"$, Shear $tau = 60 "MPa"$, Crushing $sigma_c = 150 "MPa"$, Double Shear Factor = 1.875.],
  [*Design Protocol:* Calculate rivet diameter $d$, evaluate net load capacity $P$ at outer row (1 rivet), determine single rivet double shear strength $P_s$, compute required number of rivets $n$, and arrange in diamond pattern.]
)

#item-row(
  [*1. Rivet Diameter ($d$)* \ Unwin's formula for $t = 20 "mm"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$6 sqrt(t)$] \
    &= 6 sqrt(20) \
    &= 26.83 "mm" \
    &=> bold(d = 27 "mm")
  $]
)

#item-row(
  [*2. Net Load Capacity ($P$)* \ Tearing strength at critical Section 1-1 (1 rivet hole)],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$(b - d) t dot sigma_t$] \
    &= (350 - 27) times 20 times 90 \
    &= 323 times 1800 \
    &= 581400 "N" \
    &= 581.4 "kN"
  $]
)

#item-row(
  [*3. Single Rivet Double Shear Capacity ($P_s$)* \ Shear resistance per rivet],
  [$
    #text(size: 20pt)[$P_s$] &= #text(size: 20pt)[$1.875 dot pi/4 d^2 dot tau$] \
    &= 1.875 times pi/4 (27)^2 times 60 \
    &= 64412 "N" \
    &= 64.4 "kN"
  $]
)

#item-row(
  [*4. Total Rivet Count ($n$)* \ Total rivets required for lozenge arrangement],
  [$
    #text(size: 20pt)[$n$] &= #text(size: 20pt)[$P / P_s$] \
    &= 581.4 / 64.4 \
    &= 9.02 \
    &=> bold(n = 9 "rivets")
  $]
)

#item-row(
  [*5. Lozenge Rivet Layout* \ Symmetric diamond pattern from outer row to inner row],
  [*Arranged in Diamond Pattern: Row 1 (1 rivet), Row 2 (2 rivets), Row 3 (3 rivets), Row 4 (3 rivets)*]
)

#item-row(
  [*Design Output*],
  [*Bridge Lozenge Joint: d = 27 mm | Net Capacity P = 581.4 kN | Total Rivets n = 9 (Pattern: 1, 2, 3, 3)*]
)

#figure-page("12", "LOZENGE (DIAMOND) JOINT", "Fig 9.35.png", "Fig. 9.35: Bridge Tie-Bar Lozenge Joint")

// ==========================================
// SECTION 13: EXAMPLE 9.13
// ==========================================

#pagebreak()

#section-heading("13", "FLAT TIE-BAR LAP JOINT (DIAMOND PATTERN)")

#section-overview(
  [*System Parameters:* Flat Bar Width $b = 200 "mm"$, Thickness $t = 10 "mm"$, Rivet Shank Diameter $d = 24 "mm"$, Rivet Hole Diameter $d_h = 25.5 "mm"$, Allowable Stresses: Tensile $sigma_t = 112 "MPa"$, Shear $tau = 84 "MPa"$, Crushing $sigma_c = 200 "MPa"$.],
  [*Design Protocol:* Arrange 4 rivets in diamond pattern (1, 1, 2); evaluate net tearing strength at outer single-rivet row, and compute joint efficiency.]
)

#item-row(
  [*1. Rivet Layout & Pattern* \ Specified rivet arrangement on flat tie-bar],
  [*n = 4 rivets arranged in Diamond Pattern (Row 1: 1, Row 2: 1, Row 3: 2)*]
)

#item-row(
  [*2. Net Tearing Strength ($P_t$)* \ Tearing capacity at Section 1-1 with hole diameter $d_h = 25.5 "mm"$],
  [$
    #text(size: 20pt)[$P_t$] &= #text(size: 20pt)[$(b - d_h) t dot sigma_t$] \
    &= (200 - 25.5) times 10 times 112 \
    &= 174.5 times 1120 \
    &= 195440 "N" \
    &= 195.44 "kN"
  $]
)

#item-row(
  [*3. Solid Strength ($P$) & Efficiency ($eta$)* \ Efficiency based on net tearing capacity],
  [$
    P &= b dot t dot sigma_t \
    &= 200 times 10 times 112 \
    &= 224000 "N" \
    #text(size: 20pt)[$eta$] &= #text(size: 20pt)[$P_t / P times 100%$] \
    &= 195440 / 224000 times 100% \
    &=> bold(eta = 87.3%)
  $]
)

#item-row(
  [*Design Output*],
  [*Flat Lap Joint (Diamond Pattern): Net Tearing Strength Pt = 195.44 kN | Joint Efficiency eta = 87.3%*]
)

#figure-page("13", "FLAT TIE-BAR LAP JOINT", "Fig 9.36.png", "Fig. 9.36: Flat Tie-Bar Lap Joint (Diamond Pattern)")

// ==========================================
// SECTION 14: EXAMPLE 9.14
// ==========================================

#pagebreak()

#section-heading("14", "ECCENTRIC BRACKET WITH VERTICAL RIVET LINE")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 25 "mm"$, Eccentric Load $P = 50 "kN" = 50000 "N"$, Eccentricity $e = 400 "mm"$, Rivet Spacing $C = 100 "mm"$, Number of Rivets $n = 4$ in vertical line, Allowable Shear Stress $tau = 65 "MPa"$, Allowable Crushing Stress $sigma_c = 120 "MPa"$.],
  [*Design Protocol:* Calculate direct shear force $F_("s1")$ per rivet; compute secondary shear force $F_("s2")$ due to moment $P e$; find max resultant shear force $F_R$, and solve for rivet diameter $d$.]
)

#item-row(
  [*1. Direct Shear Force ($F_("s1")$)* \ Uniform load distribution across 4 rivets],
  [$
    #text(size: 20pt)[$F_("s1")$] &= #text(size: 20pt)[$P / n$] \
    &= 50000 / 4 \
    &= 12500 "N" \
    &= 12.5 "kN"
  $]
)

#item-row(
  [*2. Secondary Shear Force ($F_("s2")$)* \ Torsional shear force on outermost rivet ($r_("max") = 150 "mm"$)],
  [$
    sum r_i^2 &= 2 (150^2 + 50^2) \
    &= 2 (22500 + 2500) \
    &= 50000 "mm"^2 \
    #text(size: 20pt)[$F_("s2")$] &= #text(size: 20pt)[$(P dot e dot r_("max")) / sum r_i^2$] \
    &= (50000 times 400 times 150) / 50000 \
    &= 60000 "N" \
    &= 60 "kN"
  $]
)

#item-row(
  [*3. Maximum Resultant Shear Force ($F_R$)* \ Direct plus secondary shear force (co-linear theta = 0 deg)],
  [$
    #text(size: 20pt)[$F_R$] &= #text(size: 20pt)[$F_("s1") + F_("s2")$] \
    &= 12.5 + 60 \
    &= 72.5 "kN" \
    &= 72500 "N"
  $]
)

#item-row(
  [*4. Rivet Diameter ($d$)* \ Equating $F_R$ to rivet single shear strength],
  [$
    F_R &= pi/4 d^2 dot tau \
    72500 &= pi/4 d^2 (65) \
    d^2 &= (4 times 72500) / (pi times 65) \
    &= 290000 / 204.2 \
    &= 1420.2 \
    #text(size: 20pt)[$d$] &= 37.68 "mm" \
    &=> bold(d = 38 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*Eccentric Bracket: Direct Shear Fs1 = 12.5 kN | Secondary Shear Fs2 = 60 kN | Resultant FR = 72.5 kN | d = 38 mm*]
)

// ==========================================
// SECTION 15: EXAMPLE 9.15
// ==========================================

#pagebreak()

#section-heading("15", "ECCENTRICALLY LOADED BRACKET JOINT")

#section-overview(
  [*System Parameters:* Eccentric Load $P = 45 "kN"$, Allowable Shear Stress $tau <= 40 "MPa"$.],
  [*Design Protocol:* Evaluate direct and secondary shear forces to determine maximum resultant shear load $F_R = 15.2 "kN"$; size rivet diameter $d$.]
)

#item-row(
  [*1. Maximum Resultant Shear Force ($F_R$)* \ Critical rivet resultant load from direct and secondary shear],
  [$
    #text(size: 20pt)[$F_R$] &= 15.2 "kN" \
    &= 15200 "N"
  $]
)

#item-row(
  [*2. Rivet Diameter ($d$)* \ Single shear area calculation for allowable stress $tau = 40 "MPa"$],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$sqrt((4 F_R) / (pi tau))$] \
    &= sqrt((4 times 15200) / (pi times 40)) \
    &= sqrt(60800 / 125.66) \
    &= sqrt(483.8) \
    &= 22.00 "mm" \
    &=> bold(d = 22 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*Eccentric Bracket (45 kN Load): Critical Resultant FR = 15.2 kN | Rivet Diameter d = 22 mm*]
)

// ==========================================
// SECTION 16: EXAMPLE 9.16
// ==========================================

#pagebreak()

#section-heading("16", "MAXIMUM SAFE ECCENTRIC LOAD CAPACITY")

#section-overview(
  [*System Parameters:* Number of Rivets $n = 4$, Rivet Diameter $d = 20 "mm"$, Working Shear Stress $tau = 100 "MPa"$.],
  [*Design Protocol:* Determine maximum single rivet shear load capacity $F_("R,max")$; express critical resultant force as a function of external load $P$ ($F_R = 0.966 P$); solve maximum safe load $P$.]
)

#item-row(
  [*1. Single Rivet Shear Capacity ($F_("R,max")$)* \ Maximum permissible shear force per rivet],
  [$
    #text(size: 20pt)[$F_("R,max")$] &= #text(size: 20pt)[$pi/4 d^2 dot tau$] \
    &= pi/4 (20)^2 times 100 \
    &= 31416 "N" \
    &= 31.416 "kN"
  $]
)

#item-row(
  [*2. Resultant Load Relation* \ Critical rivet resultant load expressed in terms of load $P$],
  [$
    #text(size: 20pt)[$F_R$] &= 0.966 P
  $]
)

#item-row(
  [*3. Maximum Safe Load ($P$)* \ Equating $F_R$ to single rivet shear capacity],
  [$
    #text(size: 20pt)[$P$] &= #text(size: 20pt)[$F_("R,max") / 0.966$] \
    &= 31.416 / 0.966 \
    &= 32.52 "kN" \
    &=> bold(P = 32.5 "kN")
  $]
)

#item-row(
  [*Design Output*],
  [*Eccentric Load Capacity: Single Rivet Capacity FR,max = 31.416 kN | Maximum Safe Load P = 32.5 kN*]
)

// ==========================================
// SECTION 17: EXAMPLE 9.17
// ==========================================

#pagebreak()

#section-heading("17", "ECCENTRIC COLUMN BRACKET JOINT")

#section-overview(
  [*System Parameters:* Number of Rivets $n = 6$, Eccentric Load $P = 60 "kN" = 60000 "N"$, Eccentricity $e = 200 "mm"$, Allowable Shear Stress $tau <= 150 "MPa"$.],
  [*Design Protocol:* Calculate primary direct shear $F_("s1")$ and secondary shear $F_("s2")$; vectorially combine to get critical resultant shear force $F_R$; solve rivet diameter $d$.]
)

#item-row(
  [*1. Primary & Secondary Shear Forces* \ Direct load per rivet and torsional secondary load],
  [$
    F_("s1") &= P / n \
    &= 60 / 6 \
    &= 10 "kN" \
    F_("s2") &= (P dot e dot r_("max")) / sum r_i^2 \
    &= 41.5 "kN"
  $]
)

#item-row(
  [*2. Maximum Resultant Shear Force ($F_R$)* \ Vector addition of primary and secondary shear],
  [$
    #text(size: 20pt)[$F_R$] &= 51.5 "kN" \
    &= 51500 "N"
  $]
)

#item-row(
  [*3. Rivet Diameter ($d$)* \ Equating $F_R$ to single shear capacity],
  [$
    #text(size: 20pt)[$d$] &= #text(size: 20pt)[$sqrt((4 F_R) / (pi tau))$] \
    &= sqrt((4 times 51500) / (pi times 150)) \
    &= sqrt(206000 / 471.24) \
    &= sqrt(437.1) \
    &= 20.91 "mm" \
    &=> bold(d = 21 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*6-Rivet Column Bracket: Fs1 = 10 kN | Fs2 = 41.5 kN | Resultant FR = 51.5 kN | Rivet Diameter d = 21 mm*]
)

// ==========================================
// SECTION 18: EXAMPLE 9.18
// ==========================================

#pagebreak()

#section-heading("18", "ECCENTRICALLY LOADED INCLINED BRACKET JOINT")

#section-overview(
  [*System Parameters:* Number of Rivets $n = 4$ ($A, B, C, D$, vertical line, pitch $60 "mm"$), Inclined Load $P = 100 "kN" = 100000 "N"$ at $30^deg$ to horizontal, Eccentricity $e = 150 "mm"$, Allowable Shear Stress $tau = 80 "MPa"$, Allowable Bending Stress $sigma_b = 125 "MPa"$, Plate Width $b = 240 "mm"$.],
  [*Design Protocol:* Resolve load into vertical and horizontal components ($P_V, P_H$); calculate max resultant shear force $F_R$ on critical rivet $D$ to size diameter $d$; determine bending moment $M$ on bracket plate to calculate plate thickness $t$.]
)

#item-row(
  [*1. Vertical & Horizontal Load Components* \ Resolving inclined 100 kN load at 30 degrees],
  [$
    P_V &= P sin(30^deg) \
    &= 100 sin(30^deg) \
    &= 50 "kN" \
    P_H &= P cos(30^deg) \
    &= 100 cos(30^deg) \
    &= 86.6 "kN"
  $]
)

#item-row(
  [*2. Critical Resultant Shear ($F_R$) & Rivet Diameter ($d$)* \ Resultant force on rivet D and single shear sizing],
  [$
    #text(size: 20pt)[$F_R$] &= 42.4 "kN" \
    &= 42400 "N" \
    #text(size: 20pt)[$d$] &= sqrt((4 F_R) / (pi tau)) \
    &= sqrt((4 times 42400) / (pi times 80)) \
    &= sqrt(169600 / 251.33) \
    &= sqrt(674.8) \
    &= 25.98 "mm" \
    &=> bold(d = 26 "mm")
  $]
)

#item-row(
  [*3. Bending Moment ($M$) & Bracket Thickness ($t$)* \ Bending stress analysis of bracket plate],
  [$
    M &= P_H dot e \
    &= 86.6 times 10^3 times 150 \
    &= 1.30 times 10^7 "N"dot"mm" \
    sigma_b &= (6 M) / (t dot b^2) \
    125 &= (6 times 1.30 times 10^7) / (t times (240)^2) \
    &= (7.80 times 10^7) / (57600 t) \
    &= 1354.17 / t \
    t &= 1354.17 / 125 \
    &= 10.83 "mm" \
    &=> bold(t = 14 "mm")
  $]
)

#item-row(
  [*Design Output*],
  [*Inclined Bracket Joint: PV = 50 kN, PH = 86.6 kN | Critical FR = 42.4 kN | d = 26 mm | Plate Thickness t = 14 mm*]
)
