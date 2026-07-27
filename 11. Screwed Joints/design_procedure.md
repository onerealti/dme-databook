# Screwed Joints — Design Procedure & Guide

> [!TIP]
> **Zero-Memory Student Quick-Start Guide:**  
> You do **NOT** need to memorize formulas, quadratic equations, or thread tables to solve screwed joint design problems!  
> 1. Extract the given values from the question paper using the **[Symbol Legend](#11-symbol-legend--unit-conversion-rules)** below.
> 2. Convert all units to **$\text{N}$ and $\text{mm}$** ($1\text{ kN} = 10^3\text{ N}$, $1\text{ N}\cdot\text{m} = 10^3\text{ N}\cdot\text{mm}$, $1\text{ MPa} = 1\text{ N/mm}^2$).
> 3. Identify the joint branch (Preloaded Joint, Cylinder Cover Studs, Uniform Strength Bolt, Soderberg Fatigue, or Eccentric Loading Cases A through E) and follow the step-by-step numbered instructions verbatim.
> 4. Plug numbers directly into the equations and look up thread dimensions in the **[Baked Reference Tables](#7-baked-reference-tables)** at the end.

---

## Table of Contents
1. [Universal Inputs & Pre-Processing Checklist](#1-universal-inputs--pre-processing-checklist)
2. [Branch A: Preloaded Fastener Sizing & Gasket Factor Design](#2-branch-a-preloaded-fastener-sizing--gasket-factor-design)
3. [Branch B: Cylinder Head Cover Stud Layout & Leak-Proof Pitch Check](#3-branch-b-cylinder-head-cover-stud-layout--leak-proof-pitch-check)
4. [Branch C: Bolts of Uniform Strength & Strain Energy Absorbance](#4-branch-c-bolts-of-uniform-strength--strain-energy-absorbance)
5. [Branch D: Soderberg Fatigue Design for Preloaded Fasteners](#5-branch-d-soderberg-fatigue-design-for-preloaded-fasteners)
6. [Branch E: Master Eccentric Loading Procedures (Cases A through E)](#6-branch-e-master-eccentric-loading-procedures-cases-a-through-e)
7. [Baked Reference Tables](#7-baked-reference-tables)
   - [Table 11.1: Basic Dimensions of Standard ISO Metric Screw Threads](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)
   - [Table 11.2: Gasket Factor ($K$) for Various Types of Joints](#table-112-gasket-factor-k-for-various-types-of-joints)

---

## 1. Universal Inputs & Pre-Processing Checklist

### 1.1 Symbol Legend & Unit Conversion Rules

| Symbol | Parameter Name | Exam Unit | Conversion Rule |
| :--- | :--- | :--- | :--- |
| $W, P_e$ | External applied service load | $\text{kN}$ or $\text{N}$ | Multiply $\text{kN} \times 10^3 \implies \mathbf{N}$ |
| $p$ | Internal fluid pressure | $\text{MPa}$ or $\text{N/mm}^2$ | Use directly in $\text{N/mm}^2$ ($1\text{ bar} = 0.1\text{ N/mm}^2$) |
| $D$ | Internal cylinder diameter | $\text{mm}$ | Primary pressure vessel size |
| $\sigma_t, \sigma_c, \tau$ | Allowable bolt stresses | $\text{MPa}$ | $1\text{ MPa} = \mathbf{1\text{ N/mm}^2}$ |
| $\sigma_y, \sigma_e$ | Yield strength & endurance limit | $\text{MPa}$ | Used for Soderberg fatigue calculations |
| $F_i$ | Initial tightening preload | $\text{N}$ | $F_i = 2840 \cdot d$ (fluid-tight) or $1420 \cdot d$ (ordinary) |
| $K$ | Gasket factor ratio | Ratio | Look up in [Table 11.2](#table-112-gasket-factor-k-for-various-types-of-joints) |
| $d, d_c, A_c$ | Nominal diameter, Core diameter & Stress area | $\text{mm, mm}^2$ | Look up in [Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads) |
| $L, e$ | Eccentric load distance / bracket arm | $\text{mm}$ | Distance from load line to tilting edge or C.G. |

---

> [!CAUTION]
> **Calculator Pitfall:** ALWAYS perform all stress calculations using load in **$\text{N}$** and torque/moments in **$\text{N}\cdot\text{mm}$**, NOT $\text{kN}$ or $\text{N}\cdot\text{m}$! For initial tightening of fluid-tight joints, ALWAYS use $F_i = 2840 \cdot d$.

---

## 2. Branch A: Preloaded Fastener Sizing & Gasket Factor Design

### Step 1: Preload & Resultant Load Equations
When a bolt is preloaded with initial tightening force $F_i = 2840 \cdot d$ and subjected to external tensile load $P_e$:
$$P_{\text{total}} = F_i + K \cdot P_e = 2840 \cdot d + K \cdot P_e \quad [\text{N}]$$

Look up gasket factor $K$ from **[Table 11.2](#table-112-gasket-factor-k-for-various-types-of-joints)** ($K = 0.00 \sim 1.00$).

---

### Step 2: Sizing Quadratic Equation Formulation
Equate total load to allowable tensile strength ($P_{\text{total}} = A_c \cdot \sigma_t = \frac{\pi}{4}(0.84 d)^2 \sigma_t$):

$$0.5542 \cdot \sigma_t \cdot d^2 - 2840 \cdot d - K \cdot P_e = 0$$

Solve this quadratic equation for nominal diameter $d$:
$$d = \frac{2840 + \sqrt{(-2840)^2 - 4 (0.5542 \sigma_t) (-K P_e)}}{2 (0.5542 \sigma_t)} \quad [\text{mm}]$$

Select the next higher standard commercial size $d$ from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

## 3. Branch B: Cylinder Head Cover Stud Layout & Leak-Proof Pitch Check

### Step 1: Total External Pressure Load ($P_e$)
$$P_e = \frac{\pi}{4} D^2 \cdot p \quad [\text{N}] \qquad (D = \text{cylinder diameter in mm}, p = \text{fluid pressure in N/mm}^2)$$

---

### Step 2: Empirical Stud Count ($n$) & Load per Stud
1. **Empirical Number of Studs ($n$):**
   $$n = 0.03 \cdot D + 2 \quad \implies \text{Round UP to next even integer}$$
2. **External Tensile Load per Stud ($P_{e1}$):**
   $$P_{e1} = \frac{P_e}{n} = \frac{\frac{\pi}{4} D^2 \cdot p}{n} \quad [\text{N}]$$

---

### Step 3: Solve Quadratic Equation for Stud Diameter ($d$)
$$0.5542 \cdot \sigma_t \cdot d^2 - 2840 \cdot d - K \cdot P_{e1} = 0 \implies d \quad [\text{mm}]$$
Look up standard nominal diameter $d$ and core diameter $d_1 = d_c$ from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

### Step 4: Pitch Circle Diameter ($D_p$) & Mandatory Leak-Proof Pitch Check
1. **Pitch Circle Diameter ($D_p$):**
   $$D_p = D + 2 d_1 + 12\text{ mm} \quad [\text{mm}]$$
2. **Circumferential Pitch ($p_c$):**
   $$p_c = \frac{\pi \cdot D_p}{n} \quad [\text{mm}]$$

> [!IMPORTANT]
> **Mandatory Leak-Proof Condition Check:**  
> Verify that pitch $p_c$ satisfies the leak-proof bounds:
> $$20 \sqrt{d_1} \le p_c \le 30 \sqrt{d_1}$$
> *If $p_c > 30 \sqrt{d_1} \implies$ Increase stud count $n$ to reduce pitch and re-verify.*

---

## 4. Branch C: Bolts of Uniform Strength & Strain Energy Absorbance

Under impact or dynamic shock loading, standard bolts concentrate strain energy in the threaded portion. A bolt of uniform strength absorbs maximum strain energy throughout its length.

---

### Method 1: Reduced Shank Diameter ($d_{\text{shank}}$)
Machine the unthreaded shank down to the core diameter $d_c$:
$$d_{\text{shank}} = d_c \approx 0.84 d \quad [\text{mm}]$$

---

### Method 2: Central Drilled Axial Hole ($D_h$)
Drill an axial hole from the bolt head down to the thread junction:
$$D_h = \sqrt{d_o^2 - d_c^2} \quad [\text{mm}]$$

---

### Strain Energy Capacity Formula ($U$)
$$U = \frac{\sigma^2}{2E} \cdot V \quad [\text{N}\cdot\text{mm}]$$
*(where $\sigma$ is uniform stress, $E$ is Young's Modulus, $V$ is total shank volume).*

---

## 5. Branch D: Soderberg Fatigue Design for Preloaded Fasteners

When a preloaded bolt is subjected to a cyclic external load fluctuating between $P_{\min}$ and $P_{\max}$:

1. **Maximum Resultant Load:** $P_1 = F_i + K \cdot P_{\max}$
2. **Minimum Resultant Load:** $P_2 = F_i + K \cdot P_{\min}$
3. **Mean Load ($P_m$) & Variable Load ($P_v$):**
   $$P_m = \frac{P_1 + P_2}{2} = F_i + K \left[ \frac{P_{\max} + P_{\min}}{2} \right]$$
   $$P_v = \frac{P_1 - P_2}{2} = K \left[ \frac{P_{\max} - P_{\min}}{2} \right]$$

---

### Soderberg Failure Criterion Equation
$$\frac{A_c}{\text{FOS}} = \frac{P_m}{\sigma_y} + \frac{K_f \cdot P_v}{\sigma_e}$$

Solve for required stress area $A_c$, then select matching thread from **[Table 11.1](#table-111-basic-dimensions-of-standard-iso-metric-screw-threads)**.

---

## 6. Branch E: Master Eccentric Loading Procedures (Cases A through E)

```
                     ┌──────────────────────────────────────────┐
                     │    ECCENTRIC BOLTED JOINT CASE ROUTER    │
                     └────────────────────┬─────────────────────┘
                                          │
    ┌──────────────────┬──────────────────┼──────────────────┬──────────────────┐
    ▼                  ▼                  ▼                  ▼                  ▼
┌──────────────┐ ┌──────────────┐ ┌──────────────┐ ┌──────────────┐ ┌──────────────┐
│    CASE A    │ │    CASE B    │ │    CASE C    │ │    CASE D    │ │    CASE E    │
│ Load Parallel│ │ Coplanar Shear│ │ Combined Shear│ │ Circular Base│ │ Bracket Arm  │
│ Tilting Edge │ │ Rotation C.G.│ │  + Tension   │ │ Outer Tangent│ │ Cross-Section│
└──────────────┘ └──────────────┘ └──────────────┘ └──────────────┘ └──────────────┘
```

---

### Case A: Load Parallel to Bolt Axis (Tilting about Edge $E-E$)

1. **Direct Tensile Force per Bolt ($W_{t1}$):**
   $$W_{t1} = \frac{W}{n} \quad [\text{N}]$$

2. **Tilting Unit Load Constant ($w$):**
   $$w = \frac{W \cdot L}{\sum n_i L_i^2} = \frac{W \cdot L}{2 (L_1^2 + L_2^2 + \dots + L_n^2)} \quad [\text{N/mm}]$$

3. **Maximum Secondary Tension on Furthest Bolts ($W_{t2}$):**
   $$W_{t2} = w \cdot L_{\max} \quad [\text{N}]$$

4. **Total Tensile Load ($W_t$):**
   $$W_t = W_{t1} + W_{t2} = \frac{W}{n} + \frac{W \cdot L \cdot L_{\max}}{\sum n_i L_i^2} \le A_c \cdot \sigma_t \implies d_c$$

---

### Case B: Coplanar Shear Loading (Rotation about C.G.)

1. **Primary Direct Shear Force per Bolt ($W_{s1}$):**
   $$W_{s1} = \frac{W}{n} \quad [\text{N}]$$

2. **Secondary Torsional Shear Force ($W_{s2}$):**
   $$W_{s2} = \frac{W \cdot e \cdot r_i}{\sum r_i^2} \quad [\text{N}]$$

3. **Resultant Shear Force on Critical Bolt ($W_s$):**
   $$W_s = \sqrt{W_{s1}^2 + W_{s2}^2 + 2 W_{s1} W_{s2} \cos\theta} \le A_c \cdot \tau \implies d_c$$

---

### Case C: Combined Shear & Tension (Principal Stress Theory)

When a bolt carries both direct shear $W_s$ and direct tension $W_t$:

1. **Equivalent Tensile Load ($W_{te}$) — Maximum Principal Stress Theory:**
   $$W_{te} = \frac{1}{2} \left[ W_t + \sqrt{W_t^2 + 4 W_s^2} \right] \le A_c \cdot \sigma_t \implies d_c$$

2. **Equivalent Shear Load ($W_{se}$) — Maximum Shear Stress Theory:**
   $$W_{se} = \frac{1}{2} \sqrt{W_t^2 + 4 W_s^2} \le A_c \cdot \tau \implies d_c$$

---

### Case D: Circular Base Foundation Flanges (Tilting about Outer Edge)

For circular foundation flanges with $n$ bolts arranged on pitch circle radius $r$ tilting about outer base radius $R$:

$$W_t = \frac{2 \cdot W \cdot L \cdot [R + r \cos(180^\circ/n)]}{n \cdot (2 R^2 + r^2)} \le A_c \cdot \sigma_t \implies d_c$$

---

### Case E: Bracket Arm Cross-Section Sizing

1. **Rectangular Cross-Section ($t \times b$, $b = 2t \sim 3t$):**
   $$M = W \cdot L = \frac{1}{6} t \cdot b^2 \cdot \sigma_t \implies t = \sqrt[3]{\frac{6 M}{\sigma_t \cdot (b/t)^2}}$$

2. **Solid Circular Section ($D_{\text{arm}}$) under Combined Bending ($M$) and Torsion ($T$):**
   $$T_e = \sqrt{M^2 + T^2} = \frac{\pi}{16} D_{\text{arm}}^3 \cdot \tau \implies D_{\text{arm}} = \sqrt[3]{\frac{16 T_e}{\pi \tau}}$$

---

## 7. Baked Reference Tables

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

---

### Table 11.2: Gasket Factor ($K$) for Various Types of Joints

Values of gasket factor $K = \frac{k_b}{k_b + k_m}$ for various joint gasket materials:

| Type of Joint / Gasket Material | Gasket Factor $K$ |
| :--- | :---: |
| **Metal to metal joint with through bolts** | $0.00 \sim 0.10$ |
| **Hard copper gasket with long through bolts** | $0.25 \sim 0.50$ |
| **Soft copper gasket with long through bolts** | $0.50 \sim 0.75$ |
| **Soft packing with through bolts** | $0.75 \sim 1.00$ |
| **Soft packing with studs** | $1.00$ |
