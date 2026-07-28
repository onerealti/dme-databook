// Design Data Book — Riveted Joints
// Mechanical Engineering Data Book (Compiled from examples_solutions.md)

#let databook-title = "DESIGN DATA BOOK — RIVETED JOINTS"

#set page(
  paper: "a4",
  flipped: true,
  margin: (top: 35pt, bottom: 35pt, left: 35pt, right: 35pt),
  header: none,
  footer: none,
  background: context {
    // Perpendicular Side-Margin Header & Page Numbers (Horizontal Binder Orientation)
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

#set text(font: ("Times New Roman", "Georgia"), size: 10pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.85em)
#show math.equation: set block(spacing: 16pt)
#show math.equation.where(block: true): it => align(left, it)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))

// Custom Clean Section Header (Each section starts on a new page)
#let section-heading(sec-num, title) = {
  if sec-num != "1" { pagebreak() }
  v(4pt)
  text(weight: "bold", size: 13.5pt)[SECTION #sec-num: #title]
  v(2.5pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(5pt)
}

// Section Overview Component (Unboxed & Vertically Stacked Parameters & Protocol)
#let section-overview(sys-params, design-proto) = {
  v(3pt)
  sys-params
  v(3pt)
  design-proto
  v(4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(5pt)
}

// Parallel Item Row Component (Open 2-Column Split with Vertical Center Divider Line)
#let item-row(left-desc, right-math) = {
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 14pt,
    stroke: (x, y) => if x == 0 { (right: 0.5pt + rgb("#aaaaaa")) },
    inset: (left: 6pt, right: 6pt),
    align: (left + top, left + top),
    [#left-desc],
    [#right-math]
  )
  v(3pt)
  line(length: 100%, stroke: 0.3pt + rgb("#cccccc"))
}

// Mechanical Diagram Component (Compact inline image sizing)
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
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_("u")$] \
    &= (75 - 25) times 15 times 400 \
    &= 300000 "N" \
    &=> P_t = 300 "kN"
  $]
)

#item-row(
  [*2. Shearing Strength of Rivets ($P_s$)* \ Single shear capacity of 2 rivets per pitch length],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau_("u")$] \
    &= 2 times pi/4 (25)^2 times 320 \
    &= 314160 "N" \
    &=> P_s = 314.16 "kN"
  $]
)

#item-row(
  [*3. Crushing Strength of Rivets ($P_c$)* \ Bearing capacity of 2 rivets per pitch length],
  [$
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_("cu")$] \
    &= 2 times 25 times 15 times 640 \
    &= 480000 "N" \
    &=> P_c = 480 "kN"
  $]
)

#item-row(
  [*4. Rupturing Force per Pitch ($P_u$)* \ Minimum strength governing joint rupture],
  [$
    #text(size: 13.5pt)[$P_u$] &= #text(size: 13.5pt)[$min(P_t, P_s, P_c)$] \
    &= min(300, 314.16, 480) \
    &=> P_u = 300 "kN"
  $]
)

#item-row(
  [*5. Safe Working Load ($P$)* \ Applied force per pitch at FOS = 4],
  [$
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$P_u / "FOS"$] \
    &= 300 / 4 \
    &= 75 "kN" \
    &= 75000 "N"
  $]
)

#item-row(
  [*6. Actual Tensile Stress ($sigma_t$)* \ Induced tensile stress on main plate],
  [$
    #text(size: 13.5pt)[$sigma_t$] &= #text(size: 13.5pt)[$P / ((p - d) t)$] \
    &= 75000 / ((75 - 25) times 15) \
    &= 100 "MPa"
  $]
)

#item-row(
  [*7. Actual Shear Stress ($tau$)* \ Induced shear stress in rivets],
  [$
    #text(size: 13.5pt)[$tau$] &= #text(size: 13.5pt)[$P / (n dot pi/4 d^2)$] \
    &= 75000 / (2 times pi/4 (25)^2) \
    &= 76.4 "MPa"
  $]
)

#item-row(
  [*8. Actual Crushing Stress ($sigma_c$)* \ Induced crushing stress on rivets],
  [$
    #text(size: 13.5pt)[$sigma_c$] &= #text(size: 13.5pt)[$P / (n dot d dot t)$] \
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
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t$] \
    &= 50 times 6 times 120 \
    &= 36000 "N"
  $]
)

#item-row(
  [*2. Tearing Strength — Single Lap ($P_t$)* \ Net section tensile capacity],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (50 - 20) times 6 times 120 \
    &= 21600 "N"
  $]
)

#item-row(
  [*3. Shearing Strength — Single Lap ($P_s$)* \ Single shear capacity ($n = 1$)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau$] \
    &= 1 times pi/4 (20)^2 times 90 \
    &= 28274 "N"
  $]
)

#item-row(
  [*4. Crushing Strength — Single Lap ($P_c$)* \ Bearing capacity ($n = 1$)],
  [$
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c$] \
    &= 1 times 20 times 6 times 180 \
    &= 21600 "N"
  $]
)

#item-row(
  [*5. Efficiency — Single Riveted Lap Joint ($eta_1$)* \ Ratio of minimum strength to solid strength],
  [$
    #text(size: 13.5pt)[$eta_1$] &= #text(size: 13.5pt)[$min(P_t, P_s, P_c) / P times 100%$] \
    &= 21600 / 36000 times 100% \
    &=> bold(eta_1 = 60.0%)
  $]
)

#item-row(
  [*6. Solid Plate Strength — Double Lap ($P$)* \ Strength of un-punched plate ($p = 65 "mm"$)],
  [$
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t$] \
    &= 65 times 6 times 120 \
    &= 46800 "N"
  $]
)

#item-row(
  [*7. Tearing Strength — Double Lap ($P_t$)* \ Net section tensile capacity],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (65 - 20) times 6 times 120 \
    &= 32400 "N"
  $]
)

#item-row(
  [*8. Shearing Strength — Double Lap ($P_s$)* \ Single shear capacity ($n = 2$)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau$] \
    &= 2 times pi/4 (20)^2 times 90 \
    &= 56548 "N"
  $]
)

#item-row(
  [*9. Crushing Strength — Double Lap ($P_c$)* \ Bearing capacity ($n = 2$)],
  [$
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c$] \
    &= 2 times 20 times 6 times 180 \
    &= 43200 "N"
  $]
)

#item-row(
  [*10. Efficiency — Double Riveted Lap Joint ($eta_2$)* \ Ratio of minimum strength to solid strength],
  [$
    #text(size: 13.5pt)[$eta_2$] &= #text(size: 13.5pt)[$min(P_t, P_s, P_c) / P times 100%$] \
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
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t$] \
    &= 100 times 20 times 120 \
    &= 240000 "N"
  $]
)

#item-row(
  [*2. Tearing Strength of Plate ($P_t$)* \ Net section tensile strength per pitch],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (100 - 25) times 20 times 120 \
    &= 180000 "N"
  $]
)

#item-row(
  [*3. Shearing Strength of Rivets ($P_s$)* \ Double shear capacity of 2 rivets per pitch ($n = 2$, factor = 2)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$2 dot (2 dot pi/4 d^2) dot tau$] \
    &= 2 times (2 times pi/4 (25)^2) times 100 \
    &= 196350 "N"
  $]
)

#item-row(
  [*4. Crushing Strength of Rivets ($P_c$)* \ Bearing capacity of 2 rivets per pitch ($n = 2$)],
  [$
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c$] \
    &= 2 times 25 times 20 times 150 \
    &= 150000 "N"
  $]
)

#item-row(
  [*5. Joint Efficiency ($eta$)* \ Ratio of minimum strength to un-punched solid plate strength],
  [$
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$min(P_t, P_s, P_c) / P times 100%$] \
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
// SECTION 4: EXAMPLE 9.4 — DOUBLE RIVETED LAP JOINT (ZIG-ZAG)
// ==========================================

#section-heading("4", "DOUBLE RIVETED LAP JOINT — ZIG-ZAG RIVETING")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 13 "mm"$, Tensile Stress $sigma_t = 80 "MPa"$, Shear Stress $tau = 60 "MPa"$, Crushing Stress $sigma_c = 120 "MPa"$, Rivet Rows $n = 2$ (zig-zag).],
  [*Design Protocol:* Calculate rivet hole diameter $d$ via Unwin's formula, determine pitch $p$ by equating $P_t = P_s$ and verify $p <= p_("max")$, compute row pitch $p_b$ and margin $m$, evaluate governing failure mode ($min(P_t, P_s, P_c)$), and calculate joint efficiency $eta$.]
)

#item-row(
  [*1. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 13 "mm" > 8 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(13) = 21.63 "mm" \
    &=> bold("Standard Hole Diameter " d = 23 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 22 "mm")
  $]
)

#item-row(
  [*2. Tearing Resistance of Plate ($P_t$)* \ Net tensile area capacity per pitch length],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (p - 23) times 13 times 80 \
    &= 1040 (p - 23) "N"
  $]
)

#item-row(
  [*3. Shearing Resistance of Rivets ($P_s$)* \ Single shear capacity for 2 rivets per pitch ($n = 2$)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau$] \
    &= 2 times pi/4 (23)^2 times 60 \
    &= 2 times 415.48 times 60 \
    &= bold(49864 "N")
  $]
)

#item-row(
  [*4. Pitch & Max Pitch Limit ($p, p_("max")$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit],
  [$
    #text(size: 13.5pt)[$1040 (p - 23)$] &= #text(size: 13.5pt)[$49864 "N"$] \
    p - 23 &= 49864 / 1040 = 47.95 => p = 70.95 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 "mm"$] \
    &= 2.62 (13) + 41.28 = 75.34 "mm" \
    &=> bold("Adopt Pitch " p = 71 "mm")
  $]
)

#item-row(
  [*5. Distance Between Rows of Rivets ($p_b$)* \ Transverse row pitch for zig-zag riveting],
  [$
    #text(size: 13.5pt)[$p_b$] &= #text(size: 13.5pt)[$0.33 p + 0.67 d$] \
    &= 0.33(71) + 0.67(23) \
    &= 23.43 + 15.41 = 38.84 "mm" \
    &=> bold("Adopt Row Pitch " p_b = 40 "mm")
  $]
)

#item-row(
  [*6. Margin ($m$)* \ Distance from rivet hole center to plate edge],
  [$
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d$] \
    &= 1.5 (23) = 34.5 "mm" \
    &=> bold("Adopt Margin " m = 35 "mm")
  $]
)

#item-row(
  [*7. Failure Mode Analysis* \ Tearing ($P_t$), shearing ($P_s$), and crushing ($P_c$) capacities for adopted $p = 71 "mm"$],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (71 - 23) (13) (80) = 49920 "N"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau = 2 (pi/4) (23)^2 (60) = 49864 "N (Governing)"$] \
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c = 2 (23) (13) (120) = 71760 "N"$] \
    &=> bold("Governing Strength " P_u = P_s = 49864 "N") \
    &=> bold("Failure Mode: Shearing of Rivets")
  $]
)

#item-row(
  [*8. Solid Plate Strength & Joint Efficiency ($P, eta$)* \ Un-punched solid plate strength and overall joint efficiency],
  [$
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t$] \
    &= 71 times 13 times 80 \
    &= 73840 "N" \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_s / P times 100%$] \
    &= 49864 / 73840 times 100% \
    &=> bold(eta = 67.5%)
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Rivet Hole d = 23 mm | Pitch p = 71 mm | Row Pitch pb = 40 mm | Margin m = 35 mm | Failure Mode: Shearing | Efficiency eta = 67.5%*]
)

#figure-page("4", "DOUBLE RIVETED LAP JOINT (ZIG-ZAG)", "Fig 9.23.png", "Fig. 9.23: Double Riveted Lap Joint with Zig-Zag Riveting")

// ==========================================
// SECTION 5: EXAMPLE 9.5 — TRIPLE RIVETED LAP JOINT (ZIG-ZAG)
// ==========================================

#section-heading("5", "TRIPLE RIVETED LAP JOINT — ZIG-ZAG PATTERN")

#section-overview(
  [*System Parameters:* Plate Thickness $t = 7 "mm"$, Tensile Stress $sigma_t = 90 "MPa"$, Shear Stress $tau = 60 "MPa"$, Crushing Stress $sigma_c = 120 "MPa"$, Rivet Rows $n = 3$ (zig-zag).],
  [*Design Protocol:* For thin plates ($t < 8 "mm"$), equate shearing strength to crushing strength ($P_s = P_c$) to determine rivet hole diameter $d$, equate tearing strength to shearing strength ($P_t = P_s$) to solve for pitch $p$, limit pitch by I.B.R. maximum pitch ($p <= p_("max")$), calculate row pitch $p_b$, and evaluate governing failure mode.]
)

#item-row(
  [*1. Shearing & Crushing Expressions ($P_s, P_c$)* \ Symbolic capacities for $t = 7 "mm" < 8 "mm"$ ($n = 3$ rivets per pitch)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau = 3 times pi/4 d^2 times 60 = 141.4 d^2 "N"$] \
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c = 3 times d times 7 times 120 = 2520 d "N"$]
  $]
)

#item-row(
  [*2. Diameter of Rivet Hole ($d$)* \ Equating shearing strength $P_s$ to crushing strength $P_c$],
  [$
    #text(size: 13.5pt)[$141.4 d^2$] &= #text(size: 13.5pt)[$2520 d$] \
    d &= 2520 / 141.4 = 17.8 "mm" \
    &=> bold("Standard Hole Diameter " d = 19 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 18 "mm")
  $]
)

#item-row(
  [*3. Tearing & Shearing Resistances ($P_t, P_s$)* \ Capacities evaluated for standard hole diameter $d = 19 "mm"$],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (p - 19) times 7 times 90 = 630 (p - 19) "N"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$141.4 d^2 = 141.4 (19)^2 = 51045 "N"$]
  $]
)

#item-row(
  [*4. Rivet Pitch & Max Pitch Limit ($p, p_("max")$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit],
  [$
    #text(size: 13.5pt)[$630 (p - 19)$] &= #text(size: 13.5pt)[$51045 "N"$] \
    p - 19 &= 51045 / 630 = 81 => p = 100 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 "mm"$] \
    &= 3.47 (7) + 41.28 = 65.57 "mm" \
    &=> bold("Adopt Pitch " p = p_("max") = 66 "mm")
  $]
)

#item-row(
  [*5. Distance Between Rows of Rivets ($p_b$)* \ Transverse row pitch for zig-zag riveting],
  [$
    #text(size: 13.5pt)[$p_b$] &= #text(size: 13.5pt)[$0.33 p + 0.67 d$] \
    &= 0.33 (66) + 0.67 (19) \
    &= 21.78 + 12.73 = 34.51 "mm" \
    &=> bold("Adopt Row Pitch " p_b = 34.5 "mm")
  $]
)

#item-row(
  [*6. Mode of Failure Analysis* \ Tearing ($P_t$), shearing ($P_s$), and crushing ($P_c$) capacities for adopted $p = 66 "mm"$],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (66 - 19) (7) (90) = 29610 "N (Governing)"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot pi/4 d^2 dot tau = 3 (pi/4) (19)^2 (60) = 51045 "N"$] \
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c = 3 (19) (7) (120) = 47880 "N"$] \
    &=> bold("Governing Strength " P_u = P_t = 29610 "N") \
    &=> bold("Failure Mode: Tearing off the Plate")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Rivet Hole d = 19 mm | Adopted Pitch p = 66 mm | Row Pitch pb = 34.5 mm | Failure Mode: Tearing of Plate*]
)

#figure-page("5", "TRIPLE RIVETED LAP JOINT", "Fig 9.24.png", "Fig. 9.24: Triple Riveted Lap Joint with Zig-Zag Pattern")

// ==========================================
// SECTION 6: EXAMPLE 9.6 — SINGLE RIVETED DOUBLE STRAP BUTT JOINT
// ==========================================

#section-heading("6", "SINGLE RIVETED DOUBLE STRAP BUTT JOINT")

#section-overview(
  [*System Parameters:* Main Plate Thickness $t = 10 "mm"$, Tensile Stress $sigma_t = 80 "MPa"$, Shear Stress $tau = 60 "MPa"$, Double Shear Factor = 1.875, Number of Rivets $n = 1$.],
  [*Design Protocol:* Calculate rivet hole diameter $d$ via Unwin's formula, determine double shear capacity $P_s$, state symbolic tearing strength ($P_t$), solve for pitch $p$, limit by I.B.R. maximum pitch ($p <= p_("max")$), compute cover strap thickness $t_1 = 0.625 t$, evaluate governing failure mode, and calculate joint efficiency $eta$.]
)

#item-row(
  [*1. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 10 "mm" > 8 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(10) = 18.97 "mm" \
    &=> bold("Standard Hole Diameter " d = 19 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 18 "mm")
  $]
)

#item-row(
  [*2. Tearing Resistance of Plate ($P_t$)* \ Net tensile area capacity per pitch length],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (p - 19) times 10 times 80 \
    &= 800 (p - 19) "N"
  $]
)

#item-row(
  [*3. Double Shear Strength of Rivets ($P_s$)* \ Double shear capacity for single rivet ($n = 1$, factor 1.875)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot 1.875 dot pi/4 d^2 dot tau$] \
    &= 1 times 1.875 times pi/4 (19)^2 times 60 \
    &= 1.875 times 283.53 times 60 \
    &= bold(31900 "N")
  $]
)

#item-row(
  [*4. Pitch & Max Pitch Limit ($p, p_("max")$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit],
  [$
    #text(size: 13.5pt)[$800 (p - 19)$] &= #text(size: 13.5pt)[$31900 "N"$] \
    p - 19 &= 31900 / 800 = 39.87 => p = 58.87 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 "mm"$] \
    &= 1.75 (10) + 41.28 = 58.78 "mm" \
    &=> bold("Adopt Pitch " p = p_("max") = 60 "mm")
  $]
)

#item-row(
  [*5. Cover Strap Thickness ($t_1$)* \ Standard proportion for equal width double cover straps],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.625 t$] \
    &= 0.625 (10) \
    &=> bold("Strap Thickness " t_1 = 6.25 "mm")
  $]
)

#item-row(
  [*6. Failure Mode & Joint Efficiency Verification ($eta$)* \ Tearing ($P_t$), shearing ($P_s$), solid plate strength ($P$), and efficiency],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (60 - 19) (10) (80) = 32800 "N"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$31900 "N" => bold("Failure Mode: Shearing of Rivets")$] \
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t = 60 (10) (80) = 48000 "N"$] \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_s / P times 100%$] \
    &= 31900 / 48000 times 100% \
    &=> bold(eta = 66.5%)
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Rivet Hole d = 19 mm | Pitch p = 60 mm | Cover Strap t1 = 6.25 mm | Failure Mode: Shearing | Efficiency eta = 66.5%*]
)

#figure-page("6", "SINGLE RIVETED DOUBLE STRAP BUTT JOINT", "Fig 9.25.png", "Fig. 9.25: Single Riveted Double Strap Butt Joint")

// ==========================================
// SECTION 7: EXAMPLE 9.7 — BOILER LONGITUDINAL SEAM DESIGN
// ==========================================

#section-heading("7", "BOILER LONGITUDINAL DOUBLE RIVETED BUTT JOINT")

#section-overview(
  [*System Parameters:* Boiler Shell Diameter $D = 1.5 "m" = 1500 "mm"$, Steam Pressure $P = 0.95 "N/mm"^2$, Target Efficiency $eta_l = 75%$, Tensile Stress $sigma_t = 90 "MPa"$, Crushing Stress $sigma_c = 140 "MPa"$, Shear Stress $tau = 56 "MPa"$, Double Shear Factor = 1.875, Rivet Rows $n = 2$.],
  [*Design Protocol:* Calculate shell thickness $t$, size rivet hole diameter $d$, state symbolic tearing ($P_t$) and shearing ($P_s$) capacities to solve pitch $p$, limit by I.B.R. max pitch ($p <= p_("max")$), calculate row pitch $p_b$, strap thickness $t_1$, and margin $m$, evaluate failure capacities ($P_t, P_s, P_c$), and verify joint efficiency $eta$.]
)

#item-row(
  [*1. Boiler Shell Plate Thickness ($t$)* \ Thin cylinder formula with 1 mm allowance],
  [$
    #text(size: 13.5pt)[$t$] &= #text(size: 13.5pt)[$(P dot D) / (2 sigma_t dot eta_l) + 1 "mm"$] \
    &= (0.95 times 1500) / (2 times 90 times 0.75) + 1 \
    &= 1425 / 135 + 1 = 10.55 + 1 = 11.55 "mm" \
    &=> bold("Shell Thickness " t = 12 "mm")
  $]
)

#item-row(
  [*2. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 12 "mm" > 8 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(12) = 20.78 "mm" \
    &=> bold("Standard Hole Diameter " d = 21 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 20 "mm")
  $]
)

#item-row(
  [*3. Tearing Resistance of Plate ($P_t$)* \ Net tensile area capacity per pitch length],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (p - 21) times 12 times 90 \
    &= 1080 (p - 21) "N"
  $]
)

#item-row(
  [*4. Shearing Resistance of Rivets ($P_s$)* \ Double shear capacity for 2 rivets per pitch ($1.875 times$ single shear)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot 1.875 dot pi/4 d^2 dot tau$] \
    &= 2 times 1.875 times pi/4 (21)^2 times 56 \
    &= 3.75 times 346.36 times 56 \
    &= bold(72745 "N")
  $]
)

#item-row(
  [*5. Calculated Pitch & I.B.R. Max Pitch Limit ($p, p_("max")$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit],
  [$
    #text(size: 13.5pt)[$1080 (p - 21)$] &= #text(size: 13.5pt)[$72745 "N"$] \
    p - 21 &= 72745 / 1080 = 67.35 => p = 88.35 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 "mm"$] \
    &= 3.5 (12) + 41.28 = 83.28 "mm" \
    &=> bold("Adopt Pitch " p = p_("max") = 84 "mm")
  $]
)

#item-row(
  [*6. Distance Between Rows of Rivets ($p_b$)* \ Transverse row pitch for zig-zag riveting],
  [$
    #text(size: 13.5pt)[$p_b$] &= #text(size: 13.5pt)[$0.33 p + 0.67 d$] \
    &= 0.33(84) + 0.67(21) \
    &= 27.72 + 14.07 = 41.79 "mm" \
    &=> bold("Adopt Row Pitch " p_b = 42 "mm")
  $]
)

#item-row(
  [*7. Thickness of Cover Plates ($t_1$)* \ Standard proportion for equal width double cover straps],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.625 t$] \
    &= 0.625 (12) \
    &=> bold("Adopt Strap Thickness " t_1 = 7.5 "mm")
  $]
)

#item-row(
  [*8. Margin ($m$)* \ Distance from rivet hole center to plate edge],
  [$
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d$] \
    &= 1.5 (21) = 31.5 "mm" \
    &=> bold("Adopt Margin " m = 32 "mm")
  $]
)

#item-row(
  [*9. Governing Failure Mode & Joint Efficiency Verification ($eta$)* \ Tearing capacity $P_t$, shearing $P_s$, crushing $P_c$, solid plate strength $P$, and efficiency],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(84 - 21) (12) (90) = 68040 "N (Governing)"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$72745 "N"$] \
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c = 2 (21) (12) (140) = 70560 "N"$] \
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t = 84 (12) (90) = 90720 "N"$] \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_t / P times 100%$] \
    &= 68040 / 90720 times 100% \
    &=> bold(eta = 75.0%) quad bold("(Verified matching target efficiency 75%)")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Shell t = 12 mm | Hole d = 21 mm | Pitch p = 84 mm | Row Pitch pb = 42 mm | Strap t1 = 7.5 mm | Margin m = 32 mm | Efficiency eta = 75%*]
)

#figure-page("7", "BOILER LONGITUDINAL DOUBLE RIVETED BUTT JOINT", "Fig 9.26.png", "Fig. 9.26: Boiler Longitudinal Double Riveted Double Strap Butt Joint")

// ==========================================
// SECTION 8: EXAMPLE 9.8
// ==========================================

#pagebreak()

// ==========================================
// SECTION 8: EXAMPLE 9.8 — PRESSURE VESSEL DOUBLE STRAP BUTT JOINT
// ==========================================

#section-heading("8", "PRESSURE VESSEL DOUBLE STRAP BUTT JOINT")

#section-overview(
  [*System Parameters:* Vessel Diameter $D = 1 "m" = 1000 "mm"$, Internal Pressure $P = 2.75 "N/mm"^2$, Target Efficiency $eta_l = 79%$, Tensile Stress $sigma_t = 88 "MPa"$, Shear Stress $tau = 64 "MPa"$, Double Shear Factor = 1.8, Zig-zag outer pitch $p = 2 p_("inner")$, $n = 3$.],
  [*Design Protocol:* Calculate shell thickness $t$, size rivet hole diameter $d$, state symbolic tearing ($P_t$) and shearing ($P_s$) capacities to solve outer pitch $p$, limit by I.B.R. max pitch ($p <= p_("max")$), compute inner pitch $p_("inner")$, row pitch $p_b$, strap thickness $t_1$, margin $m$, and evaluate joint efficiency $eta$.]
)

#item-row(
  [*1. Shell Plate Thickness ($t$)* \ Thin cylinder formula with 1 mm corrosion/manufacturing allowance],
  [$
    #text(size: 13.5pt)[$t$] &= #text(size: 13.5pt)[$(P dot D) / (2 sigma_t dot eta_l) + 1 "mm"$] \
    &= (2.75 times 1000) / (2 times 88 times 0.79) + 1 \
    &= 2750 / 139.04 + 1 = 19.78 + 1 = 20.78 "mm" \
    &=> bold("Shell Thickness " t = 21 "mm")
  $]
)

#item-row(
  [*2. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 21 "mm" > 8 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(21) = 27.5 "mm" \
    &=> bold("Standard Hole Diameter " d = 28.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 27 "mm")
  $]
)

#item-row(
  [*3. Tearing Resistance of Plate ($P_t$)* \ Net tensile area capacity per pitch length in outer row],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (p - 28.5) times 21 times 88 \
    &= 1848 (p - 28.5) "N"
  $]
)

#item-row(
  [*4. Shearing Resistance of Rivets ($P_s$)* \ Shear capacity for 3 rivets in double shear ($1.8 times$ single shear)],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$n dot 1.8 dot pi/4 d^2 dot tau$] \
    &= 3 times 1.8 times pi/4 (28.5)^2 times 64 \
    &= 5.4 times 637.9 times 64 \
    &= bold(220500 "N")
  $]
)

#item-row(
  [*5. Outer & Inner Pitches ($p_("outer"), p_("inner")$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit],
  [$
    #text(size: 13.5pt)[$1848 (p - 28.5)$] &= #text(size: 13.5pt)[$220500 "N"$] \
    p - 28.5 &= 220500 / 1848 = 119.3 => p = 147.8 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 "mm"$] \
    &= 4.63 (21) + 41.28 = 138.51 "mm" \
    &=> bold("Adopt Outer Pitch " p_("outer") = p_("max") = 140 "mm") \
    &=> bold("Adopt Inner Pitch " p_("inner") = p / 2 = 140 / 2 = 70 "mm")
  $]
)

#item-row(
  [*6. Distance Between Rows of Rivets ($p_b$)* \ I.B.R. row spacing for outer pitch double inner pitch zig-zag butt joint],
  [$
    #text(size: 13.5pt)[$p_b$] &= #text(size: 13.5pt)[$0.2 p + 1.15 d$] \
    &= 0.2(140) + 1.15(28.5) \
    &= 28 + 32.775 = 60.775 "mm" \
    &=> bold("Adopt Row Pitch " p_b = 61 "mm")
  $]
)

#item-row(
  [*7. Thickness of Butt Straps ($t_1$)* \ Equal width double butt straps ratio formula],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.625 t dot ((p - d)/(p - 2d))$] \
    &= 0.625 (21) times ((140 - 28.5)/(140 - 2(28.5))) \
    &= 13.125 times (111.5 / 83) = 17.63 "mm" \
    &=> bold("Adopt Strap Thickness " t_1 = 18 "mm")
  $]
)

#item-row(
  [*8. Margin ($m$)* \ Distance from rivet hole center to plate edge],
  [$
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d$] \
    &= 1.5 (28.5) = 42.75 "mm" \
    &=> bold("Adopt Margin " m = 43 "mm")
  $]
)

#item-row(
  [*9. Governing Failure Mode & Joint Efficiency Verification ($eta$)* \ Tearing capacity $P_t$, solid plate strength $P$, and efficiency],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (140 - 28.5) (21) (88) = 206050 "N (Governing)"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$220500 "N"$] \
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t = 140 (21) (88) = 258720 "N"$] \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_t / P times 100%$] \
    &= 206050 / 258720 times 100% \
    &=> bold(eta = 79.6%) quad bold("(Satisfactory," >= 79% ")")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Shell t = 21 mm | Hole d = 28.5 mm | Outer Pitch = 140 mm | Inner Pitch = 70 mm | Row Pitch pb = 61 mm | Strap t1 = 18 mm | Margin m = 43 mm | Efficiency eta = 79.6%*]
)

#figure-page("8", "PRESSURE VESSEL BUTT JOINT", "Fig 9.27&9.28.png", "Fig. 9.27 & 9.28: Pressure Vessel Double Strap Butt Joint")

// ==========================================
// SECTION 9: EXAMPLE 9.9 — TRIPLE RIVETED DOUBLE STRAP BUTT JOINT (UNEQUAL STRAPS)
// ==========================================

#section-heading("9", "BOILER LONGITUDINAL SEAM DESIGN")

#section-overview(
  [*System Parameters:* Boiler Diameter $D = 1.25 "m" = 1250 "mm"$, Pressure $P = 2.5 "N/mm"^2$, Ultimate Tensile Stress $sigma_("tu") = 420 "MPa"$, Ultimate Crushing Stress $sigma_("cu") = 650 "MPa"$, Ultimate Shear Stress $tau_("u") = 300 "MPa"$, Target Efficiency $eta_l = 80%$, Factor of Safety $"FOS" = 5$, $n = 5$ rivets per pitch (4 double, 1 single shear).],
  [*Design Protocol:* Calculate allowable working stresses ($sigma_t, sigma_c, tau$), size plate thickness $t$ and rivet hole diameter $d$, state symbolic tearing ($P_t$) and shearing ($P_s$) capacities to solve pitch $p$, limit by I.B.R. max pitch ($p <= p_("max")$), compute inner pitch $p'$, row pitches ($p_("b1"), p_("b2")$), wide ($t_1$) and narrow ($t_2$) strap thicknesses, margin $m$, and evaluate governing combined failure mode ($P_("t2") + P_("s1")$) to verify joint efficiency $eta$.]
)

#item-row(
  [*1. Allowable Working Stresses* \ Factor of safety FOS = 5 applied to ultimate material strengths],
  [$
    #text(size: 13.5pt)[$sigma_t$] &= #text(size: 13.5pt)[$sigma_("tu") / "FOS" = 420 / 5 = 84 "N/mm"^2$] \
    #text(size: 13.5pt)[$sigma_c$] &= #text(size: 13.5pt)[$sigma_("cu") / "FOS" = 650 / 5 = 130 "N/mm"^2$] \
    #text(size: 13.5pt)[$tau$] &= #text(size: 13.5pt)[$tau_("u") / "FOS" = 300 / 5 = 60 "N/mm"^2$]
  $]
)

#item-row(
  [*2. Boiler Shell Plate Thickness ($t$)* \ Thin cylinder formula with 1 mm corrosion/manufacturing allowance],
  [$
    #text(size: 13.5pt)[$t$] &= #text(size: 13.5pt)[$(P dot D) / (2 sigma_t dot eta_l) + 1 "mm"$] \
    &= (2.5 times 1250) / (2 times 84 times 0.80) + 1 \
    &= 3125 / 134.4 + 1 = 23.25 + 1 \
    &= 24.25 "mm" \
    &=> bold("Plate Thickness " t = 25 "mm")
  $]
)

#item-row(
  [*3. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 25 "mm" > 8 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(25) = 30 "mm" \
    &=> bold("Standard Hole Diameter " d = 31.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 30 "mm")
  $]
)

#item-row(
  [*4. Tearing Resistance of Plate at Outer Row ($P_t$)* \ Net tensile area capacity per pitch length],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t$] \
    &= (p - 31.5) times 25 times 84 \
    &= 2100 (p - 31.5) "N"
  $]
)

#item-row(
  [*5. Shearing Resistance of Rivets ($P_s$)* \ Combined shear capacity for 4 rivets in double shear + 1 rivet in single shear],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$(4 dot 1.875 + 1) dot pi/4 d^2 dot tau$] \
    &= 8.5 times pi/4 (31.5)^2 times 60 \
    &= 8.5 times 779.3 times 60 \
    &= bold(397500 "N")
  $]
)

#item-row(
  [*6. Calculated Pitch & I.B.R. Max Pitch Limit ($p, p_("max")$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit],
  [$
    #text(size: 13.5pt)[$2100 (p - 31.5)$] &= #text(size: 13.5pt)[$397500 "N"$] \
    p - 31.5 &= 397500 / 2100 = 189.3 => p = 220.8 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 "mm"$] \
    &= 6 times 25 + 41.28 = 191.28 "mm" \
    &=> bold("Adopt Outer Pitch " p = p_("max") = 196 "mm") \
    &=> bold("Adopt Inner Pitch " p' = p / 2 = 196 / 2 = 98 "mm")
  $]
)

#item-row(
  [*7. Distance Between Rows of Rivets ($p_("b1"), p_("b2")$)* \ I.B.R. row spacing for outer-to-next row and inner zig-zag rows],
  [$
    #text(size: 13.5pt)[$p_("b1")$] &= #text(size: 13.5pt)[$0.2 p + 1.15 d$] \
    &= 0.2(196) + 1.15(31.5) = 39.2 + 36.225 = 75.425 "mm" \
    &=> bold("Outer Row Spacing " p_("b1") = 76 "mm") \
    #text(size: 13.5pt)[$p_("b2")$] &= #text(size: 13.5pt)[$0.165 p + 0.67 d$] \
    &= 0.165(196) + 0.67(31.5) = 32.34 + 21.105 = 53.445 "mm" \
    &=> bold("Inner Row Spacing " p_("b2") = 54 "mm")
  $]
)

#item-row(
  [*8. Butt Strap Thicknesses & Margin ($t_1, t_2, m$)* \ Inside wide strap, outside narrow strap, and margin],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.75 t = 0.75(25) = 18.75 "mm" => bold("Wide Strap " t_1 = 20 "mm")$] \
    #text(size: 13.5pt)[$t_2$] &= #text(size: 13.5pt)[$0.625 t = 0.625(25) = 15.625 "mm" => bold("Narrow Strap " t_2 = 16 "mm")$] \
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d = 1.5(31.5) = 47.25 "mm" => bold("Margin " m = 47.5 "mm")$]
  $]
)

#item-row(
  [*9. Individual Failure Mode Capacities* \ Tearing ($P_t$), shearing ($P_s$), and crushing ($P_c$) capacities for $p = 196 "mm"$],
  [$
    #text(size: 13.5pt)[$P_("t1")$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (196 - 31.5) (25) (84) = 345450 "N"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$8.5 dot pi/4 d^2 dot tau = 397500 "N"$] \
    #text(size: 13.5pt)[$P_c$] &= #text(size: 13.5pt)[$n dot d dot t dot sigma_c = 5 times 31.5 times 25 times 130 = 511875 "N"$]
  $]
)

#item-row(
  [*10. Combined Row 2 Tearing & Outer Rivet Shear Capacity* \ Tearing of plate at second row combined with shearing 1 outer rivet],
  [$
    #text(size: 13.5pt)[$P_("t2") + P_("s1")$] &= #text(size: 13.5pt)[$(p - 2d) t dot sigma_t + pi/4 d^2 dot tau$] \
    &= (196 - 2 times 31.5) times 25 times 84 + pi/4 (31.5)^2 times 60 \
    &= (133) (25) (84) + 47815 \
    &= 278250 + 47815 \
    &=> bold("Governing Least Strength " P_u = 326065 "N")
  $]
)

#item-row(
  [*11. Solid Plate Strength & Joint Efficiency ($P, eta$)* \ Un-punched solid plate strength and overall joint efficiency],
  [$
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t$] \
    &= 196 times 25 times 84 \
    &= 411600 "N" \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_u / P times 100%$] \
    &= 326065 / 411600 times 100% \
    &=> bold(eta = 79.2%) quad bold("(Satisfactory, nearly equal to target 80%)")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Shell t = 25 mm | Hole d = 31.5 mm | Outer Pitch = 196 mm | Inner Pitch = 98 mm | Row Spacings = 76 mm & 54 mm | Straps t1 = 20 mm, t2 = 16 mm | Margin m = 47.5 mm | Governing Strength = 326065 N | Efficiency eta = 79.2%*]
)

#figure-page("9", "BOILER LONGITUDINAL SEAM", "Fig 9.29&9.30.png", "Fig. 9.29 & 9.30: Boiler Longitudinal Seam Triple Riveted Butt Joint")

// ==========================================
// SECTION 10: EXAMPLE 9.10 — BOILER LONGITUDINAL & CIRCUMFERENTIAL JOINTS
// ==========================================

#section-heading("10", "BOILER LONGITUDINAL & CIRCUMFERENTIAL JOINTS")

#section-overview(
  [*System Parameters:* Boiler Inside Diameter $D = 1.6 "m" = 1600 "mm"$, Working Steam Pressure $P = 2.5 "N/mm"^2$, Tensile Stress $sigma_t = 75 "MPa"$, Shear Stress $tau = 60 "MPa"$, Crushing Stress $sigma_c = 125 "MPa"$.],
  [*Design Protocol:* Design Part A (Longitudinal Triple Riveted Butt Joint with unequal straps) for shell thickness $t$, hole $d$, pitch $p$, row spacings, strap thicknesses, and efficiency $eta_l$; Design Part B (Circumferential Double Riveted Lap Joint) for total steam thrust $F$, total rivet count $n_c$, pitch $p_1$, row pitch, and efficiency $eta_c$.]
)

#item-row(
  [*1. Shell Plate Thickness ($t$)* \ Thin cylinder formula with 1 mm corrosion/manufacturing allowance],
  [$
    #text(size: 13.5pt)[$t$] &= #text(size: 13.5pt)[$(P dot D) / (2 sigma_t) + 1 "mm"$] \
    &= (2.5 times 1600) / (2 times 75) + 1 \
    &= 4000 / 150 + 1 = 26.67 + 1 = 27.67 "mm" \
    &=> bold("Shell Thickness " t = 28 "mm")
  $]
)

#item-row(
  [*2. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 28 "mm" > 8 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(28) = 31.75 "mm" \
    &=> bold("Standard Hole Diameter " d = 34.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 33 "mm")
  $]
)

#item-row(
  [*3. Longitudinal Tearing & Shearing Capacities ($P_t, P_s$)* \ Net section tearing ($P_t$) and shear capacity for 5 rivets (4 double, 1 single shear)],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(p - d) t dot sigma_t = (p - 34.5) (28) (75) = 2100 (p - 34.5) "N"$] \
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$(4 dot 1.875 + 1) dot pi/4 d^2 dot tau = 8.5 times pi/4 (34.5)^2 (60) = 476820 "N"$]
  $]
)

#item-row(
  [*4. Longitudinal Pitch & I.B.R. Max Limit ($p, p'$)* \ Equating $P_t = P_s$ and enforcing I.B.R. maximum pitch limit ($C = 6$)],
  [$
    #text(size: 13.5pt)[$2100 (p - 34.5)$] &= #text(size: 13.5pt)[$476820 "N"$] \
    p - 34.5 &= 476820 / 2100 = 227 => p = 261.5 "mm" \
    #text(size: 13.5pt)[$p_("max")$] &= #text(size: 13.5pt)[$C dot t + 41.28 = 6 (28) + 41.28 = 209.28 "mm"$] \
    &=> bold("Adopt Outer Pitch " p = 220 "mm") \
    &=> bold("Adopt Inner Pitch " p' = 220 / 2 = 110 "mm")
  $]
)

#item-row(
  [*5. Longitudinal Row Spacings & Butt Straps ($p_("b1"), p_("b2"), t_1, t_2, m$)* \ Row pitches, wide inside strap, narrow outside strap, and margin],
  [$
    #text(size: 13.5pt)[$p_("b1")$] &= #text(size: 13.5pt)[$0.2 p + 1.15 d = 0.2(220) + 1.15(34.5) = 83.7 "mm" => bold(85 "mm")$] \
    #text(size: 13.5pt)[$p_("b2")$] &= #text(size: 13.5pt)[$0.165 p + 0.67 d = 0.165(220) + 0.67(34.5) = 59.4 "mm" => bold(60 "mm")$] \
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.75 t = 0.75(28) = bold(21 "mm"), quad t_2 = 0.625 t = 0.625(28) = bold(18 "mm")$] \
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d = 1.5(34.5) = 51.75 "mm" => bold("Margin " m = 52 "mm")$]
  $]
)

#item-row(
  [*6. Longitudinal Joint Efficiency Verification ($eta_l$)* \ Governing combined row 2 tearing + outer rivet shear capacity and efficiency],
  [$
    #text(size: 13.5pt)[$P_("t2") + P_("s1")$] &= #text(size: 13.5pt)[$(p - 2d) t dot sigma_t + pi/4 d^2 dot tau$] \
    &= (220 - 2(34.5)) (28) (75) + pi/4 (34.5)^2 (60) \
    &= 317100 + 56096 = bold(373196 "N (Governing Capacity)") \
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$p dot t dot sigma_t = 220 (28) (75) = 462000 "N"$] \
    #text(size: 13.5pt)[$eta_l$] &= #text(size: 13.5pt)[$373196 / 462000 times 100% => bold(eta_l = 80.8%)$]
  $]
)

#item-row(
  [*7. Circumferential Steam End Thrust & Rivet Count ($F, n_c$)* \ Total axial force acting on boiler cover and required single shear rivets],
  [$
    #text(size: 13.5pt)[$F$] &= #text(size: 13.5pt)[$pi/4 D^2 dot P = pi/4 (1600)^2 (2.5) = 5026548 "N" = 5.027 "MN"$] \
    #text(size: 13.5pt)[$n_c$] &= #text(size: 13.5pt)[$F / (pi/4 d^2 dot tau) = (D^2 P) / (d^2 tau) = (1600)^2 (2.5) / ((34.5)^2 (60))$] \
    &= 6400000 / 71415 = 89.6 \
    &=> bold("Total Circumferential Rivets " n_c = 90 "rivets")
  $]
)

#item-row(
  [*8. Circumferential Pitch, Row Spacing & Efficiency ($p_1, p_("b,circ"), eta_c$)* \ Double riveted lap joint (45 rivets/row), row spacing, margin, and efficiency],
  [$
    #text(size: 13.5pt)[$p_1$] &= #text(size: 13.5pt)[$(pi (D + t)) / 45 = (pi (1600 + 28)) / 45 = 113.7 "mm" => bold("Adopt " p_1 = 140 "mm")$] \
    #text(size: 13.5pt)[$eta_c$] &= #text(size: 13.5pt)[$(p_1 - d) / p_1 = (140 - 34.5) / 140 => bold(eta_c = 75.3%)$] \
    #text(size: 13.5pt)[$p_("b,circ")$] &= #text(size: 13.5pt)[$0.33 p_1 + 0.67 d = 0.33(140) + 0.67(34.5) = 69.3 "mm" => bold(70 "mm")$]
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Longitudinal: t = 28 mm | Hole d = 34.5 mm | Outer Pitch = 220 mm | Straps t1 = 21 mm, t2 = 18 mm | eta_l = 80.8% || Circumferential: Thrust F = 5.027 MN | Rivets nc = 90 | Pitch p1 = 140 mm | Row Pitch = 70 mm | eta_c = 75.3%*]
)

#figure-page("10", "BOILER CIRCUMFERENTIAL & LONGITUDINAL JOINTS", "Fig 9.31&9.32.png", "Fig. 9.31 & 9.32: Boiler Longitudinal and Circumferential Joints")

// ==========================================
// SECTION 11: EXAMPLE 9.11 — MILD STEEL TIE ROD DOUBLE COVER BUTT JOINT
// ==========================================

#section-heading("11", "TIE ROD DOUBLE COVER BUTT JOINT")

#section-overview(
  [*System Parameters:* Tie Rod Width $b = 200 "mm"$, Thickness $t = 12.5 "mm"$, Tensile Stress $sigma_t = 80 "MPa"$, Shear Stress $tau = 65 "MPa"$, Crushing Stress $sigma_c = 160 "MPa"$, Double Shear Factor = 1.75.],
  [*Design Protocol:* Size rivet hole $d$ via Unwin's formula, determine maximum tensile load $P_t$ at outer section 1-1, compute single rivet shearing ($P_("s1")$) and crushing ($P_("c1")$) strengths, solve required rivet count $n = 5$ arranged in diamond pattern (1-2-2), calculate cover strap thickness $t_1$, evaluate sectional tearing capacities ($P_("t1"), P_("t2"), P_("t3")$), verify efficiency $eta = 89.25\%$, and calculate pitch $p$, margin $m$, and row pitch $p_b$.]
)

#item-row(
  [*1. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 12.5 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(12.5) = 21.21 "mm" \
    &=> bold("Standard Hole Diameter " d = 21.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 20 "mm")
  $]
)

#item-row(
  [*2. Maximum Tensile Load at Section 1-1 ($P_t$)* \ Net tensile capacity of tie rod at outer row with 1 rivet hole],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t$] \
    &= (200 - 21.5) times 12.5 times 80 \
    &= 178.5 times 1000 \
    &= bold(178500 "N")
  $]
)

#item-row(
  [*3. Single Rivet Capacities & Required Rivets ($P_("s1"), P_("c1"), n$)* \ Double shear strength ($1.75 times$ single shear), crushing capacity, and rivet count],
  [$
    #text(size: 13.5pt)[$P_("s1")$] &= #text(size: 13.5pt)[$1.75 dot pi/4 d^2 dot tau = 1.75 times pi/4 (21.5)^2 (65) = 41300 "N"$] \
    #text(size: 13.5pt)[$P_("c1")$] &= #text(size: 13.5pt)[$d dot t dot sigma_c = 21.5 times 12.5 times 160 = 43000 "N"$] \
    #text(size: 13.5pt)[$n$] &= #text(size: 13.5pt)[$P_t / P_("s1") = 178500 / 41300 = 4.32 => bold(n = 5 "rivets (Diamond 1-2-2 Pattern)")$]
  $]
)

#item-row(
  [*4. Thickness of Butt Straps ($t_1$)* \ Standard proportion for equal width double cover plates],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.75 t$] \
    &= 0.75 (12.5) = 9.375 "mm" \
    &=> bold("Strap Thickness " t_1 = 9.4 "mm")
  $]
)

#item-row(
  [*5. Sectional Tearing Capacities ($P_("t1"), P_("t2"), P_("t3")$)* \ Tearing resistances across sections 1-1, 2-2, and 3-3],
  [$
    #text(size: 13.5pt)[$P_("t1")$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t = (200 - 21.5) (12.5) (80) = 178500 "N (Governing Capacity)"$] \
    #text(size: 13.5pt)[$P_("t2")$] &= #text(size: 13.5pt)[$(b - 2d) t dot sigma_t + P_("s1") = (200 - 43) (1000) + 41300 = 198300 "N"$] \
    #text(size: 13.5pt)[$P_("t3")$] &= #text(size: 13.5pt)[$(b - 2d) t dot sigma_t + 3 P_("s1") = 157000 + 3(41300) = 280900 "N"$]
  $]
)

#item-row(
  [*6. Solid Tie Rod Strength & Joint Efficiency ($P, eta$)* \ Strength of un-punched tie rod and overall joint efficiency],
  [$
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$b dot t dot sigma_t = 200 times 12.5 times 80 = 200000 "N"$] \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_("t1") / P times 100% = 178500 / 200000 times 100%$] \
    &=> bold(eta = 89.25%)
  $]
)

#item-row(
  [*7. Pitch, Margin & Row Spacing ($p, m, p_b$)* \ Pitch, margin, and transverse row pitch for diamond layout],
  [$
    #text(size: 13.5pt)[$p$] &= #text(size: 13.5pt)[$3 d + 5 "mm" = 3(21.5) + 5 = 69.5 "mm" => bold("Pitch " p = 70 "mm")$] \
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d = 1.5(21.5) = 32.25 "mm" => bold("Margin " m = 35 "mm")$] \
    #text(size: 13.5pt)[$p_b$] &= #text(size: 13.5pt)[$2.5 d = 2.5(21.5) = 53.75 "mm" => bold("Row Pitch " p_b = 55 "mm")$]
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Tie Rod b = 200 mm, t = 12.5 mm | Hole d = 21.5 mm | Rivets n = 5 (1-2-2) | Strap t1 = 9.4 mm | Pitch p = 70 mm | Margin m = 35 mm | Row Pitch pb = 55 mm | Efficiency eta = 89.25%*]
)

#figure-page("11", "TIE ROD DOUBLE COVER BUTT JOINT", "Fig 9.33&9.34.png", "Fig. 9.33 & 9.34: Tie Rod Double Cover Butt Joint")

// ==========================================
// SECTION 12: EXAMPLE 9.12 — BRIDGE TIE-BAR LOZENGE (DIAMOND) JOINT
// ==========================================

#section-heading("12", "BRIDGE TIE-BAR LOZENGE (DIAMOND) JOINT")

#section-overview(
  [*System Parameters:* Flat Bar Width $b = 350 "mm"$, Thickness $t = 20 "mm"$, Tensile Stress $sigma_t = 90 "MPa"$, Shear Stress $tau = 60 "MPa"$, Crushing Stress $sigma_c = 150 "MPa"$, Double Shear Factor = 1.75.],
  [*Design Protocol:* Size rivet hole diameter $d$ via Unwin's formula, determine maximum tensile load $P_t$ at outer section 1-1, compute single rivet shearing ($P_("s1")$) and crushing ($P_("c1")$) strengths, solve required rivet count $n = 9$ arranged in lozenge pattern (1-2-3-3), calculate cover strap thickness $t_1 = 15 "mm"$, evaluate sectional tearing capacities ($P_("t1"), P_("t2"), P_("t3"), P_("t4")$), verify efficiency $eta = 91.7\%$, and compute pitch $p = 95 "mm"$, margin $m = 45 "mm"$, and row pitch $p_b = 75 "mm"$.]
)

#item-row(
  [*1. Diameter of Rivet Hole ($d$)* \ Unwin's formula for $t = 20 "mm"$ and IS standard size],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$6 sqrt(t)$] \
    &= 6 sqrt(20) = 26.83 "mm" \
    &=> bold("Standard Hole Diameter " d = 29 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 27 "mm")
  $]
)

#item-row(
  [*2. Maximum Tensile Load at Section 1-1 ($P_t$)* \ Net tensile capacity of tie-bar at outer row with 1 rivet hole],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t$] \
    &= (350 - 29) times 20 times 90 \
    &= 321 times 1800 \
    &= bold(577800 "N")
  $]
)

#item-row(
  [*3. Single Rivet Capacities & Required Rivets ($P_("s1"), P_("c1"), n$)* \ Double shear strength ($1.75 times$ single shear), crushing capacity, and total rivet count],
  [$
    #text(size: 13.5pt)[$P_("s1")$] &= #text(size: 13.5pt)[$1.75 dot pi/4 d^2 dot tau = 1.75 times pi/4 (29)^2 (60) = 69360 "N"$] \
    #text(size: 13.5pt)[$P_("c1")$] &= #text(size: 13.5pt)[$d dot t dot sigma_c = 29 times 20 times 150 = 87000 "N"$] \
    #text(size: 13.5pt)[$n$] &= #text(size: 13.5pt)[$P_t / P_("s1") = 577800 / 69360 = 8.33 => bold(n = 9 "rivets (Lozenge 1-2-3-3 Pattern)")$]
  $]
)

#item-row(
  [*4. Thickness of Butt Straps ($t_1$)* \ Standard proportion for equal width double cover plates],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$0.75 t$] \
    &= 0.75 (20) \
    &=> bold("Adopt Strap Thickness " t_1 = 15 "mm")
  $]
)

#item-row(
  [*5. Sectional Tearing Capacities ($P_("t1"), P_("t2"), P_("t3"), P_("t4")$)* \ Tearing resistances across sections 1-1 (1 hole), 2-2 (2 holes), 3-3 (3 holes), and 4-4 (3 holes)],
  [$
    #text(size: 13.5pt)[$P_("t1")$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t = (350 - 29) (20) (90) = 577800 "N (Governing Capacity)"$] \
    #text(size: 13.5pt)[$P_("t2")$] &= #text(size: 13.5pt)[$(b - 2d) t dot sigma_t + P_("s1") = (350 - 58) (1800) + 69360 = 594960 "N"$] \
    #text(size: 13.5pt)[$P_("t3")$] &= #text(size: 13.5pt)[$(b - 3d) t dot sigma_t + 3 P_("s1") = (350 - 87) (1800) + 208080 = 681480 "N"$] \
    #text(size: 13.5pt)[$P_("t4")$] &= #text(size: 13.5pt)[$(b - 3d) t dot sigma_t + 6 P_("s1") = 473400 + 416160 = 889560 "N"$]
  $]
)

#item-row(
  [*6. Solid Flat Bar Strength & Joint Efficiency ($P, eta$)* \ Strength of un-punched tie-bar and overall diamond joint efficiency],
  [$
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$b dot t dot sigma_t = 350 times 20 times 90 = 630000 "N"$] \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_("t1") / P times 100% = 577800 / 630000 times 100%$] \
    &=> bold(eta = 91.7%) quad bold("(Superior to Chain Riveting 75.2%)")
  $]
)

#item-row(
  [*7. Pitch, Margin & Row Spacing ($p, m, p_b$)* \ Pitch, margin, and transverse row pitch for lozenge layout],
  [$
    #text(size: 13.5pt)[$p$] &= #text(size: 13.5pt)[$3 d + 5 "mm" = 3(29) + 5 = 92 "mm" => bold("Pitch " p = 95 "mm")$] \
    #text(size: 13.5pt)[$m$] &= #text(size: 13.5pt)[$1.5 d = 1.5(29) = 43.5 "mm" => bold("Margin " m = 45 "mm")$] \
    #text(size: 13.5pt)[$p_b$] &= #text(size: 13.5pt)[$2.5 d = 2.5(29) = 72.5 "mm" => bold("Row Pitch " p_b = 75 "mm")$]
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Tie-Bar b = 350 mm, t = 20 mm | Hole d = 29 mm | Rivets n = 9 (1-2-3-3) | Strap t1 = 15 mm | Pitch p = 95 mm | Margin m = 45 mm | Row Pitch pb = 75 mm | Efficiency eta = 91.7%*]
)

// ==========================================
// SECTION 13: EXAMPLE 9.13 — FLAT TIE-BAR LAP JOINT (DIAMOND PATTERN)
// ==========================================

#section-heading("13", "FLAT TIE-BAR LAP JOINT (DIAMOND PATTERN)")

#section-overview(
  [*System Parameters:* Flat Bar Width $b = 200 "mm"$, Thickness $t = 10 "mm"$, Nominal Rivet Diameter $d_0 = 24 "mm"$, Rivet Hole Diameter $d = 25.5 "mm"$, Allowable Stresses: Tensile $sigma_t = 112 "MPa"$, Shear $tau = 84 "MPa"$, Crushing $sigma_c = 200 "MPa"$.],
  [*Design Protocol:* Calculate maximum pull $P_t$ at outer section 1-1, determine single rivet shearing ($P_("s1")$) and crushing ($P_("c1")$) strengths, solve required rivet count $n = 5$ arranged in diamond pattern (1-3-1), calculate cover plate thickness $t_1 = 1.25 t = 12.5 "mm"$, evaluate sectional tearing capacities ($P_("t1"), P_("t2"), P_("t3")$), and verify governing joint efficiency $eta = 80.9\%$.]
)

#item-row(
  [*1. Maximum Tensile Load at Section 1-1 ($P_t$)* \ Net tensile capacity of tie-bar at outer row with 1 rivet hole ($d = 25.5 "mm"$)],
  [$
    #text(size: 13.5pt)[$P_t$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t$] \
    &= (200 - 25.5) times 10 times 112 \
    &= 174.5 times 1120 \
    &= bold(195440 "N")
  $]
)

#item-row(
  [*2. Single Rivet Capacities & Required Rivets ($P_("s1"), P_("c1"), n$)* \ Single shear strength in lap joint, crushing capacity, and total rivet count],
  [$
    #text(size: 13.5pt)[$P_("s1")$] &= #text(size: 13.5pt)[$pi/4 d^2 dot tau = pi/4 (25.5)^2 (84) = 42905 "N (Governing)"$] \
    #text(size: 13.5pt)[$P_("c1")$] &= #text(size: 13.5pt)[$d dot t dot sigma_c = 25.5 times 10 times 200 = 51000 "N"$] \
    #text(size: 13.5pt)[$n$] &= #text(size: 13.5pt)[$P_t / P_("s1") = 195440 / 42905 = 4.56 => bold(n = 5 "rivets (Diamond 1-3-1 Pattern)")$]
  $]
)

#item-row(
  [*3. Thickness of Cover Plate ($t_1$)* \ Standard proportion for lap joint cover plate],
  [$
    #text(size: 13.5pt)[$t_1$] &= #text(size: 13.5pt)[$1.25 t$] \
    &= 1.25 (10) \
    &=> bold("Cover Plate Thickness " t_1 = 12.5 "mm")
  $]
)

#item-row(
  [*4. Sectional Tearing Capacities ($P_("t1"), P_("t2"), P_("t3")$)* \ Tearing resistances across sections 1-1 (1 hole), 2-2 (3 holes), and 3-3 (1 hole)],
  [$
    #text(size: 13.5pt)[$P_("t1")$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t = (200 - 25.5) (10) (112) = 195440 "N"$] \
    #text(size: 13.5pt)[$P_("t2")$] &= #text(size: 13.5pt)[$(b - 3d) t dot sigma_t + P_("s1") = (200 - 3(25.5)) (1120) + 42905$] \
    &= 138320 + 42905 = bold(181225 "N (Governing Minimum Strength)") \
    #text(size: 13.5pt)[$P_("t3")$] &= #text(size: 13.5pt)[$(b - d) t dot sigma_t = 195440 "N"$]
  $]
)

#item-row(
  [*5. Total Shear, Crushing Capacities & Joint Efficiency ($P_s, P_c, P, eta$)* \ Total capacities for 5 rivets, un-punched plate strength, and efficiency],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$5 times 42905 = 214525 "N", quad P_c = 5 times 51000 = 255000 "N"$] \
    #text(size: 13.5pt)[$P$] &= #text(size: 13.5pt)[$b dot t dot sigma_t = 200 times 10 times 112 = 224000 "N"$] \
    #text(size: 13.5pt)[$eta$] &= #text(size: 13.5pt)[$P_("t2") / P times 100% = 181225 / 224000 times 100%$] \
    &=> bold(eta = 80.9%)
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Flat Lap Joint b = 200 mm, t = 10 mm | Hole d = 25.5 mm | Rivets n = 5 (1-3-1) | Cover t1 = 12.5 mm | Governing Strength = 181225 N | Efficiency eta = 80.9%*]
)

#figure-page("13", "FLAT TIE-BAR LAP JOINT", "Fig 9.36.png", "Fig. 9.36: Flat Tie-Bar Lap Joint (Diamond Pattern)")

// ==========================================
// SECTION 14: EXAMPLE 9.14 — ECCENTRICALLY LOADED 7-RIVET BRACKET
// ==========================================

#section-heading("14", "ECCENTRICALLY LOADED LAP RIVETED BRACKET")

#section-overview(
  [*System Parameters:* Bracket Thickness $t = 25 "mm"$, Eccentric Load $P = 50 "kN" = 50000 "N"$, Eccentricity $e = 400 "mm"$, Rivet Spacing $C = 100 "mm"$, Rivet Count $n = 7$, Permissible Shear Stress $tau = 65 "MPa"$, Permissible Crushing Stress $sigma_c = 120 "MPa"$.],
  [*Design Protocol:* Calculate center of gravity $G(x bar, y bar)$ of 7-rivet system, compute radial distances $l_i$, evaluate direct shear load $P_s$, compute secondary shear loads $F_i$ from moment $M = P e$, calculate resultant loads $R_3, R_4, R_5$, size rivet hole diameter $d$ for max load $R_5 = 33121 "N"$, and verify crushing stress $sigma_c$.]
)

#item-row(
  [*1. Center of Gravity of Rivet Group ($G$)* \ Coordinate centroid from origin O(0,0)],
  [$
    #text(size: 13.5pt)[$x bar$] &= #text(size: 13.5pt)[$(sum x_i) / n = (0 + 100 + 200 + 200 + 200 + 100 + 0) / 7 = 700 / 7 = bold(100 "mm")$] \
    #text(size: 13.5pt)[$y bar$] &= #text(size: 13.5pt)[$(sum y_i) / n = (200 + 200 + 200 + 100 + 0 + 0 + 0) / 7 = 800 / 7 = bold(114.3 "mm")$]
  $]
)

#item-row(
  [*2. Radial Distances from Centroid ($l_i$)* \ Radial distances of 7 rivets from $G(100, 114.3)$],
  [$
    #text(size: 13.5pt)[$l_1 = l_3$] &= #text(size: 13.5pt)[$sqrt((100)^2 + (200 - 114.3)^2) = sqrt(10000 + 7344.5) = bold(131.7 "mm")$] \
    #text(size: 13.5pt)[$l_2$] &= #text(size: 13.5pt)[$200 - 114.3 = bold(85.7 "mm")$] \
    #text(size: 13.5pt)[$l_4 = l_7$] &= #text(size: 13.5pt)[$sqrt((100)^2 + (114.3 - 100)^2) = sqrt(10000 + 204.5) = bold(101 "mm")$] \
    #text(size: 13.5pt)[$l_5 = l_6$] &= #text(size: 13.5pt)[$sqrt((100)^2 + (114.3)^2) = sqrt(10000 + 13064.5) = bold(152 "mm")$]
  $]
)

#item-row(
  [*3. Direct Shear Load ($P_s$)* \ Primary vertical shear load per rivet],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$P / n$] \
    &= 50000 / 7 \
    &= bold(7143 "N (Vertically Downward)")
  $]
)

#item-row(
  [*4. Moment & Secondary Shear Loads ($M, sum l_i^2, F_i$)* \ Turning moment about $G$ and secondary shear load distribution],
  [$
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$P dot e = 50000 times 400 = 20 times 10^6 "N-mm"$] \
    #text(size: 13.5pt)[$sum l_i^2$] &= #text(size: 13.5pt)[$2(131.7)^2 + (85.7)^2 + 2(101)^2 + 2(152)^2 = bold(108645 "mm"^2)$] \
    #text(size: 13.5pt)[$F_1 = F_3$] &= #text(size: 13.5pt)[$(M dot l_1) / sum l_i^2 = (20 times 10^6 times 131.7) / 108645 = bold(24244 "N")$] \
    F_2 &= F_1 (l_2 / l_1) = 24244 (85.7 / 131.7) = bold(15776 "N") \
    F_4 = F_7 &= F_1 (l_4 / l_1) = 24244 (101 / 131.7) = bold(18593 "N") \
    F_5 = F_6 &= F_1 (l_5 / l_1) = 24244 (152 / 131.7) = bold(27981 "N")
  $]
)

#item-row(
  [*5. Resultant Shear Loads on Critical Rivets ($R_3, R_4, R_5$)* \ Combining primary and secondary shear vector forces],
  [$
    #text(size: 13.5pt)[$R_3$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_3^2 + 2 P_s F_3 cos theta_3) = sqrt(7143^2 + 24244^2 + 2(7143)(24244)(0.76)) = bold(30033 "N")$] \
    #text(size: 13.5pt)[$R_4$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_4^2 + 2 P_s F_4 cos theta_4) = sqrt(7143^2 + 18593^2 + 2(7143)(18593)(0.99)) = bold(25684 "N")$] \
    #text(size: 13.5pt)[$R_5$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_5^2 + 2 P_s F_5 cos theta_5) = sqrt(7143^2 + 27981^2 + 2(7143)(27981)(0.658))$] \
    &= bold(33121 "N (Governing Maximum Load on Rivet 5)")
  $]
)

#item-row(
  [*6. Rivet Hole Diameter ($d$)* \ Single shear strength capacity for maximum load $R_5 = 33121 "N"$],
  [$
    #text(size: 13.5pt)[$R_5$] &= #text(size: 13.5pt)[$pi/4 d^2 dot tau$] \
    33121 &= pi/4 d^2 (65) = 51.05 d^2 \
    d^2 &= 33121 / 51.05 = 648.8 \
    &=> bold("Standard Hole Diameter " d = 25.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 24 "mm")
  $]
)

#item-row(
  [*7. Crushing Stress Verification ($sigma_c$)* \ Induced crushing stress check on critical rivet 5],
  [$
    #text(size: 13.5pt)[$sigma_c$] &= #text(size: 13.5pt)[$R_5 / (d dot t)$] \
    &= 33121 / (25.5 times 25) \
    &= 33121 / 637.5 \
    &= bold(51.95 "MPa") quad bold("(Satisfactory, well below allowable 120 MPa)")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*7-Rivet Bracket t = 25 mm | Centroid G = (100, 114.3) | Direct Shear Ps = 7143 N | Moment M = 20 MN-mm | Max Load R5 = 33121 N | Hole d = 25.5 mm | Rivet d0 = 24 mm | Crushing Stress = 51.95 MPa*]
)

// ==========================================
// SECTION 15: EXAMPLE 9.15 — SYMMETRIC 9-RIVET ECCENTRIC BRACKET
// ==========================================

#section-heading("15", "SYMMETRIC 9-RIVET ECCENTRIC BRACKET")

#section-overview(
  [*System Parameters:* Eccentric Load $P = 45 "kN" = 45000 "N"$, Eccentricity $e = 500 "mm"$, Rivet Grid $3 times 3$ ($n = 9$), Horizontal Pitch = 100 mm, Vertical Pitch = 120 mm, Permissible Shear Stress $tau = 40 "MPa"$.],
  [*Design Protocol:* Locate centroid $G$ at center rivet 5, determine radial distances $l_i$, evaluate direct shear load $P_s = 5000 "N"$, compute secondary shear loads $F_i$ from moment $M = P e = 22.5 times 10^6 "N-mm"$, determine maximum resultant shear load $R_3 = R_9 = 26600 "N"$, and size rivet hole diameter $d$.]
)

#item-row(
  [*1. Centroid & Radial Distances ($G, l_i$)* \ Symmetric 3x3 rivet grid centered at rivet 5 $G(0,0)$],
  [$
    #text(size: 13.5pt)[$l_1 = l_3 = l_7 = l_9$] &= #text(size: 13.5pt)[$sqrt((100)^2 + (120)^2) = sqrt(10000 + 14400) = bold(156.2 "mm")$] \
    #text(size: 13.5pt)[$l_2 = l_8$] &= #text(size: 13.5pt)[$120 "mm", quad l_4 = l_6 = 100 "mm", quad l_5 = 0$]
  $]
)

#item-row(
  [*2. Direct Shear Load ($P_s$)* \ Primary vertical shear force acting on each rivet],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$P / n$] \
    &= 45000 / 9 \
    &= bold(5000 "N (Vertically Downward)")
  $]
)

#item-row(
  [*3. Moment & Secondary Shear Loads ($M, sum l_i^2, F_i$)* \ Torsional moment about $G$ and secondary shear load distribution],
  [$
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$P dot e = 45000 times 500 = 22.5 times 10^6 "N-mm"$] \
    #text(size: 13.5pt)[$sum l_i^2$] &= #text(size: 13.5pt)[$4(156.2)^2 + 2(120)^2 + 2(100)^2 = bold(146400 "mm"^2)$] \
    #text(size: 13.5pt)[$F_1 = F_3 = F_7 = F_9$] &= #text(size: 13.5pt)[$(M dot l_1) / sum l_i^2 = (22.5 times 10^6 times 156.2) / 146400 = bold(23120 "N")$] \
    F_2 = F_8 &= 23120 (120 / 156.2) = bold(17762 "N") \
    F_4 = F_6 &= 23120 (100 / 156.2) = bold(14800 "N")
  $]
)

#item-row(
  [*4. Resultant Shear Loads on Critical Rivets 3 & 9 ($R_3, R_9$)* \ Vector addition of direct and secondary shear forces ($cos theta_3 = 100/156.2 = 0.64$)],
  [$
    #text(size: 13.5pt)[$R_3 = R_9$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_3^2 + 2 P_s F_3 cos theta_3)$] \
    &= sqrt(5000^2 + 23120^2 + 2(5000)(23120)(0.64)) \
    &= sqrt(25 times 10^6 + 534.5 times 10^6 + 147.97 times 10^6) \
    &= bold(26600 "N (Governing Maximum Resultant Load)") \
    #text(size: 13.5pt)[$R_6$] &= #text(size: 13.5pt)[$P_s + F_6 = 5000 + 14800 = 19800 "N"$]
  $]
)

#item-row(
  [*5. Rivet Hole Diameter ($d$)* \ Single shear strength capacity for maximum load $R_3 = 26600 "N"$],
  [$
    #text(size: 13.5pt)[$R_3$] &= #text(size: 13.5pt)[$pi/4 d^2 dot tau$] \
    26600 &= pi/4 d^2 (40) = 31.42 d^2 \
    d^2 &= 26600 / 31.42 = 846.6 \
    &=> bold("Standard Hole Diameter " d = 29 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 27 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*9-Rivet Bracket P = 45 kN, e = 500 mm | Direct Shear Ps = 5000 N | Moment M = 22.5 MN-mm | Max Resultant R3 = 26600 N | Hole d = 29 mm | Rivet d0 = 27 mm*]
)

// ==========================================
// SECTION 16: EXAMPLE 9.16 — MAXIMUM SAFE ECCENTRIC LOAD CAPACITY
// ==========================================

#section-heading("16", "MAXIMUM SAFE ECCENTRIC LOAD CAPACITY")

#section-overview(
  [*System Parameters:* Number of Rivets $n = 4$ in horizontal line (A, B, C, D), Rivet Hole Diameter $d = 20 "mm"$, Allowable Shear Stress $tau = 100 "MPa" = 100 "N/mm"^2$, Eccentricity $e = 100 "mm"$, Spacings $l_A = l_D = 300 "mm"$, $l_B = l_C = 100 "mm"$.],
  [*Design Protocol:* Express direct shear load $P_s = 0.25 P$ and secondary shear loads ($F_A, F_B, F_C, F_D$) as functions of load $P$, determine resultant loads ($R_A, R_B, R_C, R_D$), equate maximum load $R_D = 0.40 P$ to single rivet shear capacity ($31420 "N"$), and calculate maximum safe eccentric load $P$.]
)

#item-row(
  [*1. Direct Shear Load per Rivet ($P_s$)* \ Primary vertical shear load per rivet in terms of load $P$],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$P / n = P / 4 = bold(0.25 P "N (Vertically Upward)")$]
  $]
)

#item-row(
  [*2. Moment & Secondary Shear Loads ($M, sum l_i^2, F_i$)* \ Torsional moment about centroid $E$ and secondary load distribution],
  [$
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$P dot e = P times 100 = bold(100 P "N-mm (Anticlockwise)")$] \
    #text(size: 13.5pt)[$sum l_i^2$] &= #text(size: 13.5pt)[$2(300)^2 + 2(100)^2 = 180000 + 20000 = bold(200000 "mm"^2)$] \
    #text(size: 13.5pt)[$F_A = F_D$] &= #text(size: 13.5pt)[$(M dot l_A) / sum l_i^2 = (100 P times 300) / 200000 = bold(0.15 P "N")$] \
    #text(size: 13.5pt)[$F_B = F_C$] &= #text(size: 13.5pt)[$(M dot l_B) / sum l_i^2 = (100 P times 100) / 200000 = bold(0.05 P "N")$]
  $]
)

#item-row(
  [*3. Resultant Shear Load on Each Rivet ($R_A, R_B, R_C, R_D$)* \ Vector sum of direct and secondary shear loads],
  [$
    #text(size: 13.5pt)[$R_A$] &= #text(size: 13.5pt)[$P_s - F_A = 0.25 P - 0.15 P = 0.10 P$] \
    #text(size: 13.5pt)[$R_B$] &= #text(size: 13.5pt)[$P_s - F_B = 0.25 P - 0.05 P = 0.20 P$] \
    #text(size: 13.5pt)[$R_C$] &= #text(size: 13.5pt)[$P_s + F_C = 0.25 P + 0.05 P = 0.30 P$] \
    #text(size: 13.5pt)[$R_D$] &= #text(size: 13.5pt)[$P_s + F_D = 0.25 P + 0.15 P = bold(0.40 P "N (Governing Maximum Load on Rivet D)")$]
  $]
)

#item-row(
  [*4. Single Rivet Shear Capacity ($P_("shear")$)* \ Maximum allowable shear force capacity per rivet ($d = 20 "mm"$)],
  [$
    #text(size: 13.5pt)[$P_("shear")$] &= #text(size: 13.5pt)[$pi/4 d^2 dot tau$] \
    &= pi/4 (20)^2 times 100 \
    &= 100 pi times 100 \
    &= bold(31420 "N" = 31.42 "kN")
  $]
)

#item-row(
  [*5. Maximum Safe Eccentric Load ($P$)* \ Equating governing load $R_D = 0.40 P$ to single rivet shear capacity],
  [$
    #text(size: 13.5pt)[$0.40 P$] &= #text(size: 13.5pt)[$31420 "N"$] \
    P &= 31420 / 0.40 \
    &= 78550 "N" \
    &=> bold("Maximum Safe Load " P = 78.55 "kN")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*4-Rivet Horizontal Joint d = 20 mm | Eccentricity e = 100 mm | Governing Load RD = 0.40 P | Single Rivet Capacity = 31.42 kN | Max Safe Load P = 78.55 kN*]
)

// ==========================================
// SECTION 17: EXAMPLE 9.17 — ECCENTRIC COLUMN BRACKET JOINT
// ==========================================

#pagebreak()

#section-heading("17", "ECCENTRIC COLUMN BRACKET JOINT")

#section-overview(
  [*System Parameters:* Number of Rivets $n = 6$ (2 columns of 3 rivets), Eccentric Load $P = 60 "kN" = 60000 "N"$, Eccentricity $e = 200 "mm"$, Horizontal Spacing = 150 mm (75 mm from G), Vertical Spacing = 100 mm (50 mm from G), Permissible Shear Stress $tau = 150 "MPa"$.],
  [*Design Protocol:* Locate symmetric centroid $G(0,0)$, compute radial distances $l_i$, evaluate direct shear load $P_s = 10000 "N"$, compute secondary shear loads $F_i$ from moment $M = P e = 12 times 10^6 "N-mm"$, determine maximum resultant shear load $R_1 = R_3 = 35384 "N"$, and size rivet hole diameter $d$.]
)

#item-row(
  [*1. Centroid & Radial Distances ($G, l_i$)* \ Symmetric 2x3 rivet grid centered at centroid $G(0,0)$],
  [$
    #text(size: 13.5pt)[$l_1 = l_3 = l_4 = l_6$] &= #text(size: 13.5pt)[$sqrt((75)^2 + (50)^2) = sqrt(5625 + 2500) = bold(90.1 "mm")$] \
    #text(size: 13.5pt)[$l_2 = l_5$] &= #text(size: 13.5pt)[$50 "mm"$]
  $]
)

#item-row(
  [*2. Direct Shear Load ($P_s$)* \ Primary vertical shear force acting on each rivet],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$P / n$] \
    &= 60000 / 6 \
    &= bold(10000 "N (Vertically Downward)")
  $]
)

#item-row(
  [*3. Moment & Secondary Shear Loads ($M, sum l_i^2, F_i$)* \ Torsional moment about $G$ and secondary shear load distribution],
  [$
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$P dot e = 60000 times 200 = 12 times 10^6 "N-mm"$] \
    #text(size: 13.5pt)[$sum l_i^2$] &= #text(size: 13.5pt)[$4(90.1)^2 + 2(50)^2 = 32500 + 5000 = bold(37500 "mm"^2)$] \
    #text(size: 13.5pt)[$F_1 = F_3 = F_4 = F_6$] &= #text(size: 13.5pt)[$(M dot l_1) / sum l_i^2 = (12 times 10^6 times 90.1) / 37500 = bold(28846 "N")$] \
    F_2 = F_5 &= 28846 (50 / 90.1) = bold(16008 "N")
  $]
)

#item-row(
  [*4. Resultant Shear Loads on Critical Rivets 1 & 3 ($R_1, R_3$)* \ Vector addition of direct and secondary shear forces ($cos theta_1 = 50/90.1 = 0.555$)],
  [$
    #text(size: 13.5pt)[$R_1 = R_3$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_1^2 + 2 P_s F_1 cos theta_1)$] \
    &= sqrt(10000^2 + 28846^2 + 2(10000)(28846)(0.555)) \
    &= sqrt(100 times 10^6 + 832.1 times 10^6 + 320.2 times 10^6) \
    &= bold(35384 "N (Governing Maximum Resultant Load)") \
    #text(size: 13.5pt)[$R_2$] &= #text(size: 13.5pt)[$P_s + F_2 = 10000 + 16008 = 26008 "N"$]
  $]
)

#item-row(
  [*5. Rivet Hole Diameter ($d$)* \ Single shear strength capacity for maximum load $R_1 = 35384 "N"$],
  [$
    #text(size: 13.5pt)[$R_1$] &= #text(size: 13.5pt)[$pi/4 d^2 dot tau$] \
    35384 &= pi/4 d^2 (150) = 117.8 d^2 \
    d^2 &= 35384 / 117.8 = 300.4 \
    &=> bold("Standard Hole Diameter " d = 19.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 18 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*6-Rivet Column Bracket P = 60 kN, e = 200 mm | Direct Shear Ps = 10000 N | Moment M = 12 MN-mm | Max Resultant R1 = 35384 N | Hole d = 19.5 mm | Rivet d0 = 18 mm*]
)

// ==========================================
// SECTION 18: EXAMPLE 9.18 — INCLINED LOAD ECCENTRIC BRACKET & PLATE THICKNESS
// ==========================================

#pagebreak()

#section-heading("18", "ECCENTRICALLY LOADED INCLINED BRACKET JOINT")

#section-overview(
  [*System Parameters:* Number of Rivets $n = 4$ ($A, B, C, D$ in vertical line), Spacings $l_A = l_D = 90 "mm"$, $l_B = l_C = 30 "mm"$, Inclined Load $P = 100 "kN" = 100000 "N"$ at $30^deg$ to horizontal, Arm $"EF" = 150 "mm"$, Yield Shear Stress $tau_y = 240 "MPa"$, FOS = 1.5, Allowable Bending Stress $sigma_b = 125 "MPa"$, Plate Width $b = 240 "mm"$.],
  [*Design Protocol:* Calculate direct shear load $P_s = 25000 "N"$, perpendicular eccentricity $e = 75 "mm"$, moment $M = 7.5 times 10^6 "N-mm"$, secondary shear loads $F_i$, governing resultant load $R_D = 60455 "N"$, size rivet hole $d = 23.5 "mm"$ (nominal $d_0 = 22 "mm"$), compute weakest section moment of inertia $I_("xx") = 724674 t$, and solve bracket plate thickness $t = 10 "mm"$.]
)

#item-row(
  [*1. Direct Shear Load ($P_s$)* \ Primary shear load per rivet at $30^deg$ angle to horizontal],
  [$
    #text(size: 13.5pt)[$P_s$] &= #text(size: 13.5pt)[$P / n$] \
    &= 100000 / 4 \
    &= bold(25000 "N (at 30 deg to horizontal)")
  $]
)

#item-row(
  [*2. Perpendicular Eccentricity & Moment ($e, M$)* \ Perpendicular moment arm from $E$ to load line of action],
  [$
    #text(size: 13.5pt)[$e$] &= #text(size: 13.5pt)[$"EF" sin(30^deg) = 150 times 0.5 = bold(75 "mm")$] \
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$P dot e = 100000 times 75 = bold(7.5 times 10^6 "N-mm")$]
  $]
)

#item-row(
  [*3. Secondary Shear Loads ($F_A, F_B, F_C, F_D$)* \ Torsional shear distribution ($sum l_i^2 = 2(90)^2 + 2(30)^2 = 18000 "mm"^2$)],
  [$
    #text(size: 13.5pt)[$F_A = F_D$] &= #text(size: 13.5pt)[$(M dot l_A) / sum l_i^2 = (7.5 times 10^6 times 90) / 18000 = bold(37500 "N")$] \
    #text(size: 13.5pt)[$F_B = F_C$] &= #text(size: 13.5pt)[$(M dot l_B) / sum l_i^2 = (7.5 times 10^6 times 30) / 18000 = bold(12500 "N")$]
  $]
)

#item-row(
  [*4. Resultant Shear Loads ($R_A, R_B, R_C, R_D$)* \ Vector addition of primary ($P_s$) and secondary ($F_i$) shear loads],
  [$
    #text(size: 13.5pt)[$R_A = R_B$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_A^2 + 2 P_s F_A cos(150^deg)) = bold(19365 "N")$] \
    #text(size: 13.5pt)[$R_C$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_C^2 + 2 P_s F_C cos(30^deg)) = bold(36366 "N")$] \
    #text(size: 13.5pt)[$R_D$] &= #text(size: 13.5pt)[$sqrt(P_s^2 + F_D^2 + 2 P_s F_D cos(30^deg))$] \
    &= sqrt((25000)^2 + (37500)^2 + 2(25000)(37500)(0.866)) \
    &= bold(60455 "N (Governing Maximum Resultant Load on Rivet D)")
  $]
)

#item-row(
  [*5. Rivet Hole Diameter ($d$)* \ Permissible shear stress $tau_("allow") = 240 / 1.5 = 160 "MPa"$ for load $R_D = 60455 "N"$],
  [$
    #text(size: 13.5pt)[$R_D$] &= #text(size: 13.5pt)[$pi/4 d^2 dot (tau_y / "FOS")$] \
    60455 &= pi/4 d^2 (160) = 125.7 d^2 \
    d^2 &= 60455 / 125.7 = 481 \
    &=> bold("Standard Hole Diameter " d = 23.5 "mm") \
    &=> bold("Nominal Rivet Diameter " d_0 = 22 "mm")
  $]
)

#item-row(
  [*6. Moment of Inertia of Weakest Section ($I_("xx")$)* \ Net area moment of inertia deducting 4 rivet holes ($d = 23.5 "mm"$)],
  [$
    #text(size: 13.5pt)[$I_("xx")$] &= #text(size: 13.5pt)[$(t b^3)/12 - [4(t d^3)/12 + 2(t dot d)(90)^2 + 2(t dot d)(30)^2]$] \
    &= (t (240)^3)/12 - [4326 t + 2(23.5 t)(8100 + 900)] \
    &= 1152000 t - [4326 t + 423000 t] \
    &= bold(724674 t "mm"^4)
  $]
)

#item-row(
  [*7. Bracket Plate Thickness ($t$)* \ Bending stress formula for allowable stress $sigma_b = 125 "MPa"$ ($y = b/2 = 120 "mm"$)],
  [$
    #text(size: 13.5pt)[$sigma_b$] &= #text(size: 13.5pt)[$(M dot y) / I_("xx")$] \
    125 &= (7.5 times 10^6 times 120) / (724674 t) \
    125 &= 1241.9 / t \
    t &= 1241.9 / 125 = 9.935 "mm" \
    &=> bold("Adopt Bracket Plate Thickness " t = 10 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Inclined Load P = 100 kN at 30 deg | Moment M = 7.5 MN-mm | Max Load RD = 60.46 kN | Hole d = 23.5 mm | Rivet d0 = 22 mm | Weakest Section Ixx = 724674 t | Plate Thickness t = 10 mm*]
)
