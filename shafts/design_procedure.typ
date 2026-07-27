// Design of Machine Elements — Reference Data Book & Textbook Module
// Chapter 14: Shafts and Axles Design Manual

#set page(
  paper: "a4",
  margin: (x: 2.4cm, top: 2.6cm, bottom: 2.6cm),
  header: context [
    #if counter(page).get().first() > 1 [
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 8.5pt, style: "italic", fill: rgb("#333333"))[CHAPTER 14. SHAFTS AND AXLES]],
        align(right)[#text(size: 8.5pt, style: "italic", fill: rgb("#333333"))[DESIGN PROCEDURE & DATA]]
      )
      #v(-4pt)
      #line(length: 100%, stroke: 0.5pt + black)
    ]
  ],
  footer: context [
    #line(length: 100%, stroke: 0.5pt + black)
    #v(3pt)
    #grid(
      columns: (1fr, 1fr),
      align(left)[#text(size: 8.5pt, fill: rgb("#333333"))[Mechanical Engineering Design Reference]],
      align(right)[#text(size: 8.5pt, weight: "bold", fill: rgb("#333333"))[14–#counter(page).display()]]
    )
  ]
)

// Classic Serif Typography (Shigley / McGraw-Hill Standard)
#set text(size: 10.5pt, fill: black)
#set par(justify: true, leading: 0.75em, spacing: 1.2em)

// Global Math Equation Sizing & Numbering System
#show math.equation: it => text(size: 13.5pt)[#it]

#show math.equation.where(block: true): it => block(
  width: 100%,
  inset: (y: 10pt),
  align(center)[#text(size: 15pt)[#it]]
)

// Prevent Headings from Separation (Orphans)
#show heading: set block(breakable: false)

#show heading.where(level: 1): it => block(above: 2.2em, below: 1.2em)[
  #text(size: 13.5pt, weight: "bold")[#it.body]
  #v(3pt)
  #line(length: 100%, stroke: 1pt + black)
]

#show heading.where(level: 2): it => block(above: 1.6em, below: 0.9em)[
  #text(size: 11.5pt, weight: "bold", style: "italic")[#it.body]
]

// Authentic Textbook Chapter Opening Header Block
#align(center)[
  #v(10pt)
  #text(size: 12pt, weight: "bold", tracking: 0.1em)[MECHANICAL ENGINEERING DESIGN] \
  #v(4pt)
  #line(length: 100%, stroke: 1.5pt + black)
  #v(2pt)
  #line(length: 100%, stroke: 0.5pt + black)
  #v(12pt)
  #text(size: 20pt, weight: "bold")[CHAPTER 14] \
  #v(4pt)
  #text(size: 16pt, weight: "bold", fill: rgb("#1a1a1a"))[SHAFTS AND AXLES] \
  #v(6pt)
  #text(size: 10.5pt, style: "italic")[Comprehensive Design Procedures, Load Resolutions, and Standard Reference Specifications] \
  #v(12pt)
  #line(length: 100%, stroke: 0.5pt + black)
  #v(2pt)
  #line(length: 100%, stroke: 1.5pt + black)
]

#v(16pt)

= 14.1 General Design Methodology & Input Data Preparation

The design of a power transmission shaft involves determining a safe minimum diameter that satisfies both strength and torsional rigidity requirements. The standard engineering methodology consists of establishing input operating parameters, resolving external component forces, evaluating maximum bending and torsional moments, applying combined stress equations, and selecting a standard commercial shaft size according to Indian Standard (IS) specifications.

#v(8pt)

== Problem Classification & Reference Index

Select the appropriate procedure section based on the primary loading conditions in the problem statement:

#v(10pt)

// Classic Booktabs Table Format
#align(center)[
  #table(
    columns: (1.8fr, 1.2fr, 2.2fr),
    fill: none,
    stroke: none,
    inset: (x: 9pt, y: 9pt),
    align: (col, row) => if row == 0 { center + horizon } else { left + horizon },
    
    table.hline(stroke: 1.5pt + black),
    [*Problem Statement Conditions*], [*Target Section*], [*Governing Design Equation*],
    table.hline(stroke: 0.75pt + black),
    
    [Power ($P$) and speed ($N$) specified without bending moment], [Section 14.3.1: Category A], [#text(size: 12.5pt)[$d = root(3, (16 T) / (pi tau)) = root(3, (5.1 T) / tau)$]],
    [Stationary or rotating axle carrying vertical bending loads ($T = 0$)], [Section 14.3.2: Category B], [#text(size: 12.5pt)[$d = root(3, (32 M) / (pi sigma_b)) = root(3, (10.18 M) / sigma_b)$]],
    [Shaft supporting pulleys or gears (Combined torque & bending)], [Section 14.3.3: Category C], [#text(size: 12.5pt)[$T_e = sqrt((K_m M)^2 + (K_t T)^2) \ => d = root(3, (16 T_e) / (pi tau))$]],
    [Shaft carrying axial thrust force ($F_a$) from propellers or helical gears], [Section 14.3.4: Category D], [#text(size: 12.5pt)[$M^* = M + (alpha F_a d_o (1 + k^2)) / 8 \ => T_e = sqrt((K_m M^*)^2 + (K_t T)^2)$]],
    [Limiting angular deflection constraint ($theta <= theta_("allow")$)], [Section 14.3.5: Category E], [#text(size: 12.5pt)[$d = root(4, (584 T L) / (G theta_("deg")))$]],
    [Design specified under a failure theory (Guest, Rankine, Von Mises)], [Section 14.3.6: Category F], [#text(size: 12.5pt)[$sigma_("eq") = (16) / (pi d^3) sqrt(4 M^2 + 3 T^2) <= sigma_y / "FOS"$]],
    [Comparative evaluation of solid and hollow shaft proportions], [Section 14.3.7: Category G], [#text(size: 12.5pt)[Weight saving $= k^2 times 100\%$, \ Equal-mass strength $= (1+k^2)/sqrt(1-k^2)$]],
    
    table.hline(stroke: 1.5pt + black)
  )
]

#v(14pt)

== Power, Speed, and Torque Relationships

When a shaft transmits power $P$ at a rotational speed $N$, the mean torque $T$ is calculated as:

#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ T = (60 dot P) / (2 pi dot N) quad ["N" dot "m"] $],
  [#text(size: 10pt, style: "italic")[(14.1)]]
)

For all stress and diameter calculations, convert torque into newton-millimeters ($"N" dot "mm"$):

#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ T = (60 dot P) / (2 pi dot N) times 10^3 = (9.55 times 10^6 dot P_("kW")) / N quad ["N" dot "mm"] $],
  [#text(size: 10pt, style: "italic")[(14.2)]]
)

If an overload service factor $K_s$ or peak torque percentage is specified (e.g., $20\%$ overload):

#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ T_("max") = K_s dot T quad "or" quad T_("max") = 1.20 dot T quad ["N" dot "mm"] $],
  [#text(size: 10pt, style: "italic")[(14.3)]]
)

#v(16pt)

= 14.2 Support Reactions & Component Force Resolution

Transmission shafts supporting elements such as belt pulleys or spur gears experience external forces that generate bending moments along the shaft length. These forces are resolved into vertical and horizontal planes to determine the resultant bending moment distribution.

#v(8pt)

== External Force Equations

*Belt Drive Force Resolution:*
- Convert angle of lap to radians: $theta_("rad") = theta_("deg") times pi / 180$ (for standard 180° lap angle, $theta = pi approx 3.1416 " rad"$).
- Belt tension ratio: $T_1 / T_2 = e^(mu theta_("rad"))$ or $2.3 log(T_1 / T_2) = mu theta_("rad")$.
- Transmitted torque: $T = (T_1 - T_2) R$.
- Total load acting on shaft: $W_("belt") = T_1 + T_2 + W_("pulley")$.
- For drives inclined at angle $phi$ to horizontal: $W_V = W_("belt") sin phi$ and $W_H = W_("belt") cos phi$.

#v(8pt)

*Spur Gear Force Resolution:*
- Tangential tooth force: $F_t = T_("N-mm") / R_("mm") = (2 T) / D$ (where $R$ is pitch radius and $D$ is pitch diameter).
- Radial tooth force: $F_r = F_t tan alpha$ (where pressure angle $alpha = 20°$).
- Normal load acting on gear tooth: $W_N = F_t / cos alpha$.

#v(14pt)

== Bending Moment Determination for Standard Support Configurations

1. Determine vertical plane support reactions ($R_(A V), R_(B V)$) and bending moments ($M_V$) at critical load points.
2. Determine horizontal plane support reactions ($R_(A H), R_(B H)$) and bending moments ($M_H$) at critical load points.
3. Compute resultant bending moment $M$ at each load point:
   #grid(
     columns: (1fr, auto),
     align: (center + horizon, right + horizon),
     [$ M = sqrt((M_V)^2 + (M_H)^2) quad ["N" dot "mm"] $],
     [#text(size: 10pt, style: "italic")[(14.4)]]
   )
4. Standard bending moment relationships for common beam configurations:
   - Simply supported shaft with central load $W$: $M_("max") = (W dot L) / 4$
   - Simply supported shaft with symmetrical loads $W$ at distance $a$ from supports: $M_("max") = W dot a$
   - Overhung shaft with load $W$ at distance $c$ from bearing: $M = W dot c$

#v(16pt)

= 14.3 Step-by-Step Design Procedures

== Category A: Pure Torsional Loading
When bending moments are negligible, required shaft diameter is governed by torsional shear stress $tau$.

#v(4pt)
*Solid Shaft Design Equation:*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ d = root(3, (16 dot T) / (pi dot tau)) = root(3, (5.1 dot T) / tau) quad ["mm"] $],
  [#text(size: 10pt, style: "italic")[(14.5a)]]
)

#v(6pt)
*Hollow Shaft Design Equation ($k = d_i / d_o$):*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ d_o = root(3, (16 dot T) / (pi dot tau dot (1 - k^4))) = root(3, (5.1 dot T) / (tau dot (1 - k^4))) quad ["mm"], quad d_i = k dot d_o $],
  [#text(size: 10pt, style: "italic")[(14.5b)]]
)

#v(14pt)

== Category B: Pure Bending Loading
When torque transmission is zero (as in stationary or non-torque-transmitting axles), diameter is governed by maximum allowable bending stress $sigma_b$.

#v(4pt)
*Solid Axle Design Equation:*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ d = root(3, (32 dot M) / (pi dot sigma_b)) = root(3, (10.18 dot M) / sigma_b) quad ["mm"] $],
  [#text(size: 10pt, style: "italic")[(14.6a)]]
)

#v(6pt)
*Hollow Axle Design Equation ($k = d_i / d_o$):*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ d_o = root(3, (32 dot M) / (pi dot sigma_b dot (1 - k^4))) = root(3, (10.18 dot M) / (sigma_b dot (1 - k^4))) quad ["mm"] $],
  [#text(size: 10pt, style: "italic")[(14.6b)]]
)

#v(14pt)

== Category C: Combined Bending and Torsion (ASME Code)
When a shaft is subjected to simultaneous bending moment $M$ and torque $T$, design is performed according to the ASME code using numerical combined shock and fatigue factors ($K_m$ for bending, $K_t$ for torsion).

#v(8pt)

*Step 1: Calculate Transmitted Torque & Component Loads* \
Calculate mean torque $T = (9.55 times 10^6 dot P_("kW")) / N quad ["N" dot "mm"]$. Resolve belt pulley loads ($T_1, T_2, W_("belt")$) and spur gear loads ($F_t, F_r, W_N$).

#v(8pt)
*Step 2: Determine Resultant Bending Moment ($M$)* \
$ M = sqrt((M_V)^2 + (M_H)^2) quad ["N" dot "mm"] $

#v(8pt)
*Step 3: Select Shock & Fatigue Factors ($K_m, K_t$)* \
Select $K_m$ and $K_t$ from Table 14.2 based on service conditions (standard values for steady rotation: $K_m = 1.5, K_t = 1.0$).

#v(8pt)
*Step 4: Evaluate Dual Stress Criteria ($T_e$ and $M_e$)* \
- *Equivalent Twisting Moment ($T_e$):*
  #grid(
    columns: (1fr, auto),
    align: (center + horizon, right + horizon),
    [$ T_e = sqrt((K_m dot M)^2 + (K_t dot T)^2) quad ["N" dot "mm"] $],
    [#text(size: 10pt, style: "italic")[(14.7)]]
  )
  $ d_("shear") = root(3, (16 dot T_e) / (pi dot tau)) = root(3, (5.1 dot T_e) / tau) $

- *Equivalent Bending Moment ($M_e$):*
  #grid(
    columns: (1fr, auto),
    align: (center + horizon, right + horizon),
    [$ M_e = 1/2 [K_m dot M + T_e] quad ["N" dot "mm"] $],
    [#text(size: 10pt, style: "italic")[(14.8)]]
  )
  $ d_("bending") = root(3, (32 dot M_e) / (pi dot sigma_b)) = root(3, (10.18 dot M_e) / sigma_b) $

#v(8pt)
*Step 5: Determine Governing Diameter & Standard Selection* \
Select $d = max(d_("shear"), d_("bending"))$ and round up to the next standard commercial size from Table 14.1.

#v(14pt)

== Category D: Combined Loading with Axial Thrust ($F_a$)
When a shaft carries an axial force $F_a$ (such as propeller thrust or axial loads from helical gears) in addition to bending and torsion:

#v(6pt)
1. *Calculate Column Factor ($alpha$):*
   - For Tensile Load: $alpha = 1.0$
   - For Compressive Load (if $L/K < 115$): $alpha = 1 / (1 - 0.0044 (L/K))$ where radius of gyration $K = d/4$ (solid) or $K = 0.32 d_o$ (hollow with $k=0.8$).
2. *Calculate Modified Bending Moment ($M^*$):*
   #grid(
     columns: (1fr, auto),
     align: (center + horizon, right + horizon),
     [$ M^* = M + (alpha dot F_a dot d_o (1 + k^2)) / 8 $],
     [#text(size: 10pt, style: "italic")[(14.9)]]
   )
3. *Calculate Equivalent Moments & Direct Diameters:*
   $ T_e = sqrt((K_m dot M^*)^2 + (K_t T)^2) => d_o = root(3, (5.1 dot T_e) / (tau dot (1 - k^4))) $
   $ M_e = 1/2 [K_m dot M^* + T_e] => d_o = root(3, (10.18 dot M^* + T_e) / (sigma_b dot (1 - k^4))) $

#v(14pt)

== Category E: Torsional Rigidity Constraint
For machine tool spindles and long transmission shafts, angular twist $theta$ must not exceed a specified permissible limit (typically 1° per 20 shaft diameters length).

#v(4pt)
*Solid Shaft Design Equation:*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ d = root(4, (584 dot T_("N-mm") dot L_("mm")) / (G_("N/mm"^2) dot theta_("deg"))) $],
  [#text(size: 10pt, style: "italic")[(14.10a)]]
)

#v(6pt)
*Hollow Shaft Design Equation ($k = d_i / d_o$):*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ d_o = root(4, (584 dot T_("N-mm") dot L_("mm")) / (G_("N/mm"^2) dot theta_("deg") dot (1 - k^4))) $],
  [#text(size: 10pt, style: "italic")[(14.10b)]]
)

#v(14pt)

== Category F: Design by Specific Failure Theories
When a design requires evaluation under explicit failure hypotheses:

#v(4pt)
*Maximum Shear Stress Theory (Guest / Tresca):*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ tau_("max") = (16) / (pi d^3) sqrt(M^2 + T^2) <= sigma_y / (2 dot "FOS") => d = root(3, (5.1 sqrt(M^2 + T^2)) / tau_("allow")) $],
  [#text(size: 10pt, style: "italic")[(14.11)]]
)

#v(6pt)
*Maximum Normal Stress Theory (Rankine):*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ sigma_("max") = (16) / (pi d^3) [M + sqrt(M^2 + T^2)] <= sigma_y / "FOS" => d = root(3, (5.1 (M + sqrt(M^2 + T^2))) / sigma_(b,"allow")) $],
  [#text(size: 10pt, style: "italic")[(14.12)]]
)

#v(6pt)
*Maximum Distortion Energy Theory (Von Mises / Hencky):*
#grid(
  columns: (1fr, auto),
  align: (center + horizon, right + horizon),
  [$ sigma_("eq") = (16) / (pi d^3) sqrt(4 M^2 + 3 T^2) <= sigma_y / "FOS" => d = root(3, (5.1 sqrt(4 M^2 + 3 T^2)) / sigma_("allow")) $],
  [#text(size: 10pt, style: "italic")[(14.13)]]
)

#v(14pt)

== Category G: Solid vs. Hollow Shaft Comparisons
To evaluate weight reduction and mechanical efficiency between solid and hollow shafts of equal material and length:

- *Weight Ratio (Equal outer diameter $d_o = d$):*
  $ W_H / W_S = 1 - k^2 => "Weight Saving" = k^2 times 100\% $
- *Torsional Strength Ratio (Equal outer diameter $d_o = d$):*
  $ T_H / T_S = 1 - k^4 $
- *Torsional Strength Ratio (Equal mass / cross-sectional area):*
  $ Z_(p h) / Z_(p s) = (1 + k^2) / sqrt(1 - k^2) $
- *Torsional Stiffness Ratio (Equal mass / cross-sectional area):*
  $ J_H / J_S = (1 + k^2) / (1 - k^2) $

#v(20pt)

// Reference Specifications Page
#pagebreak(weak: true)

= 14.4 Standard Specifications & Reference Tables

== Table 14.1: Standard Commercial Shaft Diameters (IS Specifications)

#v(10pt)

#align(center)[
  #table(
    columns: (1.5fr, 1.2fr, 2.5fr),
    fill: none,
    stroke: none,
    inset: (x: 10pt, y: 10pt),
    align: (col, row) => if row == 0 { center + horizon } else { left + horizon },
    
    table.hline(stroke: 1.5pt + black),
    [*Diameter Range*], [*Standard Step*], [*Standard Commercial Sizes (mm)*],
    table.hline(stroke: 0.75pt + black),
    
    [25 to 60 mm], [5 mm steps], [25, 30, 35, 40, 45, 50, 55, 60],
    [60 to 110 mm], [10 mm steps], [60, 70, 80, 90, 100, 110],
    [110 to 140 mm], [15 mm steps], [110, 125, 140],
    [140 to 500 mm], [20 mm steps], [140, 160, 180, 200, 220, 240, 260, 280, 300, dots, 500],
    
    table.hline(stroke: 1.5pt + black)
  )
]

#v(6pt)
#text(size: 9pt, style: "italic")[
  Note: Standard commercial lengths for finished shafts according to IS specifications are 5 m, 6 m, and 7 m.
]

#v(20pt)

== Table 14.2: Combined Shock and Fatigue Factors ($K_m$ & $K_t$)

#v(10pt)

#align(center)[
  #table(
    columns: (2.5fr, 1.2fr, 1.2fr),
    fill: none,
    stroke: none,
    inset: (x: 10pt, y: 10pt),
    align: (col, row) => if row == 0 { center + horizon } else { left + horizon },
    
    table.hline(stroke: 1.5pt + black),
    [*Type of Operating Service*], [*Bending Factor ($K_m$)*], [*Torsion Factor ($K_t$)*],
    table.hline(stroke: 0.75pt + black),
    
    [Stationary Shaft — Gradually applied load], [1.0], [1.0],
    [Stationary Shaft — Suddenly applied load], [1.5 to 2.0], [1.5 to 2.0],
    [Rotating Shaft — Steady / Gradually applied load], [1.5], [1.0],
    [Rotating Shaft — Suddenly applied load with minor shocks], [1.5 to 2.0], [1.5 to 2.0],
    [Rotating Shaft — Suddenly applied load with heavy shocks], [2.0 to 3.0], [1.5 to 3.0],
    
    table.hline(stroke: 1.5pt + black)
  )
]
