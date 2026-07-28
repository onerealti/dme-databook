// DESIGN DATA BOOK — WELDED JOINTS
// Standardized Typst Mechanical Engineering Databook

#let databook-title = "DESIGN DATA BOOK — WELDED JOINTS"

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
            [#text(fill: rgb("#000000"), size: 11pt, weight: "bold")[#databook-title]],
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
#show math.equation.where(block: true): it => align(left, it)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))

#let section-heading(sec-num, title) = {
  v(4pt)
  text(weight: "bold", size: 18pt)[SECTION #sec-num: #title]
  v(2pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(6pt)
}

#let section-overview(sys-params, design-proto) = {
  v(2pt)
  sys-params
  v(3pt)
  design-proto
  v(4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(6pt)
}

#let item-row(left-desc, right-math) = {
  v(3pt)
  grid(
    columns: (1fr, 1fr),
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

// ==============================================================================
// SECTION 1: DOUBLE PARALLEL FILLET WELD
// ==============================================================================

#section-heading("1", "DOUBLE PARALLEL FILLET WELD")

#section-overview(
  [*System Parameters:* Plate Width $b = 100 "mm"$, Thickness $s = 10 "mm"$, Static Load $P = 80 "kN" = 80 times 10^3 "N"$, Permissible Shear Stress $tau = 55 "MPa" = 55 "N/mm"^2$.],
  [*Design Protocol:* Calculate effective weld length $l$ for double parallel fillet weld under static load and total weld run length $L$ adding $12.5 "mm"$ start/stop allowance.]
)

#item-row(
  [*1. Effective Length of Weld ($l$)* \ Double parallel fillet weld load capacity],
  [
    #text(size: 20pt)[$P = 1.414 dot s dot l dot tau$]
    $
      80 times 10^3 &= 1.414 times 10 times l times 55 \
      l &= (80 times 10^3) / 778 \
      &= 102.8 "mm" \
      &=> l = 103 "mm"
    $
  ]
)

#item-row(
  [*2. Total Length of Weld Run ($L$)* \ Adding 12.5 mm allowance for starting and stopping],
  [
    #text(size: 20pt)[$L = l + 12.5 "mm"$]
    $
      &= 103 + 12.5 \
      &= bold(115.5 "mm")
    $
  ]
)

#item-row(
  [*3. Design Output Summary* \ Sized Double Parallel Fillet Weld],
  [*Total Length of Weld Run L = 115.5 mm*]
)

// ==============================================================================
// SECTION 2: CIRCULAR FILLET WELD UNDER TORSION
// ==============================================================================

#pagebreak()
#section-heading("2", "CIRCULAR FILLET WELD UNDER TORSION")

#section-overview(
  [*System Parameters:* Shaft Diameter $d = 50 "mm"$, Weld Size $s = 10 "mm"$, Allowable Shear Stress $tau_("max") = 80 "MPa" = 80 "N/mm"^2$.],
  [*Design Protocol:* Determine maximum torque capacity $T$ of circular fillet weld joining solid shaft to flat plate.]
)

#item-row(
  [*1. Maximum Torque Capacity ($T$)* \ Torsional shear stress in circular fillet weld],
  [
    #text(size: 20pt)[$tau_("max") = (2.83 T) / (pi dot s dot d^2)$]
    $
      80 &= (2.83 T) / (pi times 10 times (50)^2) \
      80 &= (2.83 T) / 78550 \
      T &= (80 times 78550) / 2.83 \
      &= 2.22 times 10^6 "N"dot"mm" \
      &= bold(2.22 "kN"dot"m")
    $
  ]
)

#item-row(
  [*2. Design Output Summary* \ Circular Fillet Weld Torque Capacity],
  [*Maximum Torque Capacity T = 2.22 kN.m*]
)

#figure-page("2", "CIRCULAR FILLET WELD UNDER TORSION", "Fig 10.12.png", "Figure 10.12: Solid shaft welded to plate by circular fillet weld under torsion")

// ==============================================================================
// SECTION 3: LONG FILLET WELD UNDER TORSION
// ==============================================================================

#pagebreak()
#section-heading("3", "LONG FILLET WELD UNDER TORSION")

#section-overview(
  [*System Parameters:* Plate Length $l = 1 "m" = 1000 "mm"$, Thickness $= 60 "mm"$, Weld Size $s = 15 "mm"$, Permissible Shear Stress $tau_("max") = 80 "MPa" = 80 "N/mm"^2$.],
  [*Design Protocol:* Calculate maximum torque capacity $T$ for long fillet weld connecting two plates at right angles.]
)

#item-row(
  [*1. Maximum Torque Capacity ($T$)* \ Torsional shear stress in long fillet weld],
  [
    #text(size: 20pt)[$tau_("max") = (4.242 T) / (s dot l^2)$]
    $
      80 &= (4.242 T) / (15 times (1000)^2) \
      80 &= (0.283 T) / 10^6 \
      T &= (80 times 10^6) / 0.283 \
      &= 283 times 10^6 "N"dot"mm" \
      &= bold(283 "kN"dot"m")
    $
  ]
)

#item-row(
  [*2. Design Output Summary* \ Long Fillet Weld Torque Capacity],
  [*Maximum Torque Capacity T = 283 kN.m*]
)

#figure-page("3", "LONG FILLET WELD UNDER TORSION", "Fig 10.13.png", "Figure 10.13: Long fillet weld subjected to torsion")

// ==============================================================================
// SECTION 4: PARALLEL FILLET WELD — STATIC & FATIGUE LOADING
// ==============================================================================

#pagebreak()
#section-heading("4", "PARALLEL FILLET WELD — STATIC & FATIGUE LOADING")

#section-overview(
  [*System Parameters:* Plate Width $b = 100 "mm"$, Weld Size $s = 12.5 "mm"$, Load $P = 50 "kN" = 50 times 10^3 "N"$, Allowable Shear Stress $tau = 56 "MPa"$, Stress Concentration Factor $K_f = 2.7$.],
  [*Design Protocol:* Calculate required weld run length under static loading and fatigue loading.]
)

#item-row(
  [*1. Length of Weld for Static Loading ($l$)* \ Load capacity for double parallel fillet weld],
  [
    #text(size: 20pt)[$P = 1.414 dot s dot l dot tau$]
    $
      50 times 10^3 &= 1.414 times 12.5 times l times 56 \
      l &= (50 times 10^3) / 990 \
      &= 50.5 "mm"
    $
  ]
)

#item-row(
  [*2. Total Static Weld Length ($L$)* \ Adding 12.5 mm start/stop allowance],
  [
    #text(size: 20pt)[$L = l + 12.5 "mm"$]
    $
      &= 50.5 + 12.5 \
      &= bold(63 "mm")
    $
  ]
)

#item-row(
  [*3. Permissible Shear Stress under Fatigue ($tau_("fatigue")$)* \ Fatigue stress concentration factor $K_f = 2.7$],
  [
    #text(size: 20pt)[$tau_("fatigue") = tau / K_f$]
    $
      &= 56 / 2.7 \
      &= 20.74 "N/mm"^2
    $
  ]
)

#item-row(
  [*4. Total Fatigue Weld Length ($L_("fatigue")$)* \ Effective length and total run length under fatigue loading],
  [
    #text(size: 20pt)[$P = 1.414 dot s dot l_("fatigue") dot tau_("fatigue")$]
    $
      50 times 10^3 &= 1.414 times 12.5 times l_("fatigue") times 20.74 \
      l_("fatigue") &= (50 times 10^3) / 367 \
      &= 136.2 "mm" \
      L_("fatigue") &= 136.2 + 12.5 \
      &= bold(148.7 "mm")
    $
  ]
)

#item-row(
  [*5. Design Output Summary* \ Parallel Fillet Weld Lengths],
  [*Static Length L = 63 mm, Fatigue Length L_fatigue = 148.7 mm*]
)

// ==============================================================================
// SECTION 5: COMBINATION WELD — STATIC & FATIGUE LOADING
// ==============================================================================

#pagebreak()
#section-heading("5", "COMBINATION WELD — STATIC & FATIGUE LOADING")

#section-overview(
  [*System Parameters:* Width $b = 75 "mm"$, Thickness $s = 12.5 "mm"$, Tensile Stress $sigma_t = 70 "MPa"$, Shear Stress $tau = 56 "MPa"$, $K_("f1") = 1.5$ (transverse), $K_("f2") = 2.7$ (parallel).],
  [*Design Protocol:* Determine length of each parallel fillet weld for both static and fatigue loading.]
)

#item-row(
  [*1. Total Plate Load Capacity ($P$)* \ Maximum tensile load plate can carry],
  [
    #text(size: 20pt)[$P = b dot s dot sigma_t$]
    $
      &= 75 times 12.5 times 70 \
      &= 65625 "N"
    $
  ]
)

#item-row(
  [*2. Transverse Weld Effective Length ($l_1$)* \ Width minus start/stop allowance],
  [
    #text(size: 20pt)[$l_1 = b - 12.5 "mm"$]
    $
      &= 75 - 12.5 \
      &= 62.5 "mm"
    $
  ]
)

#item-row(
  [*3. Parallel Fillet Length for Static Loading ($l_2$)* \ Load sharing between transverse and parallel welds],
  [$
    #text(size: 20pt)[$P = P_1 + P_2$] \
    P_1 &= 0.707 s dot l_1 dot sigma_t \
    &= 0.707 times 12.5 times 62.5 times 70 = 38664 "N" \
    P_2 &= 1.414 s dot l_2 dot tau \
    &= 1.414 times 12.5 times l_2 times 56 = 990 l_2 \
    65625 &= 38664 + 990 l_2 \
    l_2 &= (65625 - 38664) / 990 \
    &= 27.2 "mm" \
    &=> l_2 + 12.5 = bold(40 "mm")
  $]
)

#item-row(
  [*4. Parallel Fillet Length for Fatigue Loading ($l_2, "fatigue"$)* \ Fatigue permissible stresses and load balancing],
  [$
    #text(size: 20pt)[$sigma_("t, fatigue") = 70 / 1.5, quad tau_("fatigue") = 56 / 2.7$] \
    sigma_("t, fatigue") &= 46.7 "N/mm"^2 \
    tau_("fatigue") &= 20.74 "N/mm"^2 \
    P_1 &= 0.707 (12.5) (62.5) (46.7) = 25795 "N" \
    P_2 &= 1.414 (12.5) l_2 (20.74) = 366 l_2 \
    65625 &= 25795 + 366 l_2 \
    l_2 &= (65625 - 25795) / 366 \
    &= 108.8 "mm" \
    &=> l_2 + 12.5 = bold(121.3 "mm")
  $]
)

#item-row(
  [*5. Design Output Summary* \ Combination Weld Lengths],
  [*Static Parallel Weld l2 = 40 mm, Fatigue Parallel Weld l2 = 121.3 mm*]
)

#figure-page("5", "COMBINATION TRANSVERSE AND PARALLEL FILLET WELD", "Fig 10.15.png", "Figure 10.15: Combination of single transverse and double parallel fillet weld")

// ==============================================================================
// SECTION 6: WELD RUN LENGTH UNDER VARIABLE LOADING
// ==============================================================================

#pagebreak()
#section-heading("6", "WELD RUN LENGTH UNDER VARIABLE LOADING")

#section-overview(
  [*System Parameters:* Plate Width $b = 120 "mm"$, Thickness $s = 15 "mm"$, Static Tensile Stress $sigma_t = 70 "MPa"$, Static Shear Stress $tau = 56 "MPa"$, $K_("f1") = 1.5$, $K_("f2") = 2.7$.],
  [*Design Protocol:* Determine weld run lengths for single transverse weld and double parallel fillet welds.]
)

#item-row(
  [*1. Single Transverse Weld Length ($l_1$)* \ Width minus start/stop allowance],
  [
    #text(size: 20pt)[$l_1 = b - 12.5 "mm"$]
    $
      &= 120 - 12.5 \
      &= bold(107.5 "mm")
    $
  ]
)

#item-row(
  [*2. Double Parallel Fillet Weld Length ($l_2$)* \ Plate load capacity and fatigue load balance],
  [$
    #text(size: 20pt)[$P = b dot s dot sigma_t$] \
    &= 120 times 15 times 70 \
    &= 126 times 10^3 "N" \
    P_1 &= 0.707 (15) (107.5) (46.7) = 53240 "N" \
    P_2 &= 1.414 (15) l_2 (20.74) = 440 l_2 \
    126 times 10^3 &= 53240 + 440 l_2 \
    l_2 &= (126000 - 53240) / 440 \
    &= 165.4 "mm" \
    &=> l_2 + 12.5 = bold(178 "mm")
  $]
)

#item-row(
  [*3. Design Output Summary* \ Dynamic Load Weld Run Lengths],
  [*Transverse Weld Length l1 = 107.5 mm, Double Parallel Fillet Length l2 = 178 mm*]
)

#figure-page("6", "LONG FILLET WELD UNDER VARIABLE LOADING", "Fig 10.16.png", "Figure 10.16: Long fillet weld subjected to dynamic variable loading")

// ==============================================================================
// SECTION 7: FILLET WELD 'T' SECTION SHEAR PLANE ANALYSIS
// ==============================================================================

#pagebreak()
#section-heading("7", "FILLET WELD 'T' SECTION SHEAR PLANE ANALYSIS")

#section-overview(
  [*System Parameters:* Leg size $s$, Weld length $l$.],
  [*Design Protocol:* Locate maximum shear plane angle $theta$ for parallel and transverse loading, and find ratio of limiting loads.]
)

#item-row(
  [*1. Shear Plane for Parallel Loading ($theta$)* \ Maximizing shear stress by differentiation],
  [
    #text(size: 20pt)[$tau = (P (cos theta + sin theta)) / (2 s dot l)$]
    $
      (d tau) / (d theta) &= (P) / (2 s dot l) (-sin theta + cos theta) = 0 \
      sin theta &= cos theta \
      &=> bold(theta = 45^deg) \
      P_("parallel") &= bold(1.414 dot s dot l dot tau_("max"))
    $
  ]
)

#item-row(
  [*2. Shear Plane for Transverse Loading ($theta$)* \ Normal and shear force equilibrium resolution],
  [
    #text(size: 20pt)[$tau = (P sin theta (cos theta + sin theta)) / (2 s dot l)$]
    $
      (d tau) / (d theta) &= 0 \
      cos 2 theta + sin 2 theta &= 0 \
      tan 2 theta &= -1 \
      2 theta &= 135^deg \
      &=> bold(theta = 67.5^deg) \
      P_("transverse") &= bold(1.65 dot s dot l dot tau_("max"))
    $
  ]
)

#item-row(
  [*3. Ratio of Limiting Loads* \ Ratio of parallel load capacity to transverse load capacity],
  [
    #text(size: 20pt)[$"Ratio" = P_("parallel") / P_("transverse")$]
    $
      &= (1.414 s dot l dot tau_("max")) / (1.65 s dot l dot tau_("max")) \
      &= bold(0.857)
    $
  ]
)

#item-row(
  [*4. Design Output Summary* \ T-Section Shear Planes],
  [*Parallel Plane theta = 45 deg, Transverse Plane theta = 67.5 deg, Load Ratio = 0.857*]
)

#figure-page("7", "FILLET WELD 'T' SECTION", "Fig 10.17.png", "Figure 10.17: Fillet welds fabricating a T-section under parallel and transverse loads")
#figure-page("7", "PARALLEL LOAD SHEAR PLANE GEOMETRY", "Fig 10.18.png", "Figure 10.18: Throat plane dimensions for load parallel to weld")
#figure-page("7", "TRANSVERSE LOAD FORCE RESOLUTION", "Fig 10.19.png", "Figure 10.19: Normal and shear force components for transverse load")

// ==============================================================================
// SECTION 8: AXIALLY LOADED UNSYMMETRICAL SECTION ANGLE WELDING
// ==============================================================================

#pagebreak()
#section-heading("8", "AXIALLY LOADED UNSYMMETRICAL SECTION ANGLE WELDING")

#section-overview(
  [*System Parameters:* Angle $200 times 150 times 10 "mm"$ ($a + b = 200 "mm"$), Static Load $P = 200 "kN" = 200 times 10^3 "N"$, Allowable Shear Stress $tau = 75 "MPa"$, Weld Size $s = 10 "mm"$.],
  [*Design Protocol:* Determine top ($l_a$) and bottom ($l_b$) weld lengths by balancing load about centroidal axis.]
)

#item-row(
  [*1. Total Required Weld Length ($l$)* \ Load capacity for single parallel fillet welds],
  [
    #text(size: 20pt)[$P = 0.707 dot s dot l dot tau$]
    $
      200 times 10^3 &= 0.707 times 10 times l times 75 \
      l &= (200 times 10^3) / 530.25 \
      &= 377 "mm"
    $
  ]
)

#item-row(
  [*2. Position of Centroidal Axis ($a, b$)* \ Distance of gravity axis from bottom edge],
  [
    #text(size: 20pt)[$b = ((200 - 10) times 10 times 95 + 150 times 10 times 5) / (190 times 10 + 150 times 10)$]
    $
      &= 188000 / 3400 \
      &= 55.3 "mm" \
      a &= 200 - 55.3 = 144.7 "mm"
    $
  ]
)

#item-row(
  [*3. Top and Bottom Weld Lengths ($l_a, l_b$)* \ Moment equilibrium about centroidal line],
  [
    #text(size: 20pt)[$l_a = l dot (b / (a + b))$]
    $
      &= 377 times (55.3 / 200) \
      &= bold(104.2 "mm") \
      l_b &= 377 - 104.2 \
      &= bold(272.8 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output Summary* \ Unsymmetrical Angle Weld Lengths],
  [*Top Weld Length la = 104.2 mm, Bottom Weld Length lb = 272.8 mm*]
)

#figure-page("8", "UNSYMMETRICAL ANGLE SECTION WELDING", "Fig 10.21.png", "Figure 10.21: Unsymmetrical angle section welded to plate with top and bottom welds")

// ==============================================================================
// SECTION 9: ECCENTRICALLY LOADED OUT-OF-PLANE WELDED JOINT
// ==============================================================================

#pagebreak()
#section-heading("9", "ECCENTRICALLY LOADED OUT-OF-PLANE WELDED JOINT")

#section-overview(
  [*System Parameters:* Load $P = 2 "kN" = 2000 "N"$, Eccentricity $e = 120 "mm"$, Weld Length $l = 40 "mm"$, Allowable Max Shear Stress $tau_("max") = 25 "MPa"$.],
  [*Design Protocol:* Determine weld size $s$ under combined direct shear and bending.]
)

#item-row(
  [*1. Direct Shear Stress ($tau$)* \ Throat area of double fillet weld],
  [
    #text(size: 20pt)[$tau = P / A = (2000) / (1.414 s dot l)$]
    $
      &= 2000 / (1.414 s times 40) \
      &= 35.4 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*2. Bending Stress ($sigma_b$)* \ Bending moment and throat section modulus],
  [
    #text(size: 20pt)[$sigma_b = M / Z = (P dot e) / ((s dot l^2) / 4.242)$]
    $
      &= (2000 times 120) / ((s times (40)^2) / 4.242) \
      &= 636.6 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*3. Maximum Shear Stress & Weld Size ($s$)* \ Maximum shear stress theory],
  [
    #text(size: 20pt)[$tau_("max") = 1/2 sqrt(sigma_b^2 + 4 tau^2)$]
    $
      25 &= 1/2 sqrt((636.6 / s)^2 + 4 (35.4 / s)^2) \
      25 &= 320.3 / s \
      s &= 320.3 / 25 \
      &= bold(12.8 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output Summary* \ Out-of-Plane Joint Weld Size],
  [*Required Weld Size s = 12.8 mm*]
)

#figure-page("9", "ECCENTRICALLY LOADED OUT-OF-PLANE WELDED JOINT", "Fig 10.24.png", "Figure 10.24: Joint subjected to out-of-plane eccentric load")

// ==============================================================================
// SECTION 10: CIRCULAR FILLET WELD UNDER ECCENTRIC BENDING LOAD
// ==============================================================================

#pagebreak()
#section-heading("10", "CIRCULAR FILLET WELD UNDER ECCENTRIC BENDING LOAD")

#section-overview(
  [*System Parameters:* Shaft Diameter $D = 50 "mm"$, Weld Size $s = 15 "mm"$, Load $P = 10 "kN" = 10000 "N"$, Eccentricity $e = 200 "mm"$.],
  [*Design Protocol:* Determine maximum normal and shear stresses in circular fillet weld.]
)

#item-row(
  [*1. Direct Shear Stress ($tau$)* \ Throat area for circular weld],
  [
    #text(size: 20pt)[$tau = P / (0.707 s dot pi D)$]
    $
      &= 10000 / (0.707 times 15 times pi times 50) \
      &= 6 "N/mm"^2 = 6 "MPa"
    $
  ]
)

#item-row(
  [*2. Bending Stress ($sigma_b$)* \ Bending moment and circular section modulus],
  [
    #text(size: 20pt)[$sigma_b = M / Z = (P dot e) / (pi/4 (0.707 s) D^2)$]
    $
      &= (10000 times 200) / (pi/4 (0.707 times 15) (50)^2) \
      &= (2 times 10^6) / 20825 \
      &= 96 "N/mm"^2 = 96 "MPa"
    $
  ]
)

#item-row(
  [*3. Maximum Normal Stress ($sigma_("t(max)")$)* \ Principal stress theory],
  [
    #text(size: 20pt)[$sigma_("t(max)") = 1/2 sigma_b + 1/2 sqrt(sigma_b^2 + 4 tau^2)$]
    $
      &= 48 + 1/2 sqrt((96)^2 + 4 (6)^2) \
      &= 48 + 48.4 \
      &= bold(96.4 "MPa")
    $
  ]
)

#item-row(
  [*4. Maximum Shear Stress ($tau_("max")$)* \ Maximum shear stress theory],
  [
    #text(size: 20pt)[$tau_("max") = 1/2 sqrt(sigma_b^2 + 4 tau^2)$]
    $
      &= 1/2 sqrt((96)^2 + 4 (6)^2) \
      &= bold(48.4 "MPa")
    $
  ]
)

#item-row(
  [*5. Design Output Summary* \ Circular Weld Stresses],
  [*Max Normal Stress = 96.4 MPa, Max Shear Stress = 48.4 MPa*]
)

#figure-page("10", "CIRCULAR SHAFT WELDED TO PLATE UNDER BENDING", "Fig 10.25.png", "Figure 10.25: Solid shaft welded to plate subjected to eccentric bending load")

// ==============================================================================
// SECTION 11: RECTANGULAR CROSS-SECTION BAR WELDED TO SUPPORT
// ==============================================================================

#pagebreak()
#section-heading("11", "RECTANGULAR CROSS-SECTION BAR WELDED TO SUPPORT")

#section-overview(
  [*System Parameters:* Load $P = 25 "kN" = 25 times 10^3 "N"$, Eccentricity $e = 500 "mm"$, $l = 100 "mm"$, $b = 150 "mm"$, Permissible Shear Stress $tau_("max") = 75 "MPa"$.],
  [*Design Protocol:* Calculate weld size $s$ for rectangular bar welded on 4 sides.]
)

#item-row(
  [*1. Direct Shear Stress ($tau$)* \ Throat area around all 4 sides],
  [
    #text(size: 20pt)[$tau = P / (0.707 s (2b + 2l))$]
    $
      &= (25 times 10^3) / (0.707 s (2 times 150 + 2 times 100)) \
      &= 70.72 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*2. Bending Stress ($sigma_b$)* \ Bending moment and throat section modulus],
  [
    #text(size: 20pt)[$sigma_b = M / Z = (P dot e) / (0.707 s (b^2 / 3 + b dot l))$]
    $
      &= (25 times 10^3 times 500) / (0.707 s ((150)^2 / 3 + 150 times 100)) \
      &= (12.5 times 10^6) / (15907.5 s) \
      &= 785.8 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*3. Maximum Shear Stress & Weld Size ($s$)* \ Maximum shear stress theory],
  [
    #text(size: 20pt)[$tau_("max") = 1/2 sqrt(sigma_b^2 + 4 tau^2)$]
    $
      75 &= 1/2 sqrt((785.8 / s)^2 + 4 (70.72 / s)^2) \
      75 &= 399.2 / s \
      s &= 399.2 / 75 \
      &= bold(5.32 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output Summary* \ Rectangular Bar Weld Size],
  [*Required Weld Size s = 5.32 mm*]
)

#figure-page("11", "RECTANGULAR BAR WELDED TO SUPPORT", "Fig 10.26.png", "Figure 10.26: Rectangular cross-section bar welded on 4 sides subjected to eccentric load")

// ==============================================================================
// SECTION 12: ARM WELDED TO HOLLOW SHAFT UNDER BENDING AND TORSION
// ==============================================================================

#pagebreak()
#section-heading("12", "ARM WELDED TO HOLLOW SHAFT UNDER BENDING AND TORSION")

#section-overview(
  [*System Parameters:* Force $P = 15 "kN" = 15 times 10^3 "N"$, Shaft Diameter $d = 80 "mm"$, Torque Arm $240 "mm"$, Bending Arm $175 "mm"$, Permissible Shear Stress $tau_("max") = 120 "MPa"$.],
  [*Design Protocol:* Determine weld size $s$ for combined torsion and bending.]
)

#item-row(
  [*1. Torsional Shear Stress ($tau$)* \ Torque acting on shaft and torsional shear],
  [
    #text(size: 20pt)[$tau = (2.83 T) / (pi dot s dot d^2)$]
    $
      T &= 15 times 10^3 times 240 = 3600 times 10^3 "N"dot"mm" \
      tau &= (2.83 times 3600 times 10^3) / (pi dot s times (80)^2) \
      &= 506.6 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*2. Bending Stress ($sigma_b$)* \ Bending moment and bending stress],
  [
    #text(size: 20pt)[$sigma_b = (5.66 M) / (pi dot s dot d^2)$]
    $
      M &= 15 times 10^3 times (200 - 25) = 2625 times 10^3 "N"dot"mm" \
      sigma_b &= (5.66 times 2625 times 10^3) / (pi dot s times (80)^2) \
      &= 738.8 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*3. Maximum Shear Stress & Weld Size ($s$)* \ Maximum shear stress theory],
  [
    #text(size: 20pt)[$tau_("max") = 1/2 sqrt(sigma_b^2 + 4 tau^2)$]
    $
      120 &= 1/2 sqrt((738.8 / s)^2 + 4 (506.6 / s)^2) \
      120 &= 627 / s \
      s &= 627 / 120 \
      &= bold(5.2 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output Summary* \ Arm to Shaft Weld Size],
  [*Required Weld Size s = 5.2 mm*]
)

#figure-page("12", "ARM WELDED TO HOLLOW SHAFT", "Fig 10.27.png", "Figure 10.27: Arm welded to hollow shaft subjected to combined bending and torsion")

// ==============================================================================
// SECTION 13: ECCENTRICALLY LOADED IN-PLANE BRACKET WELD
// ==============================================================================

#pagebreak()
#section-heading("13", "ECCENTRICALLY LOADED IN-PLANE BRACKET WELD")

#section-overview(
  [*System Parameters:* Load $P = 15 "kN" = 15 times 10^3 "N"$, $tau = 80 "MPa"$, $b = 80 "mm"$, $l = 50 "mm"$, Eccentricity $e = 125 "mm"$.],
  [*Design Protocol:* Determine weld size $s$ under primary direct shear and secondary torsional shear.]
)

#item-row(
  [*1. Primary Direct Shear Stress ($tau_1$)* \ Throat area and direct shear],
  [
    #text(size: 20pt)[$tau_1 = P / (2 dot 0.707 s dot l)$]
    $
      &= (15 times 10^3) / (1.414 s times 50) \
      &= 212 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*2. Secondary Shear Stress ($tau_2$)* \ Polar moment of inertia and maximum radius],
  [
    #text(size: 20pt)[$J = (0.707 s dot l (3 b^2 + l^2)) / 6$]
    $
      J &= (0.707 s times 50 [3 (80)^2 + (50)^2]) / 6 = 127850 s "mm"^4 \
      r_2 &= sqrt((40)^2 + (25)^2) = 47 "mm" \
      cos theta &= 25 / 47 = 0.532 \
      tau_2 &= (P dot e dot r_2) / J \
      &= (15 times 10^3 times 125 times 47) / (127850 s) = 689.3 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*3. Resultant Shear Stress & Weld Size ($s$)* \ Vector addition of primary and secondary shear],
  [
    #text(size: 20pt)[$tau = sqrt(tau_1^2 + tau_2^2 + 2 tau_1 tau_2 cos theta)$]
    $
      80 &= sqrt((212 / s)^2 + (689.3 / s)^2 + 2 (212 / s) (689.3 / s) (0.532)) \
      80 &= 822 / s \
      s &= 822 / 80 \
      &= bold(10.3 "mm")
    $
  ]
)

#item-row(
  [*4. Design Output Summary* \ In-Plane Bracket Weld Size],
  [*Required Weld Size s = 10.3 mm*]
)

#figure-page("13", "ECCENTRICALLY LOADED IN-PLANE BRACKET WELD", "Fig 10.28.&10.29.png", "Figure 10.28 & 10.29: Bracket carrying eccentric load and polar centroid vector diagram")

// ==============================================================================
// SECTION 14: CANTILEVER PLATE CHANNEL WELD UNDER ECCENTRIC LOADING
// ==============================================================================

#pagebreak()
#section-heading("14", "CANTILEVER PLATE CHANNEL WELD UNDER ECCENTRIC LOADING")

#section-overview(
  [*System Parameters:* Load $P = 60 "kN" = 60 times 10^3 "N"$, $b = 100 "mm"$, $l = 50 "mm"$, Allowable Shear Stress $tau = 140 "MPa"$.],
  [*Design Protocol:* Determine weld size $s$ for channel section weld group under eccentric load.]
)

#item-row(
  [*1. Centroid ($G$) & Polar Moment of Inertia ($J$)* \ Centroid distance $x$ and polar moment],
  [
    #text(size: 20pt)[$x = l^2 / (2l + b)$]
    $
      &= (50)^2 / (2 (50) + 100) = 12.5 "mm" \
      J &= 0.707 s [((100 + 100)^3) / 12 - ((50)^2 (150)^2) / 200] \
      &= 275 times 10^3 s "mm"^4
    $
  ]
)

#item-row(
  [*2. Eccentricity ($e$) & Critical Radius ($r_2$)* \ Distance to load and critical corner radius],
  [
    #text(size: 20pt)[$e = 150 + 50 - 12.5 = 187.5 "mm"$]
    $
      r_2 &= sqrt((50)^2 + (37.5)^2) = 62.5 "mm" \
      cos theta &= 37.5 / 62.5 = 0.6
    $
  ]
)

#item-row(
  [*3. Primary & Secondary Shear Stresses ($tau_1, tau_2$)* \ Direct and torsional shear components],
  [
    #text(size: 20pt)[$tau_1 = P / A, quad tau_2 = (P dot e dot r_2) / J$]
    $
      tau_1 &= (60 times 10^3) / (141.4 s) = 424 / s "N/mm"^2 \
      tau_2 &= (60 times 10^3 times 187.5 times 62.5) / (275 times 10^3 s) = 2557 / s "N/mm"^2
    $
  ]
)

#item-row(
  [*4. Resultant Shear Stress & Weld Size ($s$)* \ Vector combination of shear stresses],
  [
    #text(size: 20pt)[$tau = sqrt(tau_1^2 + tau_2^2 + 2 tau_1 tau_2 cos theta)$]
    $
      140 &= sqrt((424 / s)^2 + (2557 / s)^2 + 2 (424 / s) (2557 / s) (0.6)) \
      140 &= 2832 / s \
      s &= 2832 / 140 \
      &= bold(20.23 "mm")
    $
  ]
)

#item-row(
  [*5. Design Output Summary* \ Channel Cantilever Weld Size],
  [*Required Weld Size s = 20.23 mm*]
)

#figure-page("14", "CANTILEVER PLATE CHANNEL WELD", "Fig 10.30.&10.31.png", "Figure 10.30 & 10.31: Cantilever plate welded with channel weld pattern and centroid G")

// ==============================================================================
// SECTION 15: CHANNEL SECTION WELDED TO PLATE UNDER ECCENTRIC IN-PLANE LOADING
// ==============================================================================

#pagebreak()
#section-heading("15", "CHANNEL SECTION WELDED TO PLATE UNDER ECCENTRIC IN-PLANE LOADING")

#section-overview(
  [*System Parameters:* Weld Size $s = 6 "mm"$, Load $P = 20 "kN" = 20 times 10^3 "N"$, $l = 40 "mm"$, $b = 90 "mm"$, Distance to load $= 200 "mm"$.],
  [*Design Protocol:* Determine maximum shear stress $tau_("max")$ induced in $6 "mm"$ weld.]
)

#item-row(
  [*1. Centroid ($G$) & Polar Moment of Inertia ($J$)* \ Location of C.G. and polar moment of throat],
  [
    #text(size: 20pt)[$x = l^2 / (2l + b)$]
    $
      &= (40)^2 / (2 (40) + 90) = 9.4 "mm" \
      J &= 0.707 (6) [((90 + 80)^3) / 12 - ((40)^2 (130)^2) / 170] \
      &= 1062.2 times 10^3 "mm"^4
    $
  ]
)

#item-row(
  [*2. Eccentricity ($e$) & Critical Radius ($r_2$)* \ Load arm and radius to farthest weld point],
  [
    #text(size: 20pt)[$e = 200 - 9.4 = 190.6 "mm"$]
    $
      r_2 &= sqrt((45)^2 + (30.6)^2) = 54.4 "mm" \
      cos theta &= 30.6 / 54.4 = 0.5625
    $
  ]
)

#item-row(
  [*3. Primary & Secondary Shear Stresses ($tau_1, tau_2$)* \ Direct and torsional shear components],
  [
    #text(size: 20pt)[$tau_1 = P / A, quad tau_2 = (P dot e dot r_2) / J$]
    $
      tau_1 &= (20 times 10^3) / 721.14 = 27.7 "N/mm"^2 \
      tau_2 &= (20 times 10^3 times 190.6 times 54.4) / (1062.2 times 10^3) = 195.2 "N/mm"^2
    $
  ]
)

#item-row(
  [*4. Maximum Resultant Shear Stress ($tau_("max")$)* \ Resultant shear stress in 6 mm weld],
  [
    #text(size: 20pt)[$tau_("max") = sqrt(tau_1^2 + tau_2^2 + 2 tau_1 tau_2 cos theta)$]
    $
      &= sqrt((27.7)^2 + (195.2)^2 + 2 (27.7) (195.2) (0.5625)) \
      &= sqrt(44903.6) \
      &= bold(212 "MPa")
    $
  ]
)

#item-row(
  [*5. Design Output Summary* \ Channel Weld Maximum Stress],
  [*Maximum Shear Stress tau_max = 212 MPa*]
)

#figure-page("15", "CHANNEL SECTION WELDED TO PLATE", "Fig 10.32.png", "Figure 10.32: Channel section welded to plate and loaded at 200 mm distance")
#figure-page("15", "CHANNEL WELD GROUP CENTROID", "Fig 10.33.png", "Figure 10.33: Location of centroid G and critical radius r2")

// ==============================================================================
// SECTION 16: SHIELDED ARC WELDED BRACKET UNDER DEAD WEIGHT
// ==============================================================================

#pagebreak()
#section-heading("16", "SHIELDED ARC WELDED BRACKET UNDER DEAD WEIGHT")

#section-overview(
  [*System Parameters:* Dead Weight $P = 15 "kN" = 15 times 10^3 "N"$, Permissible Strength $tau = 150 "MPa"$, Weld Length $l = 25 "mm"$.],
  [*Design Protocol:* Calculate top ($s_1$) and bottom ($s_2$) fillet weld sizes.]
)

#item-row(
  [*1. Vertical Forces at A and B ($P_("VA"), P_("VB")$)* \ Equal vertical load sharing],
  [
    #text(size: 20pt)[$P_("VA") = P_("VB") = P / 2$]
    $
      &= 15 / 2 = 7.5 "kN" \
      &= 7500 "N"
    $
  ]
)

#item-row(
  [*2. Horizontal Force at Top A ($P_("HA")$)* \ Moment equilibrium about bottom point B],
  [
    #text(size: 20pt)[$P_("HA") times 75 = 15 times 50$]
    $
      P_("HA") &= 750 / 75 \
      &= 10 "kN" = 10000 "N"
    $
  ]
)

#item-row(
  [*3. Size of Top Fillet Weld ($s_1$)* \ Resultant force and top weld capacity],
  [
    #text(size: 20pt)[$P_A = sqrt((P_("VA"))^2 + (P_("HA"))^2)$]
    $
      P_A &= sqrt((7.5)^2 + (10)^2) = 12.5 "kN" = 12500 "N" \
      12500 &= 0.707 s_1 times 25 times 150 \
      12500 &= 2650 s_1 \
      s_1 &= 12500 / 2650 \
      &= bold(4.7 "mm")
    $
  ]
)

#item-row(
  [*4. Size of Bottom Fillet Weld ($s_2$)* \ Bottom weld designed for vertical force only],
  [
    #text(size: 20pt)[$P_("VB") = 0.707 s_2 dot l dot tau$]
    $
      7500 &= 0.707 s_2 times 25 times 150 \
      7500 &= 2650 s_2 \
      s_2 &= 7500 / 2650 \
      &= bold(2.83 "mm")
    $
  ]
)

#item-row(
  [*5. Design Output Summary* \ Shielded Arc Bracket Weld Sizes],
  [*Top Weld Size s1 = 4.7 mm, Bottom Weld Size s2 = 2.83 mm*]
)

#figure-page("16", "SHIELDED ARC WELDED BRACKET", "Fig 10.34.png", "Figure 10.34: Bracket supporting 15 kN dead weight with top and bottom fillet welds")
