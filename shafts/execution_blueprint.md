# Shaft Design Master Execution Blueprint

A single, fully baked, conditionally nested algorithm for solving any question in the `shafts` folder. Every formula, load resolution, stress evaluation, failure theory, and geometry check is directly embedded into its respective decision branch.

---

## Master Problem-Solving Workflow

### STEP 0: ALLOWABLE STRESS & FACTOR OF SAFETY (FOS)

* **IF** Factor of Safety ($FOS$) and Ultimate/Yield strengths are given:
  * Allowable Shear Stress ($\tau$):
    $$\tau = \frac{\tau_u}{FOS} \quad \text{or} \quad \tau = \frac{\sigma_y}{2 \cdot FOS} \quad \text{(Max Shear Stress Theory)}$$
  * Allowable Tensile/Compressive Stress ($\sigma_b$):
    $$\sigma_b = \frac{\sigma_u}{FOS} \quad \text{or} \quad \sigma_b = \frac{\sigma_y}{FOS}$$
* **IF** Both allowable shear stress $\tau$ and allowable tensile stress $\sigma_b$ are explicitly specified:
  Use given values directly to evaluate $d_{\tau}$ (from $T_e$) and $d_{\sigma}$ (from $M_e$) in Step 4.

---

### STEP 1: TORQUE & DRIVE FORCE RESOLUTION ($T$)

* **1.1 Power & Speed Input:**
  * **IF** Power $P$ and Speed $N$ are given:
    $$T_{\text{mean}} = \frac{60 P}{2 \pi N}$$
    * **IF** Peak torque exceeds mean torque by ratio $x\%$ *(e.g. 20%)*:
      $$T = T_{\max} = T_{\text{mean}} \cdot \left(1 + \frac{x}{100}\right)$$
    * **ELSE:**
      $$T = T_{\text{mean}}$$

* **1.2 Multi-Section / Stepped Shaft Torque Distribution:**
  * **IF** Power is supplied at one pulley/gear and taken off at multiple points (e.g. $A, B, C, D$):
    1. Determine torque supplied at input section: $T_{\text{in}} = \frac{60 P_{\text{in}}}{2\pi N}$.
    2. Determine torque taken off at each output section $i$: $T_i = \frac{60 P_i}{2\pi N}$.
    3. For each portion between stations $j$, calculate internal transmitted torque $T_{j}$ by summing torques on one side of section $j$.
    4. Compute economical diameter $d_j$ for each section individually using Step 4.



---

### STEP 2: BENDING MOMENT RESOLUTION ($M$)

* **IF** No transverse loads or supports exist ($M = 0$):
  $$M = 0$$
* **ELSE:**
  1. Calculate Horizontal Bending Moment diagram ($M_H$) at key sections using loads $W_H$.
  2. Calculate Vertical Bending Moment diagram ($M_V$) at key sections using loads $W_V$.
  3. Compute Resultant Bending Moment at critical cross-section:
     $$M = \sqrt{M_H^2 + M_V^2}$$

---

### STEP 3: EQUIVALENT MOMENTS & FAILURE THEORIES ($T_e, M_e$)

* **CASE A: Pure Torsion ($M = 0, F_a = 0$)**
  $$T_e = T$$

* **CASE B: Pure Bending ($T = 0, F_a = 0$)**
  $$M_e = M$$

* **CASE C: Combined Bending & Torsion ($F_a = 0$)**
  * **IF** Maximum Distortion Energy Theory / Von Mises Criterion is specified:
    $$M_{e, \text{Von Mises}} = \sqrt{M^2 + \frac{3}{4} T^2} = \frac{\pi}{32} d^3 \left(\frac{\sigma_y}{FOS}\right)$$
  * **ELSE IF** Fatigue & Shock Factors $K_m, K_t$ are given:
    $$T_e = \sqrt{(K_m M)^2 + (K_t T)^2}$$
    $$M_e = \frac{1}{2} \left[ K_m M + T_e \right]$$
  * **ELSE (Standard Max Shear & Max Normal Stress Theories):**
    $$T_e = \sqrt{M^2 + T^2}$$
    $$M_e = \frac{1}{2} \left[ M + \sqrt{M^2 + T^2} \right]$$

* **CASE D: Combined Load + Axial Load ($F_a > 0$)**
  * **IF** Hollow shaft ($k = d_i / d_o$):
    $$M^* = K_m M + \frac{F_a d_o (1 + k^2)}{8}$$
  * **ELSE** (Solid shaft):
    $$M^* = K_m M + \frac{F_a d}{8}$$
  $$T_e = \sqrt{(M^*)^2 + (K_t T)^2}, \quad M_e = \frac{1}{2} \left[ M^* + T_e \right]$$
  *(Note: If $d$ or $d_o$ is unknown in $M^*$, use first-pass approximation $M^* \approx K_m M$, compute initial $d_o$, then refine in 1 iteration).*

---

### STEP 4: DIAMETER SIZING & GEOMETRY FILTER

* **BRANCH 4.1: Solid Shaft ($k = 0$)**
  * **Shear Stress Limit ($\tau$):**
    $$d_{\tau} = \sqrt[3]{\frac{16 T_e}{\pi \tau}}$$
  * **IF** Tensile Stress limit $\sigma_b$ is specified:
    $$d_{\sigma} = \sqrt[3]{\frac{32 M_e}{\pi \sigma_b}}$$
    $$d_{\text{final}} = \max(d_{\tau}, d_{\sigma})$$
  * **ELSE:**
    $$d_{\text{final}} = d_{\tau}$$

* **BRANCH 4.2: Hollow Shaft ($k = d_i / d_o$)**
  * **IF** Diameter ratio $k$ is given:
    * **Shear Stress Limit ($\tau$):**
      $$d_{o,\tau} = \sqrt[3]{\frac{16 T_e}{\pi \tau (1 - k^4)}}$$
    * **IF** Tensile Stress limit $\sigma_b$ is specified:
      $$d_{o,\sigma} = \sqrt[3]{\frac{32 M_e}{\pi \sigma_b (1 - k^4)}}$$
      $$d_{o,\text{final}} = \max(d_{o,\tau}, d_{o,\sigma})$$
    * **ELSE:**
      $$d_{o,\text{final}} = d_{o,\tau}$$
    * **Inner Diameter Calculation:**
      $$d_i = k \cdot d_{o,\text{final}}$$
  * **ELSE IF** Outer diameter $d_o$ is fixed/constrained *(e.g. $d_o = 30\text{ mm}$)*:
    $$1 - k^4 = \frac{16 T_e}{\pi \tau d_o^3} \implies k = \left[ 1 - \frac{16 T_e}{\pi \tau d_o^3} \right]^{1/4} \implies d_i = k \cdot d_o$$

---

### STEP 5: STANDARD COMMERCIAL DIAMETER SELECTION

* Select the next standard higher size from commercial standards:
  * **$25\text{ to } 60\text{ mm}$:** Steps of $5\text{ mm}$ ($25, 30, 35, 40, 45, 50, 55, 60$)
  * **$60\text{ to } 110\text{ mm}$:** Steps of $10\text{ mm}$ ($60, 70, 80, 90, 100, 110$)
  * **$110\text{ to } 300\text{ mm}$:** Steps of $20\text{ mm}$ ($110, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300$)

---

## Hollow vs. Solid Shaft Comparison Guide (Q9, Ex 14.22, Ex 16, Ex 24)

* **Condition A: Same External Diameter ($d_{\text{solid}} = d_o$)**
  * Weight Ratio: $\frac{W_{\text{hollow}}}{W_{\text{solid}}} = 1 - k^2$
  * Strength Ratio: $\frac{\text{Strength}_{\text{hollow}}}{\text{Strength}_{\text{solid}}} = 1 - k^4$
  * Stiffness Ratio: $\frac{\text{Stiffness}_{\text{hollow}}}{\text{Stiffness}_{\text{solid}}} = 1 - k^4$

* **Condition B: Same Weight / Equal Cross-Sectional Area ($W_{\text{hollow}} = W_{\text{solid}}$)**
  * Solid Diameter relation: $d_{\text{solid}} = d_o \sqrt{1 - k^2}$
  * Strength Ratio: $\frac{\text{Strength}_{\text{hollow}}}{\text{Strength}_{\text{solid}}} = \frac{1 + k^2}{\sqrt{1 - k^2}} > 1$
  * Stiffness Ratio: $\frac{\text{Stiffness}_{\text{hollow}}}{\text{Stiffness}_{\text{solid}}} = \frac{1 + k^2}{1 - k^2} > 1$

* **Condition C: Weight Comparison for Equal Strength (Solid vs Hollow of given dimensions)**
  $$\text{Weight Ratio } \frac{W_{\text{solid}}}{W_{\text{hollow}}} = \frac{d^2}{d_o^2 - d_i^2}$$

---

## Theoretical Questions Direct Key (`questions.md`)

* **Q1 (Pin vs Axle vs Shaft):** Shaft transmits torque ($T_e$). Axle supports load without torque ($M_e$). Pin fastens joints.
* **Q2 (Formation):** Hot rolling followed by cold drawing, turning, and grinding.
* **Q3 (Types & Sizes):** Line shafts, counter shafts, spindles. Standard sizes: $25\text{--}60\text{ mm}$ (in $5\text{ mm}$ steps), $60\text{--}110\text{ mm}$ (in $10\text{ mm}$ steps).
* **Q4 (Stresses):** Torsional shear ($\tau$), bending stress ($\sigma_b$), axial stress ($\sigma_a$).
* **Q5 (Pure Torsion):** Apply **Case A** $\rightarrow$ **Branch 4.1**: $d = \sqrt[3]{\frac{16 T}{\pi \tau}}$.
* **Q6 (Equivalent Moments):** State formulas for $T_e = \sqrt{M^2+T^2}$ and $M_e = \frac{1}{2}[M + T_e]$. Used under combined bending & torsion.
* **Q7 (Fluctuating Loads):** Apply **Case C (With $K_m, K_t$)**: $T_e = \sqrt{(K_m M)^2 + (K_t T)^2}$ and $M_e = \frac{1}{2}[K_m M + T_e]$.

* **Q9 (Hollow vs Solid Efficiency):** Material in hollow shaft is placed at outer radii, increasing polar section modulus $Z_p$ for equal weight: apply **Condition B** above.
* **Q10 (Hollow Shaft Applications):** Preferred when high strength-to-weight ratio is needed (marine propellers, aerospace). Manufactured by forging over mandrels or seamless drawing.
