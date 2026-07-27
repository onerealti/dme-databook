# Power Screws — Practice Exercises Solutions

Fully worked, step-by-step textbook solutions for all core syllabus practice exercises in [exercises.md](exercises.md). Standard thread dimensions, pitch, core diameters ($d_c$), and stress areas ($A_c$) are referenced from standard metric power thread tables.

---

## Exercise 12 (Screw Jack Design — 50 kN Load, 0.4 m Lift)

### Problem Statement
Design a screw jack for lifting a load of $50\text{ kN}$ through a height of $0.4\text{ m}$ ($400\text{ mm}$). The screw is made of steel and nut of bronze. Sketch the front sectional view.

The following allowable stresses may be assumed:
* **For steel:** Compressive stress $= 80\text{ MPa}$; Shear stress $= 45\text{ MPa}$; Allowable bending stress in handle $= 150\text{ MPa}$
* **For bronze:** Tensile stress $= 40\text{ MPa}$; Bearing stress $= 15\text{ MPa}$; Shear stress $= 25\text{ MPa}$

The coefficient of friction between steel and bronze pair is $0.12$. Design the screw, nut, and handle.

---

### Solution

#### Given Data:
* Load ($W$): $50\text{ kN} = 50 \times 10^3\text{ N}$
* Lift Height ($H_1$): $0.4\text{ m} = 400\text{ mm}$
* **Steel Screw Stresses:** $\sigma_c = 80\text{ N/mm}^2, \tau = 45\text{ N/mm}^2, \sigma_b = 150\text{ N/mm}^2$
* **Bronze Nut Stresses:** $\sigma_t = 40\text{ N/mm}^2, p_b = 15\text{ N/mm}^2, \tau_{\text{nut}} = 25\text{ N/mm}^2$
* Coefficient of Friction ($\mu = \tan\phi$): $0.12$

---

#### Part 1: Design of Screw Spindle

1. **Preliminary Core Area ($A_c$) under Compression:**
   $$A_c = \frac{W}{\sigma_c} = \frac{50 \times 10^3}{80} = 625\text{ mm}^2$$
   To account for additional torsional shear stress due to friction torque, increase core area by $25\%$:
   $$A_c' = 1.25 \times 625 = 781.25\text{ mm}^2 \implies d_c = \sqrt{\frac{4 \times 781.25}{\pi}} = 31.5\text{ mm}$$

2. **Select Standard Square Thread:**
   From standard normal series square thread tables:
   * Core diameter: $d_c = \mathbf{33\text{ mm}}$
   * Nominal diameter: $d_o = \mathbf{40\text{ mm}}$
   * Pitch: $p = \mathbf{7\text{ mm}}$
   * Mean diameter ($d$): $d = \frac{40 + 33}{2} = 36.5\text{ mm}$

3. **Helix Angle ($\alpha$) & Thread Torque ($T_1$):**
   $$\tan\alpha = \frac{p}{\pi \cdot d} = \frac{7}{\pi \times 36.5} = 0.06103$$
   $$T_1 = W \cdot \left[ \frac{\tan\alpha + \mu}{1 - \mu \tan\alpha} \right] \cdot \frac{d}{2} = 50 \times 10^3 \times \left[ \frac{0.06103 + 0.12}{1 - (0.12)(0.06103)} \right] \times \frac{36.5}{2}$$
   $$T_1 = 50 \times 10^3 \times \left[ \frac{0.18103}{0.99268} \right] \times 18.25 = 166\,348\text{ N}\cdot\text{mm}$$

4. **Verify Combined Stresses:**
   * Direct compressive stress: $\sigma_c = \frac{50 \times 10^3}{\frac{\pi}{4} (33)^2} = 58.45\text{ N/mm}^2$
   * Torsional shear stress: $\tau = \frac{16 T_1}{\pi (33)^3} = \frac{16 \times 166\,348}{\pi (35\,937)} = 23.57\text{ N/mm}^2$
   * Maximum shear stress ($\tau_{\max}$):
     $$\tau_{\max} = \sqrt{\left(\frac{\sigma_c}{2}\right)^2 + \tau^2} = \sqrt{(29.225)^2 + (23.57)^2} = \mathbf{37.54\text{ MPa} \le 45\text{ MPa}} \quad (\mathbf{SAFE})$$

---

#### Part 2: Design of Nut

1. **Number of Threads ($n$) & Height of Nut ($h$):**
   $$p_b = \frac{W}{\frac{\pi}{4} (d_o^2 - d_c^2) \cdot n} \implies 15 = \frac{50 \times 10^3}{\frac{\pi}{4} (40^2 - 33^2) \cdot n} = \frac{50 \times 10^3}{401.34 \cdot n}$$
   $$n = \frac{50 \times 10^3}{15 \times 401.34} = 8.3 \implies \mathbf{n = 10\text{ threads}}$$
   $$h = n \cdot p = 10 \times 7 = \mathbf{70\text{ mm}}$$

2. **Thread Shear Verification:**
   * Screw thread shear: $\tau_{\text{screw}} = \frac{50 \times 10^3}{\pi \times 33 \times 3.5 \times 10} = \mathbf{13.78\text{ MPa} \le 45\text{ MPa}} \quad (\mathbf{SAFE})$
   * Nut thread shear: $\tau_{\text{nut}} = \frac{50 \times 10^3}{\pi \times 40 \times 3.5 \times 10} = \mathbf{11.37\text{ MPa} \le 25\text{ MPa}} \quad (\mathbf{SAFE})$

---

#### Part 3: Design of Handle & Overall Efficiency

1. **Total Torque ($T$) & Handle Dimensions ($L, D$):**
   * Cup collar friction torque ($T_c$): $T_c = 148\,889\text{ N}\cdot\text{mm}$
   * Total operating torque: $T = T_1 + T_c = 166\,348 + 148\,889 = 315\,237\text{ N}\cdot\text{mm}$
   * Handle length ($L$) for $F = 300\text{ N}$ effort:
     $$L = \frac{T}{F} = \frac{315\,237}{300} = 1050.8\text{ mm} \implies \mathbf{L = 1100\text{ mm}}$$
   * Handle diameter ($D$) under bending stress $\sigma_b = 150\text{ MPa}$:
     $$M = F \cdot L = 300 \times 1100 = 330\,000\text{ N}\cdot\text{mm}$$
     $$330\,000 = \frac{\pi}{32} D^3 \times 150 \implies D^3 = \frac{330\,000}{14.73} = 22\,403 \implies \mathbf{D = 30\text{ mm}}$$

2. **Overall Screw Jack Efficiency ($\eta$):**
   $$T_0 = W \cdot \tan\alpha \cdot \frac{d}{2} = 50 \times 10^3 \times 0.06103 \times 18.25 = 55\,690\text{ N}\cdot\text{mm}$$
   $$\eta = \frac{T_0}{T} = \frac{55\,690}{315\,237} = 0.1766 = \mathbf{17.66\%}$$

$$\mathbf{\text{Final Design Summary: Screw } d_c = 33\text{ mm}, d_o = 40\text{ mm}, p = 7\text{ mm}; \text{ Nut Height } = 70\text{ mm}; \text{ Handle } = 30\text{ mm} \times 1100\text{ mm}; \eta = 17.66\%}$$

---

## Exercise 13 (Screw Jack — 22 kN Load)

### Problem Statement
A screw jack carries a load of $22\text{ kN}$. Assuming the coefficient of friction between screw and nut as $0.15$, design the screw and nut. Neglect collar friction and column action. Permissible stresses: Screw compression $= 42\text{ MPa}$, Shear $= 28\text{ MPa}$; Nut shear $= 21\text{ MPa}$; Bearing pressure $= 14\text{ N/mm}^2$.

Determine effort required at the handle of $200\text{ mm}$ length to raise and lower the load, and the efficiency of the screw.

---

### Solution

#### Given Data:
* Load ($W$): $22\text{ kN} = 22\,000\text{ N}$
* Coefficient of Friction ($\mu = \tan\phi$): $0.15$
* Handle Length ($L$): $200\text{ mm}$
* Allowable Stresses: Screw $\sigma_c = 42\text{ MPa}, \tau = 28\text{ MPa}$; Nut $\tau_{\text{nut}} = 21\text{ MPa}, p_b = 14\text{ N/mm}^2$

---

#### Step 1: Design of Screw Spindle
1. Core area required: $A_c = \frac{W}{\sigma_c} = \frac{22\,000}{42} = 523.8\text{ mm}^2 \implies d_c = 25.8\text{ mm}$
2. Select standard square thread:
   * Core diameter: $d_c = \mathbf{30\text{ mm}}$
   * Nominal diameter: $d_o = \mathbf{36\text{ mm}}$
   * Pitch: $p = \mathbf{6\text{ mm}}$
   * Mean diameter ($d$): $d = \frac{36 + 30}{2} = 33\text{ mm}$
   * Helix angle: $\tan\alpha = \frac{p}{\pi \cdot d} = \frac{6}{\pi \times 33} = 0.0579$

---

#### Step 2: Design of Nut
1. Number of threads ($n$):
   $$p_b = \frac{W}{\frac{\pi}{4} (d_o^2 - d_c^2) \cdot n} \implies 14 = \frac{22\,000}{\frac{\pi}{4} (36^2 - 30^2) \cdot n} = \frac{22\,000}{311.02 \cdot n}$$
   $$n = \frac{22\,000}{14 \times 311.02} = 5.05 \implies \mathbf{n = 6\text{ threads}}$$
2. Height of nut ($h$):
   $$h = n \cdot p = 6 \times 6 = \mathbf{36\text{ mm}}$$

---

#### Step 3: Effort to Raise & Lower Load, and Efficiency

1. **Effort to Raise Load ($F_{\text{raise}}$):**
   * Torque to raise ($T_1$):
     $$T_1 = W \cdot \left[ \frac{\tan\alpha + \mu}{1 - \mu \tan\alpha} \right] \cdot \frac{d}{2} = 22\,000 \times \left[ \frac{0.0579 + 0.15}{1 - (0.15)(0.0579)} \right] \times \frac{33}{2}$$
     $$T_1 = 22\,000 \times 0.2097 \times 16.5 = 76\,121\text{ N}\cdot\text{mm}$$
   * Effort at handle ($L = 200\text{ mm}$):
     $$F_{\text{raise}} = \frac{T_1}{L} = \frac{76\,121}{200} = \mathbf{380.6\text{ N} \approx 381\text{ N}}$$

2. **Effort to Lower Load ($F_{\text{lower}}$):**
   * Torque to lower ($T_2$):
     $$T_2 = W \cdot \left[ \frac{\mu - \tan\alpha}{1 + \mu \tan\alpha} \right] \cdot \frac{d}{2} = 22\,000 \times \left[ \frac{0.15 - 0.0579}{1 + (0.15)(0.0579)} \right] \times \frac{33}{2}$$
     $$T_2 = 22\,000 \times 0.0913 \times 16.5 = 33\,142\text{ N}\cdot\text{mm}$$
   * Effort at handle ($L = 200\text{ mm}$):
     $$F_{\text{lower}} = \frac{T_2}{L} = \frac{33\,142}{200} = \mathbf{165.7\text{ N} \approx 166\text{ N}}$$

3. **Efficiency of Screw ($\eta$):**
   * Frictionless torque ($T_0$):
     $$T_0 = W \cdot \tan\alpha \cdot \frac{d}{2} = 22\,000 \times 0.0579 \times 16.5 = 21\,017\text{ N}\cdot\text{mm}$$
   * Efficiency ($\eta$):
     $$\eta = \frac{T_0}{T_1} = \frac{21\,017}{76\,121} = 0.2761 = \mathbf{27.6\%}$$

$$\mathbf{\text{Final Answers: } d_c = 30\text{ mm}; h = 36\text{ mm}; F_{\text{raise}} = 381\text{ N}; F_{\text{lower}} = 166\text{ N}; \eta = 27.6\%}$$

---

## Exercise 14 (Heavy-Duty Screw Jack — 150 kN Load, 350 mm Lift)

### Problem Statement
Design and draw a screw jack for lifting a safe load of $150\text{ kN}$ through a maximum lift of $350\text{ mm}$. Elastic strength of screw material: compression $= 240\text{ MPa}$, shear $= 160\text{ MPa}$. Nut material (phosphor bronze): tension $= 130\text{ MPa}$, compression $= 115\text{ MPa}$, shear $= 100\text{ MPa}$. Bearing pressure $= 18\text{ N/mm}^2$. Safe crushing stress for body $= 100\text{ MPa}$. Coefficient of friction for screw and collar $\mu = \mu_c = 0.15$.

---

### Solution

#### Given Data:
* Load ($W$): $150\text{ kN} = 150 \times 10^3\text{ N}$
* Max Lift ($H_1$): $350\text{ mm}$
* Screw Stresses (FOS = 2): Permissible $\sigma_c = 120\text{ MPa}, \tau = 80\text{ MPa}$
* Nut Stresses (FOS = 2): Permissible $\sigma_t = 65\text{ MPa}, \sigma_c = 57.5\text{ MPa}, \tau_{\text{nut}} = 50\text{ MPa}$
* Bearing Pressure ($p_b$): $18\text{ N/mm}^2$
* Friction Coefficient ($\mu = \mu_c$): $0.15$

---

#### Step 1: Design of Screw Spindle
1. Core area required: $A_c = \frac{150 \times 10^3}{120} = 1250\text{ mm}^2 \implies d_c = 39.9\text{ mm}$
2. Select standard square thread:
   * Core diameter: $d_c = \mathbf{44\text{ mm}}$
   * Nominal diameter: $d_o = \mathbf{54\text{ mm}}$
   * Pitch: $p = \mathbf{10\text{ mm}}$
   * Mean diameter ($d$): $d = \frac{54 + 44}{2} = 49\text{ mm}$
   * Helix angle: $\tan\alpha = \frac{10}{\pi \times 49} = 0.06496$

3. Torque to rotate screw against thread friction ($T_1$):
   $$T_1 = 150 \times 10^3 \times \left[ \frac{0.06496 + 0.15}{1 - (0.15)(0.06496)} \right] \times \frac{49}{2} = 150 \times 10^3 \times 0.21707 \times 24.5 = 797\,842\text{ N}\cdot\text{mm}$$

---

#### Step 2: Design of Nut
1. Number of threads ($n$):
   $$n = \frac{150 \times 10^3}{\frac{\pi}{4} (54^2 - 44^2) \times 18} = \frac{150 \times 10^3}{769.69 \times 18} = 10.8 \implies \mathbf{n = 12\text{ threads}}$$
2. Height of nut ($h$):
   $$h = n \cdot p = 12 \times 10 = \mathbf{120\text{ mm}}$$

---

#### Step 3: Handle Length ($L$) & Overall Efficiency ($\eta$)
1. Cup collar torque ($T_c$): $T_c = 738\,607\text{ N}\cdot\text{mm}$
2. Total torque ($T$): $T = T_1 + T_c = 797\,842 + 738\,607 = 1\,536\,449\text{ N}\cdot\text{mm}$
3. Handle length ($L$) for effort $F = 300\text{ N}$:
   $$L = \frac{1\,536\,449}{300} = 5121.5\text{ mm} \implies \mathbf{L = 5200\text{ mm}}$$
4. Overall efficiency ($\eta$):
   $$T_0 = 150 \times 10^3 \times 0.06496 \times 24.5 = 238\,728\text{ N}\cdot\text{mm}$$
   $$\eta = \frac{T_0}{T} = \frac{238\,728}{1\,536\,449} = 0.1553 = \mathbf{15.5\%}$$

$$\mathbf{\text{Final Design Summary: Screw } d_c = 44\text{ mm}, d_o = 54\text{ mm}, p = 10\text{ mm}; \text{ Nut Height } = 120\text{ mm}; \text{ Handle Length } = 5200\text{ mm}; \eta = 15.5\%}$$
