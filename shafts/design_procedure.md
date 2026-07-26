# Unit 2: Shafts — Complete Design Procedure & Reference Guide

A comprehensive, zero-memory reference guide for designing solid and hollow transmission shafts, machine shafts, and axles subjected to pure torsion, pure bending, combined bending and torsion, fluctuating loads, axial thrust, and rigidity constraints.

---

## 1. Zero-Memory Student Quick-Start

When solving any Shaft design problem in an examination or assignment, follow this standard 5-step sequence:

```
[Step 1: Identify Givens & Allowable Stresses]
    ├── Power (P), Speed (N) ➔ Calculate Torque T = (60 * P) / (2 * π * N)
    └── Material limits (τ_allow, σ_b_allow, FOS)

[Step 2: Resolve External Loads & Reactions]
    ├── Belt Drives ➔ T_1 / T_2 = e^(μ * θ), Belt Load W_belt = T_1 + T_2 (+ W_pulley)
    ├── Gear Drives ➔ F_t = T / R, Radial F_r = F_t * tan(α), Normal W_N = F_t / cos(α)
    └── Resolve Loads into Vertical (V) & Horizontal (H) planes ➔ Calculate Reactions R_AV, R_BV, R_AH, R_BH

[Step 3: Determine Maximum Bending Moment (M)]
    ├── Calculate B.M. in Vertical Plane (M_V) & Horizontal Plane (M_H) at critical load points
    └── Calculate Resultant B.M. M = sqrt(M_V^2 + M_H^2)

[Step 4: Calculate Equivalent Torque (T_e) and Bending Moment (M_e)]
    ├── Solid Shaft:
    │     ├── T_e = sqrt((K_m * M)^2 + (K_t * T)^2) = (π / 16) * d^3 * τ
    │     └── M_e = (1/2) * [K_m * M + T_e] = (π / 32) * d^3 * σ_b
    └── Hollow Shaft (k = d_i / d_o):
          ├── T_e = sqrt([K_m * M + (α * F_a * d_o * (1 + k^2)) / 8]^2 + (K_t * T)^2) = (π / 16) * τ * d_o^3 * (1 - k^4)
          └── M_e = (1/2) * [K_m * M + (α * F_a * d_o * (1 + k^2)) / 8 + T_e] = (π / 32) * σ_b * d_o^3 * (1 - k^4)

[Step 5: Select Standard Shaft Diameter]
    └── Take the larger diameter from T_e and M_e criteria, then select next higher standard size from Table 14.1.
```

---

## 2. Symbol Legend

| Symbol | Definition | Standard Units |
| :---: | :--- | :---: |
| $P$ | Power transmitted by the shaft | $\text{kW}$ or $\text{W}$ |
| $N$ | Rotational speed | $\text{r.p.m.}$ |
| $T$ | Transmitted torque | $\text{N}\cdot\text{m}$ or $\text{N}\cdot\text{mm}$ |
| $M$ | Bending moment | $\text{N}\cdot\text{m}$ or $\text{N}\cdot\text{mm}$ |
| $T_e$ | Equivalent twisting moment | $\text{N}\cdot\text{mm}$ |
| $M_e$ | Equivalent bending moment | $\text{N}\cdot\text{mm}$ |
| $d$ | Diameter of solid shaft | $\text{mm}$ |
| $d_o, d_i$ | Outer and inner diameters of hollow shaft | $\text{mm}$ |
| $k$ | Diameter ratio ($d_i / d_o$) | Dimensionless |
| $\tau$ | Allowable shear stress | $\text{MPa}$ ($\text{N/mm}^2$) |
| $\sigma_b, \sigma_t$ | Allowable bending / tensile stress | $\text{MPa}$ ($\text{N/mm}^2$) |
| $K_m$ | Combined shock and fatigue factor for bending | Dimensionless |
| $K_t$ | Combined shock and fatigue factor for torsion | Dimensionless |
| $\alpha$ | Column factor for axial compressive loading | Dimensionless |
| $F_a, F$ | Axial load / thrust | $\text{N}$ or $\text{kN}$ |
| $\theta$ | Angle of twist / angle of lap | Degrees or Radians |
| $G$ | Modulus of rigidity | $\text{GPa}$ or $\text{N/mm}^2$ |

---

## 3. Standard Reference Tables

### Table 14.1: Standard Commercial Shaft Diameters (IS Specifications)

| Diameter Range ($\text{mm}$) | Standard Increments ($\text{mm}$) | Standard Commercial Sizes ($\text{mm}$) |
| :---: | :---: | :--- |
| **$25\text{ to } 60\text{ mm}$** | $5\text{ mm}$ steps | $25, 30, 35, 40, 45, 50, 55, 60$ |
| **$60\text{ to } 110\text{ mm}$** | $10\text{ mm}$ steps | $60, 70, 80, 90, 100, 110$ |
| **$110\text{ to } 140\text{ mm}$** | $15\text{ mm}$ steps | $110, 125, 140$ |
| **$140\text{ to } 500\text{ mm}$** | $20\text{ mm}$ steps | $140, 160, 180, 200, 220, 240, 260, 280, 300, \dots, 500$ |

*Standard commercial lengths for finished shafts:* $5\text{ m}$, $6\text{ m}$, and $7\text{ m}$.

---

### Table 14.2: Combined Shock and Fatigue Factors ($K_m$ & $K_t$)

| Type of Loading / Nature of Service | Numerical Factor for Bending ($K_m$) | Numerical Factor for Torsion ($K_t$) |
| :--- | :---: | :---: |
| **1. Stationary Shafts:** | | |
| (a) Gradually applied load | $1.0$ | $1.0$ |
| (b) Suddenly applied load | $1.5\text{ to } 2.0$ | $1.5\text{ to } 2.0$ |
| **2. Rotating Shafts:** | | |
| (a) Gradually applied or steady load | $1.5$ | $1.0$ |
| (b) Suddenly applied load with minor shocks only | $1.5\text{ to } 2.0$ | $1.5\text{ to } 2.0$ |
| (c) Suddenly applied load with heavy shocks | $2.0\text{ to } 3.0$ | $1.5\text{ to } 3.0$ |

---

## 4. Complete Design Procedure by Loading Category

### Category A: Pure Torsion (Shaft Subjected to Torque $T$ Only)
1. Calculate Torque:
   $$T = \frac{P \times 60}{2 \pi N} \quad [\text{N}\cdot\text{m}]$$
2. For Solid Shaft:
   $$T = \frac{\pi}{16} \times d^3 \times \tau \implies d = \sqrt[3]{\frac{16 T}{\pi \tau}}$$
3. For Hollow Shaft ($k = d_i / d_o$):
   $$T = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4) \implies d_o = \sqrt[3]{\frac{16 T}{\pi \tau (1 - k^4)}}$$

---

### Category B: Pure Bending (Axles Subjected to Bending Moment $M$ Only)
1. Determine Maximum Bending Moment $M$.
2. For Solid Axle:
   $$M = \frac{\pi}{32} \times d^3 \times \sigma_b \implies d = \sqrt[3]{\frac{32 M}{\pi \sigma_b}}$$
3. For Hollow Axle:
   $$M = \frac{\pi}{32} \times \sigma_b \times (d_o)^3 (1 - k^4)$$

---

### Category C: Combined Bending and Torsion (ASME Code & Guest / Rankine Theories)

1. Calculate Equivalent Twisting Moment ($T_e$):
   $$T_e = \sqrt{(K_m \cdot M)^2 + (K_t \cdot T)^2}$$
   * Solid Shaft: $T_e = \frac{\pi}{16} \times d^3 \times \tau \implies d = \sqrt[3]{\frac{16 T_e}{\pi \tau}}$
   * Hollow Shaft: $T_e = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4)$

2. Calculate Equivalent Bending Moment ($M_e$):
   $$M_e = \frac{1}{2} \left[ K_m \cdot M + T_e \right] = \frac{1}{2} \left[ K_m \cdot M + \sqrt{(K_m \cdot M)^2 + (K_t \cdot T)^2} \right]$$
   * Solid Shaft: $M_e = \frac{\pi}{32} \times d^3 \times \sigma_b \implies d = \sqrt[3]{\frac{32 M_e}{\pi \sigma_b}}$
   * Hollow Shaft: $M_e = \frac{\pi}{32} \times \sigma_b \times (d_o)^3 (1 - k^4)$

3. **Governing Diameter:** Calculate $d$ from both $T_e$ and $M_e$ equations and select the **larger** of the two values.

---

### Category D: Combined Bending, Torsion & Axial Load (Axial Thrust $F_a$)

When a shaft is subjected to an axial load $F_a$ (e.g., propeller thrust, helical gear axial force) in addition to bending and torsion:

1. **Calculate Column Factor ($\alpha$):**
   * For Tensile Load: $\alpha = 1.0$
   * For Compressive Load (if $L/K < 115$):
     $$\alpha = \frac{1}{1 - 0.0044 (L/K)}$$
     where radius of gyration $K = \frac{d}{4}$ (solid shaft) or $K = \frac{\sqrt{d_o^2 + d_i^2}}{4} = 0.32 d_o$ (for $k = 0.8$).

2. **Modified Bending Moment Component ($M^*$):**
   $$M^* = M + \frac{\alpha \cdot F_a \cdot d_o (1 + k^2)}{8}$$

3. **Equivalent Equations:**
   $$T_e = \sqrt{(K_m \cdot M^*)^2 + (K_t \cdot T)^2} = \frac{\pi}{16} \tau d_o^3 (1 - k^4)$$
   $$M_e = \frac{1}{2} [K_m \cdot M^* + T_e] = \frac{\pi}{32} \sigma_b d_o^3 (1 - k^4)$$

---

### Category E: Design for Torsional Rigidity (Angular Twist Limit)
1. Torsion Equation:
   $$\frac{T}{J} = \frac{G \cdot \theta}{L}$$
2. For Solid Shaft:
   $$\theta = \frac{584 \cdot T \cdot L}{G \cdot d^4} \implies d = \sqrt[4]{\frac{584 \cdot T \cdot L}{G \cdot \theta}}$$
3. For Hollow Shaft:
   $$d_o = \sqrt[4]{\frac{584 \cdot T \cdot L}{G \cdot \theta (1 - k^4)}}$$
   *(Note: $\theta$ MUST be substituted in degrees in the 584 formula, or use standard radians with $J = \frac{\pi}{32} d^4$.)*

---

## 5. Calculator & Student Warnings

> [!CAUTION]
> **Units Consistency Warning:** Always convert power $P$ to Watts ($1\text{ kW} = 1000\text{ W}$), torque $T$ to $\text{N}\cdot\text{mm}$ ($1\text{ N}\cdot\text{m} = 10^3\text{ N-mm}$), and length $L$ to $\text{mm}$ before substituting into stress formulas!

> [!IMPORTANT]
> **Dual-Criterion Check:** In problems where both allowable shear stress $\tau$ and allowable bending stress $\sigma_b$ are given, you **MUST** compute the diameter required by $T_e$ and $M_e$ separately and adopt the larger value.

> [!TIP]
> **Belt Tension Exponent Check:** $T_1 / T_2 = e^{\mu \theta}$. Ensure $\theta$ is in **radians** ($\theta = \text{degrees} \times \frac{\pi}{180}$) when computing $e^{\mu \theta}$ or $2.3 \log(T_1 / T_2) = \mu \theta$.
