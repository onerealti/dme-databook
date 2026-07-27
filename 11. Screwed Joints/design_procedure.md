# Screwed Joints — Design Procedure Manual

This manual provides a step-by-step master engineering procedure for analyzing and designing screwed joints under static, fatigue, and eccentric loading conditions, aligned with the **PC402ME (Unit-V)** syllabus and standard textbook conventions.

---

## Stage 1: Preliminary Force Resolution & Component System Classification

Before sizing bolts or analyzing joint failure, the mechanical loading system must be resolved into fundamental axial, bending, torsional, and shear force components acting on the joint and bracket arms.

### 1.1 Force Resolution for Inclined Loading
When an external force $W$ acts on a bracket at an angle $\theta$ to the vertical axis:

1. **Horizontal Force Component ($W_H$):**
   $$W_H = W \cdot \sin\theta \quad [\text{N}]$$
   *Acts parallel to the bolt axis, inducing direct tension on all bolts and a turning moment about the bolt centroid.*

2. **Vertical Force Component ($W_V$):**
   $$W_V = W \cdot \cos\theta \quad [\text{N}]$$
   *Acts perpendicular to the bolt axis, inducing direct shear on all bolts and an overturning moment about the lower edge.*

---

### 1.2 Screwed Fastener Classification & Thread Geometry
* **Through Bolt:** Used when clearance holes are accessible from both ends. Fastened using a standard hexagonal nut.
* **Tap Bolt:** Screwed directly into a threaded hole in one of the connected components without a nut.
* **Stud:** A rod threaded at both ends. The metal end is permanently screwed into a tapped casting, while the nut end secures a removable cover plate (e.g., steam engine cylinder covers).

#### Thread Nomenclature & Stress Area:
* **Nominal Major Diameter ($d$ or $D_o$):** Largest diameter of the thread form.
* **Core / Minor Diameter ($d_c$ or $D_c$):** Smallest diameter at the thread root. Standard approximation:
  $$d_c \approx 0.84 \cdot d$$
* **Tensile Stress Area ($A_c$):** Effective load-bearing cross-sectional area:
  $$A_c = \frac{\pi}{4} (d_c)^2 \quad [\text{mm}^2]$$
  *(Refer to [Table 11.1: Standard Screw Threads](table_11_1_standard_screw_threads.md) for exact core area values).*

---

### 1.3 Locking Devices (Vibration Anti-Loosening)
Threaded joints are naturally self-locking under static forces. Under dynamic vibration or cyclic shock, thread friction drops, requiring locking devices:

| Locking Device Type | Working Principle | Typical Engineering Applications |
| :--- | :--- | :--- |
| **Jam Nut (Lock Nut)** | Dual nuts tightened against each other create opposing axial thread friction | Shaft bearings, connecting rods |
| **Castle Nut & Split Pin** | Positive mechanical lock via cotter pin passed through bolt cross-hole and nut slots | Automotive stub axles, crane hooks |
| **Spring Washer** | Exerts continuous elastic axial force against nut face | High-vibration machinery, pumps |
| **Locking Plate / Tab Washer** | Deformable metal tabs folded against flange edge and nut flat | Aircraft structures, gearboxes |

---

## Stage 2: Stress Analysis & Sizing under Static & Fluctuating Preload

### 2.1 Stresses Due to Initial Tightening ($F_i$)
When a bolt is tightened with a spanner before external service load is applied, it is subjected to an initial tightening tensile force $F_i$:

1. **Fluid-Tight Joints (Engine Cylinders, Pressure Vessels):**
   $$F_i = 2840 \cdot d \quad [\text{N}] \qquad (d = \text{nominal bolt diameter in mm})$$

2. **Ordinary Engineering Joints (Non-Fluid Tight):**
   $$F_i = 1420 \cdot d \quad [\text{N}]$$

3. **Initial Tensile Stress ($\sigma_i$):**
   $$\sigma_i = \frac{F_i}{A_c} = \frac{2840 \cdot d}{\frac{\pi}{4} (d_c)^2} \quad [\text{N/mm}^2]$$

---

### 2.2 Combined Preload & External Service Load

When a preloaded bolt is subjected to an external tensile load $P_e$:

$$\text{Total Resultant Axial Load on Bolt } (P_{\text{total}}) = F_i + K \cdot P_e$$

where $K$ is the **Gasket Stiffness Ratio** (referenced from **[Table 11.2](table_11_2_gasket_factors.md)**):
$$K = \frac{k_b}{k_b + k_m}$$

* **Metal-to-Metal Joint (No Gasket):** $K = 0.00 \sim 0.10$
* **Hard Copper Gasket with Long Bolts:** $K = 0.25 \sim 0.50$
* **Soft Copper Gasket:** $K = 0.50 \sim 0.75$
* **Soft Packing with Studs:** $K = 1.00$

#### Sizing Quadratic Equation for Preloaded Bolts:
Equating total resultant load to allowable tensile strength ($P_{\text{total}} = A_c \cdot \sigma_t$):
$$2840 \cdot d + K \cdot P_e = \frac{\pi}{4} (0.84 d)^2 \cdot \sigma_t = 0.5542 \cdot \sigma_t \cdot d^2$$

$$0.5542 \cdot \sigma_t \cdot d^2 - 2840 \cdot d - K \cdot P_e = 0$$

Solve this quadratic equation for nominal diameter $d$, then select the next standard commercial size from **[Table 11.1](table_11_1_standard_screw_threads.md)**.

---

### 2.3 Cylinder Cover Stud Design & Leak-Proof Pitch Check

For steam engine cylinder covers, pump casings, and pressure vessels:

1. **Empirical Number of Studs ($n$):**
   $$n = 0.02 \cdot D + 4 \quad \text{to} \quad 0.04 \cdot D + 4 \qquad (\text{Average: } n = 0.03 \cdot D + 2)$$
   *(where $D$ is internal cylinder diameter in mm)*

2. **Pitch Circle Diameter ($D_p$):**
   $$D_p = D + 2 d_1 + 12\text{ mm} \qquad (d_1 = \text{nominal stud diameter})$$

3. **Leak-Proof Pitch Verification ($p_c$):**
   Circumferential pitch between adjacent studs:
   $$p_c = \frac{\pi \cdot D_p}{n} \quad [\text{mm}]$$

   **Leak-Proof Pitch Criteria:**
   $$20 \sqrt{d_1} \le p_c \le 30 \sqrt{d_1} \quad [\text{mm}]$$
   *If $p_c > 30 \sqrt{d_1}$, increase the number of studs $n$ to prevent fluid leakage between studs.*

---

### 2.4 Fatigue Design under Fluctuating Loading (Soderberg Criterion)
When cylinder pressure fluctuates between $P_{\min}$ and $P_{\max}$:

1. **Mean Load ($P_m$) & Variable Load ($P_v$):**
   $$P_m = \frac{P_{\max} + P_{\min}}{2}, \qquad P_v = \frac{P_{\max} - P_{\min}}{2}$$

2. **Soderberg Failure Criterion Equation:**
   $$\frac{1}{FOS} = \frac{\sigma_m}{\sigma_y} + \frac{K_f \cdot \sigma_v}{\sigma_e}$$
   * **Mean Tensile Stress ($\sigma_m$):** $\sigma_m = \frac{P_m}{A_c}$
   * **Variable Tensile Stress ($\sigma_v$):** $\sigma_v = \frac{P_v}{A_c}$
   * **Yield Strength ($\sigma_y$):** Material yield strength in tension
   * **Endurance Limit ($\sigma_e$):** Material endurance limit under reversed axial loading
   * **Fatigue Stress Concentration Factor ($K_f$):** $K_f = 2.5 \sim 3.0$ for threaded fasteners
   * **Factor of Safety ($FOS$):** Specified design safety factor

---

## Stage 3: Bolts of Uniform Strength

Standard bolts tend to fail at the first engaged thread root because the small core cross-sectional area $A_c$ absorbs almost all impact strain energy. To distribute shock and impact energy uniformly along the entire bolt length:

### Method 1: Reduced Shank Diameter
Turn down the unthreaded shank diameter to match the thread core diameter $d_c$:
$$d_{\text{shank}} = d_c$$

### Method 2: Drilled Central Axial Hole
Drill a central axial hole of diameter $D_h$ through the unthreaded shank down to the thread engagement region:
$$\frac{\pi}{4} \left( d^2 - D_h^2 \right) = \frac{\pi}{4} (d_c)^2$$

$$D_h = \sqrt{d^2 - d_c^2} \quad [\text{mm}]$$

#### Strain Energy Capacity ($U$):
$$U = \frac{\sigma^2}{2 E} \cdot V \quad [\text{N}\cdot\text{mm}]$$
*(Where $V$ is total bolt volume and $E$ is Young's Modulus).*

---

## Stage 4: Design of Eccentrically Loaded Bolted Joints

### Case A: Eccentric Load Parallel to Bolt Axis (Wall / Pillar Brackets)

1. **Direct Tensile Load per Bolt ($W_{t1}$):**
   $$W_{t1} = \frac{W}{n} \quad [\text{N}] \qquad (n = \text{total number of bolts})$$

2. **Secondary Tensile Load due to Turning Moment ($W_{t2}$):**
   The bracket tilts about its lower edge $E-E$:
   * **Unit Load per Unit Distance ($w$):**
     $$w = \frac{W \cdot L}{\sum n_i \cdot L_i^2} \quad [\text{N/mm}]$$
     *(where $L_i$ is distance of bolt row $i$ from tilting edge $E-E$, and $n_i$ is number of bolts in row $i$)*

   * **Secondary Tensile Load on Critical Top Bolt at Distance $L_{\max}$:**
     $$W_{t2} = w \cdot L_{\max} \quad [\text{N}]$$

3. **Total Maximum Tensile Load on Critical Bolt ($W_t$):**
   $$W_t = W_{t1} + W_{t2} \quad [\text{N}]$$

4. **Required Core Area ($A_c$):**
   $$A_c = \frac{W_t}{\sigma_t} \implies \text{Select standard bolt size from Table 11.1}$$

---

### Case B: Eccentric Load Perpendicular to Bolt Axis in Plane of Bolts (Coplanar Shear)

1. **Direct Shear Load per Bolt ($W_{s1}$):**
   $$W_{s1} = \frac{W}{n} \quad [\text{N}]$$

2. **Secondary Shear Load due to Eccentric Rotation ($W_{s2}$):**
   The load causes turning about the centroid $G$ of the bolt layout:
   $$W_{s2} = \frac{W \cdot e \cdot r_i}{\sum r_i^2} \quad [\text{N}]$$
   *(where $r_i$ is radial distance from centroid $G$ to bolt $i$, and $e$ is load eccentricity)*

3. **Resultant Maximum Shear Load on Critical Bolt ($W_s$):**
   Apply vector addition for primary and secondary shear vectors:
   $$W_s = \sqrt{W_{s1}^2 + W_{s2}^2 + 2 W_{s1} W_{s2} \cos\theta} \quad [\text{N}]$$
   *(where $\theta$ is the angle between $W_{s1}$ and $W_{s2}$ vectors)*

---

### Case C: Combined Shear and Tension (Inclined Loading Brackets)

When critical bolts carry both direct tension ($W_t$) and direct shear ($W_s$):

1. **Equivalent Tensile Load ($W_{te}$) — Maximum Principal Stress Theory:**
   $$W_{te} = \frac{1}{2} \left[ W_t + \sqrt{W_t^2 + 4 W_s^2} \right] \quad [\text{N}]$$

2. **Equivalent Shear Load ($W_{se}$) — Maximum Shear Stress Theory:**
   $$W_{se} = \frac{1}{2} \sqrt{W_t^2 + 4 W_s^2} \quad [\text{N}]$$

3. **Calculate Core Diameter ($d_c$) & Select Bolt:**
   $$W_{te} = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t \implies d_c = \sqrt{\frac{4 W_{te}}{\pi \cdot \sigma_t}} \quad [\text{mm}]$$

---

### Case D: Circular Base Foundation & Flange Bolts (Pillar Cranes & Flanged Bearings)

For $n$ bolts equally spaced on a bolt circle radius $r$ around a circular base flange of radius $R$:

1. **Tilting about Outer Base Tangent ($A-A$):**
   Overturning distance $L = e - R$. Maximum tensile load on critical bolt:
   $$W_t = \frac{2 \cdot W \cdot L \cdot \left[ R + r \cos\left( \frac{180^\circ}{n} \right) \right]}{n \left( 2 R^2 + r^2 \right)} \quad [\text{N}]$$

2. **Core Diameter & Bolt Selection:**
   $$A_c = \frac{W_t}{\sigma_t} \implies \text{Select M-series bolt size from Table 11.1}$$

---

### Case E: Cross-Sectional Sizing of Bracket Arms

1. **Rectangular Arm ($t \times b$ under Bending Moment $M = W \cdot L$):**
   Section modulus $Z = \frac{1}{6} \cdot t \cdot b^2$.
   $$\sigma_t = \frac{M}{Z} = \frac{6 M}{t \cdot b^2} \implies t = \frac{6 M}{\sigma_t \cdot b^2} \quad [\text{mm}]$$

2. **Solid Circular Arm ($D$) under Combined Bending ($M$) and Torsion ($T$):**
   $$T_e = \sqrt{M^2 + T^2} = \frac{\pi}{16} D^3 \cdot \tau \implies D = \sqrt[3]{\frac{16 T_e}{\pi \cdot \tau}} \quad [\text{mm}]$$

3. **T-Section or I-Section Arm under Inclined Pull:**
   * Calculate centroid $\bar{y}$ and moment of inertia $I_{GG}$.
   * Combine bending tensile stress $\sigma_b = \frac{M \cdot y}{I_{GG}}$ and direct stress $\sigma_d = \frac{W_H}{A}$.
   * Equate net stress to safe tensile stress $\sigma_t$.

---

## Master Engineering Design Flowchart Checklist

1. **Identify Load System:** Pure tension $\to$ Combined pre-load $\to$ Eccentric parallel $\to$ Coplanar shear $\to$ Circular foundation.
2. **Resolve Force Components:** Determine $W_H = W \sin\theta$ and $W_V = W \cos\theta$.
3. **Calculate Secondary Forces:** Find unit load $w$ for tilting moments or secondary shear $W_{s2}$ for eccentric rotation.
4. **Apply Failure Theory:** Combine $W_t$ and $W_s$ using Equivalent Tensile Load $W_{te} = \frac{1}{2} [W_t + \sqrt{W_t^2 + 4 W_s^2}]$.
5. **Table Lookup:** Select standard nominal bolt size $d$ and stress area $A_c$ from **[Table 11.1](table_11_1_standard_screw_threads.md)**.
6. **Leak-Proof Verification:** Verify pitch condition $20 \sqrt{d_1} \le p_c \le 30 \sqrt{d_1}$ for cylinder covers.
