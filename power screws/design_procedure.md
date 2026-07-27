# Power Screws — Design Procedure & Guide

> [!TIP]
> **Zero-Memory Student Quick-Start Guide:**  
> You do **NOT** need to memorize formulas or external tables to solve power screw or screw jack design problems!  
> 1. Extract the given values from the question paper using the **[Symbol Legend](#11-symbol-legend--unit-conversion-rules)** below.
> 2. Convert all units to **$\text{N}$ and $\text{mm}$** ($1\text{ kN} = 10^3\text{ N}$, $1\text{ N}\cdot\text{m} = 10^3\text{ N}\cdot\text{mm}$, $1\text{ MPa} = 1\text{ N/mm}^2$).
> 3. Identify the problem type (Screw Jack Design, Differential Screw, or Compound Screw) and follow the step-by-step numbered instructions verbatim.
> 4. Plug numbers directly into the equations and look up thread dimensions in the **[Baked Reference Tables](#5-baked-reference-tables)** at the end.

---

## Table of Contents
1. [Universal Inputs & Pre-Processing Checklist](#1-universal-inputs--pre-processing-checklist)
2. [Branch A: Complete 14-Step Screw Jack Design Procedure](#2-branch-a-complete-14-step-screw-jack-design-procedure)
3. [Branch B: Differential Screw Analysis Procedure](#3-branch-b-differential-screw-analysis-procedure)
4. [Branch C: Compound Screw Analysis Procedure](#4-branch-c-compound-screw-analysis-procedure)
5. [Baked Reference Tables](#5-baked-reference-tables)
   - [Table 17.1: Standard Dimensions for Square Screw Threads (IS: 4694 – 1968)](#table-171-standard-dimensions-for-square-screw-threads-is-4694--1968)

---

## 1. Universal Inputs & Pre-Processing Checklist

### 1.1 Symbol Legend & Unit Conversion Rules

| Symbol | Parameter Name | Exam Unit | Conversion Rule |
| :--- | :--- | :--- | :--- |
| $W$ | Load to be lifted or lowered | $\text{kN}$ or $\text{N}$ | Multiply $\text{kN} \times 10^3 \implies \mathbf{N}$ |
| $H_1$ | Maximum lift height | $\text{mm}$ or $\text{m}$ | Multiply $\text{m} \times 10^3 \implies \mathbf{mm}$ |
| $\sigma_{ec}, \sigma_c$ | Yield / Permissible compressive stress of screw | $\text{MPa}$ | $1\text{ MPa} = \mathbf{1\text{ N/mm}^2}$ (If FOS given, $\sigma_c = \sigma_{ec}/\text{FOS}$) |
| $\tau_e, \tau$ | Yield / Permissible shear stress of screw | $\text{MPa}$ | $1\text{ MPa} = \mathbf{1\text{ N/mm}^2}$ (If FOS given, $\tau = \tau_e/\text{FOS}$) |
| $\sigma_{t(\text{nut})}, \sigma_{c(\text{nut})}$ | Permissible tensile & compressive stress of nut | $\text{MPa}$ | Use directly in $\text{N/mm}^2$ |
| $\tau_{\text{nut}}, p_b$ | Permissible shear stress & bearing pressure of nut | $\text{MPa}$ | Use directly in $\text{N/mm}^2$ |
| $\sigma_b$ | Allowable bending stress of handle material | $\text{MPa}$ | Use directly in $\text{N/mm}^2$ |
| $\mu = \tan\phi$ | Coefficient of friction between screw and nut | Ratio | Given directly (e.g., $0.12 \text{ or } 0.15$) |
| $\mu_1$ | Coefficient of collar friction at swivel cup | Ratio | Usually $\mu_1 = \mu = 0.15$ |
| $d_o, d_c, d, p$ | Nominal, Core, Mean diameter & Pitch of screw | $\text{mm}$ | Look up in [Table 17.1](#5-baked-reference-tables) |
| $T_1$ | Thread friction torque to rotate screw | $\text{N}\cdot\text{mm}$ | Primary torque calculation |
| $T_2$ | Swivel cup bearing collar friction torque | $\text{N}\cdot\text{mm}$ | Secondary collar torque |
| $T_{\text{total}}$ | Total operating torque ($T_1 + T_2$) | $\text{N}\cdot\text{mm}$ | Total resistance torque |
| $F$ | Effort applied by operator at end of handle | $\text{N}$ | Standard assumption: $F = 300\text{ N}$ |

---

> [!CAUTION]
> **Calculator Pitfall:** ALWAYS perform all stress and torque calculations using load in **$\text{N}$** and torque in **$\text{N}\cdot\text{mm}$**, NOT $\text{kN}$ or $\text{N}\cdot\text{m}$! Forgetting to multiply load by $10^3$ will give a screw core diameter that is 32 times too small.

---

## 2. Branch A: Complete 14-Step Screw Jack Design Procedure

![Fig 17.11: Complete Front Sectional Assembly of Screw Jack](Fig%2017.11 Screw%20Jack.png)

---

### Step 1: Design of Screw Spindle ($d_c, d_o, p, d$)
1. Calculate preliminary core diameter $d_c$ considering pure compressive load $W$ at allowable compressive stress $\sigma_c$:
   $$A_c = \frac{\pi}{4} (d_c)^2 = \frac{W}{\sigma_c} \implies d_c = \sqrt{\frac{4 W}{\pi \cdot \sigma_c}} \quad [\text{mm}]$$

2. Look up standard thread dimensions ($d_o, d_c, p$) from **[Table 17.1](#table-171-standard-dimensions-for-square-screw-threads-is-4694--1968)**.

> [!WARNING]
> **Heavy Load Selection Rule (Example 17.15):**  
> For heavy loads ($W \ge 50\text{ kN}$), do NOT select the immediate next higher standard size of $d_c$! Select a thread size **$1 \sim 2$ steps larger** than calculated $d_c$ (e.g., calculated $d_c = 32\text{ mm} \implies$ select $d_c = 38\text{ mm}, d_o = 46\text{ mm}, p = 8\text{ mm}$) to safely pass combined torsional shear stress.

3. Compute mean diameter:
   $$d = \frac{d_o + d_c}{2} = d_o - \frac{p}{2} \quad [\text{mm}]$$

---

### Step 2: Thread Friction Torque ($T_1$) & Direct Stresses
1. Compute helix angle $\alpha$ and friction angle $\phi$:
   $$\tan\alpha = \frac{p}{\pi \cdot d}, \qquad \tan\phi = \mu$$
2. Calculate torque required to rotate screw against thread friction ($T_1$):
   $$T_1 = W \cdot \left[ \frac{\tan\alpha + \tan\phi}{1 - \tan\alpha \tan\phi} \right] \cdot \frac{d}{2} \quad [\text{N}\cdot\text{mm}]$$
3. Direct compressive stress: $\sigma_c = \frac{W}{\frac{\pi}{4} (d_c)^2} \quad [\text{N/mm}^2]$
4. Torsional shear stress: $\tau = \frac{16 T_1}{\pi (d_c)^3} \quad [\text{N/mm}^2]$

---

### Step 3: Check Principal Combined Stresses in Screw
Calculate maximum combined stresses in the screw spindle:
* **Maximum Principal Compressive Stress:**
  $$\sigma_{c(\max)} = \frac{\sigma_c}{2} + \frac{1}{2} \sqrt{\sigma_c^2 + 4 \tau^2} \quad [\text{N/mm}^2]$$
* **Maximum Shear Stress:**
  $$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_c^2 + 4 \tau^2} \quad [\text{N/mm}^2]$$

> [!IMPORTANT]
> **Safety Check Gate:**  
> Verify $\sigma_{c(\max)} \le \sigma_{c(\text{allowable})}$ AND $\tau_{\max} \le \tau_{(\text{allowable})}$.  
> *If SAFE $\to$ Proceed to Step 4.*  
> *If UNSAFE $\to$ Select next larger thread size from Table 17.1 and repeat Steps 2–3.*

---

### Step 4: Design of Nut ($n, h$)
1. Number of threads in contact ($n$) based on bearing pressure $p_b \le 18\text{ N/mm}^2$:
   $$p_b = \frac{W}{\frac{\pi}{4} (d_o^2 - d_c^2) \cdot n} \implies n = \frac{4 W}{\pi (d_o^2 - d_c^2) \cdot p_b}$$
   *Always **ROUND UP** $n$ to the next integer (e.g. $8.42 \implies \mathbf{n = 10\text{ threads}}$).*

2. Height of nut ($h$):
   $$h = n \cdot p \quad [\text{mm}]$$

---

### Step 5: Thread Shear Stress Checks (Screw & Nut)
Thread thickness $t = p/2$:
* **Screw thread shear:** $\tau_{\text{screw}} = \frac{W}{\pi \cdot d_c \cdot t \cdot n} \le \tau_{(\text{allowable screw})} \quad (\mathbf{SAFE})$
* **Nut thread shear:** $\tau_{\text{nut}} = \frac{W}{\pi \cdot d_o \cdot t \cdot n} \le \tau_{(\text{allowable nut})} \quad (\mathbf{SAFE})$

---

### Step 6: Nut Collar Dimensions ($D_1, D_2, t_1$)
1. **Inner Body Tearing Diameter ($D_1$):**
   $$W = \frac{\pi}{4} \left( D_1^2 - d_o^2 \right) \cdot \sigma_{t(\text{nut})} \implies D_1 = \sqrt{d_o^2 + \frac{4 W}{\pi \cdot \sigma_{t(\text{nut})}}} \quad [\text{mm}]$$
2. **Outer Collar Crushing Diameter ($D_2$):**
   $$W = \frac{\pi}{4} \left( D_2^2 - D_1^2 \right) \cdot \sigma_{c(\text{nut})} \implies D_2 = \sqrt{D_1^2 + \frac{4 W}{\pi \cdot \sigma_{c(\text{nut})}}} \quad [\text{mm}]$$
3. **Collar Thickness ($t_1$) for Shearing:**
   $$W = \pi \cdot D_1 \cdot t_1 \cdot \tau_{\text{nut}} \implies t_1 = \frac{W}{\pi \cdot D_1 \cdot \tau_{\text{nut}}} \quad [\text{mm}]$$

---

### Step 7: Head Diameter ($D_3$) & Swivel Cup Pin ($D_4$)
* Head diameter: $D_3 = 1.75 \cdot d_o \quad [\text{mm}]$
* Cup seat & pin diameter: $D_4 \approx 20\text{ mm} \sim 25\text{ mm}$ (or $0.25 D_3$)

---

### Step 8: Swivel Cup Bearing Friction Torque ($T_2$)
* **Uniform Pressure Condition (Standard New Cup):**
  $$T_2 = \frac{2}{3} \cdot \mu_1 \cdot W \cdot \left[ \frac{(D_3/2)^3 - (D_4/2)^3}{(D_3/2)^2 - (D_4/2)^2} \right] \quad [\text{N}\cdot\text{mm}]$$
* **Uniform Wear Condition (Worn Cup):**
  $$T_2 = \mu_1 \cdot W \cdot \left[ \frac{D_3/2 + D_4/2}{2} \right] = \mu_1 \cdot W \cdot R_{\text{mean}} \quad [\text{N}\cdot\text{mm}]$$

---

### Step 9: Total Operating Torque ($T$) & Handle Length ($L$)
1. Total torque acting on handle:
   $$T = T_1 + T_2 \quad [\text{N}\cdot\text{mm}]$$
2. Handle length ($L$) for effort $F = 300\text{ N}$ applied by one operator:
   $$L' = \frac{T}{F} = \frac{T}{300\text{ N}} \quad [\text{mm}]$$
   Add allowance for hand gripping: $L = L' + \text{gripping allowance}$ *(e.g. $2203\text{ mm} \implies \mathbf{L = 2250\text{ mm}}$)*.

---

### Step 10: Handle Diameter ($D$) under Bending Moment ($M$)
Bending moment $M = F \cdot L = 300 \cdot L \quad [\text{N}\cdot\text{mm}]$:
$$M = \frac{\pi}{32} D^3 \cdot \sigma_b \implies D = \sqrt[3]{\frac{32 M}{\pi \cdot \sigma_b}} \quad [\text{mm}]$$
*Round $D$ up to next whole mm (e.g. $40.96 \implies \mathbf{D = 42\text{ mm}}$).*

---

### Step 11: Height of Head ($H$)
$$H = 2 \cdot D \quad [\text{mm}]$$

---

### Step 12: Check Screw Spindle for Buckling (J.B. Johnson Strut Formula)
* Effective column length: $L_{\text{eff}} = H_1 + \frac{h}{2} \quad [\text{mm}]$
* Radius of gyration: $k = 0.25 \cdot d_c \quad [\text{mm}]$
* Critical buckling load ($C = 0.25$ for Fix-Free end condition):
  $$W_{cr} = A_y \cdot \sigma_y \left[ 1 - \frac{\sigma_y}{4 \pi^2 E \cdot (0.25)} \left( \frac{L_{\text{eff}}}{k} \right)^2 \right] \quad [\text{N}]$$

> [!IMPORTANT]
> **Buckling Verification Check:**  
> Verify $W_{cr} > W_{\text{design}}$. If $W_{cr} > W$, screw is **SAFE AGAINST BUCKLING**.

---

### Step 13: Empirical Proportions for Screw Jack Body
* Top inside diameter: $D_5 = 1.5 \cdot D_2 \quad [\text{mm}]$
* Wall thickness: $t_3 = 0.25 \cdot d_o \approx 12\text{ mm}$
* Bottom inside diameter: $D_6 = 2.25 \cdot D_2 \quad [\text{mm}]$
* Bottom base outer diameter: $D_7 = 1.75 \cdot D_6 \quad [\text{mm}]$
* Base flange thickness: $t_2 = 2 \cdot t_1 \quad [\text{mm}]$
* Total body height: $H_{\text{body}} = H_1 + h + 100\text{ mm} \quad [\text{mm}]$

---

### Step 14: Calculate Overall Screw Jack Efficiency ($\eta$)
* Torque required without friction: $T_0 = W \cdot \tan\alpha \cdot \frac{d}{2} \quad [\text{N}\cdot\text{mm}]$
* Overall efficiency:
  $$\eta = \frac{T_0}{T_{\text{total}}} = \frac{T_0}{T_1 + T_2} \times 100\%$$

---

## 3. Branch B: Differential Screw Analysis Procedure

![Fig 17.16: Differential Screw Jack](Fig%2017.16.%20Differential%20Screw..png)

A differential screw consists of two coaxial threads of different pitches $p_1$ and $p_2$ ($p_1 > p_2$) wound in the **same direction** (both right-hand).

---

### Step 1: Geometric Parameters & Helix Angles
* Upper screw mean diameter: $d_1 = d_o - \frac{p_1}{2} \quad [\text{mm}]$
* Lower screw mean diameter: $d_2 = d_o - \frac{p_2}{2} \quad [\text{mm}]$
* Helix angles:
  $$\tan\alpha_1 = \frac{p_1}{\pi \cdot d_1}, \qquad \tan\alpha_2 = \frac{p_2}{\pi \cdot d_2}$$
* Effective axial displacement per revolution:
  $$p_{\text{eff}} = p_1 - p_2 \quad [\text{mm/rev}]$$

---

### Step 2: Torques to Overcome Friction ($T_1, T_2, T$)
Let $W$ = Load to be lifted in N.
* Upper screw friction torque (raising load):
  $$T_1 = W \cdot \left[ \frac{\tan\alpha_1 + \mu}{1 - \mu \tan\alpha_1} \right] \cdot \frac{d_1}{2} = (c_1 \cdot W) \quad [\text{N}\cdot\text{mm}]$$
* Lower screw friction torque (lowering load as upper ascends):
  $$T_2 = W \cdot \left[ \frac{\tan\alpha_2 - \mu}{1 + \mu \tan\alpha_2} \right] \cdot \frac{d_2}{2} = (c_2 \cdot W) \quad [\text{N}\cdot\text{mm}] \qquad (\text{Note: } c_2 < 0)$$
* **Net Operating Torque ($T$):**
  $$T = T_1 - T_2 = c_1 W - (c_2 W) = (c_1 + |c_2|) \cdot W \quad [\text{N}\cdot\text{mm}]$$

---

### Step 3: Ideal Torque ($T_0$) & Efficiency ($\eta$)
* Ideal torque without friction ($\mu_1 = 0, \mu_2 = 0$):
  $$T_1' = \frac{W \cdot p_1}{2\pi}, \qquad T_2' = \frac{W \cdot p_2}{2\pi}$$
  $$T_0 = T_1' - T_2' = \frac{W (p_1 - p_2)}{2\pi} \quad [\text{N}\cdot\text{mm}]$$
* Differential Screw Efficiency:
  $$\eta = \frac{T_0}{T} = \frac{\frac{W (p_1 - p_2)}{2\pi}}{T_1 - T_2} \times 100\%$$

---

### Step 4: Maximum Load Capacity ($W_{\max}$) via Shear Stress
Critical stresses occur in upper screw core $d_{c1} = d_o - p_1$:
* Direct compressive stress: $\sigma_c = \frac{W}{\frac{\pi}{4} (d_{c1})^2} = (k_{\sigma} \cdot W) \quad [\text{N/mm}^2]$
* Torsional shear stress: $\tau = \frac{16 T_1}{\pi (d_{c1})^3} = (k_{\tau} \cdot W) \quad [\text{N/mm}^2]$
* Maximum shear stress criteria ($\tau_{\max} = 28\text{ MPa}$):
  $$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_c^2 + 4 \tau^2} = \frac{W}{2} \sqrt{k_{\sigma}^2 + 4 k_{\tau}^2} \implies W_{\max} = \frac{2 \tau_{\max}}{\sqrt{k_{\sigma}^2 + 4 k_{\tau}^2}} \quad [\text{N}]$$

---

## 4. Branch C: Compound Screw Analysis Procedure

A compound screw consists of two coaxial threads of pitches $p_1$ and $p_2$ wound in **opposite directions** (one right-hand, one left-hand).

---

### Step 1: Effective Advance & Mechanical Advantage ($MA$)
* Effective advance per revolution:
  $$p_{\text{eff}} = p_1 + p_2 \quad [\text{mm/rev}]$$
* Mechanical Advantage for handle length $L$:
  $$MA = \frac{2 \pi \cdot L}{p_1 + p_2}$$

---

### Step 2: Torque & Efficiency
* Total torque to overcome friction:
  $$T = T_1 + T_2 = W \left( \left[ \frac{\tan\alpha_1 + \mu}{1 - \mu \tan\alpha_1} \right] \frac{d_1}{2} + \left[ \frac{\tan\alpha_2 + \mu}{1 - \mu \tan\alpha_2} \right] \frac{d_2}{2} \right) \quad [\text{N}\cdot\text{mm}]$$
* Ideal torque without friction:
  $$T_0 = \frac{W (p_1 + p_2)}{2\pi} \quad [\text{N}\cdot\text{mm}]$$
* Compound Screw Efficiency:
  $$\eta = \frac{T_0}{T} = \frac{\frac{W (p_1 + p_2)}{2\pi}}{T_1 + T_2} \times 100\%$$

---

## 5. Baked Reference Tables

### Table 17.1: Standard Dimensions for Square Screw Threads (IS: 4694 – 1968)

Standard dimensions for normal and fine series square screw threads in mm according to **IS: 4694 – 1968 (Reaffirmed 1996)**.

| Nominal Diameter $d$ (mm) | Major Dia Bolt $d_1$ (mm) | Major Dia Nut $D$ (mm) | Minor Dia Bolt $d_c$ (mm) | Pitch $p$ (mm) | Depth of Thread Bolt $h$ (mm) | Depth of Thread Nut $H$ (mm) | Core Area $A_c$ ($\text{mm}^2$) |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **10** | 10 | 10.5 | 8 | 2 | 1.0 | 1.25 | 50.3 |
| **12** | 12 | 12.5 | 10 | 2 | 1.0 | 1.25 | 78.5 |
| **14** | 14 | 14.5 | 12 | 2 | 1.0 | 1.25 | 113.0 |
| **16** | 16 | 16.5 | 14 | 2 | 1.0 | 1.25 | 154.0 |
| **18** | 18 | 18.5 | 16 | 2 | 1.0 | 1.25 | 201.0 |
| **20** | 20 | 20.5 | 18 | 2 | 1.0 | 1.25 | 254.0 |
| **22** | 22 | 22.5 | 19 | 3 | 1.5 | 1.75 | 284.0 |
| **24** | 24 | 24.5 | 21 | 3 | 1.5 | 1.75 | 346.0 |
| **26** | 26 | 26.5 | 23 | 3 | 1.5 | 1.75 | 415.0 |
| **28** | 28 | 28.5 | 25 | 3 | 1.5 | 1.75 | 491.0 |
| **30** | 30 | 30.5 | 27 | 3 | 1.5 | 1.75 | 573.0 |
| **32** | 32 | 32.5 | 29 | 3 | 1.5 | 1.75 | 661.0 |
| **(34)** | 34 | 34.5 | 31 | 3 | 1.5 | 1.75 | 755.0 |
| **36** | 36 | 36.5 | 33 | 3 | 1.5 | 1.75 | 855.0 |
| **(38)** | 38 | 38.5 | 35 | 3 | 1.5 | 1.75 | 962.0 |
| **40** | 40 | 40.5 | 37 | 3 | 1.5 | 1.75 | 1075.0 |
| **42** | 42 | 42.5 | 39 | 3 | 1.5 | 1.75 | 1195.0 |
| **44** | 44 | 44.5 | 41 | 3 | 1.5 | 1.75 | 1320.0 |
| **(46)** | 46 | 46.5 | 43 | 3 | 1.5 | 1.75 | 1452.0 |
| **48** | 48 | 48.5 | 45 | 3 | 1.5 | 1.75 | 1590.0 |
| **50** | 50 | 50.5 | 47 | 3 | 1.5 | 1.75 | 1735.0 |
| **52** | 52 | 52.5 | 49 | 3 | 1.5 | 1.75 | 1886.0 |
| **55** | 55 | 55.5 | 52 | 3 | 1.5 | 1.75 | 2124.0 |
| **(58)** | 58 | 58.5 | 55 | 3 | 1.5 | 1.75 | 2376.0 |
| **60** | 60 | 60.5 | 57 | 3 | 1.5 | 1.75 | 2552.0 |
| **(62)** | 62 | 62.5 | 59 | 3 | 1.5 | 1.75 | 2734.0 |
| **65** | 65 | 65.5 | 61 | 3 | 1.5 | 1.75 | 2922.0 |
| **(68)** | 68 | 68.5 | 64 | 4 | 2.0 | 2.25 | 3217.0 |
| **70** | 70 | 70.5 | 66 | 4 | 2.0 | 2.25 | 3421.0 |
| **(72)** | 72 | 72.5 | 68 | 4 | 2.0 | 2.25 | 3632.0 |
| **75** | 75 | 75.5 | 71 | 4 | 2.0 | 2.25 | 3959.0 |
| **(78)** | 78 | 78.5 | 74 | 4 | 2.0 | 2.25 | 4301.0 |
| **80** | 80 | 80.5 | 76 | 4 | 2.0 | 2.25 | 4536.0 |
| **(82)** | 82 | 82.5 | 78 | 4 | 2.0 | 2.25 | 4778.0 |
| **(85)** | 85 | 85.5 | 81 | 4 | 2.0 | 2.25 | 5153.0 |
| **(88)** | 88 | 88.5 | 84 | 4 | 2.0 | 2.25 | 5542.0 |
| **90** | 90 | 90.5 | 86 | 4 | 2.0 | 2.25 | 5809.0 |
| **(92)** | 92 | 92.5 | 88 | 4 | 2.0 | 2.25 | 6082.0 |
| **95** | 95 | 95.5 | 91 | 4 | 2.0 | 2.25 | 6504.0 |
| **(98)** | 98 | 98.5 | 94 | 4 | 2.0 | 2.25 | 6960.0 |
| **100** | 100 | 100.5 | 96 | 4 | 2.0 | 2.25 | 7238.0 |
