// DESIGN DATA BOOK — SHAFTS
// Standardized Typst Mechanical Engineering Databook

#let databook-title = "DESIGN DATA BOOK — SHAFTS"

#set page(
  paper: "a4",
  flipped: true,
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

#set text(font: ("Times New Roman", "Georgia"), size: 10pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.85em)
#show math.equation: set block(spacing: 16pt)
#show math.equation.where(block: true): it => align(left, it)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))

#let section-heading(sec-num, title) = {
  if sec-num != "1" { pagebreak() }
  v(4pt)
  text(weight: "bold", size: 13.5pt)[SECTION #sec-num: #title]
  v(2.5pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(5pt)
}

#let section-overview(sys-params, design-proto) = {
  v(3pt)
  sys-params
  v(3pt)
  design-proto
  v(4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(5pt)
}

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

// ==========================================
// SECTION 1: EXAMPLE 14.1 — LINE SHAFT (TORSION ONLY)
// ==========================================

#section-heading("1", "LINE SHAFT DIAMETER — TORSION ONLY")

#section-overview(
  [*System Parameters:* Speed $N = 200 "r.p.m."$, Power $P = 20 "kW" = 20 times 10^3 "W"$, Allowable Shear Stress $tau = 42 "MPa" = 42 "N/mm"^2$.],
  [*Design Protocol:* Compute transmitted torque $T$ from power-speed relation, apply torsion formula $T = pi/16 d^3 tau$ to size solid shaft diameter $d$.]
)

#item-row(
  [*1. Transmitted Torque ($T$)* \ Power-to-torque conversion at given speed],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N)$] \
    &= frac(20 times 10^3 times 60, 2 pi times 200) \
    &= 955 "N·m" = bold(955 times 10^3 "N·mm")
  $]
)

#item-row(
  [*2. Shaft Diameter ($d$)* \ Torsion strength formula for solid circular shaft],
  [$
    #text(size: 13.5pt)[$955 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times d^3 times tau = pi/16 times d^3 times 42 = 8.25 d^3$] \
    d^3 &= frac(955 times 10^3, 8.25) = 115733 \
    d &= 48.7 "mm" \
    &=> bold("Adopt " d = 50 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Line Shaft: P = 20 kW, N = 200 rpm, tau = 42 MPa | T = 955 kN-mm | d = 50 mm*]
)

// ==========================================
// SECTION 2: EXAMPLE 14.2 — SOLID SHAFT WITH PEAK TORQUE
// ==========================================

#section-heading("2", "SOLID SHAFT — PEAK TORQUE FACTOR")

#section-overview(
  [*System Parameters:* Power $P = 1 "MW" = 1 times 10^6 "W"$, Speed $N = 240 "r.p.m."$, Peak Torque $T_("max") = 1.2 T_("mean")$, Allowable Shear Stress $tau = 60 "MPa" = 60 "N/mm"^2$.],
  [*Design Protocol:* Compute mean torque from power equation, apply peak factor $1.2$ to find maximum torque, size diameter using torsion formula.]
)

#item-row(
  [*1. Mean Torque ($T_("mean")$)* \ Power-to-torque conversion at rated speed],
  [$
    #text(size: 13.5pt)[$T_("mean")$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N)$] \
    &= frac(1 times 10^6 times 60, 2 pi times 240) \
    &= bold(39784 times 10^3 "N·mm")
  $]
)

#item-row(
  [*2. Maximum Torque ($T_("max")$)* \ Peak torque with 20% overload factor],
  [$
    #text(size: 13.5pt)[$T_("max")$] &= #text(size: 13.5pt)[$1.2 T_("mean")$] \
    &= 1.2 times 39784 times 10^3 \
    &= bold(47741 times 10^3 "N·mm")
  $]
)

#item-row(
  [*3. Shaft Diameter ($d$)* \ Torsion formula using maximum torque],
  [$
    #text(size: 13.5pt)[$47741 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times d^3 times 60 = 11.78 d^3$] \
    d^3 &= frac(47741 times 10^3, 11.78) = 4053 times 10^3 \
    d &= 159.4 "mm" \
    &=> bold("Adopt " d = 160 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Solid Shaft: P = 1 MW, N = 240 rpm, Tmax = 1.2 Tmean | Tmax = 47741 kN-mm | d = 160 mm*]
)

// ==========================================
// SECTION 3: EXAMPLE 14.3 — SOLID & HOLLOW SHAFT WITH F.S.
// ==========================================

#section-heading("3", "SOLID AND HOLLOW SHAFT WITH FACTOR OF SAFETY")

#section-overview(
  [*System Parameters:* Power $P = 20 "kW" = 20 times 10^3 "W"$, Speed $N = 200 "r.p.m."$, Ultimate Shear Stress $tau_u = 360 "MPa"$, Factor of Safety $"F.S." = 8$, Hollow Ratio $k = d_i / d_o = 0.5$.],
  [*Design Protocol:* Compute allowable shear stress from F.S., find torque, size solid shaft diameter $d$, then size hollow shaft using $(1 - k^4)$ reduction factor.]
)

#item-row(
  [*1. Allowable Shear Stress ($tau$)* \ Dividing ultimate shear stress by factor of safety],
  [$
    #text(size: 13.5pt)[$tau$] &= #text(size: 13.5pt)[$frac(tau_u, "F.S.") = frac(360, 8) = bold(45 "N/mm"^2)$]
  $]
)

#item-row(
  [*2. Transmitted Torque ($T$)* \ Power-speed torque relation],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N) = frac(20 times 10^3 times 60, 2 pi times 200) = bold(955 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*3. Solid Shaft Diameter ($d$)* \ Torsion formula for solid circular cross-section],
  [$
    #text(size: 13.5pt)[$955 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times d^3 times 45 = 8.84 d^3$] \
    d^3 &= frac(955 times 10^3, 8.84) = 108032 \
    d &= 47.6 "mm" \
    &=> bold("Adopt " d = 50 "mm")
  $]
)

#item-row(
  [*4. Hollow Shaft Outside Diameter ($d_o$)* \ Torsion formula with hollow factor $(1 - k^4)$],
  [$
    #text(size: 13.5pt)[$955 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times 45 times (d_o)^3 [1 - (0.5)^4] = 8.3 (d_o)^3$] \
    (d_o)^3 &= frac(955 times 10^3, 8.3) = 115060 \
    d_o &= 48.6 "mm" \
    &=> bold("Adopt " d_o = 50 "mm")
  $]
)

#item-row(
  [*5. Hollow Shaft Inside Diameter ($d_i$)* \ Applying diameter ratio $k = 0.5$],
  [$
    #text(size: 13.5pt)[$d_i$] &= #text(size: 13.5pt)[$k dot d_o = 0.5 times 50 = bold(25 "mm")$]
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Solid d = 50 mm | Hollow do = 50 mm, di = 25 mm | tau_allow = 45 MPa | T = 955 kN-mm*]
)

// ==========================================
// SECTION 4: EXAMPLE 14.4 — RAILWAY AXLE UNDER BENDING
// ==========================================

#section-heading("4", "RAILWAY AXLE UNDER PURE BENDING")

#section-overview(
  [*System Parameters:* Axle Load $W = 50 "kN" = 50 times 10^3 "N"$ (per axle box), Overhang $L = 100 "mm"$, Rail Gauge $x = 1.4 "m"$, Allowable Bending Stress $sigma_b = 100 "MPa" = 100 "N/mm"^2$.],
  [*Design Protocol:* Compute maximum bending moment at the wheels as $M = W dot L$, apply bending formula $M = pi/32 d^3 sigma_b$ to find axle diameter.]
)

#item-row(
  [*1. Maximum Bending Moment ($M$)* \ Bending moment at wheel location due to overhang load],
  [$
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$W dot L = 50 times 10^3 times 100 = bold(5 times 10^6 "N·mm")$]
  $]
)

#item-row(
  [*2. Axle Diameter ($d$)* \ Bending strength formula for solid circular section],
  [$
    #text(size: 13.5pt)[$5 times 10^6$] &= #text(size: 13.5pt)[$pi/32 times d^3 times sigma_b = pi/32 times d^3 times 100 = 9.82 d^3$] \
    d^3 &= frac(5 times 10^6, 9.82) = 0.51 times 10^6 \
    d &= 79.8 "mm" \
    &=> bold("Adopt " d = 80 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Railway Axle: W = 50 kN, L = 100 mm overhang | M = 5 MN-mm | sigma_b = 100 MPa | d = 80 mm*]
)

// ==========================================
// SECTION 5: EXAMPLE 14.5 — SHAFT UNDER COMBINED BENDING & TORSION
// ==========================================

#section-heading("5", "SHAFT UNDER COMBINED BENDING AND TORSION")

#section-overview(
  [*System Parameters:* Bending Moment $M = 3000 "N·m" = 3 times 10^6 "N·mm"$, Torque $T = 10000 "N·m" = 10 times 10^6 "N·mm"$, Ultimate Tensile Stress $sigma_("t u") = 700 "MPa"$, Ultimate Shear Stress $tau_u = 500 "MPa"$, Factor of Safety $"F.S." = 6$.],
  [*Design Protocol:* Compute allowable stresses; apply (1) max shear stress theory via equivalent twisting moment $T_e = sqrt(M^2 + T^2)$; apply (2) max normal stress theory via equivalent bending moment $M_e = (M + T_e)/2$; take larger resulting diameter.]
)

#item-row(
  [*1. Allowable Stresses ($sigma_b, tau$)* \ Material strengths reduced by factor of safety],
  [$
    #text(size: 13.5pt)[$sigma_b$] &= #text(size: 13.5pt)[$frac(sigma_("t u"), "F.S.") = frac(700, 6) = 116.7 "N/mm"^2$] \
    #text(size: 13.5pt)[$tau$] &= #text(size: 13.5pt)[$frac(tau_u, "F.S.") = frac(500, 6) = 83.3 "N/mm"^2$]
  $]
)

#item-row(
  [*2. Equivalent Twisting Moment ($T_e$)* \ Max shear stress theory: resultant of bending and torsion],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt(M^2 + T^2) = sqrt((3 times 10^6)^2 + (10 times 10^6)^2) = bold(10.44 times 10^6 "N·mm")$]
  $]
)

#item-row(
  [*3. Diameter by Max Shear Stress Theory ($d_1$)* \ Torsion formula applied to $T_e$],
  [$
    #text(size: 13.5pt)[$10.44 times 10^6$] &= #text(size: 13.5pt)[$pi/16 times d^3 times 83.3 = 16.36 d^3$] \
    d^3 &= frac(10.44 times 10^6, 16.36) = 0.636 times 10^6 \
    d &= bold(86 "mm")
  $]
)

#item-row(
  [*4. Equivalent Bending Moment ($M_e$)* \ Max normal stress theory: combined resultant],
  [$
    #text(size: 13.5pt)[$M_e$] &= #text(size: 13.5pt)[$1/2 [M + T_e] = 1/2 (3 times 10^6 + 10.44 times 10^6) = bold(6.72 times 10^6 "N·mm")$]
  $]
)

#item-row(
  [*5. Diameter by Max Normal Stress Theory ($d_2$)* \ Bending formula applied to $M_e$],
  [$
    #text(size: 13.5pt)[$6.72 times 10^6$] &= #text(size: 13.5pt)[$pi/32 times d^3 times 116.7 = 11.46 d^3$] \
    d^3 &= frac(6.72 times 10^6, 11.46) = 0.586 times 10^6 \
    d &= bold(83.7 "mm")
  $]
)

#item-row(
  [*6. Governing Diameter* \ Larger value from two failure theories governs],
  [$
    #text(size: 13.5pt)[$d$] &= #text(size: 13.5pt)[$max(86, 83.7) = 86 "mm"$] \
    &=> bold("Adopt " d = 90 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*M = 3 MN-mm, T = 10 MN-mm | Te = 10.44 MN-mm => d1 = 86 mm | Me = 6.72 MN-mm => d2 = 83.7 mm | Governing d = 90 mm*]
)

// ==========================================
// SECTION 6: EXAMPLE 14.6 — SPUR GEAR SHAFT (BELT + GEAR LOADS)
// ==========================================

#section-heading("6", "SPUR GEAR SHAFT — COMBINED BENDING AND TORSION")

#section-overview(
  [*System Parameters:* Power $P = 7.5 "kW" = 7500 "W"$, Speed $N = 300 "r.p.m."$, Gear PCD $D = 150 "mm"$, Bearing Span $L = 200 "mm"$, Allowable Shear Stress $tau = 45 "MPa"$, Pressure Angle $alpha = 20^degree$.],
  [*Design Protocol:* Find torque $T$; compute tangential gear force $F_t = 2T/D$, normal load $W = F_t / cos alpha$; find max bending moment $M = W L / 4$ at mid-span; compute equivalent twisting moment $T_e$ and size shaft diameter.]
)

#item-row(
  [*1. Transmitted Torque ($T$)* \ Power-to-torque relation at rated speed],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N) = frac(7500 times 60, 2 pi times 300) = bold(238.7 "N·m")$]
  $]
)

#item-row(
  [*2. Tangential Gear Force ($F_t$) & Normal Load ($W$)* \ Force components on gear tooth at pressure angle $20^degree$],
  [$
    #text(size: 13.5pt)[$F_t$] &= #text(size: 13.5pt)[$frac(2T, D) = frac(2 times 238.7, 0.15) = bold(3182.7 "N")$] \
    #text(size: 13.5pt)[$W$] &= #text(size: 13.5pt)[$frac(F_t, cos 20^degree) = frac(3182.7, 0.9397) = bold(3387 "N")$]
  $]
)

#item-row(
  [*3. Maximum Bending Moment ($M$)* \ Mid-span bending moment for centrally-mounted gear],
  [$
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$frac(W dot L, 4) = frac(3387 times 0.2, 4) = bold(169.4 "N·m")$]
  $]
)

#item-row(
  [*4. Equivalent Twisting Moment ($T_e$)* \ Combined bending and torsion resultant],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt(M^2 + T^2) = sqrt((169.4)^2 + (238.7)^2) = 292.7 "N·m" = bold(292.7 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*5. Shaft Diameter ($d$)* \ Torsion formula with equivalent twisting moment],
  [$
    #text(size: 13.5pt)[$292.7 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times d^3 times 45 = 8.84 d^3$] \
    d^3 &= frac(292.7 times 10^3, 8.84) = 33 times 10^3 \
    d &= 32 "mm" \
    &=> bold("Adopt " d = 35 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Spur Gear Shaft: P = 7.5 kW, N = 300 rpm | T = 238.7 N-m | Ft = 3182.7 N | M = 169.4 N-m | Te = 292.7 kN-mm | d = 35 mm*]
)

// ==========================================
// SECTION 7: EXAMPLE 14.7 — LINE SHAFT WITH TWO PULLEYS
// ==========================================

#section-heading("7", "LINE SHAFT WITH TWO SYMMETRICAL PULLEYS")

#section-overview(
  [*System Parameters:* Power $P = 100 "kW" = 100 times 10^3 "W"$, Speed $N = 300 "r.p.m."$, Shaft Span $L = 3 "m"$, Pulley Weight $W = 1500 "N"$ each, Pulley Positions $1 "m"$ from each end, Allowable Shear Stress $tau = 60 "N/mm"^2$ (assumed).],
  [*Design Protocol:* Compute torque $T$; treat shaft as simply supported beam to find $R_A = R_B = 1500 "N"$; find max bending moment at pulley; compute $T_e = sqrt(M^2 + T^2)$; size shaft diameter.]
)

#item-row(
  [*1. Transmitted Torque ($T$)* \ Power-speed torque conversion],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N) = frac(100 times 10^3 times 60, 2 pi times 300) = bold(3183 "N·m")$]
  $]
)

#item-row(
  [*2. Maximum Bending Moment ($M$)* \ Simply supported beam with symmetric pulley loads],
  [$
    #text(size: 13.5pt)[$R_A = R_B$] &= #text(size: 13.5pt)[$1500 "N"$] \
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$1500 times 1 = bold(1500 "N·m")$ (at each pulley)]
  $]
)

#item-row(
  [*3. Equivalent Twisting Moment ($T_e$)* \ Combined bending and torsion],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt(M^2 + T^2) = sqrt((1500)^2 + (3183)^2) = 3519 "N·m" = bold(3519 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*4. Shaft Diameter ($d$)* \ Torsion formula with equivalent twisting moment],
  [$
    #text(size: 13.5pt)[$3519 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times d^3 times 60 = 11.8 d^3$] \
    d^3 &= frac(3519 times 10^3, 11.8) = 298 times 10^3 \
    d &= 66.8 "mm" \
    &=> bold("Adopt " d = 70 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*P = 100 kW, N = 300 rpm | T = 3183 N-m | M = 1500 N-m at pulleys | Te = 3519 kN-mm | d = 70 mm*]
)

// ==========================================
// SECTION 8: EXAMPLE 14.8 — OVERHUNG PULLEY SHAFT
// ==========================================

#section-heading("8", "OVERHUNG PULLEY SHAFT — BELT DRIVE")

#section-overview(
  [*System Parameters:* Pulley Diameter $D = 1.5 "m"$ ($R = 0.75 "m"$), Belt Tensions $T_1 = 5400 "N"$ (tight), $T_2 = 1800 "N"$ (slack), Overhang $L = 400 "mm"$, Allowable Shear Stress $tau = 42 "MPa"$.],
  [*Design Protocol:* Compute torque from belt tension difference; find total vertical load $W = T_1 + T_2$; compute overhang bending moment $M = W L$; find $T_e = sqrt(M^2 + T^2)$; size shaft diameter.]
)

#item-row(
  [*1. Transmitted Torque ($T$)* \ Net belt tension times pulley radius],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$(T_1 - T_2) R = (5400 - 1800) times 0.75 = bold(2700 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*2. Total Belt Load & Bending Moment ($W, M$)* \ Sum of belt tensions creates vertical load; overhang bending],
  [$
    #text(size: 13.5pt)[$W$] &= #text(size: 13.5pt)[$T_1 + T_2 = 5400 + 1800 = bold(7200 "N")$] \
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$W times L = 7200 times 400 = bold(2880 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*3. Equivalent Twisting Moment ($T_e$)* \ Combined bending and torsion],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt(M^2 + T^2) = sqrt((2880 times 10^3)^2 + (2700 times 10^3)^2) = bold(3950 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*4. Shaft Diameter ($d$)* \ Torsion formula for solid shaft],
  [$
    #text(size: 13.5pt)[$3950 times 10^3$] &= #text(size: 13.5pt)[$pi/16 times d^3 times 42 = 8.25 d^3$] \
    d^3 &= frac(3950 times 10^3, 8.25) = 479 times 10^3 \
    d &= 78 "mm" \
    &=> bold("Adopt " d = 80 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Belt Drive Shaft: T1 = 5400 N, T2 = 1800 N, R = 0.75 m, L = 400 mm | T = 2700 kN-mm | M = 2880 kN-mm | Te = 3950 kN-mm | d = 80 mm*]
)

// ==========================================
// SECTION 9: EXAMPLE 14.9 — TWO-PULLEY SHAFT (BIAXIAL LOADING)
// ==========================================

#section-heading("9", "TWO-PULLEY SHAFT — BIAXIAL BENDING AND TORSION")

#section-overview(
  [*System Parameters:* Bearing Span $"AB" = 1 "m"$, Pulley $C$: $D_C = 600 "mm"$, $"AC" = 300 "mm"$, $T_1 = 2250 "N"$, Pulley $D$: $D_D = 400 "mm"$, $"BD" = 200 "mm"$, horizontal belt; $theta = 180^degree$, $mu = 0.24$, $sigma_b = 63 "MPa"$, $tau = 42 "MPa"$.],
  [*Design Protocol:* Find $T_2$ from belt friction equation; compute vertical load at $C$ and horizontal load at $D$; solve vertical and horizontal bending moments at $C$ and $D$; find resultant $M_C$ and $M_D$; apply both failure theories; size shaft.]
)

#item-row(
  [*1. Belt Tensions on Pulley C ($T_1, T_2$)* \ Belt friction formula with $mu = 0.24$, wrap $= 180^degree$],
  [$
    #text(size: 13.5pt)[$log(T_1/T_2)$] &= #text(size: 13.5pt)[$frac(mu theta, 2.3) = frac(0.24 pi, 2.3) = 0.3278 => T_1/T_2 = 2.127$] \
    T_2 &= frac(2250, 2.127) = 1058 "N" \
    W_C &= T_1 + T_2 = 2250 + 1058 = bold(3308 "N (vertical)")
  $]
)

#item-row(
  [*2. Torque & Belt Tensions on Pulley D ($T_3, T_4$)* \ Equal torque on both pulleys; solve simultaneous equations],
  [$
    #text(size: 13.5pt)[$T_("pulley C")$] &= #text(size: 13.5pt)[$(T_1 - T_2) R_C = (2250 - 1058) times 0.3 = 357.6 "N·m"$] \
    T_3 - T_4 &= frac(357.6, R_D) = frac(357.6, 0.2) = 1788 "N" \
    T_3 / T_4 &= 2.127 => T_3 = 3376 "N", T_4 = 1588 "N" \
    W_D &= T_3 + T_4 = bold(4964 "N (horizontal)")
  $]
)

#item-row(
  [*3. Vertical Bending Moments ($M_(C V), M_(D V)$)* \ Reactions and moments in vertical plane],
  [$
    #text(size: 13.5pt)[$R_(B V) times 1$] &= #text(size: 13.5pt)[$3308 times 0.3 => R_(B V) = 992.4 "N", quad R_(A V) = 2315.6 "N"$] \
    M_(C V) &= 2315.6 times 0.3 = bold(694.7 "N·m") \
    M_(D V) &= 992.4 times 0.2 = bold(198.5 "N·m")
  $]
)

#item-row(
  [*4. Horizontal Bending Moments ($M_(C H), M_(D H)$)* \ Reactions and moments in horizontal plane],
  [$
    #text(size: 13.5pt)[$R_(B H) times 1$] &= #text(size: 13.5pt)[$4964 times 0.8 => R_(B H) = 3971 "N", quad R_(A H) = 993 "N"$] \
    M_(C H) &= 993 times 0.3 = bold(297.9 "N·m") \
    M_(D H) &= 3971 times 0.2 = bold(794.2 "N·m")
  $]
)

#item-row(
  [*5. Resultant Bending Moments ($M_C, M_D$)* \ Vector sum of vertical and horizontal components],
  [$
    #text(size: 13.5pt)[$M_C$] &= #text(size: 13.5pt)[$sqrt((694.7)^2 + (297.9)^2) = bold(756 "N·m")$] \
    #text(size: 13.5pt)[$M_D$] &= #text(size: 13.5pt)[$sqrt((198.5)^2 + (794.2)^2) = bold(819.2 "N·m") quad arrow.r "Governing"$]
  $]
)

#item-row(
  [*6. Shaft Diameter — Max Shear Stress Theory ($d_1$)* \ Equivalent twisting moment approach],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((819.2)^2 + (357.6)^2) = 894 "N·m" = 894 times 10^3 "N·mm"$] \
    894 times 10^3 &= pi/16 times d^3 times 42 = 8.25 d^3 \
    d^3 &= frac(894 times 10^3, 8.25) = 108 times 10^3 \
    d &= bold(47.6 "mm")
  $]
)

#item-row(
  [*7. Shaft Diameter — Max Normal Stress Theory ($d_2$)* \ Equivalent bending moment approach],
  [$
    #text(size: 13.5pt)[$M_e$] &= #text(size: 13.5pt)[$1/2 [819.2 + 894] = 856.6 "N·m" = 856.6 times 10^3 "N·mm"$] \
    856.6 times 10^3 &= pi/32 times d^3 times 63 = 6.2 d^3 \
    d^3 &= frac(856.6 times 10^3, 6.2) = 138.2 times 10^3 \
    d &= bold(51.7 "mm") \
    &=> bold("Adopt " d = 55 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Two-Pulley Shaft: M = 819.2 N-m at D, T = 357.6 N-m | d1 (shear) = 47.6 mm, d2 (bending) = 51.7 mm | Governing d = 55 mm*]
)

// ==========================================
// SECTION 10: EXAMPLE 14.10 — SPUR GEAR + FLYWHEEL PULLEY SHAFT
// ==========================================

#section-heading("10", "SPUR GEAR AND FLYWHEEL PULLEY SHAFT")

#section-overview(
  [*System Parameters:* Bearing Span $"AB" = 800 "mm"$, Spur Gear $C$: $D_C = 600 "mm"$, $alpha = 20^degree$, $"AC" = 200 "mm"$; Pulley $D$: $D_D = 700 "mm"$, $W = 2000 "N"$, $T_1 = 3000 "N"$, $T_1/T_2 = 3$, $"BD" = 250 "mm"$; Allowable Shear Stress $tau = 40 "MPa"$.],
  [*Design Protocol:* Compute torque from pulley belt tensions; find tangential and normal gear forces; resolve loads into vertical and horizontal planes; compute bending moments at $C$ and $D$; find resultant moments; compute $T_e$ and size shaft.]
)

#item-row(
  [*1. Torque & Gear Forces ($T, F_(t c), W_C$)* \ Belt-pulley torque and gear tooth force components],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$(T_1 - T_2) R_D = 3000(1 - 1/3) times 350 = bold(700 times 10^3 "N·mm")$] \
    F_(t c) &= frac(T, R_C) = frac(700 times 10^3, 300) = 2333 "N" \
    W_C &= frac(F_(t c), cos 20^degree) = frac(2333, 0.9397) = 2483 "N" \
    W_(C V) &= 2333 "N" ("down"), quad W_(C H) = 849 "N"
  $]
)

#item-row(
  [*2. Pulley D Belt & Weight Loads ($T_2, W_(D H), W_(D V)$)* \ Belt tensions and flywheel weight at pulley $D$],
  [$
    #text(size: 13.5pt)[$T_2$] &= #text(size: 13.5pt)[$T_1/3 = 1000 "N"$] \
    W_(D H) &= T_1 + T_2 = 3000 + 1000 = bold(4000 "N") \
    W_(D V) &= W = bold(2000 "N") ("down")
  $]
)

#item-row(
  [*3. Vertical Bending Moments ($M_(C V), M_(D V)$)* \ Vertical plane: reactions and moments at $C$ and $D$],
  [$
    #text(size: 13.5pt)[$R_(B V) times 800$] &= #text(size: 13.5pt)[$2000(550) + 2333(200) = 1566600 => R_(B V) = 1958 "N", R_(A V) = 2375 "N"$] \
    M_(C V) &= 2375 times 200 = bold(475 times 10^3 "N·mm") \
    M_(D V) &= 1958 times 250 = bold(489.5 times 10^3 "N·mm")
  $]
)

#item-row(
  [*4. Horizontal Bending Moments ($M_(C H), M_(D H)$)* \ Horizontal plane: reactions and moments at $C$ and $D$],
  [$
    #text(size: 13.5pt)[$R_(B H) times 800$] &= #text(size: 13.5pt)[$4000(550) + 849(200) = 2369800 => R_(B H) = 2963 "N", R_(A H) = 1886 "N"$] \
    M_(C H) &= 1886 times 200 = bold(377200 "N·mm") \
    M_(D H) &= 2963 times 250 = bold(740750 "N·mm")
  $]
)

#item-row(
  [*5. Resultant Bending Moments & Governing Diameter ($M, T_e, d$)* \ Vector sum of planes; equivalent twisting moment; shaft size],
  [$
    #text(size: 13.5pt)[$M_D$] &= #text(size: 13.5pt)[$sqrt((489.5 times 10^3)^2 + (740750)^2) = bold(887874 "N·mm") quad arrow.r "Governing"$] \
    T_e &= sqrt((887874)^2 + (700 times 10^3)^2) = 1131 times 10^3 "N·mm" \
    1131 times 10^3 &= pi/16 times d^3 times 40 = 7.86 d^3 \
    d^3 &= frac(1131 times 10^3, 7.86) = 144 times 10^3 \
    d &= 52.4 "mm" \
    &=> bold("Adopt " d = 55 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Spur Gear + Pulley Shaft: Max M = 887874 N-mm at D | T = 700 kN-mm | Te = 1131 kN-mm | d = 55 mm*]
)

// ==========================================
// SECTION 11: EXAMPLE 14.11 — TWO-GEAR SHAFT (PINION + GEAR)
// ==========================================

#section-heading("11", "TWO-GEAR SHAFT — PINION AND SPUR GEAR")

#section-overview(
  [*System Parameters:* Power $P = 15 "kW"$, Speed $N = 200 "r.p.m."$, Bearing Span $"AB" = 750 "mm"$, Gear $C$: $T_C = 100$ teeth, $m_C = 5 "mm"$, $"AC" = 150 "mm"$ (vertical load from below); Pinion $D$: $T_D = 30$ teeth, $m_D = 5 "mm"$, $"BD" = 100 "mm"$ (horizontal load); Allowable $tau = 54 "MPa"$.],
  [*Design Protocol:* Compute shaft torque; find gear radii and tangential forces; solve vertical and horizontal loading planes separately; compute resultant bending moments at $C$ and $D$; find equivalent twisting moment and shaft diameter.]
)

#item-row(
  [*1. Torque & Gear Radii and Forces ($T, R_C, R_D, F_(t C), F_(t D)$)* \ Power-speed torque and force distribution on each gear],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N) = frac(15 times 10^3 times 60, 2 pi times 200) = 716 times 10^3 "N·mm"$] \
    R_C &= frac(T_C times m_C, 2) = frac(100 times 5, 2) = 250 "mm", quad R_D = frac(30 times 5, 2) = 75 "mm" \
    F_(t C) &= frac(T, R_C) = frac(716 times 10^3, 250) = bold(2870 "N") ("down") \
    F_(t D) &= frac(T, R_D) = frac(716 times 10^3, 75) = bold(9550 "N") ("right")
  $]
)

#item-row(
  [*2. Vertical & Horizontal Bending Moments* \ Separate plane analysis for bending moments at $C$ and $D$],
  [$
    #text(size: 13.5pt)[$R_(B V)$] &= #text(size: 13.5pt)[$frac(2870 times 150, 750) = 574 "N", quad R_(A V) = 2296 "N"$] \
    M_(C V) &= 2296 times 150 = 344400 "N·mm", quad M_(D V) = 574 times 100 = 57400 "N·mm" \
    R_(B H) &= frac(9550 times 650, 750) = 8277 "N", quad R_(A H) = 1273 "N" \
    M_(C H) &= 1273 times 150 = 190950 "N·mm", quad M_(D H) = 8277 times 100 = 827700 "N·mm"
  $]
)

#item-row(
  [*3. Resultant Moments & Shaft Diameter ($M_C, M_D, T_e, d$)* \ Govern from pinion location $D$; equivalent twisting moment approach],
  [$
    #text(size: 13.5pt)[$M_D$] &= #text(size: 13.5pt)[$sqrt((57400)^2 + (827700)^2) = bold(829690 "N·mm") quad arrow.r "Governing"$] \
    T_e &= sqrt((829690)^2 + (716 times 10^3)^2) = 1096 times 10^3 "N·mm" \
    1096 times 10^3 &= pi/16 times d^3 times 54 = 10.6 d^3 \
    d^3 &= frac(1096 times 10^3, 10.6) = 103.4 times 10^3 \
    d &= 47 "mm" \
    &=> bold("Adopt " d = 50 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Two-Gear Shaft: P = 15 kW, N = 200 rpm | Max M = 829690 N-mm at D | T = 716 kN-mm | Te = 1096 kN-mm | d = 50 mm*]
)

// ==========================================
// SECTION 12: EXAMPLE 14.12 — SHAFT WITH SHOCK/FATIGUE FACTORS
// ==========================================

#section-heading("12", "SHAFT DESIGN WITH SHOCK AND FATIGUE FACTORS")

#section-overview(
  [*System Parameters:* Power $P = 20 "kW"$, Speed $N = 200 "r.p.m."$, Central Load $W = 900 "N"$, Span $L = 2.5 "m"$, $tau = 42 "MPa"$, $sigma_b = 56 "MPa"$. Part 2: Gradually applied loads $K_m = 1.5$, $K_t = 1.0$.],
  [*Design Protocol:* Find $T$ and $M$ (central load); apply both failure theories without shock factors; repeat with ASME shock factors for gradually applied loads; adopt larger diameter in each case.]
)

#item-row(
  [*1. Torque & Central Bending Moment ($T, M$)* \ Power relation and simply-supported central load formula],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(20 times 10^3 times 60, 2 pi times 200) = bold(955 times 10^3 "N·mm")$] \
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$frac(W L, 4) = frac(900 times 2500, 4) = bold(562.5 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*2. Diameter — Case 1: Steady Loads (Max Shear Stress)* \ Equivalent twisting moment without shock factors],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((562.5 times 10^3)^2 + (955 times 10^3)^2) = bold(1108 times 10^3 "N·mm")$] \
    1108 times 10^3 &= pi/16 times d^3 times 42 = 8.25 d^3 \
    d^3 &= 134.3 times 10^3 => d = bold(51.2 "mm")
  $]
)

#item-row(
  [*3. Diameter — Case 1: Steady Loads (Max Normal Stress)* \ Equivalent bending moment without shock factors],
  [$
    #text(size: 13.5pt)[$M_e$] &= #text(size: 13.5pt)[$1/2 [562.5 + 1108] times 10^3 = bold(835.25 times 10^3 "N·mm")$] \
    835.25 times 10^3 &= pi/32 times d^3 times 56 = 5.5 d^3 \
    d^3 &= 152 times 10^3 => d = 53.4 "mm" \
    &=> bold("Adopt " d = 55 "mm")
  $]
)

#item-row(
  [*4. Diameter — Case 2: Gradually Applied ($K_m = 1.5, K_t = 1.0$), Max Shear Stress* \ ASME shock factors applied to bending and torsion],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((1.5 times 562.5 times 10^3)^2 + (1.0 times 955 times 10^3)^2) = bold(1274 times 10^3 "N·mm")$] \
    1274 times 10^3 &= 8.25 d^3 => d^3 = 154.6 times 10^3 => d = bold(53.6 "mm")
  $]
)

#item-row(
  [*5. Diameter — Case 2: Gradually Applied, Max Normal Stress* \ Equivalent bending moment with shock factors],
  [$
    #text(size: 13.5pt)[$M_e$] &= #text(size: 13.5pt)[$1/2 [1.5 times 562.5 times 10^3 + 1274 times 10^3] = bold(1059 times 10^3 "N·mm")$] \
    1059 times 10^3 &= 5.5 d^3 => d^3 = 192.5 times 10^3 => d = 57.7 "mm" \
    &=> bold("Adopt " d = 60 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Steady Loads: d = 55 mm | Gradually Applied (Km=1.5, Kt=1.0): d = 60 mm*]
)

// ==========================================
// SECTION 13: EXAMPLE 14.13 — LATHE SHAFT DESIGN WITH BELT DRIVE
// ==========================================

#section-heading("13", "LATHE SHAFT — BELT DRIVE WITH SHOCK FACTORS")

#section-overview(
  [*System Parameters:* Pulley Weight $W = 200 "N"$, Overhang $L = 300 "mm"$, Pulley Diameter $D = 200 "mm"$ ($R = 100 "mm"$), Power $P = 1 "kW"$, Speed $N = 120 "r.p.m."$, $theta = 180^degree$, $mu = 0.3$, $K_m = 1.5$, $K_t = 2.0$, $tau = 35 "MPa"$.],
  [*Design Protocol:* Compute torque; solve belt tensions $T_1$ and $T_2$ from friction and torque equations; find total vertical load on pulley; compute bending moment; apply shock factors to $T_e$; size shaft diameter.]
)

#item-row(
  [*1. Transmitted Torque ($T$)* \ Power-to-torque conversion],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(1000 times 60, 2 pi times 120) = 79.6 "N·m" = bold(79.6 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*2. Belt Tensions ($T_1, T_2$)* \ Belt friction and torque equations solved simultaneously],
  [$
    #text(size: 13.5pt)[$T_1 - T_2$] &= #text(size: 13.5pt)[$frac(79.6 times 10^3, 100) = 796 "N"$] \
    log(T_1/T_2) &= frac(mu theta, 2.3) = frac(0.3 pi, 2.3) = 0.4098 => T_1/T_2 = 2.57 \
    T_1 &= bold(1303 "N"), quad T_2 = bold(507 "N")
  $]
)

#item-row(
  [*3. Total Load & Bending Moment ($W_T, M$)* \ Combined belt tension and pulley weight; overhang bending],
  [$
    #text(size: 13.5pt)[$W_T$] &= #text(size: 13.5pt)[$T_1 + T_2 + W = 1303 + 507 + 200 = bold(2010 "N")$] \
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$W_T times L = 2010 times 300 = bold(603 times 10^3 "N·mm")$]
  $]
)

#item-row(
  [*4. Shaft Diameter ($d$)* \ Equivalent twisting moment with shock factors],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((K_m M)^2 + (K_t T)^2) = sqrt((1.5 times 603 times 10^3)^2 + (2 times 79.6 times 10^3)^2) = bold(918 times 10^3 "N·mm")$] \
    918 times 10^3 &= pi/16 times d^3 times 35 = 6.87 d^3 \
    d^3 &= frac(918 times 10^3, 6.87) = 133.6 times 10^3 \
    d &= 51.1 "mm" \
    &=> bold("Adopt " d = 55 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Lathe Shaft: T = 79.6 kN-mm | T1 = 1303 N, T2 = 507 N | M = 603 kN-mm | Te = 918 kN-mm (Km=1.5, Kt=2.0) | d = 55 mm*]
)

// ==========================================
// SECTION 14: EXAMPLE 14.14 — PULLEY + GEAR SHAFT (ASME FACTORS)
// ==========================================

#section-heading("14", "PULLEY AND GEAR SHAFT — ASME SHOCK FACTORS")

#section-overview(
  [*System Parameters:* Power $P = 20 "kW"$, Speed $N = 150 "r.p.m."$, $T_1/T_2 = 2.5$, Gear Weight $W_B = 900 "N"$, Pulley Weight $W_A = 2700 "N"$, $tau = 63 "MPa"$, $K_m = 2$, $K_t = 1.5$, Gear $D_B = 750 "mm"$ ($R_B = 375 "mm"$), Pulley $D_A = 1250 "mm"$ ($R_A = 625 "mm"$), Bearing Span $"CD" = 1000 "mm"$, $"AD" = 1250 "mm"$, $"BC" = 350 "mm"$.],
  [*Design Protocol:* Compute torque; find belt tensions $T_1, T_2$; compute total vertical loads at $A$ and $B$; take moments to find reactions $R_C, R_D$; find bending moments at $C$ and $D$; apply shock factors to $T_e$ and size shaft.]
)

#item-row(
  [*1. Torque & Belt Tensions ($T, T_1, T_2$)* \ Power relation and belt friction with $T_1/T_2 = 2.5$],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(20 times 10^3 times 60, 2 pi times 150) = 1273 times 10^3 "N·mm"$] \
    T_1 - T_2 &= frac(1273 times 10^3, 625) = 2037 "N", quad T_1 = 2.5 T_2 \
    T_2 &= 1358 "N", quad T_1 = 3395 "N"
  $]
)

#item-row(
  [*2. Loads at A and B, Reactions & Bending Moments* \ Vertical loading: downward at A, upward net at B; bending moments],
  [$
    #text(size: 13.5pt)[$"Load at A"$] &= #text(size: 13.5pt)[$T_1 + T_2 + W_A = 3395 + 1358 + 2700 = bold(7453 "N") ("down")$] \
    "Net at B" &= F_t - W_B = frac(1273 times 10^3, 375) - 900 = 3395 - 900 = bold(2495 "N") ("up") \
    R_C times 1000 &= 7453 times 1250 + 2495 times 350 = 10.2 times 10^6 => R_C = 10200 "N" \
    M_C &= 7453 times 250 = bold(1863 times 10^3 "N·mm") quad arrow.r "Governing"
  $]
)

#item-row(
  [*3. Shaft Diameter ($d$)* \ Equivalent twisting moment with ASME shock factors $K_m = 2, K_t = 1.5$],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((2 times 1863 times 10^3)^2 + (1.5 times 1273 times 10^3)^2) = bold(4187 times 10^3 "N·mm")$] \
    4187 times 10^3 &= pi/16 times d^3 times 63 = 12.37 d^3 \
    d^3 &= frac(4187 times 10^3, 12.37) = 338 times 10^3 \
    d &= 69.6 "mm" \
    &=> bold("Adopt " d = 70 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Pulley+Gear Shaft: T = 1273 kN-mm | Max M = 1863 kN-mm at C | Te = 4187 kN-mm (Km=2, Kt=1.5) | d = 70 mm*]
)

// ==========================================
// SECTION 15: EXAMPLE 14.15 — NICKEL STEEL SHAFT WITH TWO GEARS
// ==========================================

#section-heading("15", "NICKEL STEEL SHAFT — DUAL VERTICAL GEAR LOADING")

#section-overview(
  [*System Parameters:* Bearing Span $"AB" = 2400 "mm"$, Gear $C$: $D_C = 600 "mm"$, $"AC" = 250 "mm"$, $W_C = 950 "N"$; Gear $D$: $D_D = 200 "mm"$, $"BD" = 400 "mm"$, $W_D = 350 "N"$; $P = 20 "kW"$, $N = 120 "r.p.m."$, $sigma_t = 100 "MPa"$, $tau = 56 "MPa"$, $K_m = 1.5$, $K_t = 1.2$.],
  [*Design Protocol:* Compute torque; find tangential forces at $C$ and $D$ plus gear weights; take moments for reactions; find $M_C$ and $M_D$; apply both failure theories with shock factors; govern from larger diameter.]
)

#item-row(
  [*1. Torque & Tangential Forces ($T, F_(t C), F_(t D)$)* \ Power torque and gear tooth loads at each gear location],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(20 times 10^3 times 60, 2 pi times 120) = 1590 times 10^3 "N·mm"$] \
    F_(t C) &= frac(1590 times 10^3, 300) = 5300 "N" => "Total at" C = 5300 + 950 = bold(6250 "N") \
    F_(t D) &= frac(1590 times 10^3, 100) = 15900 "N" => "Total at" D = 15900 + 350 = bold(16250 "N")
  $]
)

#item-row(
  [*2. Reactions & Bending Moments ($R_A, R_B, M_C, M_D$)* \ Statics of simply supported beam with two downward loads],
  [$
    #text(size: 13.5pt)[$R_B times 2400$] &= #text(size: 13.5pt)[$16250 times 2000 + 6250 times 250 = 34062.5 times 10^3$] \
    R_B &= 14190 "N", quad R_A = 22500 - 14190 = 8310 "N" \
    M_C &= 8310 times 250 = 2077.5 times 10^3 "N·mm" \
    M_D &= 14190 times 400 = bold(5676 times 10^3 "N·mm") quad arrow.r "Governing"
  $]
)

#item-row(
  [*3. Diameter — Max Shear Stress Theory ($d_1$)* \ Equivalent twisting moment with shock factors],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((1.5 times 5676 times 10^3)^2 + (1.2 times 1590 times 10^3)^2) = bold(8725 times 10^3 "N·mm")$] \
    8725 times 10^3 &= pi/16 times d^3 times 56 = 11 d^3 \
    d^3 &= frac(8725 times 10^3, 11) = 793 times 10^3 => d = bold(92.5 "mm")
  $]
)

#item-row(
  [*4. Diameter — Max Normal Stress Theory ($d_2$)* \ Equivalent bending moment with shock factors],
  [$
    #text(size: 13.5pt)[$M_e$] &= #text(size: 13.5pt)[$1/2 [1.5 times 5676 times 10^3 + 8725 times 10^3] = bold(8620 times 10^3 "N·mm")$] \
    8620 times 10^3 &= pi/32 times d^3 times 100 = 9.82 d^3 \
    d^3 &= frac(8620 times 10^3, 9.82) = 878 times 10^3 => d = 95.7 "mm" \
    &=> bold("Adopt " d = 100 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Nickel Steel Shaft: Max M = 5676 kN-mm at D | T = 1590 kN-mm | d1 = 92.5 mm, d2 = 95.7 mm | Governing d = 100 mm*]
)

// ==========================================
// SECTION 16: EXAMPLE 14.16 — HOISTING DRUM SHAFT
// ==========================================

#section-heading("16", "HOISTING DRUM SHAFT — MOTOR, TORQUE AND DIAMETER")

#section-overview(
  [*System Parameters:* Drum Diameter $D = 0.5 "m"$ ($R = 0.25 "m"$), Reduction Ratio $= 12:1$, Hoist Load $W = 8000 "N"$, Hoisting Speed $v = 50 "m/min"$, Drive Efficiency $eta = 0.80$, Drive Gear $D_1 = 450 "mm"$ ($R_1 = 225 "mm"$), Overhang $= 150 "mm"$, $sigma_t = 115 "MPa"$, $tau = 50 "MPa"$, Pressure Angle $= 20^degree$, $K_m = 2$, $K_t = 1.5$.],
  [*Design Protocol:* Compute drum power and motor power; find drum torque $T = W R$; find motor speed from reduction ratio; compute bending load from overhang gear; apply both failure theories with shock factors; adopt larger diameter.]
)

#item-row(
  [*1. Motor Power & Drum Torque ($P, T$)* \ Energy rate and torque at drum shaft],
  [$
    #text(size: 13.5pt)[$P_("drum")$] &= #text(size: 13.5pt)[$frac(W times v, 60) = frac(8000 times 50, 60) = 6670 "W"$] \
    P_("motor") &= frac(6670, 0.8) = bold(8.33 "kW") \
    T &= W times R = 8000 times 0.25 = bold(2000 "N·m")
  $]
)

#item-row(
  [*2. Motor Speed ($N_("motor")$)* \ Speed from drum radius and reduction ratio],
  [$
    #text(size: 13.5pt)[$omega_("drum")$] &= #text(size: 13.5pt)[$frac(v, R) = frac(50, 0.25) = 200 "rad/min"$] \
    omega_("motor") &= 200 times 12 = 2400 "rad/min" \
    N_("motor") &= frac(2400, 2pi) = bold(382 "r.p.m.")
  $]
)

#item-row(
  [*3. Bending Moment from Overhang Gear ($F_t, W_b, M$)* \ Normal tooth load and overhang bending moment at bearing],
  [$
    #text(size: 13.5pt)[$F_t$] &= #text(size: 13.5pt)[$frac(T, R_1) = frac(2000, 0.225) = 8900 "N"$] \
    W_b &= frac(F_t, cos 20^degree) = frac(8900, 0.9397) = 9470 "N" \
    M &= 9470 times 0.15 = bold(1420 "N·m")
  $]
)

#item-row(
  [*4. Diameter — Max Shear Stress Theory ($d_1$)* \ Equivalent twisting moment approach],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt((2 times 1420)^2 + (1.5 times 2000)^2) = 4130 "N·m" = bold(4130 times 10^3 "N·mm")$] \
    4130 times 10^3 &= pi/16 times d^3 times 50 = 9.82 d^3 \
    d^3 &= frac(4130 times 10^3, 9.82) = 420.6 times 10^3 => d = bold(75 "mm")
  $]
)

#item-row(
  [*5. Diameter — Max Normal Stress Theory ($d_2$)* \ Equivalent bending moment approach],
  [$
    #text(size: 13.5pt)[$M_e$] &= #text(size: 13.5pt)[$1/2 [2 times 1420 + 4130] = 3485 "N·m" = bold(3485 times 10^3 "N·mm")$] \
    3485 times 10^3 &= pi/32 times d^3 times 115 = 11.3 d^3 \
    d^3 &= frac(3485 times 10^3, 11.3) = 308.4 times 10^3 => d = bold(67.5 "mm") \
    &=> bold("Governing " d = 75 "mm (from Max Shear Stress Theory)")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Hoisting Drum: Motor P = 8.33 kW, N = 382 rpm | Drum T = 2000 N-m | M = 1420 N-m | Te = 4130 kN-mm | d = 75 mm*]
)

// ==========================================
// SECTION 17: EXAMPLE 14.17 — COMPLEX SHAFT: GEAR + TWO PULLEYS
// ==========================================

#section-heading("17", "COMPLEX SHAFT — GEAR AND TWO PULLEYS, BIAXIAL LOADING")

#section-overview(
  [*System Parameters:* Bearing Span $"PQ" = 1.8 "m"$, Gear $D$: $D_D = 300 "mm"$, $alpha = 20^degree$, $"QD" = 150 "mm"$, $P_D = 30 "kW"$ input; Pulley $B$: $D_B = 750 "mm"$, $P_B = 11.25 "kW"$, vertical belt, $T_("B1")/T_("B2") = 2$; Pulley $C$: $D_C = 600 "mm"$, $P_C = 18.75 "kW"$, belt at $60^degree$, $T_("C1")/T_("C2") = 2$; Speed $N = 250 "r.p.m."$, $K_m = 2$, $K_t = 1.5$, $tau = 42 "MPa"$, $sigma_t = 84 "MPa"$.],
  [*Design Protocol:* Compute individual torques for gear and pulleys; find belt tensions and resolve forces vertically/horizontally at each location; compute bending moments in both planes; find resultant moments; apply shock factors; govern by larger diameter from two failure theories.]
)

#item-row(
  [*1. Gear D Forces ($T_D, F_(t D), W_(D V), W_(D H)$)* \ Gear torque and normal load components at pressure angle $20^degree$],
  [$
    #text(size: 13.5pt)[$T_D$] &= #text(size: 13.5pt)[$frac(30 times 10^3 times 60, 2 pi times 250) = 1146 "N·m"$] \
    F_(t D) &= frac(1146, 0.15) = 7640 "N", quad W_D = frac(7640, cos 20^degree) = 8130 "N" \
    W_(D V) &= 8130 cos 20^degree = bold(7640 "N"), quad W_(D H) = 8130 sin 20^degree = bold(2780 "N")
  $]
)

#item-row(
  [*2. Pulley C Belt Forces ($T_C, T_("C1"), T_("C2"), W_(C V), W_(C H)$)* \ Belt at $60^degree$ to horizontal; resolve total belt load],
  [$
    #text(size: 13.5pt)[$T_C$] &= #text(size: 13.5pt)[$frac(18.75 times 10^3 times 60, 2 pi times 250) = 716 "N·m"$] \
    T_("C1") - T_("C2") &= frac(716, 0.3) = 2387 "N", quad T_("C1")/T_("C2") = 2 => T_("C2") = 2387, T_("C1") = 4774 "N" \
    W_C &= 4774 + 2387 = 7161 "N" \
    W_(C V) &= 7161 sin 60^degree = bold(6200 "N"), quad W_(C H) = 7161 cos 60^degree = bold(3580 "N")
  $]
)

#item-row(
  [*3. Pulley B Belt Forces ($T_B, T_("B1"), T_("B2"), W_(B V)$)* \ Vertical belt; total load acts downward],
  [$
    #text(size: 13.5pt)[$T_B$] &= #text(size: 13.5pt)[$frac(11.25 times 10^3 times 60, 2 pi times 250) = 430 "N·m"$] \
    T_("B1") - T_("B2") &= frac(430, 0.375) = 1147 "N", quad T_("B2") = 1147 "N", T_("B1") = 2294 "N" \
    W_(B V) &= T_("B1") + T_("B2") = bold(3441 "N") ("down"), quad W_(B H) = 0
  $]
)

#item-row(
  [*4. Vertical & Horizontal Bending Moments* \ Reactions and moments in each plane at B, C, D],
  [$
    #text(size: 13.5pt)[$R_(Q V) times 1.8$] &= #text(size: 13.5pt)[$7640(1.65) + 6200(1.35) + 3441(0.6) = 23041 => R_(Q V) = 12800 "N"$] \
    M_(B V) &= 4481(0.6) = 2690 "N·m", quad M_(C V) = 4481(1.35) - 3441(0.75) = 3470 "N·m" \
    R_(Q H) times 1.8 &= 2780(1.65) + 3580(1.35) = 9420 => R_(Q H) = 5233 "N" \
    M_(B H) &= 1127(0.6) = 676 "N·m", quad M_(C H) = 1127(1.35) = 1521 "N·m"
  $]
)

#item-row(
  [*5. Resultant Moments & Governing Diameter ($M_C, T_e, d$)* \ Resultant at each point; max shear stress theory with shock factors],
  [$
    #text(size: 13.5pt)[$M_C$] &= #text(size: 13.5pt)[$sqrt((3470)^2 + (1521)^2) = bold(3790 "N·m") quad arrow.r "Governing"$] \
    T_e &= sqrt((2 times 3790)^2 + (1.5 times 1146)^2) = 7772 "N·m" = bold(7772 times 10^3 "N·mm") \
    7772 times 10^3 &= pi/16 times d^3 times 42 = 8.25 d^3 \
    d^3 &= frac(7772 times 10^3, 8.25) = 942 times 10^3 => d = 98 "mm" \
    M_e &= 1/2 [2 times 3790 + 7772] = 7676 "N·m" \
    7676 times 10^3 &= 8.25 d^3 => d^3 = 930 times 10^3 => d = 97.6 "mm" \
    &=> bold("Adopt " d = 100 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Complex Shaft: Governing M = 3790 N-m at C | T = 1146 N-m | Te = 7772 kN-mm | Me = 7676 kN-mm | d = 100 mm*]
)

// ==========================================
// SECTION 18: EXAMPLE 14.18 — HOLLOW SHAFT WITH AXIAL LOAD
// ==========================================

#section-heading("18", "HOLLOW SHAFT — COMBINED TORQUE, BENDING, AND AXIAL LOAD")

#section-overview(
  [*System Parameters:* Torque $T = 1.5 "kN·m"$, Bending Moment $M = 3 "kN·m"$, Axial Load $F = 10 "kN"$ (tensile), Hollow Ratio $k = d_i/d_o = 0.5$, Outside Diameter $d_o = 80 "mm"$, Load Applied Gradually ($K_m = 1.5$, $K_t = 1.0$, $alpha = 1$). Find induced shear stress $tau$.],
  [*Design Protocol:* Substitute given values into hollow shaft equivalent twisting moment formula including axial load term; solve for induced shear stress from torsion formula for hollow shaft.]
)

#item-row(
  [*1. Equivalent Twisting Moment — Hollow Shaft ($T_e$)* \ Combined bending, axial, and torsion for hollow section],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt([K_m M + frac(alpha F d_o (1 + k^2), 8)]^2 + (K_t T)^2)$] \
    &= sqrt([1.5(3 times 10^3) + frac(1 times 10 times 10^3 times 0.08(1 + 0.25), 8)]^2 + (1 times 1.5 times 10^3)^2) \
    &= sqrt((4500 + 125)^2 + (1500)^2) \
    &= bold(4862 "N·m" = 4862 times 10^3 "N·mm")
  $]
)

#item-row(
  [*2. Induced Shear Stress ($tau$)* \ Hollow shaft torsion formula with $k = 0.5$, $d_o = 80 "mm"$],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$pi/16 times tau times (d_o)^3 (1 - k^4)$] \
    4862 times 10^3 &= pi/16 times tau times (80)^3 [1 - (0.5)^4] = 94260 tau \
    tau &= frac(4862 times 10^3, 94260) \
    &= bold(51.6 "N/mm"^2 = 51.6 "MPa")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Hollow Shaft: T = 1.5 kN-m, M = 3 kN-m, F = 10 kN axial | k = 0.5, do = 80 mm | Te = 4862 kN-mm | Induced tau = 51.6 MPa*]
)

// ==========================================
// SECTION 19: EXAMPLE 14.19 — MARINE PROPELLER SHAFT
// ==========================================

#section-heading("19", "MARINE PROPELLER HOLLOW SHAFT — SHEAR STRESS AND TWIST")

#section-overview(
  [*System Parameters:* Outside Diameter $d_o = 0.5 "m"$, Inside Diameter $d_i = 0.3 "m"$, $k = d_i/d_o = 0.6$, Power $P = 5600 "kW"$, Speed $N = 150 "r.p.m."$, Bearing Span $L = 6 "m"$, Axial Thrust $F = 500 "kN"$, Shaft Weight $W = 70 "kN"$, $G = 84 "GPa"$.],
  [*Design Protocol:* Compute torque and max bending moment; calculate slenderness ratio and column factor $alpha$; use hollow shaft $T_e$ formula; find induced shear stress; compute polar moment of inertia $J$ and angular twist $theta$.]
)

#item-row(
  [*1. Torque & Maximum Bending Moment ($T, M$)* \ Power-speed torque and uniform weight bending moment],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(5600 times 10^3 times 60, 2 pi times 150) = bold(356460 "N·m")$] \
    #text(size: 13.5pt)[$M$] &= #text(size: 13.5pt)[$frac(W L, 8) = frac(70 times 10^3 times 6, 8) = bold(52500 "N·m")$]
  $]
)

#item-row(
  [*2. Slenderness Ratio & Column Factor ($K, L/K, alpha$)* \ Radius of gyration and column factor for axial load correction],
  [$
    #text(size: 13.5pt)[$K$] &= #text(size: 13.5pt)[$frac(1, 4) sqrt((d_o)^2 + (d_i)^2) = frac(1, 4) sqrt((0.5)^2 + (0.3)^2) = 0.1458 "m"$] \
    L/K &= frac(6, 0.1458) = 41.15 \
    alpha &= frac(1, 1 - 0.0044(L/K)) = frac(1, 1 - 0.0044 times 41.15) = bold(1.22)
  $]
)

#item-row(
  [*3. Equivalent Twisting Moment & Shear Stress ($T_e, tau$)* \ Hollow shaft with axial load, $K_m = 1.5$, $K_t = 1.0$],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$sqrt([1.5(52500) + frac(1.22(500 times 10^3)(0.5)(1 + 0.6^2), 8)]^2 + (356460)^2)$] \
    &= sqrt((78750 + 51850)^2 + (356460)^2) = bold(380 times 10^3 "N·m") \
    380 times 10^3 &= pi/16 times tau times (0.5)^3 [1-(0.6)^4] = 0.02 tau \
    tau &= frac(380 times 10^3, 0.02) = bold(19 "MPa")
  $]
)

#item-row(
  [*4. Angular Twist Between Bearings ($J, theta$)* \ Polar moment of inertia and torsion angle],
  [$
    #text(size: 13.5pt)[$J$] &= #text(size: 13.5pt)[$pi/32 [(d_o)^4 - (d_i)^4] = pi/32 [(0.5)^4 - (0.3)^4] = 0.00534 "m"^4$] \
    theta &= frac(T dot L, G dot J) = frac(356460 times 6, 84 times 10^9 times 0.00534) = 0.0048 "rad" \
    &= 0.0048 times frac(180, pi) = bold(0.275^degree)
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Marine Propeller Shaft: do = 0.5 m, di = 0.3 m | T = 356460 N-m | Te = 380 kN-m | Induced tau = 19 MPa | Twist = 0.275 deg*]
)

// ==========================================
// SECTION 20: EXAMPLE 14.20 — HOLLOW SHAFT WITH CYCLIC + AXIAL COMPRESSIVE LOAD
// ==========================================

#section-heading("20", "HOLLOW SHAFT — CYCLIC LOADS WITH AXIAL COMPRESSION")

#section-overview(
  [*System Parameters:* $M = 1000 "N·m"$, $T = 500 "N·m"$, Axial Compressive Load $F = 15 "kN"$, Span $L = 1500 "mm"$, $tau = 40 "MPa"$, $k = d_i/d_o = 0.8$, Shock Factors $K_t = 1.5$, $K_m = 1.6$; shock applied load.],
  [*Design Protocol:* Express radius of gyration $K = 0.32 d_o$; write column factor $alpha$ in terms of $d_o$; set up $T_e$ equation; match against torsion capacity $4.65 (d_o)^3$; solve by trial and iteration.]
)

#item-row(
  [*1. Radius of Gyration & Column Factor ($K, alpha$)* \ Hollow shaft $K$ in terms of $d_o$; column factor as function of $d_o$],
  [$
    #text(size: 13.5pt)[$K$] &= #text(size: 13.5pt)[$frac(sqrt((d_o)^2 + (d_i)^2), 4) = frac(d_o sqrt(1 + 0.64), 4) = 0.32 d_o$] \
    alpha &= frac(1, 1 - 0.0044(1500 / 0.32 d_o)) = frac(1, 1 - 20.6/d_o)
  $]
)

#item-row(
  [*2. Torsional Capacity of Hollow Shaft ($T_e = 4.65 (d_o)^3$)* \ RHS torsion equation, $k = 0.8$],
  [$
    #text(size: 13.5pt)[$T_e$] &= #text(size: 13.5pt)[$pi/16 times 40 times (d_o)^3 (1 - 0.8^4) = bold(4.65 (d_o)^3)$]
  $]
)

#item-row(
  [*3. Trial Solution — Hollow Shaft Diameters ($d_o, d_i$)* \ Hit-and-trial: neglect axial gives $d_o > 72.4 "mm"$; trial at $d_o = 76.32 "mm"$],
  [$
    #text(size: 13.5pt)[$"Min bound (no axial):"$] &= #text(size: 13.5pt)[$T_e = sqrt((1.6 times 10^6)^2 + (0.75 times 10^6)^2) = 1767 times 10^3 "N·mm"$] \
    4.65 (d_o)^3 &= 1767 times 10^3 => d_o = 72.4 "mm" (min) \
    "Trial:" d_o &= 76.32 "mm" => bold(d_o = 80 "mm") \
    d_i &= 0.8 times 80 = bold(64 "mm")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Hollow Shaft: M = 1000 N-m, T = 500 N-m, F = 15 kN compressive | k = 0.8 | Km = 1.6, Kt = 1.5 | do = 80 mm, di = 64 mm*]
)

// ==========================================
// SECTION 21: EXAMPLE 14.21 — SPINDLE DIAMETER BY ANGULAR DEFLECTION LIMIT
// ==========================================

#section-heading("21", "SPINDLE DIAMETER — ANGULAR DEFLECTION LIMIT")

#section-overview(
  [*System Parameters:* Power $P = 4 "kW" = 4000 "W"$, Speed $N = 800 "r.p.m."$, Max Angular Deflection $theta = 0.25^degree "per metre" = 0.0044 "rad"$ per $1000 "mm"$, Modulus of Rigidity $G = 84 "GPa" = 84 times 10^3 "N/mm"^2$.],
  [*Design Protocol:* Compute torque; equate torsion rigidity equation $T/J = G theta / L$ to find polar moment of inertia $J$; solve for spindle diameter; then find actual induced shear stress.]
)

#item-row(
  [*1. Transmitted Torque ($T$)* \ Power-speed torque relation],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$frac(P times 60, 2 pi N) = frac(4000 times 60, 2 pi times 800) = 47.74 "N·m" = bold(47740 "N·mm")$]
  $]
)

#item-row(
  [*2. Spindle Diameter from Stiffness Condition ($d$)* \ Rigidity equation: $T/J = G theta / L$, solve for $d$],
  [$
    #text(size: 13.5pt)[$pi/32 d^4$] &= #text(size: 13.5pt)[$frac(T dot L, G dot theta) = frac(47740 times 1000, 84 times 10^3 times 0.0044) = 129167$] \
    d^4 &= frac(129167 times 32, pi) = 1.3 times 10^6 \
    d &= 33.87 "mm" \
    &=> bold("Adopt " d = 35 "mm")
  $]
)

#item-row(
  [*3. Induced Shear Stress ($tau$)* \ Torsion formula with adopted diameter $d = 35 "mm"$],
  [$
    #text(size: 13.5pt)[$T$] &= #text(size: 13.5pt)[$pi/16 times d^3 times tau => 47740 = pi/16 times (35)^3 times tau = 8420 tau$] \
    tau &= frac(47740, 8420) = bold(5.67 "N/mm"^2 = 5.67 "MPa")
  $]
)

#item-row(
  [*Design Output Summary*],
  [*Steel Spindle: P = 4 kW, N = 800 rpm, theta_limit = 0.25 deg/m | T = 47740 N-mm | d = 35 mm | Induced tau = 5.67 MPa*]
)

// ==========================================
// SECTION 22: EXAMPLE 14.22 — HOLLOW vs SOLID SHAFT COMPARISON
// ==========================================

#section-heading("22", "HOLLOW VS SOLID SHAFT — WEIGHT, STRENGTH, STIFFNESS RATIO")

#section-overview(
  [*System Parameters:* Both shafts have same external diameter $d_o = d$, same material and length. Hollow shaft inside diameter $d_i = d_o / 2$, so $k = d_i/d_o = 0.5$. Compare weight ($W_H/W_S$), torsional strength ($T_H/T_S$), and torsional stiffness ($S_H/S_S$).],
  [*Design Protocol:* Express cross-sectional area ratio for weight; polar section modulus ratio for strength; polar moment of inertia ratio for stiffness; evaluate each ratio using $k = 0.5$.]
)

#item-row(
  [*1. Weight Comparison ($W_H / W_S$)* \ Cross-sectional area ratio for equal length and density],
  [$
    #text(size: 13.5pt)[$frac(W_H, W_S)$] &= #text(size: 13.5pt)[$frac((d_o)^2 - (d_i)^2, d^2) = 1 - k^2 = 1 - (0.5)^2 = bold(0.75)$]
  $]
)

#item-row(
  [*2. Strength Comparison ($T_H / T_S$)* \ Ratio of polar section moduli (torsional capacity)],
  [$
    #text(size: 13.5pt)[$frac(T_H, T_S)$] &= #text(size: 13.5pt)[$frac((d_o)^3 (1 - k^4), d^3) = 1 - k^4 = 1 - (0.5)^4 = bold(0.9375)$]
  $]
)

#item-row(
  [*3. Stiffness Comparison ($S_H / S_S$)* \ Ratio of polar moments of inertia $J_H / J_S$],
  [$
    #text(size: 13.5pt)[$frac(S_H, S_S)$] &= #text(size: 13.5pt)[$frac(J_H, J_S) = frac((d_o)^4 - (d_i)^4, d^4) = 1 - k^4 = 1 - (0.5)^4 = bold(0.9375)$]
  $]
)

#item-row(
  [*Summary of Hollow vs Solid Shaft ($k = 0.5$)*],
  [*Weight ratio WH/WS = 0.75 (25% lighter) | Strength ratio TH/TS = 0.9375 (6.25% weaker) | Stiffness ratio SH/SS = 0.9375 (6.25% less stiff)*]
)
