# Welded Joints — Design Procedure & Guide

> [!TIP]
> **Zero-Memory Student Quick-Start Guide:**  
> You do **NOT** need to memorize formulas or polar moment of inertia tables to solve welded joint design problems!  
> 1. Extract the given values from the question paper using the **[Symbol Legend](#11-symbol-legend--unit-conversion-rules)** below.
> 2. Convert all units to **$\text{N}$ and $\text{mm}$** ($1\text{ kN} = 10^3\text{ N}$, $1\text{ N}\cdot\text{m} = 10^3\text{ N}\cdot\text{mm}$, $1\text{ MPa} = 1\text{ N/mm}^2$).
> 3. Identify the joint branch (Transverse/Parallel Fillet, Circular Fillet, Unsymmetrical Angle Section, In-Plane Eccentric, or Out-of-Plane Eccentric) and follow the step-by-step numbered instructions verbatim.
> 4. Plug numbers directly into the equations and look up weld line properties in **[Table 10.1](#5-baked-reference-tables)** at the end.

---

## Table of Contents
1. [Universal Inputs & Pre-Processing Checklist](#1-universal-inputs--pre-processing-checklist)
2. [Branch A: Transverse, Parallel & Combination Fillet Welds](#2-branch-a-transverse-parallel--combination-fillet-welds)
3. [Branch B: Circular Fillet Welds under Torsion & Bending](#3-branch-b-circular-fillet-welds-under-torsion--bending)
4. [Branch C: Axially Loaded Unsymmetrical Section Welds (Angles/Channels)](#4-branch-c-axially-loaded-unsymmetrical-section-welds-angleschannels)
5. [Branch D: Eccentrically Loaded Welded Joints (In-Plane & Out-of-Plane)](#5-branch-d-eccentrically-loaded-welded-joints-in-plane--out-of-plane)
6. [Baked Reference Tables](#6-baked-reference-tables)
   - [Table 10.1: Unit Polar Moment of Inertia & Section Modulus for Weld Profiles](#table-101-unit-polar-moment-of-inertia--section-modulus-for-weld-profiles)

---

## 1. Universal Inputs & Pre-Processing Checklist

### 1.1 Symbol Legend & Unit Conversion Rules

| Symbol | Parameter Name | Exam Unit | Conversion Rule |
| :--- | :--- | :--- | :--- |
| $P$ | Direct axial or eccentric load | $\text{kN}$ or $\text{N}$ | Multiply $\text{kN} \times 10^3 \implies \mathbf{N}$ |
| $T$ | Transmitted torque | $\text{kN}\cdot\text{m}$ or $\text{N}\cdot\text{mm}$ | Multiply $\text{kN}\cdot\text{m} \times 10^6 \implies \mathbf{N\cdot mm}$ |
| $M$ | Bending moment ($P \cdot e$) | $\text{N}\cdot\text{m}$ or $\text{N}\cdot\text{mm}$ | Multiply $\text{N}\cdot\text{m} \times 10^3 \implies \mathbf{N\cdot mm}$ |
| $s$ | Leg size of fillet weld | $\text{mm}$ | Plate thickness or weld size |
| $t_t$ | Effective throat thickness | $\text{mm}$ | $t_t = s \sin 45^\circ = 0.707 \cdot s$ |
| $l$ | Effective length of weld run | $\text{mm}$ | Primary weld length |
| $L$ | Total weld length run | $\text{mm}$ | $L = l + 12.5\text{ mm}$ (add for start/stop ends) |
| $\sigma_t, \sigma_b$ | Permissible tensile & bending stress | $\text{MPa}$ | $1\text{ MPa} = \mathbf{1\text{ N/mm}^2}$ |
| $\tau$ | Permissible shear stress of weld | $\text{MPa}$ | $1\text{ MPa} = \mathbf{1\text{ N/mm}^2}$ |
| $K_f$ | Fatigue stress concentration factor | Ratio | Given as $1.5$ (transverse) or $2.7$ (parallel) |

---

> [!CAUTION]
> **Calculator Pitfall:** ALWAYS perform all stress calculations using load in **$\text{N}$**, torque/bending moment in **$\text{N}\cdot\text{mm}$**, NOT $\text{kN}$ or $\text{N}\cdot\text{m}$! Always add $12.5\text{ mm}$ to the effective length $l$ for starting and stopping weld runs.

---

## 2. Branch A: Transverse, Parallel & Combination Fillet Welds

### Step 1: Single & Double Transverse Fillet Welds under Tension
* **Single Transverse Fillet Weld:**
  $$P = 0.707 \cdot s \cdot l \cdot \sigma_t \implies l = \frac{P}{0.707 \cdot s \cdot \sigma_t} \quad [\text{mm}]$$
* **Double Transverse Fillet Weld:**
  $$P = 1.414 \cdot s \cdot l \cdot \sigma_t \implies l = \frac{P}{1.414 \cdot s \cdot \sigma_t} \quad [\text{mm}]$$

---

### Step 2: Double Parallel Fillet Welds under Shear
$$P = 2 (0.707 \cdot s \cdot l \cdot \tau) = 1.414 \cdot s \cdot l \cdot \tau \implies l = \frac{P}{1.414 \cdot s \cdot \tau} \quad [\text{mm}]$$

---

### Step 3: Combination Weld (Transverse + Double Parallel Fillet)
1. Calculate full plate tensile load capacity $P = b \cdot t \cdot \sigma_t$.
2. Calculate transverse weld tensile capacity: $P_1 = 0.707 \cdot s \cdot b \cdot \sigma_t$.
3. Calculate remaining load for parallel welds: $P_2 = P - P_1$.
4. Calculate length of parallel welds ($l_2$):
   $$P_2 = 1.414 \cdot s \cdot l_2 \cdot \tau \implies l_2 = \frac{P_2}{1.414 \cdot s \cdot \tau} \quad [\text{mm}]$$
5. Total length of parallel weld: $L_2 = l_2 + 12.5\text{ mm}$.

---

## 3. Branch B: Circular Fillet Welds under Torsion & Bending

### Step 1: Solid Shaft Welded to Flat Plate under Torsion
* **Torque Capacity ($T$):**
  $$T = \frac{\pi}{\sqrt{2}} \cdot s \cdot r^2 \cdot \tau = 0.707 \cdot \pi \cdot s \cdot r^2 \cdot \tau \quad [\text{N}\cdot\text{mm}]$$
* **Required Weld Size ($s$):**
  $$s = \frac{\sqrt{2} \cdot T}{\pi \cdot r^2 \cdot \tau} \quad [\text{mm}] \qquad (r = d/2)$$

---

### Step 2: Solid Shaft Welded to Flat Plate under Bending
* Bending moment $M = P \cdot L \quad [\text{N}\cdot\text{mm}]$.
* Section modulus of circular throat weld: $Z_w = 0.707 \cdot s \cdot \frac{\pi d^2}{4} = \frac{\pi \cdot s \cdot d^2}{5.66}$.
* **Maximum Normal Bending Stress ($\sigma_b$):**
  $$\sigma_b = \frac{M}{Z_w} = \frac{5.66 \cdot M}{\pi \cdot s \cdot d^2} \le \sigma_{b(\text{allowable})}$$

---

### Step 3: Combined Bending and Torsion on Circular Fillet Weld
1. Calculate bending stress $\sigma_b = \frac{5.66 M}{\pi s d^2}$ and torsional shear stress $\tau = \frac{2.83 T}{\pi s d^2}$.
2. **Maximum Normal Stress:** $\sigma_{\max} = \frac{\sigma_b}{2} + \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2}$.
3. **Maximum Shear Stress:** $\tau_{\max} = \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2}$.

---

## 4. Branch C: Axially Loaded Unsymmetrical Section Welds (Angles/Channels)

Used when an structural angle or channel leg is welded to a gusset plate under static load $P$ passing through the centroid C.G. ($y_1, y_2$).

1. **Calculate Total Required Effective Weld Length ($L$):**
   $$P = 1.414 \cdot s \cdot L \cdot \tau \implies L = \frac{P}{1.414 \cdot s \cdot \tau} \quad [\text{mm}]$$

2. **Equate Moments about Neutral Axis C.G.:**
   $$l_1 \cdot y_1 = l_2 \cdot y_2 \quad \text{and} \quad l_1 + l_2 = L$$

3. **Calculate Individual Weld Lengths ($l_1, l_2$):**
   * Top Weld Length ($l_1$): $l_1 = L \cdot \left(\frac{y_2}{y_1 + y_2}\right)$
   * Bottom Weld Length ($l_2$): $l_2 = L \cdot \left(\frac{y_1}{y_1 + y_2}\right)$

---

## 5. Branch D: Eccentrically Loaded Welded Joints

### 5.1 Case D1: In-Plane Eccentric Load (Primary Shear + Torsional Shear)
Used when eccentric load $P$ acts in the plane of the weld group at distance $e$ from C.G.

1. **Primary Direct Shear Stress ($\tau_1$):**
   $$\tau_1 = \frac{P}{0.707 \cdot s \cdot A_u} \quad [\text{N/mm}^2] \qquad (A_u = \text{total length of welds})$$
2. **Secondary Torsional Shear Stress ($\tau_2$):**
   Look up unit polar moment of inertia $J_u$ from [Table 10.1](#6-baked-reference-tables):
   $$\tau_2 = \frac{(P \cdot e) \cdot r_{\max}}{0.707 \cdot s \cdot J_u} \quad [\text{N/mm}^2]$$
3. **Resultant Shear Stress ($R$):**
   $$R = \sqrt{\tau_1^2 + \tau_2^2 + 2 \tau_1 \tau_2 \cos\theta} \le \tau_{(\text{allowable})}$$

---

### 5.2 Case D2: Out-of-Plane Eccentric Load (Direct Shear + Bending Stress)
Used for brackets or cantilever plates welded to vertical columns with load $P$ acting perpendicular to weld plane at distance $e$.

1. **Primary Direct Shear Stress ($\tau_1$):**
   $$\tau_1 = \frac{P}{0.707 \cdot s \cdot A_u} \quad [\text{N/mm}^2]$$
2. **Bending Stress ($\sigma_b$):**
   Look up unit section modulus $Z_w$ from [Table 10.1](#6-baked-reference-tables):
   $$\sigma_b = \frac{P \cdot e}{0.707 \cdot s \cdot Z_w} \quad [\text{N/mm}^2]$$
3. **Maximum Shear Stress Criteria ($\tau_{\max}$):**
   $$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau_1^2} \le \tau_{(\text{allowable})}$$

---

## 6. Baked Reference Tables

### Table 10.1: Unit Polar Moment of Inertia & Section Modulus for Weld Profiles

Properties of weld groups treating the weld as a line of unit throat thickness ($t_t = 1\text{ mm}$).

| Weld Profile / Group Type | Unit Polar Moment of Inertia $J_u$ ($\text{mm}^3$) | Unit Section Modulus $Z_w$ ($\text{mm}^2$) | Location of Weld C.G. |
| :--- | :---: | :---: | :---: |
| **Circular Fillet Weld** *(Shaft of dia $d$)* | $J_u = \frac{\pi \cdot d^3}{4}$ | $Z_w = \frac{\pi \cdot d^2}{4}$ | Center of circle |
| **Single Vertical Line Weld** *(Length $d$)* | $J_u = \frac{d^3}{12}$ | $Z_w = \frac{d^2}{6}$ | $x = 0, y = d/2$ |
| **Two Parallel Vertical Welds** *(Height $d$, distance $b$)* | $J_u = \frac{d (3 b^2 + d^2)}{6}$ | $Z_w = \frac{d^2}{3}$ | Center of rectangle |
| **Two Parallel Horizontal Welds** *(Width $b$, distance $d$)* | $J_u = \frac{b (3 d^2 + b^2)}{6}$ | $Z_w = b \cdot d$ | Center of rectangle |
| **Rectangular Weld (4 Sides)** *(Width $b$, height $d$)* | $J_u = \frac{(b + d)^3}{6}$ | $Z_w = b \cdot d + \frac{d^2}{3}$ | Center of rectangle |
| **Top & Bottom Welds with One Side** *(C-Shape)* | $J_u = \frac{(2b + d)^3}{12} - \frac{b^2 (b + d)^2}{2b + d}$ | $Z_w = b \cdot d + \frac{d^2}{3}$ | $\bar{x} = \frac{b^2}{2b + d}, \bar{y} = \frac{d}{2}$ |

---

### Table 10.2: Fatigue Stress Concentration Factors ($K_f$) for Welds

| Type of Welded Joint | Stress Concentration Factor $K_f$ |
| :--- | :---: |
| **Reinforced Butt Weld** | $1.2$ |
| **Toe of Transverse Fillet Weld** | $1.5$ |
| **End of Parallel Fillet Weld** | $2.7$ |
| **T-Butt Joint with Sharp Corners** | $2.0$ |
