# Design Data Book — Screwed Joints & Fasteners

> [!NOTE]
> **Standard Engineering Design Data & Calculation Manual:**  
> This design manual provides standard governing design equations, structural analysis procedures, and ISO metric thread specifications (IS: 4218 - 1976) for machine element design and examination reference.  
> 1. Locate the applicable joint configuration in the **[Fastener Joint Classification Index](#fastener-joint-classification-index)**.
> 2. Perform **[Standard Unit Pre-Processing](#1-symbol-legend--standard-unit-pre-processing)** ($\text{N}$, $\text{mm}$, $\text{N/mm}^2$).
> 3. Execute the designated step-by-step design procedure for the given joint setup.
> 4. Select standard thread designations from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

## Fastener Joint Classification Index

Select the governing design procedure based on joint classification and given specifications:

| Joint Configuration & Design Requirements | Mechanical System / Physical Setup | Design Reference |
| :--- | :--- | :---: |
| Bolt size $d$ given $\implies$ Calculate safe tensile load $P$ or tightening stress $\sigma_t$ | Tap bolt, standard bolt fastening | **[Procedure A](#2-procedure-a-direct-stress-analysis-for-known-bolt-sizes)** |
| Applied load $P$ or torque $T$ given (un-preloaded) $\implies$ Determine bolt diameter $d$ | Eye bolt, shaft coupling, safety valve fulcrum, bar stay | **[Procedure B](#3-procedure-b-fastener-sizing-under-direct-axial-tensile--shear-loading)** |
| Internal pressure $p$, cylinder diameter $D \implies$ Determine stud count $n$, size $d$ & pitch $p_c$ | Cylinder cover studs, pressure vessel cover plate | **[Procedure C](#4-procedure-c-cylinder-cover-studs--leak-proof-joint-layout)** |
| Pressure $p$, fixed stud count $n$, gasket factor $K \implies$ Determine bolt diameter $d$ via quadratic | Steam engine cylinder cover with gasket | **[Procedure D](#5-procedure-d-preloaded-flange-bolts-with-gasket-compression)** |
| Preloaded joint under cyclic load, yield $\sigma_y$ & endurance $\sigma_e$ specified $\implies$ Size bolt | Fatigue-loaded cylinder cover studs | **[Procedure E](#6-procedure-e-soderberg-fatigue-design-for-preloaded-fasteners)** |
| Uniform stress distribution under impact loading $\implies$ Calculate axial shank hole diameter $D_h$ | Turned shank / drilled axial hole bolt | **[Procedure F](#7-procedure-f-bolts-of-uniform-strength)** |
| Wall bracket with horizontal eccentric load parallel to bolt axis $\implies$ Size bolts | Wall bracket tilting about lower base edge | **[Procedure G](#8-procedure-g-eccentric-bolted-brackets--load-parallel-to-bolt-axes)** |
| Bracket with vertical/inclined eccentric load $\implies$ Size bolts & bracket arm cross-section | Travelling crane bracket, offset I-section bracket | **[Procedure H](#9-procedure-h-eccentric-bolted-brackets--vertical--inclined-loading)** |
| Circular foundation flange with overturning moment $\implies$ Size PCD bolts / check stresses | Pillar crane circular base, flanged bearing | **[Procedure I](#10-procedure-i-circular-base-foundation-flanges)** |
| Solid forged bracket with circular arm & square flange $\implies$ Size arm & calculate bolt shear | Forged bracket under combined bending, torsion & shear | **[Procedure J](#11-procedure-j-solid-forged-brackets--combined-bending-torsion--coplanar-shear)** |

---

> [!IMPORTANT]
> **Pressure Vessel & Cylinder Cover Classification Guidelines:**  
> - **Cyclic Fatigue (Yield $\sigma_y$ and Endurance $\sigma_e$ specified):** Apply **[Procedure E (Soderberg Criterion)](#6-procedure-e-soderberg-fatigue-design-for-preloaded-fasteners)**.  
> - **Preloaded Gasket Joint (Gasket type / factor $K$ specified, fixed bolt count $n$):** Apply **[Procedure D (Quadratic Preload Sizing)](#5-procedure-d-preloaded-flange-bolts-with-gasket-compression)**.  
> - **Un-preloaded Stud Layout (Determine stud count $n$ and check leak-proof pitch $p_c$):** Apply **[Procedure C (Stud Layout & Pitch Verification)](#4-procedure-c-cylinder-cover-studs--leak-proof-joint-layout)**.

---

## 1. Symbol Legend & Standard Unit Pre-Processing

### Standard Input Checklist (Pre-Calculation Protocol)

Prior to entering parameters into governing design equations, standardize all input variables:

1. **Load & Torque Conversions:**
   - Applied Load ($W, P$): $P (\text{N}) = P (\text{kN}) \times 10^3$
   - Transmitted Torque ($T$): $T (\text{N}\cdot\text{mm}) = T (\text{N}\cdot\text{m}) \times 10^3$
   - Pressure ($p$): $p (\text{N/mm}^2) = p (\text{MPa}) = p (\text{bar}) \times 0.1$
2. **Radius Conversions for Circular Systems:**
   - Foundation Base Radius: $R = \frac{D_{\text{base}}}{2} \quad [\text{mm}]$
   - Pitch Circle Radius: $r = \frac{d_{\text{pcd}}}{2} \quad [\text{mm}]$
3. **Core Thread Approximations (IS: 4218):**
   - Root / Core Diameter: $d_c \approx 0.84\,d \quad [\text{mm}]$
   - Stress Area: $A_c = \frac{\pi}{4}d_c^2 \approx \frac{\pi}{4}(0.84d)^2 = \mathbf{0.5542\,d^2} \quad [\text{mm}^2]$

---

## 2. Procedure A: Direct Stress Analysis for Known Bolt Sizes

### A1. Determination of Safe Tensile Load ($P$)
*Given: Nominal bolt size $d$, allowable tensile stress $\sigma_t$.*

1. Retrieve core stress area $A_c$ for designation $d$ from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)** *(or evaluate $A_c = 0.5542\,d^2$)*.
2. Evaluate maximum permissible axial tensile force:
   $$\boxed{P = A_c \times \sigma_t} \quad [\text{N}]$$

---

### A2. Evaluation of Initial Tightening Stress ($\sigma_t$)
*Given: Nominal bolt size $d$, unloaded pre-tightened joint ($P_{\text{external}} = 0$).*

1. Retrieve core diameter $d_c$ from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)** *(or evaluate $d_c = 0.84\,d$)*.
2. Determine empirical initial tightening tension:
   $$F_i = 2840 \cdot d \quad [\text{N}] \quad (d \text{ in mm})$$
3. Evaluate induced tightening stress:
   $$\boxed{\sigma_t = \frac{F_i}{\frac{\pi}{4}d_c^2}} \quad [\text{N/mm}^2]$$

---

## 3. Procedure B: Fastener Sizing under Direct Axial Tensile & Shear Loading

### B1. Axial Tensile Sizing (Lifting Eye Bolts, Safety Valve Fulcrums, Boiler Stays)

1. Determine total net axial load $P$ ($\text{N}$):
   - **Lifting Eye Bolt:** $P = W (\text{kN}) \times 10^3 \quad [\text{N}]$
   - **Safety Valve Fulcrum:** Upward steam force $F = \frac{\pi}{4}D^2 \cdot p \quad [\text{N}]$, lever end load $W = F \div (\text{leverage ratio})$, net fulcrum tension $P = F - W \quad [\text{N}]$.
   - **Boiler Bar Stay:** $P = (\text{pitch}_1 \times \text{pitch}_2) \cdot p \quad [\text{N}] \quad (\text{pitches in mm}, p \text{ in N/mm}^2)$.

   ![Fig 11.29: Longitudinal Bar Stay](Figures/fig%2011.29.png)

2. Evaluate required core diameter:
   $$d_c = \sqrt{\frac{4P}{\pi \sigma_t}} \quad [\text{mm}]$$
3. Select commercial thread designation from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)** satisfying $d_c \ge d_{c,\text{req}}$ *(or nominal diameter $d \approx d_c / 0.84$)*.

---

### B2. Torsional Shear Sizing (Flanged Shaft Couplings)

1. Convert torque: $T (\text{N}\cdot\text{mm}) = T (\text{N}\cdot\text{m}) \times 10^3$.
2. Calculate total tangential shear force acting on bolt circle radius $R_p$:
   $$P_s = \frac{T}{R_p} \quad [\text{N}]$$
3. Evaluate required core diameter for $n$ coupling bolts:
   $$d_c = \sqrt{\frac{4 P_s}{n \cdot \pi \cdot \tau}} \quad [\text{mm}]$$
4. Select matching ISO thread designation from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

## 4. Procedure C: Cylinder Cover Studs & Leak-Proof Joint Layout

### Step 1: Evaluate Total Pressure Force ($P$)
$$P = \frac{\pi}{4} D^2 \cdot p \quad [\text{N}] \quad (D \text{ in mm}, \; p \text{ in N/mm}^2)$$

### Step 2: Stud Layout & Sizing Methodology
Determine stud count $n$ using one of the standard design approaches:

- **Method A (Specified / Assumed Trial Stud Size $d$):**  
  Assume trial size (e.g., M24, $d_c = 20.32\text{ mm}$).  
  $$P_1 = \frac{\pi}{4}d_c^2 \cdot \sigma_t \quad [\text{N}] \qquad \implies \qquad n = \left\lceil \frac{P}{P_1} \right\rceil \quad \text{(round UP to next EVEN integer)}$$

- **Method B (Empirical Stud Count Rule):**  
  $$n = \left\lceil 0.03 \cdot D + 2 \right\rceil \quad \text{(round UP to next EVEN integer)}$$  
  Then evaluate required core diameter per stud:  
  $$P_1 = \frac{P}{n} \quad [\text{N}] \qquad \implies \qquad d_c = \sqrt{\frac{4 P_1}{\pi \sigma_t}} \quad [\text{mm}]$$  
  Select standard bolt from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)** with $d_c \ge d_{c,\text{req}}$.

### Step 3: Pitch Circle Diameter & Leak-Proof Pitch Check
1. **Cylinder Flange Wall Thickness ($t$):**  
   - Use specified wall thickness $t$.  
   - If $t$ is unstated (e.g., pressure vessel inspection cover), evaluate using Lame's equation for thick pressure vessels:  
     $$t = r_{\text{cylinder}} \left[ \sqrt{\frac{\sigma_{t,\text{shell}} + p}{\sigma_{t,\text{shell}} - p}} - 1 \right] \quad [\text{mm}] \qquad \text{(Adopt standard } t \ge 10\text{ mm)}$$
2. **Pitch Circle Diameter ($D_p$):**  
   $$D_p = D + 2t + 3d_1 \quad [\text{mm}] \quad (\text{where stud clearance hole } d_1 \approx d + 1\text{ mm})$$
3. **Circumferential Pitch ($p_c$):**  
   $$p_c = \frac{\pi \cdot D_p}{n} \quad [\text{mm}]$$
4. **Mandatory Leak-Proof Criterion Verification:**  
   $$20\sqrt{d_1} \;\le\; p_c \;\le\; 30\sqrt{d_1}$$  
   *If $p_c > 30\sqrt{d_1}$: increase stud count $n$ to the next higher even integer and re-verify $p_c$.*

### Step 4: Cover Plate Thickness Analysis *(When Cover Plate Sizing is Required)*
1. Maximum bending moment on circular cover: $M = 0.053 \cdot P \cdot D_p \quad [\text{N·mm}]$
2. Cover flange outer diameter $D_o = D_p + 3d_1 \quad [\text{mm}]$, $\quad$ Effective plate width $w = D_o - 2d_1 \quad [\text{mm}]$
3. Evaluate required cover plate thickness:
   $$t_1 = \sqrt{\frac{6M}{w \cdot \sigma_t}} \quad [\text{mm}] \quad (\sigma_t = \text{allowable stress of cover plate material})$$

---

## 5. Procedure D: Preloaded Flange Bolts with Gasket Compression

### Step 1: External Working Load per Bolt ($P_2$)
$$P_2 = \frac{\frac{\pi}{4}D^2 \cdot p}{n} \quad [\text{N}] \quad (D \text{ in mm}, \; p \text{ in N/mm}^2, \; n = \text{given bolt count})$$

### Step 2: Gasket Factor ($K$) Selection
Select joint stiffness ratio $K$ from **[Table 11.2](#table-112-gasket-factor-k-for-various-types-of-joints)**:
- **Soft copper gasket (standard default):** $K = 0.50$
- **Hard copper gasket:** $K = 0.25$
- **Soft packing / asbestos:** $K = 0.75$

### Step 3: Fastener Sizing Quadratic Equation
Resultant bolt tension $P = 2840d + K \cdot P_2 \quad [\text{N}]$ equated to core strength capacity $A_c \cdot \sigma_t = 0.5542\,\sigma_t\,d^2$:

$$0.5542\,\sigma_t\,d^2 - 2840\,d - K \cdot P_2 = 0$$

$$\boxed{d = \frac{2840 + \sqrt{2840^2 + 4 \times 0.5542\,\sigma_t \times K \cdot P_2}}{2 \times 0.5542\,\sigma_t}} \quad [\text{mm}]$$

Select the next standard thread size $d$ from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

## 6. Procedure E: Soderberg Fatigue Design for Preloaded Fasteners

### Step 1: External Working Load ($P_2$) & Initial Tightening Preload ($P_1$)
$$P_2 = \frac{\pi}{4}D^2 \cdot p \quad [\text{N}] \qquad P_1 = (\text{preload multiplier}) \times P_2 \quad [\text{N}]$$

### Step 2: Maximum & Minimum Fastener Loads
$$P_{\max} = \frac{P_1 + K \cdot P_2}{n} \quad [\text{N}] \qquad P_{\min} = \frac{P_1}{n} \quad [\text{N}]$$

### Step 3: Mean & Variable Load Components
$$P_m = \frac{P_{\max} + P_{\min}}{2} \quad [\text{N}] \qquad P_v = \frac{P_{\max} - P_{\min}}{2} \quad [\text{N}]$$

### Step 4: Mean & Variable Stress Formulations
Evaluating in terms of core diameter $d_c$ ($A_c = 0.7854\,d_c^2$):
$$\sigma_m = \frac{P_m}{0.7854\,d_c^2} \quad [\text{N/mm}^2] \qquad \sigma_v = \frac{P_v}{0.7854\,d_c^2} \quad [\text{N/mm}^2]$$

### Step 5: Soderberg Failure Criterion Equation
$$\sigma_v = \frac{\sigma_e}{\text{FOS}}\left[1 - \frac{\sigma_m \cdot \text{FOS}}{\sigma_y}\right]$$

Substitute Step 4 formulations into Soderberg's equation, solve for core diameter $d_c$, and select standard thread designation from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

## 7. Procedure F: Bolts of Uniform Strength

1. Retrieve nominal diameter $d_o$ and core root diameter $d_c$ from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)** *(or evaluate $d_c = 0.84\,d_o$)*.
2. Evaluate required central axial hole diameter:
   $$\boxed{D_h = \sqrt{d_o^2 - d_c^2}} \quad [\text{mm}]$$

*(Equalizes shank cross-sectional area to core root area $\frac{\pi}{4}(d_o^2 - D_h^2) = \frac{\pi}{4}d_c^2$, eliminating stress concentration under dynamic impact).*

---

## 8. Procedure G: Eccentric Bolted Brackets — Load Parallel to Bolt Axes

![Fig 11.31: Wall Bracket with Load Parallel to Bolt Axis](Figures/fig%2011.31.png)

### Step 1: Direct Tensile Force per Bolt
$$W_{t1} = \frac{W}{n_{\text{total}}} \quad [\text{N}] \quad (W \text{ in N})$$

### Step 2: Unit Tilting Load Parameter ($w$)
$$w = \frac{W \cdot L}{n_{\text{per\_row}} \left(L_1^2 + L_2^2 + \dots + L_k^2\right)} \quad [\text{N/mm}]$$

*(where $n_{\text{per\_row}}$ = number of bolts per horizontal row; $L_i$ = vertical distance of bolt row $i$ from lower tilting edge $E$).*

### Step 3: Secondary Tensile Load on Critical Upper Row
$$W_{t2} = w \cdot L_{\max} \quad [\text{N}]$$

### Step 4: Total Maximum Tensile Load & Core Sizing
$$W_t = W_{t1} + W_{t2} \quad [\text{N}] \qquad \implies \qquad d_c = \sqrt{\frac{4\,W_t}{\pi\,\sigma_t}} \quad [\text{mm}]$$

Select thread designation from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)** *(or evaluate $d \approx d_c / 0.84$)*.

---

### Procedure Variant: Cross-Section Stress Analysis (T-Section Bracket)

![Fig 11.32: Crane Runway Bracket](Figures/fig%2011.32.png)
![Fig 11.33: Bracket Plan View & Tilting Axis](Figures/fig%2011.33%20(diagram%20in%20solution%20of%20Eg.%2011.13).png)

1. **Section Geometry & Centroid ($\bar{y}$):**  
   Determine distance of centroid $G$ from the top flange surface:
   $$\bar{y} = \frac{\sum A_i \bar{y}_i}{\sum A_i} \quad [\text{mm}] \quad (\mathbf{\text{Evaluate all } \bar{y}_i \text{ from top flange surface}}), \qquad A = \sum A_i \quad [\text{mm}^2]$$
2. **Moment of Inertia ($I_{GG}$) & Section Moduli ($Z_1, Z_2$):**
   $$I_{GG} = \sum\!\left[\frac{b_i h_i^3}{12} + A_i(\bar{y} - \bar{y}_i)^2\right] \quad [\text{mm}^4]$$
   $$Z_1 = \frac{I_{GG}}{\bar{y}} \quad (\text{top tensile modulus}), \qquad Z_2 = \frac{I_{GG}}{H_{\text{total}} - \bar{y}} \quad (\text{bottom compressive modulus})$$
3. **Bending Moment & Combined Section Stresses:**  
   Bending moment at section X-X: $M = W \times (H_{\text{web}} + \bar{y}) \quad [\text{N·mm}]$.
   - Direct tensile stress: $\sigma_{t1} = \dfrac{W}{A} \quad [\text{N/mm}^2]$
   - Bending tensile stress (top flange): $\sigma_{b1} = \dfrac{M}{Z_1} \quad [\text{N/mm}^2]$
   - Bending compressive stress (bottom web): $\sigma_{b2} = \dfrac{M}{Z_2} \quad [\text{N/mm}^2]$
   - **Maximum tensile stress at section X-X:** $\sigma_t = \sigma_{b1} + \sigma_{t1} \quad [\text{N/mm}^2]$
   - **Maximum compressive stress at section X-X:** $\sigma_c = \sigma_{b2} - \sigma_{t1} \quad [\text{N/mm}^2]$
4. **Fastening Bolt Stress Analysis ($\sigma_{tb}$):**  
   - Direct load per bolt: $W_{t1} = \dfrac{W}{n_{\text{total}}} \quad [\text{N}]$
   - Unit load about tilting edge $E$: $w = \dfrac{W \cdot L_{\text{overturn}}}{n_{\text{per\_row}}(L_1^2 + L_2^2 + \dots)} \quad [\text{N/mm}]$
   - Secondary load on top bolts: $W_{t2} = w \cdot L_{\max} \quad [\text{N}]$
   - Total load on top bolt: $W_t = W_{t1} + W_{t2} \quad [\text{N}]$
   - Core diameter: $d_c = 0.84\,d \quad [\text{mm}]$
   - **Maximum tensile stress in bolts:** $\sigma_{tb} = \dfrac{W_t}{\frac{\pi}{4}(0.84d)^2} \quad [\text{N/mm}^2]$

---

## 9. Procedure H: Eccentric Bolted Brackets — Vertical & Inclined Loading

![Fig 11.35: Travelling Crane Bracket](Figures/fig%2011.35.png)

### Step 1: Force Vector Resolution
$$W_H = W\sin\theta \quad (\text{horizontal component — tension}) \qquad W_V = W\cos\theta \quad (\text{vertical component — shear})$$
*(For vertical load $\theta = 0^\circ \implies W_H = 0, W_V = W$).*

### Step 2: Direct Load Evaluation
$$W_{t1} = \frac{W_H}{n_{\text{total}}} \quad [\text{N}] \qquad W_s = \frac{W_V}{n_{\text{total}}} \quad [\text{N}]$$

### Step 3: Net Overturning Moment about Tilting Edge $E$
1. Determine component moments about edge $E$:
   - $T_V = W_V \times \text{arm}_V \quad [\text{N·mm}]$ (clockwise moment)
   - $T_H = W_H \times \text{arm}_H \quad [\text{N·mm}]$ (counterclockwise moment)
2. Net moment:
   $$T_{\text{net}} = |T_V - T_H| \quad [\text{N·mm}] \quad (\text{If } W_H = 0 \implies T_{\text{net}} = W_V \times \text{arm}_V)$$

### Step 4: Secondary Tension on Critical Upper Fasteners
$$w = \frac{T_{\text{net}}}{n_{\text{per\_row}} \left(L_1^2 + L_2^2 + \dots + L_k^2\right)} \quad [\text{N/mm}] \qquad W_{t2} = w \cdot L_{\max} \quad [\text{N}]$$

### Step 5: Combined Tensile Load
$$W_t = W_{t1} + W_{t2} \quad [\text{N}]$$

### Step 6: Equivalent Tensile Load (Maximum Principal Stress Theory)
$$W_{te} = \frac{1}{2}\left[W_t + \sqrt{W_t^2 + 4W_s^2}\right] \quad [\text{N}]$$

### Step 7: Core Diameter Sizing
$$d_c = \sqrt{\frac{4\,W_{te}}{\pi\,\sigma_t}} \quad [\text{mm}] \qquad \implies \text{Select thread size from Table 11.1}$$

---

### Bracket Arm Cross-Section Sizing

![Fig 11.36: Inclined Load Bracket](Figures/fig%2011.36.png)
![Fig 11.37: Force Components & Turning Moments](Figures/fig%2011.37%20(diagram%20in%20solution%20of%20Eg.%2011.15).png)

#### Rectangular Cross-Section Arm ($t \times b$):
1. Express critical top-fibre stress as a function of thickness $t$:
   $$\sigma_{t1} = \frac{W_H}{b \cdot t}, \qquad \sigma_{t2} = \frac{W_H \cdot \text{arm}_H}{\frac{1}{6} t b^2}, \qquad \sigma_{t3} = \frac{W_V \cdot \text{arm}_V}{\frac{1}{6} t b^2}$$
2. Solve $\sigma_{t1} + \sigma_{t2} + \sigma_{t3} = \sigma_{t,\text{allow}}$ for $t \quad [\text{mm}]$.

#### I-Cross-Section Arm ($b = 3t$):

![Fig 11.38: Offset I-Section Bracket](Figures/fig%2011.38.png)
![Fig 11.39: Load Distribution for Offset Bracket](Figures/fig%2011.39%20(diagram%20in%20solution%20of%20Eg.%2011.16).png)

Using cross-section area $A = 9t^2$ and section modulus $Z = 10.7t^3$, solve $\sigma_t = \sigma_{t1} - \sigma_{t2} + \sigma_{t3} = \sigma_{t,\text{allow}}$ for $t$, then compute flange width $b = 3t$.

---

## 10. Procedure I: Circular Base Foundation Flanges

![Fig 11.40: Flanged Bearing](Figures/fig%2011.40.png)

### Standard Formulation: Maximum Tensile Load on Critical Bolt

$$\boxed{W_t = \frac{2\,W\,L\,\left[R + r\cos\!\left(\frac{180°}{n_{\text{total}}}\right)\right]}{n_{\text{total}}\,(2R^2 + r^2)}} \quad [\text{N}]$$

| Parameter | Definition & Unit |
|:--|:--|
| $R$ | Outer base flange radius $= D_{\text{base}} / 2 \quad [\text{mm}]$ |
| $r$ | Bolt pitch circle radius $= d_{\text{pcd}} / 2 \quad [\text{mm}]$ |
| $L$ | Overturning moment arm from tilting edge $= e - R \quad [\text{mm}]$ |
| $W$ | Applied overturning load $[\text{N}]$ |
| $n_{\text{total}}$ | Total number of foundation bolts |

### Core Diameter Sizing
$$d_c = \sqrt{\frac{4\,W_t}{\pi\,\sigma_t}} \quad [\text{mm}] \qquad \implies \text{Select thread size from Table 11.1}$$

---

### Procedure Variant: Permissible Load Distance & Alternate Axis Stress Verification

![Fig 11.43: Pillar Crane Circular Flange Lines X-X and Y-Y](Figures/fig%2011.43.png)

**Part 1 — Maximum Load Distance $e$ (Line X-X, Bolts at 45° to Load Plane):**
1. Bolt tensile capacity $P_{\text{cap}} = A_c \cdot \sigma_t \quad [\text{N}]$, direct tension $W_{t1} = W/n_{\text{total}} \quad [\text{N}]$.
2. Maximum secondary tensile capacity: $W_{t2,\text{max}} = P_{\text{cap}} + W_{t1} \quad [\text{N}]$.
3. Distances from tilting tangent: $L_1 = R - r\cos 45^\circ$, $L_2 = R + r\cos 45^\circ \quad [\text{m}]$.
4. Unit load $w = W_{t2,\text{max}} / L_2$. Total resisting moment $M_{\text{res}} = 2w(L_1^2 + L_2^2) \quad [\text{N·m}]$.
5. Solve $M_{\text{res}} = W(e - R)$ for maximum permissible distance $e \quad [\text{m}]$.

**Part 2 — Stress Induced under Alternate Load Orientation (Line Y-Y, Bolts in Load Plane):**
1. Distances from tilting tangent: $L_1 = R - r$, $L_2 = R$, $L_3 = R + r \quad [\text{m}]$.
2. Resisting moment formulation: $M_{\text{res}} = w(L_1^2 + 2L_2^2 + L_3^2)$ using $e$ from Part 1.
3. Solve for $w$, evaluate critical bolt secondary tension $W_{t2} = w \cdot L_3 \quad [\text{N}]$.
4. Evaluate induced stress: $\sigma_{\max} = (W_{t2} - W_{t1}) \div A_c \quad [\text{N/mm}^2]$.

---

## 11. Procedure J: Solid Forged Brackets — Combined Bending, Torsion & Coplanar Shear

![Fig 11.45 & 11.46: Solid Forged Bracket with Square Flange](Figures/fig%2011.45%20%26%2011.46.png)

### J1. Arm Diameter $D$ — Combined Bending & Torsional Section

1. Bending moment: $M = W \times (L_{\text{arm}} - d_{\text{section offset}}) \quad [\text{N·mm}]$
2. Twisting moment: $T = W \times e \quad [\text{N·mm}]$
3. Equivalent twisting moment: $T_e = \sqrt{M^2 + T^2} \quad [\text{N·mm}]$
4. $$\boxed{D = \sqrt[3]{\frac{16\,T_e}{\pi\,\tau}}} \quad [\text{mm}]$$

### J2. Arm Diameter $d$ — Pure Bending Section

1. Bending moment: $M = W \times (e - D/2) \quad [\text{N·mm}]$
2. $$\boxed{d = \sqrt[3]{\frac{32\,M}{\pi\,\sigma_t}}} \quad [\text{mm}]$$

### J3. Tensile Load on Upper Flange Bolts

$$w = \frac{W \cdot L_{\text{overturn}}}{n_{\text{per\_row}}(L_1^2 + L_2^2)} \quad [\text{N/mm}] \qquad \implies \qquad W_t = w \cdot L_{\max} \quad [\text{N}]$$

### J4. Maximum Shearing Force Analysis (Coplanar Shear Vector Resolution)

![Fig 11.47: Primary and Secondary Shear Vectors](Figures/fig%2011.47%20(diagram%20in%20solution%20of%20Eg.%2011.20).png)

1. **Primary Direct Shear Force:**
   $$W_{s1} = \frac{W}{n_{\text{total}}} \quad [\text{N}]$$
2. **Secondary Torsional Shear Force:**
   $$W_{s2} = \frac{W \cdot e \cdot r_i}{\sum r_i^2} \quad [\text{N}]$$
   *(For a square flange with half-pitch $a$: $r_i = a\sqrt{2}$ for all bolts, $\sum r_i^2 = 8a^2$).*
3. **Resultant Shear Force Evaluation:**
   $$W_s = \sqrt{W_{s1}^2 + W_{s2}^2 + 2\,W_{s1}\,W_{s2}\cos\theta} \quad [\text{N}]$$
   - **Critical Fasteners** ($\theta = 45^\circ, \cos 45^\circ = +0.707$): primary and secondary vectors add constructively $\implies$ evaluate maximum resultant $W_s$ for design.
   - **Other Fasteners** ($\theta = 135^\circ, \cos 135^\circ = -0.707$): vectors partially cancel.

---

## 12. Baked Reference Tables

### Table 11.1: Basic Dimensions of Standard ISO Metric Screw Threads

Standard dimensions for normal coarse series ISO metric screw threads according to **IS: 4218 - 1976**.

| Designation | Nominal Diameter $d$ (mm) | Pitch $p$ (mm) | Core Diameter $d_c$ (mm) | Stress Area $A_c$ ($\text{mm}^2$) |
| :---: | :---: | :---: | :---: | :---: |
| **M 6** | 6 | 1.00 | 4.773 | 20.1 |
| **M 8** | 8 | 1.25 | 6.466 | 36.6 |
| **M 10** | 10 | 1.50 | 8.160 | 58.0 |
| **M 12** | 12 | 1.75 | 9.858 | 84.3 |
| **M 14** | 14 | 2.00 | 11.546 | 115.0 |
| **M 16** | 16 | 2.00 | 13.546 | 157.0 |
| **M 18** | 18 | 2.50 | 14.933 | 192.0 |
| **M 20** | 20 | 2.50 | 16.933 | 245.0 |
| **M 22** | 22 | 2.50 | 18.933 | 303.0 |
| **M 24** | 24 | 3.00 | 20.319 | 353.0 |
| **M 27** | 27 | 3.00 | 23.319 | 459.0 |
| **M 30** | 30 | 3.50 | 25.706 | 561.0 |
| **M 33** | 33 | 3.50 | 28.706 | 694.0 |
| **M 36** | 36 | 4.00 | 31.093 | 817.0 |
| **M 39** | 39 | 4.00 | 34.093 | 976.0 |
| **M 42** | 42 | 4.50 | 36.479 | 1121.0 |
| **M 48** | 48 | 5.00 | 41.866 | 1473.0 |

> [!NOTE]
> If Table 11.1 is not available, use the standard approximations:
> - Core diameter: $d_c \approx 0.84\,d$
> - Core area: $A_c \approx \frac{\pi}{4}(0.84\,d)^2 = 0.5542\,d^2$

---

### Table 11.2: Gasket Factor ($K$) for Various Types of Joints

| Type of Joint / Gasket Material | Gasket Factor $K$ | Default Design Value |
| :--- | :---: | :---: |
| **Metal to metal joint with through bolts** | $0.00 \sim 0.10$ | $0.00$ |
| **Hard copper gasket with long through bolts** | $0.25 \sim 0.50$ | $0.25$ |
| **Soft copper gasket with long through bolts** | $0.50 \sim 0.75$ | $0.50$ |
| **Soft packing with through bolts** | $0.75 \sim 1.00$ | $0.75$ |
| **Soft packing with studs** | $1.00$ | $1.00$ |

> [!NOTE]
> For numerical problems where a range is given, use the **minimum** value of the range (conservative standard assumption).
