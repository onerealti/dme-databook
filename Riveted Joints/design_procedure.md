# Riveted Joints — Design Procedure Manual

This manual provides a step-by-step master engineering procedure for designing **Riveted Joints** under static, pressure vessel (boiler), and eccentric loading conditions, aligned with the **PC402ME (Unit-IV)** syllabus and standard textbook conventions.

---

## Stage 1: Preliminary Analysis & Rivet Sizing

### 1.1 Rivet Nomenclature & Standard Proportions
* **Rivet Diameter ($d$):** Diameter of the rivet hole after riveting ($d = d_{\text{shank}} + 1.5\text{ mm}$).
* **Plate Thickness ($t$):** Thickness of the main plates to be joined.
* **Pitch ($p$):** Distance between the centers of two consecutive rivets in a row.
* **Transverse Pitch / Back Pitch ($p_t$):** Distance between two consecutive rows of rivets.
* **Margin ($m$):** Distance from the center of the rivet hole to the nearest edge of the plate:
  $$m = 1.5 \cdot d \quad [\text{mm}]$$

---

### 1.2 Rivet Hole Sizing (Unwin's Formula)

1. **For Main Plate Thickness $t \ge 8\text{ mm}$:**
   $$d = 6 \sqrt{t} \quad [\text{mm}]$$

2. **For Thin Plates $t < 8\text{ mm}$:**
   Equate tearing strength of plate to shearing strength of rivet:
   $$(p - d) t \cdot \sigma_t = \frac{\pi}{4} d^2 \cdot \tau \implies d = \frac{4 t \sigma_t}{\pi \tau}$$

---

## Stage 2: Failure Modes & Efficiency Equations

### 2.1 Failure Strengths per Pitch Length ($p$)

1. **Tearing Strength of Plate ($P_t$):**
   $$P_t = (p - d) \cdot t \cdot \sigma_t \quad [\text{N}]$$

2. **Shearing Strength of Rivets ($P_s$):**
   * **Single Shear (Lap Joints & Single Cover Butt Joints):**
     $$P_s = n \cdot \frac{\pi}{4} d^2 \cdot \tau \quad [\text{N}]$$
   * **Double Shear (Double Cover Butt Joints — IS Code 1.875 Factor):**
     $$P_s = 1.875 \cdot n \cdot \frac{\pi}{4} d^2 \cdot \tau \quad [\text{N}]$$
     *(where $n$ is the number of rivets per pitch length)*

3. **Crushing (Bearing) Strength of Rivets ($P_c$):**
   $$P_c = n \cdot d \cdot t \cdot \sigma_c \quad [\text{N}]$$

4. **Strength of Un-punched Solid Plate ($P$):**
   $$P = p \cdot t \cdot \sigma_t \quad [\text{N}]$$

---

### 2.2 Joint Efficiency ($\eta$)
$$\eta = \frac{\min(P_t, P_s, P_c)}{P} \times 100\% = \frac{\min(P_t, P_s, P_c)}{p \cdot t \cdot \sigma_t} \times 100\%$$

---

## Stage 3: Master Design Procedure for Boiler Joints

Boiler shell joints consist of a **Longitudinal Joint** (resisting internal bursting pressure $p$) and a **Circumferential Joint** (resisting axial steam pressure end-thrust).

### 3.1 Design of Longitudinal Boiler Joint (Double Cover Butt Joint)

1. **Plate Thickness ($t$):**
   $$t = \frac{p \cdot D}{2 \cdot \sigma_t \cdot \eta_l} + 1.5\text{ mm} \quad [\text{mm}]$$
   *(where $D$ is internal shell diameter, $p$ is steam pressure, $\eta_l$ is estimated longitudinal joint efficiency).*

2. **Rivet Diameter ($d$):**
   $$d = 6 \sqrt{t} \quad [\text{mm}]$$

3. **Number of Rivets ($n$) & Pitch ($p$):**
   Equate tearing strength $P_t$ to shearing strength $P_s$:
   $$(p - d) t \cdot \sigma_t = n \cdot \left( 1.875 \cdot \frac{\pi}{4} d^2 \cdot \tau \right) \implies p = d + \frac{1.875 \cdot n \cdot \frac{\pi}{4} d^2 \tau}{t \cdot \sigma_t}$$

4. **Check Maximum Allowable Pitch ($p_{\max}$):**
   $$p_{\max} = C \cdot t + 41.28\text{ mm}$$
   *(where $C = 1.75 \sim 3.50$ depending on rivet layout).*

5. **Cover Strap Thickness ($t_1$):**
   * **Equal width straps:** $t_1 = 0.625 t$
   * **Unequal width straps:** Inner $t_1 = 0.75 t$, Outer $t_2 = 0.625 t$

---

### 3.2 Design of Circumferential Boiler Joint (Lap Joint)

1. **Total Axial End Force ($F$):**
   $$F = \frac{\pi}{4} D^2 \cdot p \quad [\text{N}]$$

2. **Number of Rivets ($n_c$):**
   $$n_c = \frac{F}{\frac{\pi}{4} d^2 \cdot \tau}$$

3. **Number of Rows & Overlap:**
   Arrange $n_c$ rivets in single or double-riveted lap joints with margin $m = 1.5 d$.

---

## Stage 4: Lozenge (Diamond) Structural Joint & Eccentric Loading

### 4.1 Lozenge (Diamond) Joint Design
Used for tie-bars and structural bridges to achieve near $100\%$ joint efficiency.

1. **Rivet Distribution:** Rivets are arranged in diamond pattern ($1, 2, 3, \dots, 3, 2, 1$).
2. **Critical Section Checks:**
   * **Section 1-1 (Outer single-rivet row):** $P_{t1} = (b - d) t \cdot \sigma_t$
   * **Section 2-2 (Two-rivet row):** $P_{t2} = (b - 2d) t \cdot \sigma_t + P_{s1}$
   * **Section 3-3 (Three-rivet row):** $P_{t3} = (b - 3d) t \cdot \sigma_t + 3 P_{s1}$
3. **Strap Thickness:** $t_1 = 0.625 t$.

---

### 4.2 Eccentrically Loaded Riveted Joints

1. **Primary Direct Shear Force per Rivet ($P_{s1}$):**
   $$P_{s1} = \frac{P}{n} \quad [\text{N}]$$

2. **Secondary Shear Force due to Moment ($P_{s2}$):**
   $$P_{s2} = \frac{P \cdot e \cdot r_i}{\sum r_i^2} \quad [\text{N}]$$

3. **Resultant Shear Force on Critical Rivet ($R$):**
   $$R = \sqrt{P_{s1}^2 + P_{s2}^2 + 2 P_{s1} P_{s2} \cos\theta} \le \frac{\pi}{4} d^2 \cdot \tau \quad [\text{N}]$$
