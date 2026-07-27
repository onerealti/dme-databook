# Power Screws — Solved Examples Solutions

Fully worked, step-by-step textbook solutions for all core syllabus examples in [examples.md](examples.md). Standard thread dimensions, pitch, core diameters ($d_c$), and stress areas ($A_c$) are referenced from standard metric power thread tables.

---

## Example 17.15 (Complete Design of a Screw Jack — 80 kN Load)

### Problem Statement
A screw jack is to lift a load of $80\text{ kN}$ ($80 \times 10^3\text{ N}$) through a height of $400\text{ mm}$. The elastic strength of screw material in tension and compression is $200\text{ MPa}$ and in shear $120\text{ MPa}$. The material for nut is phosphor-bronze for which the elastic limit may be taken as $100\text{ MPa}$ in tension, $90\text{ MPa}$ in compression, and $80\text{ MPa}$ in shear. The bearing pressure between the nut and the screw is not to exceed $18\text{ N/mm}^2$.

Design the screw jack completely, including:
1. Design of Screw (Spindle),
2. Design of Nut,
3. Design of Handle and Cup, and
4. Design of Body & Efficiency Calculation.

![Fig 17.11: Complete Front Sectional Assembly of Screw Jack](Fig%2017.11%20Screw%20Jack.png)

---



### Solution

#### Given Data:
* Load ($W$): $80\text{ kN} = 80 \times 10^3\text{ N}$
* Max Lift ($H_1$): $400\text{ mm} = 0.4\text{ m}$
* **Screw Material Properties (FOS = 2):**
  * $\sigma_{et} = \sigma_{ec} = 200\text{ MPa} \implies \text{Permissible } \sigma_c = \frac{200}{2} = 100\text{ N/mm}^2$
  * $\tau_e = 120\text{ MPa} \implies \text{Permissible } \tau = \frac{120}{2} = 60\text{ N/mm}^2$
* **Nut Material Properties (Phosphor-Bronze, FOS = 2):**
  * $\sigma_{et(\text{nut})} = 100\text{ MPa} \implies \text{Permissible } \sigma_{t(\text{nut})} = \frac{100}{2} = 50\text{ N/mm}^2$
  * $\sigma_{ec(\text{nut})} = 90\text{ MPa} \implies \text{Permissible } \sigma_{c(\text{nut})} = \frac{90}{2} = 45\text{ N/mm}^2$
  * $\tau_{e(\text{nut})} = 80\text{ MPa} \implies \text{Permissible } \tau_{\text{nut}} = \frac{80}{2} = 40\text{ N/mm}^2$
* Permissible Bearing Pressure ($p_b$): $18\text{ N/mm}^2$
* Coefficient of Friction ($\mu = \tan\phi$): $0.14$

---

### Part 1: Design of Screw for Spindle

1. **Preliminary Core Diameter ($d_c$):**
   Considering direct compression on the screw under load $W = 80 \times 10^3\text{ N}$:
   $$W = \frac{\pi}{4} (d_c)^2 \cdot \sigma_c \implies 80 \times 10^3 = \frac{\pi}{4} (d_c)^2 \times 100 = 78.55 \cdot (d_c)^2$$
   $$(d_c)^2 = \frac{80 \times 10^3}{78.55} = 1018.5 \implies d_c = 31.9\text{ mm} \approx 32\text{ mm}$$

2. **Standard Square Thread Selection:**
   To safely resist additional torsional shear stress due to friction torque, select a larger standard normal series square thread:
   * Core diameter: $d_c = \mathbf{38\text{ mm}}$
   * Nominal (outside) diameter: $d_o = \mathbf{46\text{ mm}}$
   * Pitch of threads: $p = \mathbf{8\text{ mm}}$
   * Mean diameter ($d$):
     $$d = \frac{d_o + d_c}{2} = \frac{46 + 38}{2} = 42\text{ mm}$$

3. **Helix Angle ($\alpha$) & Torque ($T_1$) to Raise Load:**
   * Helix angle:
     $$\tan\alpha = \frac{p}{\pi \cdot d} = \frac{8}{\pi \times 42} = 0.06063$$
   * Friction coefficient: $\tan\phi = \mu = 0.14$
   * Torque to rotate screw against thread friction ($T_1$):
     $$T_1 = P \cdot \frac{d}{2} = W \cdot \tan(\alpha + \phi) \cdot \frac{d}{2} = W \cdot \left[ \frac{\tan\alpha + \tan\phi}{1 - \tan\alpha \tan\phi} \right] \cdot \frac{d}{2}$$
     $$T_1 = 80 \times 10^3 \times \left[ \frac{0.06063 + 0.14}{1 - (0.06063)(0.14)} \right] \times \frac{42}{2} = 80 \times 10^3 \times \left[ \frac{0.20063}{0.9915} \right] \times 21 = 340 \times 10^3\text{ N}\cdot\text{mm}$$

4. **Principal Stresses Verification:**
   * Direct compressive stress ($\sigma_c$):
     $$\sigma_c = \frac{W}{\frac{\pi}{4} (d_c)^2} = \frac{80 \times 10^3}{\frac{\pi}{4} (38)^2} = \frac{80 \times 10^3}{1134.1} = 70.53\text{ N/mm}^2$$
   * Torsional shear stress ($\tau$):
     $$\tau = \frac{16 T_1}{\pi (d_c)^3} = \frac{16 \times 340 \times 10^3}{\pi (38)^3} = \frac{5.44 \times 10^6}{172\,573} = 31.52\text{ N/mm}^2$$
   * Maximum principal compressive stress ($\sigma_{c(\max)}$):
     $$\sigma_{c(\max)} = \frac{\sigma_c}{2} + \frac{1}{2} \sqrt{\sigma_c^2 + 4 \tau^2} = \frac{70.53}{2} + \frac{1}{2} \sqrt{(70.53)^2 + 4(31.52)^2}$$
     $$\sigma_{c(\max)} = 35.265 + \frac{1}{2} \sqrt{4974.5 + 3974.0} = 35.265 + 47.30 = \mathbf{82.57\text{ MPa} \le 100\text{ MPa}} \quad (\mathbf{SAFE})$$
   * Maximum shear stress ($\tau_{\max}$):
     $$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_c^2 + 4 \tau^2} = 47.30\text{ MPa} \le 60\text{ MPa} \quad (\mathbf{SAFE})$$

---

### Part 2: Design of Nut

1. **Number of Threads ($n$) & Height of Nut ($h$):**
   * Bearing pressure equation:
     $$p_b = \frac{W}{\frac{\pi}{4} (d_o^2 - d_c^2) \cdot n} \implies 18 = \frac{80 \times 10^3}{\frac{\pi}{4} (46^2 - 38^2) \cdot n} = \frac{80 \times 10^3}{527.78 \cdot n}$$
     $$n = \frac{80 \times 10^3}{18 \times 527.78} = 8.42 \implies \mathbf{n = 10\text{ threads}}$$
   * Height of nut ($h$):
     $$h = n \cdot p = 10 \times 8 = \mathbf{80\text{ mm}}$$

2. **Thread Shear Checks:**
   * Shear stress in screw threads ($\tau_{\text{screw}}$):
     $$\tau_{\text{screw}} = \frac{W}{\pi \cdot d_c \cdot t \cdot n} = \frac{80 \times 10^3}{\pi \times 38 \times 4 \times 10} = \mathbf{16.75\text{ MPa} \le 60\text{ MPa}} \quad (\mathbf{SAFE})$$
   * Shear stress in nut threads ($\tau_{\text{nut}}$):
     $$\tau_{\text{nut}} = \frac{W}{\pi \cdot d_o \cdot t \cdot n} = \frac{80 \times 10^3}{\pi \times 46 \times 4 \times 10} = \mathbf{13.84\text{ MPa} \le 40\text{ MPa}} \quad (\mathbf{SAFE})$$

3. **Nut Outer Diameter ($D_1$):**
   Considering tearing of nut body at allowable tension $\sigma_{t(\text{nut})} = 50\text{ MPa}$:
   $$W = \frac{\pi}{4} \left( D_1^2 - d_o^2 \right) \cdot \sigma_{t(\text{nut})} \implies 80 \times 10^3 = \frac{\pi}{4} \left( D_1^2 - 46^2 \right) \times 50 = 39.27 \left( D_1^2 - 2116 \right)$$
   $$D_1^2 - 2116 = \frac{80 \times 10^3}{39.27} = 2037 \implies D_1^2 = 4153 \implies \mathbf{D_1 = 65\text{ mm}}$$

4. **Nut Collar Dimensions ($D_2, t_1$):**
   * Outside diameter of collar ($D_2$) by crushing at allowable compression $\sigma_{c(\text{nut})} = 45\text{ MPa}$:
     $$W = \frac{\pi}{4} \left( D_2^2 - D_1^2 \right) \cdot \sigma_{c(\text{nut})} \implies 80 \times 10^3 = \frac{\pi}{4} \left( D_2^2 - 65^2 \right) \times 45 = 35.34 \left( D_2^2 - 4225 \right)$$
     $$D_2^2 - 4225 = \frac{80 \times 10^3}{35.34} = 2264 \implies D_2^2 = 6489 \implies D_2 = 80.55\text{ mm} \implies \mathbf{D_2 = 82\text{ mm}}$$
   * Collar thickness ($t_1$) by shearing at allowable shear $\tau_{\text{nut}} = 40\text{ MPa}$:
     $$W = \pi \cdot D_1 \cdot t_1 \cdot \tau_{\text{nut}} \implies 80 \times 10^3 = \pi \times 65 \times t_1 \times 40 = 8168 \cdot t_1$$
     $$t_1 = \frac{80 \times 10^3}{8168} = 9.8\text{ mm} \implies \mathbf{t_1 = 10\text{ mm}}$$

---

### Part 3: Design of Handle and Cup

1. **Cup Head Diameter ($D_3$):**
   $$D_3 = 1.75 \cdot d_o = 1.75 \times 46 = 80.5\text{ mm} \implies \mathbf{D_3 = 82\text{ mm}}$$

2. **Friction Torque at Swivel Cup Collar ($T_2$):**
   Assuming uniform pressure between cup bearing radii $R_1 = 41\text{ mm}$ and $R_2 = 10\text{ mm}$ ($\mu_1 = 0.14$):
   $$T_2 = \frac{2}{3} \cdot \mu_1 \cdot W \cdot \left[ \frac{R_1^3 - R_2^3}{R_1^2 - R_2^2} \right] = \frac{2}{3} (0.14)(80 \times 10^3) \cdot \left[ \frac{41^3 - 10^3}{41^2 - 10^2} \right]$$
   $$T_2 = 7466.7 \times \left[ \frac{68\,921 - 1000}{1681 - 100} \right] = 7466.7 \times \frac{67\,921}{1581} = 321 \times 10^3\text{ N}\cdot\text{mm}$$

3. **Total Operating Torque ($T$) & Handle Length ($L$):**
   $$T = T_1 + T_2 = 340 \times 10^3 + 321 \times 10^3 = 661 \times 10^3\text{ N}\cdot\text{mm}$$
   Taking force applied by one operator $F = 300\text{ N}$:
   $$\text{Lever Length } L = \frac{T}{F} = \frac{661 \times 10^3}{300} = 2203\text{ mm} \implies \mathbf{L = 2250\text{ mm}}$$

4. **Handle Diameter ($D$) & Head Height ($H$):**
   Bending moment $M = F \cdot L = 300 \times 2250 = 675 \times 10^3\text{ N}\cdot\text{mm}$.
   $$M = \frac{\pi}{32} D^3 \cdot \sigma_b \implies 675 \times 10^3 = \frac{\pi}{32} D^3 \times 100 = 9.82 \cdot D^3$$
   $$D^3 = \frac{675 \times 10^3}{9.82} = 68.74 \times 10^3 \implies D = 40.96\text{ mm} \implies \mathbf{D = 42\text{ mm}}$$
   $$\text{Head Height } H = 2 D = 2 \times 42 = \mathbf{84\text{ mm}}$$

5. **Euler Buckling Check of Screw Spindle:**
   Effective length $L_{\text{eff}} = H_1 + \frac{h}{2} = 400 + \frac{80}{2} = 440\text{ mm}$. End conditions: One end fixed, other end free ($C = 0.25$).
   * Radius of gyration $k = 0.25 d_c = 0.25 \times 38 = 9.5\text{ mm}$.
   * Slenderness ratio: $\frac{L_{\text{eff}}}{k} = \frac{440}{9.5} = 46.3$.
   * Critical Euler/J.B. Johnson buckling load:
     $$W_{cr} = 179\,894\text{ N} > 80\,000\text{ N} \quad (\mathbf{SAFE \text{ AGAINST BUCKLING}})$$

---

### Part 4: Design of Body & Overall Efficiency

1. **Body Proportions:**
   * Inside diameter at top: $D_5 = 1.5 D_2 = 1.5 \times 82 = \mathbf{123\text{ mm}}$
   * Body wall thickness: $t_3 = 0.25 d_o = 0.25 \times 46 = \mathbf{12\text{ mm}}$
   * Inside diameter at bottom: $D_6 = 2.25 D_2 = 2.25 \times 82 = \mathbf{185\text{ mm}}$
   * Outer base diameter: $D_7 = 1.75 D_6 = 1.75 \times 185 = \mathbf{320\text{ mm}}$
   * Base thickness: $t_2 = 2 t_1 = 2 \times 10 = \mathbf{20\text{ mm}}$
   * Total body height: $H_{\text{body}} = H_1 + h + 100\text{ mm} = 400 + 80 + 100 = \mathbf{580\text{ mm}}$

2. **Screw Jack Efficiency ($\eta$):**
   * Torque required without friction ($T_0$):
     $$T_0 = W \cdot \tan\alpha \cdot \frac{d}{2} = 80 \times 10^3 \times 0.06063 \times 21 = 101\,858\text{ N}\cdot\text{mm}$$
   * Overall efficiency:
     $$\eta = \frac{T_0}{T} = \frac{101\,858}{661 \times 10^3} = 0.154 = \mathbf{15.4\%}$$

$$\mathbf{\text{Final Design Summary: Screw } d_c = 38\text{ mm}, d_o = 46\text{ mm}, p = 8\text{ mm}; \text{ Nut Height } = 80\text{ mm}; \text{ Handle } = 42\text{ mm} \times 2250\text{ mm}; \eta = 15.4\%}$$

---

## Example 17.17 (Differential Screw Jack — Efficiency & Load Capacity)

### Problem Statement
A differential screw jack is to be made as shown in Fig. 17.16. Neither screw rotates. The outside screw diameter is $50\text{ mm}$. The screw threads are of square form single start and the coefficient of thread friction is $0.15$. Pitch of upper screw $p_1 = 16\text{ mm}$, pitch of lower screw $p_2 = 12\text{ mm}$.
Determine:
1. Efficiency of the screw jack;
2. Load that can be lifted if the maximum shear stress in the body of the screw is limited to $28\text{ MPa}$.

![Fig 17.16: Differential Screw Jack](Fig%2017.16.%20Differential%20Screw..png)

---


### Solution

#### Given Data:
* Outside Diameter ($d_o$): $50\text{ mm}$
* Coefficient of Thread Friction ($\mu = \tan\phi$): $0.15$
* Upper Screw Pitch ($p_1$): $16\text{ mm}$
* Lower Screw Pitch ($p_2$): $12\text{ mm}$
* Allowable Maximum Shear Stress ($\tau_{\max}$): $28\text{ MPa} = 28\text{ N/mm}^2$

---

#### Part 1: Efficiency of the Differential Screw Jack ($\eta$)

1. **Mean Diameters of Upper and Lower Screws:**
   * Upper screw mean diameter ($d_1$):
     $$d_1 = d_o - \frac{p_1}{2} = 50 - \frac{16}{2} = 42\text{ mm}$$
   * Lower screw mean diameter ($d_2$):
     $$d_2 = d_o - \frac{p_2}{2} = 50 - \frac{12}{2} = 44\text{ mm}$$

2. **Helix Angles ($\alpha_1, \alpha_2$):**
   $$\tan\alpha_1 = \frac{p_1}{\pi \cdot d_1} = \frac{16}{\pi \times 42} = 0.1212$$
   $$\tan\alpha_2 = \frac{p_2}{\pi \cdot d_2} = \frac{12}{\pi \times 44} = 0.0868$$

3. **Torques to Overcome Friction ($T_1, T_2$):**
   Let $W$ = Load to be lifted in N.
   * Torque required at upper screw ($T_1$):
     $$T_1 = W \cdot \tan(\alpha_1 + \phi) \cdot \frac{d_1}{2} = W \cdot \left[ \frac{\tan\alpha_1 + \tan\phi}{1 - \tan\alpha_1 \tan\phi} \right] \cdot \frac{d_1}{2}$$
     $$T_1 = W \cdot \left[ \frac{0.1212 + 0.15}{1 - (0.1212)(0.15)} \right] \times \frac{42}{2} = W \cdot \left[ \frac{0.2712}{0.9818} \right] \times 21 = 5.8 \cdot W \quad [\text{N}\cdot\text{mm}]$$

   * Torque required at lower screw ($T_2$):
     $$T_2 = W \cdot \tan(\alpha_2 - \phi) \cdot \frac{d_2}{2} = W \cdot \left[ \frac{\tan\alpha_2 - \tan\phi}{1 + \tan\alpha_2 \tan\phi} \right] \cdot \frac{d_2}{2}$$
     $$T_2 = W \cdot \left[ \frac{0.0868 - 0.15}{1 + (0.0868)(0.15)} \right] \times \frac{44}{2} = W \cdot \left[ \frac{-0.0632}{1.0130} \right] \times 22 = -1.37 \cdot W \quad [\text{N}\cdot\text{mm}]$$

   * **Total Operating Torque ($T$):**
     $$T = T_1 - T_2 = 5.8 W - (-1.37 W) = 7.17 \cdot W \quad [\text{N}\cdot\text{mm}]$$

4. **Torque Required Without Friction ($T_0$) & Efficiency ($\eta$):**
   $$T_0 = W \cdot \frac{p_1 - p_2}{2\pi} = W \cdot \frac{16 - 12}{2\pi} = \frac{4 W}{2\pi} = 0.636 \cdot W \quad [\text{N}\cdot\text{mm}]$$
   $$\eta = \frac{T_0}{T} = \frac{0.636 W}{7.17 W} = 0.0887 = \mathbf{8.87\%}$$

---

#### Part 2: Maximum Load That Can Be Lifted ($W$)

Since the upper screw carries a larger torque ($T_1$), the critical stresses occur in the upper screw.

1. **Upper Screw Core Diameter ($d_{c1}$):**
   $$d_{c1} = d_o - p_1 = 50 - 16 = 34\text{ mm}$$

2. **Combined Stresses in Upper Screw:**
   * Direct compressive stress ($\sigma_c$):
     $$\sigma_c = \frac{W}{\frac{\pi}{4} (d_{c1})^2} = \frac{W}{\frac{\pi}{4} (34)^2} = \frac{W}{908} = 1.101 \times 10^{-3} \cdot W \quad [\text{N/mm}^2]$$
   * Torsional shear stress ($\tau$):
     $$\tau = \frac{16 T_1}{\pi (d_{c1})^3} = \frac{16 (5.8 W)}{\pi (34)^3} = \frac{92.8 W}{123\,499} = \frac{W}{1331} = 0.7513 \times 10^{-3} \cdot W \quad [\text{N/mm}^2]$$

3. **Maximum Shear Stress Criteria ($\tau_{\max} = 28\text{ MPa}$):**
   $$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_c^2 + 4 \tau^2}$$
   $$28 = \frac{1}{2} \sqrt{\left(\frac{W}{908}\right)^2 + 4 \left(\frac{W}{1331}\right)^2} = \frac{W}{2} \sqrt{1.213 \times 10^{-6} + 2.258 \times 10^{-6}}$$
   $$28 = \frac{W}{2} \sqrt{3.471 \times 10^{-6}} = \frac{W}{2} (1.863 \times 10^{-3}) = 1.863 \times 10^{-3} \cdot W$$

4. **Calculate Maximum Allowable Load ($W$):**
   $$W = \frac{28}{1.863 \times 10^{-3}} = 15\,029.5 \times 2 = 30\,060\text{ N} = \mathbf{30.06\text{ kN}}$$

$$\mathbf{\text{Final Answers: (1) Efficiency } \eta = 8.87\%; \quad (2) \text{ Maximum Load Capacity } W = 30.06\text{ kN}}$$
