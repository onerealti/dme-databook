# Shaft Design Procedure & Standard Reference Guide

A comprehensive engineering reference guide for designing solid and hollow transmission shafts, machine shafts, and axles subjected to torsional, bending, axial, dynamic, and rigidity constraints.

---

## 1. General Design Methodology & Input Data Preparation

The design of a power transmission shaft involves determining a safe minimum diameter that satisfies both strength and rigidity requirements. The general methodology consists of establishing input operating parameters, resolving external component forces, evaluating maximum bending and torsional moments, applying combined stress equations, and selecting a standard commercial shaft size.

### 1.1 Problem Classification & Navigation

Select the appropriate procedure section based on the primary loading conditions in the problem statement:

| Problem Statement Conditions | Target Section | Governing Design Equation |
| :--- | :--- | :--- |
| **Power ($P$) and speed ($N$) specified without bending moment** | [Section 3.1: Category A (Pure Torsion)](#31-category-a-pure-torsional-loading) | $d = \sqrt[3]{\frac{16 T}{\pi \tau}} = \sqrt[3]{\frac{5.1 T}{\tau}}$ |
| **Stationary or rotating axle carrying vertical bending loads ($T = 0$)** | [Section 3.2: Category B (Pure Bending)](#32-category-b-pure-bending-loading) | $d = \sqrt[3]{\frac{32 M}{\pi \sigma_b}} = \sqrt[3]{\frac{10.18 M}{\sigma_b}}$ |
| **Shaft supporting pulleys or gears (Combined torque & bending)** | [Section 3.3: Category C (Combined ASME Loading)](#33-category-c-combined-bending-and-torsion) | $T_e = \sqrt{(K_m M)^2 + (K_t T)^2} \implies d = \sqrt[3]{\frac{16 T_e}{\pi \tau}}$ |
| **Shaft carrying axial thrust force ($F_a$) from propellers or helical gears** | [Section 3.4: Category D (Axial Thrust)](#34-category-d-combined-loading-with-axial-thrust) | $M^* = M + \frac{\alpha F_a d_o (1 + k^2)}{8} \implies T_e = \sqrt{(K_m M^*)^2 + (K_t T)^2}$ |
| **Limiting angular deflection constraint ($\theta \le \theta_{\text{allow}}$)** | [Section 3.5: Category E (Torsional Rigidity)](#35-category-e-torsional-rigidity-constraint) | $d = \sqrt[4]{\frac{584 T L}{G \theta_{\text{deg}}}}$ |
| **Design specified under a failure theory (Guest, Rankine, Von Mises)** | [Section 3.6: Category F (Failure Theories)](#36-category-f-design-by-specific-failure-theories) | $\sigma_{eq} = \frac{16}{\pi d^3} \sqrt{4 M^2 + 3 T^2} \le \frac{\sigma_y}{\text{FOS}}$ |
| **Comparative evaluation of solid and hollow shaft proportions** | [Section 3.7: Category G (Shaft Comparisons)](#37-category-g-solid-vs-hollow-shaft-comparisons) | Weight saving $= k^2 \times 100\%$, Equal-mass strength $= \frac{1+k^2}{\sqrt{1-k^2}}$ |

---

### 1.2 Power, Speed, and Torque Relationships
When a shaft transmits power $P$ at a rotational speed $N$, the mean torque $T$ is calculated as:

$$T = \frac{60 \cdot P}{2 \pi \cdot N} \quad [\text{N}\cdot\text{m}]$$

For all stress and diameter calculations, convert torque into newton-millimeters ($\text{N}\cdot\text{mm}$):

$$T = \frac{60 \cdot P}{2 \pi \cdot N} \times 10^3 = \frac{9.55 \times 10^6 \cdot P_{\text{kW}}}{N} \quad [\text{N}\cdot\text{mm}]$$

If an overload service factor $K_s$ or peak torque percentage is specified (e.g., $20\%$ overload):

$$T_{\max} = K_s \cdot T \quad \text{or} \quad T_{\max} = 1.20 \cdot T \quad [\text{N}\cdot\text{mm}]$$

---

## 2. Component Force Resolution & Support Reactions

Transmission shafts supporting elements such as belt pulleys or spur gears experience external forces that generate bending moments along the shaft length. These forces are resolved into vertical and horizontal planes to determine the resultant bending moment distribution.

### 2.1 External Force Equations
* **Belt Drive Forces:**
  * Convert angle of lap to radians: $\theta_{\text{rad}} = \theta_{\text{deg}} \times \frac{\pi}{180}$ (for a standard $180^\circ$ lap angle, $\theta = \pi \approx 3.1416\text{ rad}$).
  * Belt tension ratio: $\frac{T_1}{T_2} = e^{\mu \theta_{\text{rad}}}$ or $2.3 \log \left( \frac{T_1}{T_2} \right) = \mu \theta_{\text{rad}}$.
  * Transmitted torque: $T = (T_1 - T_2) R$.
  * Total load acting on shaft: $W_{\text{belt}} = T_1 + T_2 + W_{\text{pulley}}$.
  * For drives inclined at angle $\phi$ to the horizontal: $W_V = W_{\text{belt}} \sin\phi$ and $W_H = W_{\text{belt}} \cos\phi$.

* **Spur Gear Forces:**
  * Tangential tooth force: $F_t = \frac{T_{\text{N-mm}}}{R_{\text{mm}}} = \frac{2 T}{D}$ (where $R$ is pitch radius and $D$ is pitch diameter).
  * Radial tooth force: $F_r = F_t \tan\alpha$ (where pressure angle $\alpha = 20^\circ$).
  * Normal load acting on gear tooth: $W_N = \frac{F_t}{\cos\alpha}$.

### 2.2 Bending Moment Determination for Standard Support Configurations
1. Determine vertical plane support reactions ($R_{AV}, R_{BV}$) and bending moments ($M_V$) at critical load points.
2. Determine horizontal plane support reactions ($R_{AH}, R_{BH}$) and bending moments ($M_H$) at critical load points.
3. Compute the resultant bending moment $M$ at each load point:
   $$M = \sqrt{(M_V)^2 + (M_H)^2} \quad [\text{N}\cdot\text{mm}]$$
4. Standard bending moment relationships for common beam configurations:
   * Simply supported shaft with central load $W$: $M_{\max} = \frac{W \cdot L}{4}$
   * Simply supported shaft with symmetrical loads $W$ at distance $a$ from supports: $M_{\max} = W \cdot a$
   * Overhung shaft with load $W$ at distance $c$ from bearing: $M = W \cdot c$

---

## 3. Step-by-Step Design Procedures

### 3.1 Category A: Pure Torsional Loading
When bending moments are negligible, the required shaft diameter is governed by torsional shear stress $\tau$.

* **Solid Shaft Design Equation:**
  $$d = \sqrt[3]{\frac{16 \cdot T}{\pi \cdot \tau}} = \sqrt[3]{\frac{5.1 \cdot T}{\tau}} \quad [\text{mm}]$$
* **Hollow Shaft Design Equation ($k = d_i / d_o$):**
  $$d_o = \sqrt[3]{\frac{16 \cdot T}{\pi \cdot \tau \cdot (1 - k^4)}} = \sqrt[3]{\frac{5.1 \cdot T}{\tau \cdot (1 - k^4)}} \quad [\text{mm}], \quad d_i = k \cdot d_o$$
* **Standard Diameter Selection:** Round $d$ up to the next standard commercial size from [Table 4.1](#table-41-standard-commercial-shaft-diameters-is-specifications).

---

### 3.2 Category B: Pure Bending Loading
When torque transmission is zero (as in stationary or non-torque-transmitting axles), the diameter is governed by maximum allowable bending stress $\sigma_b$.

* **Solid Axle Design Equation:**
  $$d = \sqrt[3]{\frac{32 \cdot M}{\pi \cdot \sigma_b}} = \sqrt[3]{\frac{10.18 \cdot M}{\sigma_b}} \quad [\text{mm}]$$
* **Hollow Axle Design Equation ($k = d_i / d_o$):**
  $$d_o = \sqrt[3]{\frac{32 \cdot M}{\pi \cdot \sigma_b \cdot (1 - k^4)}} = \sqrt[3]{\frac{10.18 \cdot M}{\sigma_b \cdot (1 - k^4)}} \quad [\text{mm}]$$
* **Standard Diameter Selection:** Round $d$ up to the next standard commercial size from [Table 4.1](#table-41-standard-commercial-shaft-diameters-is-specifications).

---

### 3.3 Category C: Combined Bending and Torsion (ASME Code)
When a shaft is subjected to simultaneous bending moment $M$ and torque $T$, design is performed according to the ASME code using numerical combined shock and fatigue factors ($K_m$ for bending, $K_t$ for torsion).

#### Step 1: Calculate Transmitted Torque & Component Loads
1. Transmitted torque: $T = \frac{60 \cdot P \cdot 10^3}{2 \pi \cdot N} \quad [\text{N}\cdot\text{mm}]$.
2. Resolve belt pulley loads ($T_1, T_2, W_{\text{belt}}$) and spur gear loads ($F_t, F_r, W_N$) as detailed in [Section 2.1](#21-external-force-equations).

#### Step 2: Determine Resultant Bending Moment ($M$)
Calculate vertical bending moments $M_V$ and horizontal bending moments $M_H$ at critical points, then compute resultant bending moment:
$$M = \sqrt{(M_V)^2 + (M_H)^2} \quad [\text{N}\cdot\text{mm}]$$

#### Step 3: Select Shock & Fatigue Factors ($K_m, K_t$)
Select $K_m$ and $K_t$ from [Table 4.2](#table-42-combined-shock-and-fatigue-factors-k_m--k_t) based on operating conditions (standard values for rotating shafts under steady load: $K_m = 1.5, K_t = 1.0$).

#### Step 4: Evaluate Dual Stress Criteria ($T_e$ and $M_e$)
* **Shear Stress Criterion ($T_e$):**
  $$T_e = \sqrt{(K_m \cdot M)^2 + (K_t \cdot T)^2} \quad [\text{N}\cdot\text{mm}]$$
  * Solid Shaft: $d_{\text{shear}} = \sqrt[3]{\frac{16 \cdot T_e}{\pi \cdot \tau}} = \sqrt[3]{\frac{5.1 \cdot T_e}{\tau}}$
  * Hollow Shaft: $d_{o,\text{shear}} = \sqrt[3]{\frac{16 \cdot T_e}{\pi \cdot \tau \cdot (1 - k^4)}} = \sqrt[3]{\frac{5.1 \cdot T_e}{\tau \cdot (1 - k^4)}}$

* **Bending Stress Criterion ($M_e$):**
  $$M_e = \frac{1}{2} \left[ K_m \cdot M + T_e \right] \quad [\text{N}\cdot\text{mm}]$$
  * Solid Shaft: $d_{\text{bending}} = \sqrt[3]{\frac{32 \cdot M_e}{\pi \cdot \sigma_b}} = \sqrt[3]{\frac{10.18 \cdot M_e}{\sigma_b}}$
  * Hollow Shaft: $d_{o,\text{bending}} = \sqrt[3]{\frac{32 \cdot M_e}{\pi \cdot \sigma_b \cdot (1 - k^4)}} = \sqrt[3]{\frac{10.18 \cdot M_e}{\sigma_b \cdot (1 - k^4)}}$

#### Step 5: Adopt Governing Size & Select Standard Diameter
Select $d = \max(d_{\text{shear}}, d_{\text{bending}})$ and round up to the next standard commercial size from [Table 4.1](#table-41-standard-commercial-shaft-diameters-is-specifications).

---

### 3.4 Category D: Combined Loading with Axial Thrust ($F_a$)
When a shaft carries an axial force $F_a$ (such as propeller thrust or axial loads from helical gears) in addition to bending and torsion:

#### Step 1: Compute Column Factor ($\alpha$)
* For Tensile Load: $\alpha = 1.0$
* For Compressive Load (if slenderness ratio $L/K < 115$):
  $$\alpha = \frac{1}{1 - 0.0044 (L/K)}$$
  where radius of gyration $K = \frac{d}{4}$ (solid shaft) or $K = 0.32 d_o$ (for hollow shaft with $k = 0.8$).

#### Step 2: Compute Modified Bending Moment ($M^*$)
$$M^* = M + \frac{\alpha \cdot F_a \cdot d_o (1 + k^2)}{8}$$

#### Step 3: Compute Equivalent Moments & Direct Diameters
$$T_e = \sqrt{(K_m \cdot M^*)^2 + (K_t \cdot T)^2} \implies d_o = \sqrt[3]{\frac{5.1 \cdot T_e}{\tau \cdot (1 - k^4)}}$$
$$M_e = \frac{1}{2} [K_m \cdot M^* + T_e] \implies d_o = \sqrt[3]{\frac{10.18 \cdot M_e}{\sigma_b \cdot (1 - k^4)}}$$

---

### 3.5 Category E: Torsional Rigidity Constraint
For machine tool spindles and long transmission shafts, angular twist $\theta$ must not exceed a specified permissible limit (typically $1^\circ$ per 20 shaft diameters length).

* **Solid Shaft Design Equation:**
  $$d = \sqrt[4]{\frac{584 \cdot T_{\text{N-mm}} \cdot L_{\text{mm}}}{G_{\text{N/mm}^2} \cdot \theta_{\text{deg}}}}$$
* **Hollow Shaft Design Equation ($k = d_i / d_o$):**
  $$d_o = \sqrt[4]{\frac{584 \cdot T_{\text{N-mm}} \cdot L_{\text{mm}}}{G_{\text{N/mm}^2} \cdot \theta_{\text{deg}} \cdot (1 - k^4)}}$$

*(where $T$ is in $\text{N}\cdot\text{mm}$, $L$ is in $\text{mm}$, $G$ is in $\text{N/mm}^2$, and $\theta$ is in degrees).*

---

### 3.6 Category F: Design by Specific Failure Theories
When a design requires evaluation under explicit failure hypotheses:

* **Maximum Shear Stress Theory (Guest / Tresca):**
  $$\tau_{\max} = \frac{16}{\pi d^3} \sqrt{M^2 + T^2} \le \frac{\sigma_y}{2 \cdot \text{FOS}} \implies d = \sqrt[3]{\frac{5.1 \sqrt{M^2 + T^2}}{\tau_{\text{allow}}}}$$

* **Maximum Normal Stress Theory (Rankine):**
  $$\sigma_{\max} = \frac{16}{\pi d^3} \left[ M + \sqrt{M^2 + T^2} \right] \le \frac{\sigma_y}{\text{FOS}} \implies d = \sqrt[3]{\frac{5.1 \left( M + \sqrt{M^2 + T^2} \right)}{\sigma_{b,\text{allow}}}}$$

* **Maximum Distortion Energy Theory (Von Mises / Hencky):**
  $$\sigma_{eq} = \frac{16}{\pi d^3} \sqrt{4 M^2 + 3 T^2} \le \frac{\sigma_y}{\text{FOS}} \implies d = \sqrt[3]{\frac{5.1 \sqrt{4 M^2 + 3 T^2}}{\sigma_{\text{allow}}}}$$

---

### 3.7 Category G: Solid vs. Hollow Shaft Comparisons
To evaluate weight reduction and mechanical efficiency between solid and hollow shafts of equal material and length:

* **Weight Ratio (Equal outer diameter $d_o = d$):**
  $$\frac{W_H}{W_S} = 1 - k^2 \implies \text{Percentage Weight Saving} = k^2 \times 100\%$$

* **Torsional Strength Ratio (Equal outer diameter $d_o = d$):**
  $$\frac{T_H}{T_S} = 1 - k^4$$

* **Torsional Strength Ratio (Equal mass / cross-sectional area):**
  $$\frac{Z_{ph}}{Z_{ps}} = \frac{1 + k^2}{\sqrt{1 - k^2}}$$

* **Torsional Stiffness Ratio (Equal mass / cross-sectional area):**
  $$\frac{J_H}{J_S} = \frac{1 + k^2}{1 - k^2}$$

---

## 4. Standard Specifications & Reference Tables

### Table 4.1: Standard Commercial Shaft Diameters (IS Specifications)

| Diameter Range | Standard Step | Standard Commercial Sizes ($\text{mm}$) |
| :---: | :---: | :--- |
| **$25\text{ to } 60\text{ mm}$** | $5\text{ mm}$ steps | $25, 30, 35, 40, 45, 50, 55, 60$ |
| **$60\text{ to } 110\text{ mm}$** | $10\text{ mm}$ steps | $60, 70, 80, 90, 100, 110$ |
| **$110\text{ to } 140\text{ mm}$** | $15\text{ mm}$ steps | $110, 125, 140$ |
| **$140\text{ to } 500\text{ mm}$** | $20\text{ mm}$ steps | $140, 160, 180, 200, 220, 240, 260, 280, 300, \dots, 500$ |

*Standard commercial lengths for finished shafts:* $5\text{ m}$, $6\text{ m}$, and $7\text{ m}$.

---

### Table 4.2: Combined Shock and Fatigue Factors ($K_m$ & $K_t$)

| Type of Operating Service | Bending Factor ($K_m$) | Torsion Factor ($K_t$) |
| :--- | :---: | :---: |
| **Stationary Shaft — Gradually applied load** | $1.0$ | $1.0$ |
| **Stationary Shaft — Suddenly applied load** | $1.5\text{ to } 2.0$ | $1.5\text{ to } 2.0$ |
| **Rotating Shaft — Steady / Gradually applied load** | $1.5$ | $1.0$ |
| **Rotating Shaft — Suddenly applied load with minor shocks** | $1.5\text{ to } 2.0$ | $1.5\text{ to } 2.0$ |
| **Rotating Shaft — Suddenly applied load with heavy shocks** | $2.0\text{ to } 3.0$ | $1.5\text{ to } 3.0$ |
