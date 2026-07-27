// Design Data Book — Power Screws & Screw Jacks
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
            [#text(fill: rgb("#000000"), size: 11pt, weight: "bold")[DESIGN DATA BOOK — POWER SCREWS & SCREW JACKS]],
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
#section-heading("INDEX", "Power Screws & Screw Jacks Classification Index")

#v(4pt)
#table(
  columns: (1.2fr, 2.5fr, 1fr),
  inset: 7pt,
  align: (left, left, center),
  table.header(
    [*Machine Element / Joint Type*], [*Primary Design Parameter / Objective*], [*Databook Section*]
  ),
  [Complete Design of Screw Jack (80 kN Load)], [Complete design of Spindle ($d_c, d_o, p$), Nut ($n, h, D_1, D_2$), Handle & Cup ($L, D, eta$), & Body ($D_5, D_6, D_7, H_("body")$)], [Section 1],
  [Differential Screw Jack Analysis], [Analyze differential torque ($T$), efficiency ($eta$), & max load capacity ($W_("max")$)], [Section 2],
  [Standard Square Threads], [IS: 4694 – 1968 Fine Series square thread dimensions table], [Ref Table 17.1]
)

#v(8pt)
#text(size: 13pt, style: "italic")[
  *Design Standard Note*: All design procedures, friction torques, principal stress checks, nut shear stress equations, and differential screw formulas conform strictly to standard mechanical design practice (IS: 4694 – 1968 for Square Threads).
]

// ==========================================
// SECTION 1: COMPLETE DESIGN OF SCREW JACK (EX 17.15)
// ==========================================
#pagebreak()
#section-heading("1", "Complete Design of a Screw Jack (80 kN Load)")

#section-overview(
  [*System Parameters* \ Lift Load: $W = 80 "kN" = 80000 "N"$ | Max Lift Height: $H_1 = 400 "mm" = 0.4 "m"$ \ Screw Material: $sigma_("ec") = 200 "MPa" => "Permissible " sigma_c = 100 "N/mm"^2$, $tau_e = 120 "MPa" => "Permissible " tau = 60 "N/mm"^2$ \ Nut Material (Phosphor-Bronze): $sigma_("t(nut)") = 50 "MPa", sigma_("c(nut)") = 45 "MPa", tau_("nut") = 40 "MPa"$ \ Bearing Pressure: $p_b = 18 "N/mm"^2$ | Friction: $mu = tan phi = 0.14$, Swivel Collar $mu_1 = 0.14$],
  [*Design Protocol* \ Part 1: Design Screw Spindle ($d_c, d_o, p, d$, Torque $T_1$, Principal Stresses $sigma_("c(max)"), tau_("max")$, Buckling $W_("cr")$) \ Part 2: Design Nut (Threads $n$, Height $h$, Shear Stresses $tau_("screw"), tau_("nut")$, Diameters $D_1, D_2$, Thickness $t_1$) \ Part 3: Design Handle & Cup ($D_3, D_4, T_2, T, L, D, H, eta$) \ Part 4: Design Body Proportions ($D_5, D_6, D_7, t_2, t_3, H_("body")$)]
)

// PART 1: SCREW SPINDLE DESIGN
#item-row(
  [*1. Preliminary Core Diameter ($d_c$)* \ Direct compression under load $W = 80000 "N"$],
  [
    $
      #text(size: 20pt)[$W$] &= #text(size: 20pt)[$pi/4 (d_c)^2 dot sigma_c$] \
      80000 &= pi/4 (d_c)^2 times 100 \
      &= 78.55 (d_c)^2 \
      (d_c)^2 &= 80000 / 78.55 = 1018.5 \
      #text(size: 20pt)[$d_c$] &= #text(size: 20pt)[$31.9 "mm"$] quad &=> 32 "mm"
    $
  ]
)

#item-row(
  [*2. Core Selection Note & Standard Thread Specs* \ Adopt $d_c = 38 "mm"$ to pass combined torsional stress],
  [
    $
      d_c &= 38 "mm" \
      d_o &= 46 "mm" \
      p &= 8 "mm" \
      #text(size: 20pt)[$d$] &= #text(size: 20pt)[$(d_o + d_c) / 2$] \
      &= (46 + 38) / 2 \
      &= bold(42 "mm")
    $
  ]
)

#item-row(
  [*3. Helix Angle ($alpha$) & Thread Torque ($T_1$)* \ Torque to rotate screw against thread friction],
  [
    $
      tan alpha &= p / (pi dot d) = 8 / (pi times 42) = 0.0606 \
      #text(size: 20pt)[$T_1$] &= #text(size: 20pt)[$W dot tan(alpha + phi) dot d/2$] \
      &= 80000 times [(0.0606 + 0.14) / (1 - (0.0606)(0.14))] times 21 \
      &= 80000 times [0.2006 / 0.9915] times 21 \
      &= bold(340 times 10^3 "N"dot"mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*4. Direct Compressive & Torsional Shear Stresses ($sigma_c, tau$)* \ Stress components in spindle body],
  [
    $
      #text(size: 20pt)[$sigma_c$] &= #text(size: 20pt)[$W / (pi/4 (d_c)^2)$] \
      &= 80000 / (pi/4 (38)^2) \
      &= 70.53 "N/mm"^2 \
      #text(size: 20pt)[$tau$] &= #text(size: 20pt)[$(16 T_1) / (pi (d_c)^3)$] \
      &= (16 times 340 times 10^3) / (pi (38)^3) \
      &= 31.55 "N/mm"^2
    $
  ]
)

#item-row(
  [*5. Maximum Principal Compressive Stress ($sigma_("c(max)")$)* \ Combined stress evaluation for allowable $sigma_c = 100 "MPa"$],
  [
    $
      #text(size: 20pt)[$sigma_("c(max)")$] &= #text(size: 20pt)[$sigma_c / 2 + 1/2 sqrt(sigma_c^2 + 4 tau^2)$] \
      &= 35.265 + 1/2 sqrt((70.53)^2 + 4(31.55)^2) \
      &= 35.265 + 47.315 \
      &= bold(82.58 "MPa") &<= 100 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*6. Maximum Shear Stress ($tau_("max")$)* \ Maximum shear stress check for allowable $tau = 60 "MPa"$],
  [
    $
      #text(size: 20pt)[$tau_("max")$] &= #text(size: 20pt)[$1/2 sqrt(sigma_c^2 + 4 tau^2)$] \
      &= 1/2 (94.63) \
      &= bold(47.32 "MPa") &<= 60 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*7. Spindle Buckling Check ($W_("cr")$)* \ J.B. Johnson formula for unsupported length $L = 440 "mm"$],
  [
    $
      L &= H_1 + h/2 = 400 + 40 = 440 "mm", quad k = 0.25 d_c = 9.5 "mm" \
      #text(size: 20pt)[$W_("cr")$] &= #text(size: 20pt)[$A_c dot sigma_y [1 - (sigma_y / (4 pi^2 E C)) (L/k)^2]$] \
      &= 1134.1 times 200 \
      &quad times [1 - (200 / (4 pi^2 (2.1 times 10^5)(0.25))) (440 / 9.5)^2] \
      &= 226852 times [1 - 0.207] = bold(179.89 "kN") &> 80 "kN" quad bold("(SAFE)")
    $
  ]
)

// PART 2: NUT DESIGN
#item-row(
  [*8. Thread Count ($n$) & Nut Height ($h$)* \ Bearing pressure equation ($p_b = 18 "N/mm"^2$)],
  [
    $
      18 &= (80000) / (pi/4 (46^2 - 38^2) dot n) = 80000 / (527.78 n) \
      n &= 80000 / (18 times 527.78) = 8.4 quad &=> bold(n = 10 "threads") \
      #text(size: 20pt)[$h$] &= #text(size: 20pt)[$n dot p$] = 10 times 8 = bold(80 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*9. Thread Shear Stress in Screw ($tau_("screw")$)* \ Shear check on screw threads ($t = p/2 = 4 "mm"$)],
  [
    $
      #text(size: 20pt)[$tau_("screw")$] &= #text(size: 20pt)[$W / (pi dot d_c dot t dot n)$] \
      &= 80000 / (pi times 38 times 4 times 10) \
      &= bold(16.15 "MPa") &<= 60 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*10. Thread Shear Stress in Nut ($tau_("nut")$)* \ Shear check on nut threads],
  [
    $
      #text(size: 20pt)[$tau_("nut")$] &= #text(size: 20pt)[$W / (pi dot d_o dot t dot n)$] \
      &= 80000 / (pi times 46 times 4 times 10) \
      &= bold(13.84 "MPa") &<= 40 "MPa" quad bold("(SAFE)")
    $
  ]
)

#item-row(
  [*11. Nut Body Outer Diameter ($D_1$)* \ Tearing of nut body under allowable tension $sigma_("t(nut)") = 50 "MPa"$],
  [
    $
      W &= pi/4 (D_1^2 - d_o^2) dot sigma_("t(nut)") \
      80000 &= pi/4 (D_1^2 - 46^2) times 50 = 39.3 (D_1^2 - 2116) \
      D_1^2 - 2116 &= 80000 / 39.3 = 2036 \
      #text(size: 20pt)[$D_1$] &= #text(size: 20pt)[$sqrt(4152)$] = bold(65 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*12. Nut Collar Outer Diameter ($D_2$)* \ Crushing of collar under allowable compression $sigma_("c(nut)") = 45 "MPa"$],
  [
    $
      W &= pi/4 (D_2^2 - D_1^2) dot sigma_("c(nut)") \
      80000 &= pi/4 (D_2^2 - 65^2) times 45 = 35.3 (D_2^2 - 4225) \
      D_2^2 - 4225 &= 80000 / 35.3 = 2266 \
      #text(size: 20pt)[$D_2$] &= #text(size: 20pt)[$sqrt(6491)$] = 80.6 "mm" quad &=> bold(D_2 = 82 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*13. Nut Collar Thickness ($t_1$)* \ Shearing of collar under allowable shear $tau_("nut") = 40 "MPa"$],
  [
    $
      W &= pi dot D_1 dot t_1 dot tau_("nut") \
      80000 &= pi times 65 times t_1 times 40 = 8170 t_1 \
      #text(size: 20pt)[$t_1$] &= #text(size: 20pt)[$80000 / 8170$] = 9.8 "mm" quad &=> bold(t_1 = 10 "mm" quad bold("(Ans.)"))
    $
  ]
)

// PART 3: HANDLE AND CUP DESIGN
#item-row(
  [*14. Swivel Cup Head & Pin Diameters ($D_3, D_4$)* \ Empirical proportions for cup bearing],
  [
    $
      #text(size: 20pt)[$D_3$] &= #text(size: 20pt)[$1.75 d_o$] = 1.75 times 46 = 80.5 "mm" quad &=> bold(D_3 = 82 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$D_4$] &= #text(size: 20pt)[$20 "mm"$] quad bold("(Loose Fit Pin in Cup)")
    $
  ]
)

#item-row(
  [*15. Swivel Cup Collar Friction Torque ($T_2$)* \ Uniform pressure assumption between $R_1 = 41 "mm", R_2 = 10 "mm"$],
  [
    $
      #text(size: 20pt)[$T_2$] &= #text(size: 20pt)[$2/3 mu_1 W [(R_1^3 - R_2^3) / (R_1^2 - R_2^2)]$] \
      &= 2/3 (0.14)(80000) [(41^3 - 10^3) / (41^2 - 10^2)] \
      &= 7.47 times 10^3 times [67921 / 1581] \
      &= bold(321 times 10^3 "N"dot"mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*16. Total Operating Torque ($T$) & Handle Length ($L$)* \ Torque sum and operator effort $F = 300 "N"$],
  [
    $
      #text(size: 20pt)[$T$] &= #text(size: 20pt)[$T_1 + T_2$] = 340 times 10^3 + 321 times 10^3 = bold(661 times 10^3 "N"dot"mm") \
      L' &= T / F = (661 times 10^3) / 300 = 2203 "mm" \
      #text(size: 20pt)[$L$] &= #text(size: 20pt)[$2250 "mm"$] quad bold("(Includes Gripping Allowance)")
    $
  ]
)

#item-row(
  [*17. Handle Diameter ($D$) & Head Height ($H$)* \ Handle bending stress limit $sigma_b = 100 "MPa"$],
  [
    $
      M &= F dot L = 300 times 2250 = 675 times 10^3 "N"dot"mm" \
      675 times 10^3 &= pi/32 D^3 times 100 = 9.82 D^3 \
      D^3 &= (675 times 10^3) / 9.82 = 68.74 times 10^3 \
      #text(size: 20pt)[$D$] &= #text(size: 20pt)[$40.96 "mm"$] quad &=> bold(D = 42 "mm" quad bold("(Ans.)")) \
      #text(size: 20pt)[$H$] &= #text(size: 20pt)[$2 D$] = 2 times 42 = bold(84 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*18. Ideal Torque ($T_0$) & Screw Jack Efficiency ($eta$)* \ Efficiency evaluation relative to frictionless torque],
  [
    $
      T_0 &= W dot tan alpha dot d/2 = 80000 times 0.0606 times 21 = 101808 "N"dot"mm" \
      #text(size: 20pt)[$eta$] &= #text(size: 20pt)[$T_0 / T$] \
      &= 101808 / (661 times 10^3) \
      &= 0.154 = bold(15.4\% quad bold("(Ans.)"))
    $
  ]
)

// PART 4: BODY PROPORTIONS
#item-row(
  [*19. Body Inside Top Diameter ($D_5$)* \ Empirical relation for nut clearance],
  [
    $
      #text(size: 20pt)[$D_5$] &= #text(size: 20pt)[$1.5 D_2$] = 1.5 times 82 = bold(123 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*20. Body Wall Thickness ($t_3$)* \ Empirical relation for cast iron body wall],
  [
    $
      #text(size: 20pt)[$t_3$] &= #text(size: 20pt)[$0.25 d_o$] = 0.25 times 46 = 11.5 "mm" quad &=> bold(t_3 = 12 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*21. Body Inside Bottom Diameter ($D_6$)* \ Empirical relation for tapered body],
  [
    $
      #text(size: 20pt)[$D_6$] &= #text(size: 20pt)[$2.25 D_2$] = 2.25 times 82 = bold(185 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*22. Body Outer Base Flange Diameter ($D_7$)* \ Empirical relation for base stability],
  [
    $
      #text(size: 20pt)[$D_7$] &= #text(size: 20pt)[$1.75 D_6$] = 1.75 times 185 = bold(320 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*23. Base Flange Thickness ($t_2$)* \ Empirical relation for base flange strength],
  [
    $
      #text(size: 20pt)[$t_2$] &= #text(size: 20pt)[$2 t_1$] = 2 times 10 = bold(20 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*24. Total Body Height ($H_("body")$)* \ Height for lift, nut, and clearance],
  [
    $
      #text(size: 20pt)[$H_("body")$] &= #text(size: 20pt)[$H_1 + h + 100$] = 400 + 80 + 100 = bold(580 "mm" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*25. Complete Design Output*],
  [*Screw Jack Summary: Spindle (do = 46 mm, dc = 38 mm, p = 8 mm), Nut (h = 80 mm, D1 = 65 mm, D2 = 82 mm, t1 = 10 mm), Handle (D = 42 mm, L = 2250 mm), Body (D5 = 123 mm, D6 = 185 mm, D7 = 320 mm, H_body = 580 mm), Efficiency eta = 15.4%*]
)

#figure-page(
  "1",
  "Screw Jack Complete Assembly",
  "Fig 17.11 Screw Jack.png",
  "Figure 17.11: Complete Front Sectional Assembly of Screw Jack & All Component Proportions"
)

// ==========================================
// SECTION 2: DIFFERENTIAL SCREW JACK (EX 17.17)
// ==========================================
#pagebreak()
#section-heading("2", "Differential Screw Jack Efficiency & Load Capacity Analysis")

#section-overview(
  [*System Parameters* \ Nominal Diameter: $d_o = 50 "mm"$ | Thread Friction: $mu = tan phi = 0.15$ \ Upper Screw Pitch: $p_1 = 16 "mm"$ | Lower Screw Pitch: $p_2 = 12 "mm"$ \ Allowable Maximum Shear Stress: $tau_("max") = 28 "MPa"$],
  [*Design Protocol* \ Part 1: Calculate mean diameters ($d_1, d_2$) and helix angles ($alpha_1, alpha_2$) \ Part 2: Calculate upper torque $T_1$, lower torque $T_2$, total torque $T$, & efficiency $eta$ \ Part 3: Calculate upper screw core diameter $d_("c1")$, stresses ($sigma_c, tau$), & max load capacity $W_("max")$]
)

#item-row(
  [*1. Mean Diameters ($d_1, d_2$) & Helix Angles ($alpha_1, alpha_2$)* \ Upper & lower square thread geometry for $d_o = 50 "mm"$],
  [
    $
      d_1 &= d_o - p_1 / 2 = 50 - 8 = 42 "mm" \
      d_2 &= d_o - p_2 / 2 = 50 - 6 = 44 "mm" \
      tan alpha_1 &= p_1 / (pi dot d_1) = 16 / (pi times 42) = 0.1212 \
      tan alpha_2 &= p_2 / (pi dot d_2) = 12 / (pi times 44) = 0.0868
    $
  ]
)

#item-row(
  [*2. Upper & Lower Thread Torques ($T_1, T_2$)* \ Thread friction torque per unit load W],
  [
    $
      T_1 &= W [(0.1212 + 0.15) / (1 - (0.1212)(0.15))] times 21 = 5.8 W \
      T_2 &= W [(0.0868 - 0.15) / (1 + (0.0868)(0.15))] times 22 = -1.37 W
    $
  ]
)

#item-row(
  [*3. Total Operating Torque ($T$) & Ideal Torque ($T_0$)* \ Differential torque equations],
  [
    $
      #text(size: 20pt)[$T$] &= #text(size: 20pt)[$T_1 - T_2$] = 5.8 W - (-1.37 W) = 7.17 W \
      #text(size: 20pt)[$T_0$] &= #text(size: 20pt)[$W [(p_1 - p_2) / (2 pi)]$] = (4 W) / (2 pi) = 0.636 W
    $
  ]
)

#item-row(
  [*4. Differential Screw Jack Efficiency ($eta$)* \ Ratio of ideal torque to total operating torque],
  [
    $
      #text(size: 20pt)[$eta$] &= #text(size: 20pt)[$T_0 / T$] \
      &= (0.636 W) / (7.17 W) \
      &= 0.0887 = bold(8.87\% quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*5. Upper Screw Core Diameter ($d_("c1")$) & Stresses* \ Direct compression and torsional shear in critical upper screw],
  [
    $
      d_("c1") &= d_o - p_1 = 50 - 16 = 34 "mm" \
      sigma_c &= W / (pi/4 (34)^2) = 1.101 times 10^(-3) W "N/mm"^2 \
      tau &= (16 (5.8 W)) / (pi (34)^3) = 0.7513 times 10^(-3) W "N/mm"^2
    $
  ]
)

#item-row(
  [*6. Maximum Shear Stress Limit ($tau_("max") = 28 "MPa"$)* \ Maximum shear stress equation],
  [
    $
      #text(size: 20pt)[$tau_("max")$] &= #text(size: 20pt)[$1/2 sqrt(sigma_c^2 + 4 tau^2)$] \
      28 &= 1/2 sqrt((1.101 times 10^(-3) W)^2 + 4(0.7513 times 10^(-3) W)^2) \
      &= 1.863 times 10^(-3) dot W
    $
  ]
)

#item-row(
  [*7. Maximum Liftable Load Capacity ($W_("max")$)* \ Maximum safe load limit],
  [
    $
      #text(size: 20pt)[$W$] &= #text(size: 20pt)[$28 / (1.863 times 10^(-3))$] \
      &= 30060 "N" \
      &= bold(30.06 "kN" quad bold("(Ans.)"))
    $
  ]
)

#item-row(
  [*8. Design Output*],
  [*Differential Screw Jack: Efficiency eta = 8.87%, Max Load Capacity W_max = 30.06 kN for tau_max = 28 MPa*]
)

#figure-page(
  "2",
  "Differential Screw Jack Assembly",
  "Fig 17.16. Differential Screw..png",
  "Figure 17.16: Differential Screw Jack Kinematic Layout & Thread Differential"
)

// ==========================================
// REFERENCE DATA TABLES
// ==========================================
#pagebreak()
#section-heading("REF 1", "Table 17.1 — Standard Square Thread Dimensions (IS: 4694 – 1968)")

#v(4pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  align: (center, center, center, center, center, center, center),
  table.header(
    [*Nominal Dia $d$ (mm)*], [*Major Dia $d_1$ (mm)*], [*Minor Dia Bolt $d_c$ (mm)*], [*Pitch $p$ (mm)*], [*Thread Depth $h$ (mm)*], [*Thread Depth Nut $H$ (mm)*], [*Core Area $A_c$ ($"mm"^2$)*]
  ),
  [10], [10.0], [8.0], [2.0], [1.0], [1.25], [50.3],
  [12], [12.0], [10.0], [2.0], [1.0], [1.25], [78.5],
  [14], [14.0], [12.0], [2.0], [1.0], [1.25], [113.0],
  [16], [16.0], [14.0], [2.0], [1.0], [1.25], [154.0],
  [18], [18.0], [16.0], [2.0], [1.0], [1.25], [201.0],
  [20], [20.0], [18.0], [2.0], [1.0], [1.25], [254.0],
  [22], [22.0], [19.0], [3.0], [1.5], [1.75], [284.0],
  [24], [24.0], [21.0], [3.0], [1.5], [1.75], [346.0],
  [26], [26.0], [23.0], [3.0], [1.5], [1.75], [415.0],
  [28], [28.0], [25.0], [3.0], [1.5], [1.75], [491.0],
  [30], [30.0], [27.0], [3.0], [1.5], [1.75], [573.0],
  [32], [32.0], [29.0], [3.0], [1.5], [1.75], [661.0],
  [(34)], [34.0], [31.0], [3.0], [1.5], [1.75], [755.0],
  [36], [36.0], [33.0], [3.0], [1.5], [1.75], [855.0],
  [(38)], [38.0], [35.0], [3.0], [1.5], [1.75], [962.0],
  [40], [40.0], [37.0], [3.0], [1.5], [1.75], [1075.0],
  [42], [42.0], [39.0], [3.0], [1.5], [1.75], [1195.0],
  [44], [44.0], [41.0], [3.0], [1.5], [1.75], [1320.0],
  [(46)], [46.0], [43.0], [3.0], [1.5], [1.75], [1452.0],
  [48], [48.0], [45.0], [3.0], [1.5], [1.75], [1590.0],
  [50], [50.0], [47.0], [3.0], [1.5], [1.75], [1735.0]
)

#v(6pt)
#text(size: 12pt, style: "italic")[
  *Standard Specification*: Dimensions per *IS: 4694 – 1968 (Reaffirmed 1996)* Fine Series square threads for power transmission.
]
