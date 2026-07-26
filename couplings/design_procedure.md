# Shaft Couplings — Design Procedure & Guide

A comprehensive, step-by-step design procedure for all types of shaft couplings. This document serves as the primary technical guidance for solving coupling design problems with complete mathematical rigor, conditional branching, empirical proportions, intermediate safety checks, and baked-in standard lookup tables.

---

## Table of Contents
1. [Universal Inputs & Pre-Processing Checklist](#1-universal-inputs--pre-processing-checklist)
2. [Type A: Muff (Sleeve) Coupling Design Procedure](#2-type-a-muff-sleeve-coupling-design-procedure)
3. [Type B: Clamp / Compression (Split-Muff) Coupling Design Procedure](#3-type-b-clamp--compression-split-muff-coupling-design-procedure)
4. [Type C: Cast Iron Rigid Flange Coupling Design Procedure](#4-type-c-cast-iron-rigid-flange-coupling-design-procedure)
5. [Type D: Bushed-Pin Flexible Coupling Design Procedure](#5-type-d-bushed-pin-flexible-coupling-design-procedure)
6. [Baked Reference Tables](#6-baked-reference-tables)
   - [Table 13.1: Standard Proportions of Sunk Keys](#table-131-standard-proportions-of-sunk-keys-is-2048---1962)
   - [Table 11.1: Basic Dimensions of ISO Metric Screw Threads](#table-111-basic-dimensions-of-iso-metric-screw-threads-coarse--fine)

---

## 1. Universal Inputs & Pre-Processing Checklist

Before embarking on component design, perform the following standardization steps:

### 1.1 Unit Conversions & Torque Calculations
* **Power ($P$):** Convert to Watts ($\text{kW} \times 10^3 \implies \text{W}$, $\text{MW} \times 10^6 \implies \text{W}$).
* **Speed ($N$):** Speed in revolutions per minute ($\text{rpm}$).
* **Mean Torque ($T_{\text{mean}}$):**
  $$T_{\text{mean}} = \frac{60 P}{2 \pi N} \quad [\text{N}\cdot\text{m}] = \frac{60 P}{2 \pi N} \times 10^3 \quad [\text{N}\cdot\text{mm}]$$
* **Maximum Design Torque ($T_{\max}$):**
  Check if a service factor $K_s$ or overload percentage is specified:
  $$T_{\max} = K_s \cdot T_{\text{mean}}$$
  *(If no service factor is mentioned, set $T_{\max} = T_{\text{mean}}$).*

### 1.2 Material Property Matrix
Extract permissible stresses for all constituent parts:
* Shaft Material: Tensile $\sigma_{ts}$, Shear $\tau_s$, Torsional Rigidity Modulus $G$.
* Key Material: Shear $\tau_k$, Crushing/Compressive $\sigma_{ck}$.
* Bolt Material: Tensile $\sigma_{tb}$, Shear $\tau_b$.
* Muff/Flange Material (Cast Iron): Shear $\tau_c \le 8\text{ to }15\text{ MPa}$.

---

## 2. Type A: Muff (Sleeve) Coupling Design Procedure

### Step 1: Design of Shaft ($d$)
Calculate shaft diameter $d$ under maximum torque $T_{\max}$:
$$\tau_s = \frac{16 T_{\max}}{\pi d^3} \implies d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}}$$
*Round $d$ up to the next standard integer (e.g., $28, 30, 35, 40, 45, 50\text{ mm}$).*

### Step 2: Design of Sleeve / Muff
* Outer diameter of muff: $D = 2d + 13\text{ mm}$
* Total length of muff: $L = 3.5 d$

#### Mandatory Safety Verification (Hollow Shaft Shear Stress):
The muff is evaluated as a hollow shaft transmitting torque $T_{\max}$:
$$\tau_c = \frac{16 T_{\max} D}{\pi (D^4 - d^4)}$$
$$\text{Condition: } \tau_c \le \tau_{\text{allowable, CI}} \quad \text{\textbf{(SAFE)}}$$

### Step 3: Design of Sunk Key
* Look up width $w$ and thickness $t$ for shaft diameter $d$ from [Table 13.1](#table-131-standard-proportions-of-sunk-keys-is-2048---1962).
* Length of key per shaft end: $l = \frac{L}{2} = 1.75 d$.

#### Mandatory Safety Verification of Key:
1. **Shear Check:** $\tau_k = \frac{2 T_{\max}}{w \cdot d \cdot l} \le \tau_{k,\text{allowable}}$
2. **Crushing Check:** $\sigma_{ck} = \frac{4 T_{\max}}{t \cdot d \cdot l} \le \sigma_{ck,\text{allowable}}$

---

## 3. Type B: Clamp / Compression (Split-Muff) Coupling Design Procedure

### Step 1: Design of Shaft ($d$)
$$d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}}$$
*Round $d$ up to the next standard size.*

### Step 2: Design of Muff & Key
* Outer diameter of muff: $D = 2d + 13\text{ mm}$
* Length of muff: $L = 3.5 d$
* Key dimensions: Width $w$ and thickness $t$ from [Table 13.1](#table-131-standard-proportions-of-sunk-keys-is-2048---1962). Full key length $l = L$.

### Step 3: Design of Clamping Bolts
Let $n$ be the number of clamping bolts (typically $n = 4$ or $n = 6$), $\mu$ be the coefficient of friction (typically $\mu = 0.3$), and $d_b$ be the core diameter of the bolt.

#### Torque Transmitted by Friction Equation:
$$T_{\max} = \frac{\pi^2}{16} \cdot \mu \cdot d \cdot \left(\frac{\pi}{4} d_b^2 \cdot \sigma_{tb}\right) \cdot n$$
$$d_b = \sqrt{\frac{16 T_{\max}}{\pi^2 \cdot \mu \cdot d \cdot (\frac{\pi}{4} \sigma_{tb}) \cdot n}}$$

#### Thread Selection:
Look up nominal bolt diameter $d$ in [Table 11.1](#table-111-basic-dimensions-of-iso-metric-screw-threads-coarse--fine) such that core diameter $d_c \ge d_b$.
*(Example: If $d_b = 21.4\text{ mm}$, select **M 27** where $d_c = 23.32\text{ mm}$).*

---

## 4. Type C: Cast Iron Rigid Flange Coupling Design Procedure

### Step 1: Design of Shaft ($d$)

#### Case 1A: Standard Solid Shaft ($T_{\max}$ given or calculated)
1. **Strength Criterion:**
   $$d_{\text{strength}} = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}}$$
2. **Rigidity Criterion (If angle of twist $\theta$ is specified in length $L_{\text{shaft}} = K \cdot d$):**
   $$\frac{T}{J} = \frac{G \theta}{L_{\text{shaft}}} \implies d_{\text{rigidity}} = \sqrt[3]{\frac{32 T_{\max} \cdot K}{\pi^2 G \theta}}$$
*Adopt $d = \max(d_{\text{strength}}, d_{\text{rigidity}})$ rounded up to standard size.*

#### Case 1B: Edge Case — Hollow Driving Shaft ($k = d_i / d_o$ given)
If driving shaft is hollow with inner/outer ratio $k = d_i / d_o$ (e.g. $k = 0.6$):
$$d_o = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s (1 - k^4)}}, \quad d_i = k \cdot d_o$$
*All hub and flange empirical proportions ($D = 2d_o, L = 1.5d_o, t_f = 0.5d_o$) are based on outer diameter $d_o$.*

#### Case 1C: Edge Case — Shaft Diameter ($d$) and Torque ($T$) are ALREADY FIXED
If $d$ and $T$ are given, skip shaft sizing and proceed directly to hub, key, flange, and bolt stress checks.

---

### Step 2: Design of Hub & Mandatory Hollow Shaft Check
* Outer diameter of hub: $D = 2d$ (or $2d_o$)
* Length of hub: $L = 1.5d$ (or $1.5d_o$)

#### Mandatory Check 1: Induced Shear Stress in CI Hub
$$\tau_c = \frac{16 T_{\max} D}{\pi (D^4 - d^4)} \le \tau_{\text{allowable, CI}}$$

---

### Step 3: Design of Key & Edge Case Length Override Loop
Check if allowable crushing stress is twice allowable shear stress ($\sigma_{ck} \approx 2\tau_k$):
* **Branch A (If $\sigma_{ck} \ge 2\tau_k$):** Adopt **Square Key** ($w = t = d/4$ or look up $w$ in [Table 13.1](#table-131-standard-proportions-of-sunk-keys-is-2048---1962) and set $t = w$).
* **Branch B (If $\sigma_{ck} < 2\tau_k$):** Adopt **Rectangular Key** ($w$ and $t$ from [Table 13.1](#table-131-standard-proportions-of-sunk-keys-is-2048---1962)).
* Length of key: Trial length $l = L = 1.5d$.

#### Safety Check & Edge Case Key Length Override (e.g. Ex 13.10):
* Shear Stress: $\tau_k = \frac{2 T_{\max}}{w \cdot d \cdot l}$
* Crushing Stress: $\sigma_{ck} = \frac{4 T_{\max}}{t \cdot d \cdot l}$

> [!WARNING]
> **Edge Case (Trial Key Failure):** If $\tau_k > \tau_{k,\text{allowable}}$ (e.g. Ex 13.10 where trial $l = 52.5\text{ mm}$ gives $\tau_k = 72.5\text{ MPa} > 46\text{ MPa}$), **RECALCULATE** required key length:
> $$l_{\text{recalculated}} = \max\left(\frac{2 T_{\max}}{w \cdot d \cdot \tau_{k,\text{allowable}}}, \frac{4 T_{\max}}{t \cdot d \cdot \sigma_{ck,\text{allowable}}}\right)$$
> Set new key length $l = l_{\text{recalculated}}$ (e.g. $85\text{ mm}$) and update hub length $L = l = 85\text{ mm}$.

---

### Step 4: Design of Flange Web & Mandatory Shear Check
* Flange web thickness: $t_f = 0.5d$
* Pitch circle diameter of bolts: $D_1 = 3d$
* Outer diameter of flange: $D_2 = 4d$
* Protective rim thickness (if protective type): $t_p = 0.25d$

#### Mandatory Check 2: Induced Circumferential Shear Stress in Flange at Hub Junction
$$\tau_c = \frac{T_{\max}}{\frac{\pi}{2} D^2 t_f} \le \tau_{\text{allowable, CI}}$$

---

### Step 5: Design of Bolts & Marine Type Edge Case
* **Number of Bolts ($n$):**
  * $n = 3$ for $d \le 40\text{ mm}$
  * $n = 4$ for $40 < d \le 100\text{ mm}$
  * $n = 6$ for $100 < d \le 180\text{ mm}$

#### Case 5A: Standard Threaded Flange Bolts
$$T_{\max} = n \cdot \left(\frac{\pi}{4} d_1^2 \cdot \tau_b\right) \cdot \frac{D_1}{2} \implies d_1 = \sqrt{\frac{8 T_{\max}}{\pi \cdot n \cdot D_1 \cdot \tau_b}}$$
Look up metric thread size in [Table 11.1](#table-111-basic-dimensions-of-iso-metric-screw-threads-coarse--fine) such that $d_c \ge d_1$.

#### Case 5B: Edge Case — Marine Type Flange Coupling (Unthreaded Tapered Bolts)
In marine flange couplings, flanges are forged integral with shafts and unthreaded tapered bolts are fitted into reamed holes:
$$T_{\max} = n \cdot \left(\frac{\pi}{4} d_b^2 \cdot \tau_b\right) \cdot \frac{D_1}{2} \implies d_b = \sqrt{\frac{8 T_{\max}}{\pi \cdot n \cdot D_1 \cdot \tau_b}}$$
*The resulting $d_b$ is the nominal diameter of the unthreaded marine bolt (e.g. $56\text{ mm}$).*

---

## 5. Type D: Bushed-Pin Flexible Coupling Design Procedure

### Step 1: Design of Shafts ($d$)
Size for larger shaft diameter $d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}}$.

### Step 2: Pins & Rubber Bush Geometry
* **Number of Pins ($n$):** Select $n = 6$ (or $n = 4$).
* **Pin Shank Diameter ($d_1$):**
  $$d_1 = \frac{0.5 d}{\sqrt{n}}$$
* **Enlarged Pin Diameter in Bush:** $d_p = d_1 + 4\text{ mm}$ (or $24\text{ mm}$).
* **Rubber Bush Thickness:** $6\text{ mm}$; **Brass Bush Thickness:** $2\text{ mm}$.
* **Overall Rubber Bush Diameter ($d_2$):** $d_2 = d_p + 2(2) + 2(6) = d_p + 16\text{ mm} \approx 2 d_1$.
* **Pitch Circle Diameter ($D_1$):**
  $$D_1 = 2d + d_2 + 2(6\text{ mm}) \quad \text{or } 3d$$

### Step 3: Bush Length ($l$) & Bearing Pressure Limit
Let $p_b$ be allowable bearing pressure on rubber bush ($0.45\text{ to }0.8\text{ N/mm}^2$).
1. Bearing Force per Pin ($W$):
   $$W = p_b \cdot d_2 \cdot l$$
2. Torque Capacity Equation:
   $$T_{\max} = W \cdot n \cdot \frac{D_1}{2} = (p_b \cdot d_2 \cdot l) \cdot n \cdot \frac{D_1}{2} \implies l = \frac{2 T_{\max}}{p_b \cdot d_2 \cdot n \cdot D_1}$$

### Step 4: Pin Stress Analysis & Safety Verification
1. **Direct Shear Stress:** $\tau = \frac{W}{\frac{\pi}{4} d_1^2}$
2. **Bending Moment on Pin:** $M = W \left(\frac{l}{2} + 5\text{ mm}\right)$
3. **Bending Stress:** $\sigma_b = \frac{M}{Z} = \frac{M}{\frac{\pi}{32} d_1^3}$
4. **Maximum Principal Stress Check:**
   $$\sigma_{\max} = \frac{1}{2}\left[\sigma_b + \sqrt{\sigma_b^2 + 4\tau^2}\right] \le \sigma_{t,\text{pin}}$$
5. **Maximum Shear Stress Check:**
   $$\tau_{\max} = \frac{1}{2}\sqrt{\sigma_b^2 + 4\tau^2} \le \tau_{\text{pin}}$$

### Step 5: Hub & Flange Checks
* Hub $D = 2d, L = 1.5d \implies$ Check $\tau_c = \frac{16 T_{\max} D}{\pi (D^4 - d^4)} \le \tau_{\text{CI}}$.
* Flange $t_f = 0.5d \implies$ Check $\tau_c = \frac{T_{\max}}{\frac{\pi}{2} D^2 t_f} \le \tau_{\text{CI}}$.

---

## 6. Baked Reference Tables

### Table 13.1: Standard Proportions of Sunk Keys (IS: 2048 - 1962)

| Shaft Diameter $d$ (mm) | Key Width $w$ (mm) | Key Thickness $t$ (mm) |
| :---: | :---: | :---: |
| **6 to 8** | 2 | 2 |
| **8 to 10** | 3 | 3 |
| **10 to 12** | 4 | 4 |
| **12 to 17** | 5 | 5 |
| **17 to 22** | 6 | 6 |
| **22 to 30** | 8 | 7 |
| **30 to 38** | 10 | 8 |
| **38 to 44** | 12 | 8 |
| **44 to 50** | 14 | 9 |
| **50 to 58** | 16 | 10 |
| **58 to 65** | 18 | 11 |
| **65 to 75** | 20 | 12 |
| **75 to 85** | 22 | 14 |
| **85 to 95** | 25 | 14 |
| **95 to 110** | 28 | 16 |
| **110 to 130** | 32 | 18 |
| **130 to 150** | 36 | 20 |
| **150 to 170** | 40 | 22 |
| **170 to 200** | 45 | 25 |
| **200 to 230** | 50 | 28 |
| **230 to 260** | 56 | 32 |
| **260 to 290** | 63 | 32 |
| **290 to 330** | 70 | 36 |
| **330 to 380** | 80 | 40 |
| **380 to 440** | 90 | 45 |

---

### Table 11.1: Basic Dimensions of ISO Metric Screw Threads (Coarse & Fine)

| Thread Designation | Nominal Diameter $d$ (mm) | Pitch $p$ (mm) | Pitch Diameter $d_p$ (mm) | Core Diameter $d_c$ (mm) | Stress Area $A_c$ ($\text{mm}^2$) |
| :---: | :---: | :---: | :---: | :---: | :---: |
| **M 6** | 6.00 | 1.00 | 5.350 | 4.773 | 20.1 |
| **M 8** | 8.00 | 1.25 | 7.188 | 6.466 | 36.6 |
| **M 10** | 10.00 | 1.50 | 9.026 | 8.160 | 58.0 |
| **M 12** | 12.00 | 1.75 | 10.863 | 9.858 | 84.3 |
| **M 14** | 14.00 | 2.00 | 12.701 | 11.546 | 115.0 |
| **M 16** | 16.00 | 2.00 | 14.701 | 13.546 | 157.0 |
| **M 18** | 18.00 | 2.50 | 16.376 | 14.933 | 192.0 |
| **M 20** | 20.00 | 2.50 | 18.376 | 16.933 | 245.0 |
| **M 22** | 22.00 | 2.50 | 20.376 | 18.933 | 303.0 |
| **M 24** | 24.00 | 3.00 | 22.051 | 20.320 | 353.0 |
| **M 27** | 27.00 | 3.00 | 25.051 | 23.320 | 459.0 |
| **M 30** | 30.00 | 3.50 | 27.727 | 25.706 | 561.0 |
| **M 33** | 33.00 | 3.50 | 30.727 | 28.706 | 694.0 |
| **M 36** | 36.00 | 4.00 | 33.402 | 31.093 | 817.0 |
| **M 39** | 39.00 | 4.00 | 36.402 | 34.093 | 976.0 |
