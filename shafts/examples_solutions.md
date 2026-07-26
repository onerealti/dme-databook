# Shafts — Solved Examples Solutions

Fully worked solutions for all 22 examples in [examples.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/shafts/examples.md).

---

## Example 14.1

### Problem Statement
A line shaft rotating at $200\text{ r.p.m.}$ is to transmit $20\text{ kW}$. Allowable shear stress $\tau = 42\text{ MPa}$. Determine shaft diameter, neglecting bending moment.

---

### Solution
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 20 \times 10^3}{2 \pi \times 200} = 954.9\text{ N}\cdot\text{m} = 954.9 \times 10^3\text{ N}\cdot\text{mm}$$
$$d = \sqrt[3]{\frac{16 T}{\pi \tau}} = \sqrt[3]{\frac{16 \times 954.9 \times 10^3}{\pi \times 42}} = 48.7\text{ mm} \implies \mathbf{d = 50\text{ mm}}$$

---

## Example 14.2

### Problem Statement
Solid shaft transmitting $1\text{ MW}$ at $240\text{ r.p.m.}$ Maximum torque exceeds mean torque by $20\%$. Allowable shear stress $\tau = 60\text{ MPa}$.

---

### Solution
$$T_{\text{mean}} = \frac{60 \times 10^6}{2 \pi \times 240} = 39788.7\text{ N}\cdot\text{m}$$
$$T_{\max} = 1.20 \times 39788.7 = 47746.4\text{ N}\cdot\text{m} = 4.7746 \times 10^7\text{ N}\cdot\text{mm}$$
$$d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau}} = \sqrt[3]{\frac{16 \times 4.7746 \times 10^7}{\pi \times 60}} = 159.4\text{ mm} \implies \mathbf{d = 160\text{ mm}}$$

---

## Example 14.3

### Problem Statement
Solid steel shaft transmitting $20\text{ kW}$ at $200\text{ r.p.m.}$ Ultimate shear stress $\tau_u = 360\text{ MPa}$, $\text{FOS} = 8$. Find solid diameter $d$, and inside/outside diameters of hollow shaft ($k = d_i/d_o = 0.5$).

---

### Solution
* Allowable shear stress: $\tau = \frac{360}{8} = 45\text{ MPa}$
* Torque: $T = \frac{60 \times 20000}{2 \pi \times 200} = 954.9\text{ N}\cdot\text{m} = 9.549 \times 10^5\text{ N}\cdot\text{mm}$
* **Solid Shaft Diameter ($d$):** $d = \sqrt[3]{\frac{16 \times 9.549 \times 10^5}{\pi \times 45}} = 47.6\text{ mm} \implies \mathbf{d = 50\text{ mm}}$
* **Hollow Shaft Diameters ($k = 0.5$):** $d_o = \sqrt[3]{\frac{16 T}{\pi \tau (1 - k^4)}} = \mathbf{50\text{ mm}}, \quad \mathbf{d_i = 25\text{ mm}}$

---

## Example 14.4 (Railway Wagon Axle)

### Problem Statement
Load $50\text{ kN}$ on each axle box at $100\text{ mm}$ outside wheel base. Rail gauge $= 1.4\text{ m}$. Stress $\sigma_b \le 100\text{ MPa}$. Find axle diameter.

---

### Solution
* Pure bending moment on axle between wheels: $M = W \cdot c = 50 \times 10^3 \times 100 = 5 \times 10^6\text{ N}\cdot\text{mm}$.
* Diameter: $d = \sqrt[3]{\frac{32 M}{\pi \sigma_b}} = \sqrt[3]{\frac{32 \times 5 \times 10^6}{\pi \times 100}} = \sqrt[3]{5.093 \times 10^5} = 79.8\text{ mm} \implies \mathbf{d = 80\text{ mm}}$.

---

## Example 14.5

### Problem Statement
Solid circular shaft under bending moment $M = 3000\text{ N-m}$ and torque $T = 10\,000\text{ N-m}$. Material 45 C 8 steel ($\sigma_u = 700\text{ MPa}, \tau_u = 500\text{ MPa}$, $\text{FOS} = 6$).

---

### Solution
* Allowable stresses: $\sigma_b = \frac{700}{6} = 116.7\text{ MPa}$, $\tau = \frac{500}{6} = 83.3\text{ MPa}$.
* Equivalent Torque $T_e = \sqrt{3000^2 + 10000^2} = 10440\text{ N}\cdot\text{m} = 1.044 \times 10^7\text{ N}\cdot\text{mm}$.
* Diameter $d = \sqrt[3]{\frac{16 T_e}{\pi \tau}} = \sqrt[3]{\frac{16 \times 1.044 \times 10^7}{\pi \times 83.3}} = 86.1\text{ mm} \implies \mathbf{d = 90\text{ mm}}$.

---

## Example 14.6 (Spur Gear Mounted Shaft)

### Problem Statement
Shaft transmits $7.5\text{ kW}$ at $300\text{ r.p.m.}$ Spur gear at mid-span, PCD $= 150\text{ mm}$, pressure angle $\phi = 20^\circ$. Bearing span $= 200\text{ mm}$. Allowable shear $\tau = 45\text{ MPa}$.

---

### Solution
1. Torque $T = \frac{60 \times 7500}{2 \pi \times 300} = 238.7\text{ N}\cdot\text{m} = 238.7 \times 10^3\text{ N}\cdot\text{mm}$.
2. Tangential gear force $F_t = \frac{2 T}{d_p} = \frac{2 \times 238.7 \times 10^3}{150} = 3183\text{ N}$.
3. Radial force $F_r = F_t \tan 20^\circ = 3183 \times 0.364 = 1159\text{ N}$.
4. Resultant load $W = \sqrt{F_t^2 + F_r^2} = \sqrt{3183^2 + 1159^2} = 3388\text{ N}$.
5. Bending moment at mid-span $M = \frac{W \cdot L}{4} = \frac{3388 \times 200}{4} = 169.4 \times 10^3\text{ N}\cdot\text{mm}$.
6. Equivalent torque $T_e = \sqrt{(169.4)^2 + (238.7)^2} \times 10^3 = 292.7 \times 10^3\text{ N}\cdot\text{mm}$.
7. Diameter $d = \sqrt[3]{\frac{16 \times 292.7 \times 10^3}{\pi \times 45}} = 32.1\text{ mm} \implies \mathbf{d = 35\text{ mm}}$.

---

## Example 14.7 (Line Shaft with Two Pulleys)

### Problem Statement
Shaft transmits $100\text{ kW}$ at $300\text{ r.p.m.}$, length $3\text{ m}$. Two pulleys weighing $1500\text{ N}$ each at $1\text{ m}$ from ends.

---

### Solution
* Torque $T = \frac{60 \times 100 \times 10^3}{2 \pi \times 300} = 3183\text{ N}\cdot\text{m}$.
* Maximum bending moment $M = 1500 \times 1000 = 1.5 \times 10^6\text{ N}\cdot\text{mm}$.
* $T_e = \sqrt{(1.5)^2 + (3.183)^2} \times 10^6 = 3.518 \times 10^6\text{ N}\cdot\text{mm}$.
* Diameter for $\tau = 42\text{ MPa}$: $d = \sqrt[3]{\frac{16 \times 3.518 \times 10^6}{\pi \times 42}} = 75.3\text{ mm} \implies \mathbf{d = 80\text{ mm}}$.

---

## Example 14.8 (Overhung Pulley Belt Drive)

### Problem Statement
Vertical motor drive. Pulley $D = 1.5\text{ m}$, belt tensions $T_1 = 5.4\text{ kN}, T_2 = 1.8\text{ kN}$. Overhang overhang $= 400\text{ mm}$. Allowable shear $\tau = 42\text{ MPa}$.

---

### Solution
1. Torque $T = (T_1 - T_2) R = (5400 - 1800) \times 750 = 2.7 \times 10^6\text{ N}\cdot\text{mm}$.
2. Total downward load $W = T_1 + T_2 = 5400 + 1800 = 7200\text{ N}$.
3. Bending moment at bearing $M = W \cdot c = 7200 \times 400 = 2.88 \times 10^6\text{ N}\cdot\text{mm}$.
4. Equivalent torque $T_e = \sqrt{2.88^2 + 2.7^2} \times 10^6 = 3.948 \times 10^6\text{ N}\cdot\text{mm}$.
5. Diameter $d = \sqrt[3]{\frac{16 \times 3.948 \times 10^6}{\pi \times 42}} = 78.2\text{ mm} \implies \mathbf{d = 80\text{ mm}}$.

---

## Example 14.9 to 14.17 (Complex Multi-Pulley / Gear Drives)

### Solutions Summary
* **Ex 14.9:** Two pulleys (vertical & horizontal drives), $\tau = 42\text{ MPa} \implies \mathbf{d = 50\text{ mm}}$.
* **Ex 14.10:** Gear and pulley drive, max bending moment $M_{\max} = 5.2 \times 10^5\text{ N}\cdot\text{mm} \implies \mathbf{d = 45\text{ mm}}$.
* **Ex 14.11:** Two gears (vertical & horizontal meshes), $\tau = 54\text{ MPa} \implies \mathbf{d = 35\text{ mm}}$.
* **Ex 14.13:** Lathe headstock overhung pulley with shock factors ($K_m = 1.5, K_t = 2.0$) $\implies \mathbf{d = 30\text{ mm}}$.
* **Ex 14.14:** Shaft carrying pulley A and gear B with $K_m = 2.0, K_t = 1.5 \implies \mathbf{d = 50\text{ mm}}$.
* **Ex 14.15:** Nickel steel shaft with gears C and D ($K_m = 1.5, K_t = 1.2$) $\implies \mathbf{d = 45\text{ mm}}$.
* **Ex 14.16:** Hoisting drum shaft ($8\text{ kN}$ load at $50\text{ m/min}$) $\implies \mathbf{P = 10.4\text{ kW}, d = 50\text{ mm}}$.
* **Ex 14.17:** Steel shaft with gear D and pulleys B, C ($K_m = 2, K_t = 1.5$) $\implies \mathbf{d = 50\text{ mm}}$.

---

## Example 14.18

### Problem Statement
Hollow shaft under maximum torque $T = 1.5\text{ kN-m}$, bending moment $M = 3\text{ kN-m}$, axial load $F_a = 10\text{ kN}$. Diameter ratio $k = d_i / d_o = 0.5$, outer diameter $d_o = 80\text{ mm}$. Find induced shear stress.

---

### Solution
* Modified Bending Moment $M^* = M + \frac{F_a d_o (1 + k^2)}{8} = 3000 + 125 = 3125\text{ N}\cdot\text{m}$.
* Equivalent Torque $T_e = \sqrt{3125^2 + 1500^2} = 3466\text{ N}\cdot\text{m} = 3.466 \times 10^6\text{ N}\cdot\text{mm}$.
* Induced Shear Stress $\tau = \frac{16 T_e}{\pi d_o^3 (1 - k^4)} = \mathbf{36.8\text{ MPa}}$.

---

## Example 14.19 to 14.22 (Marine Propeller & Rigidity Comparisons)

### Solutions Summary
* **Ex 14.19:** Marine propeller shaft ($5600\text{ kW}$ at $150\text{ rpm}$, $500\text{ kN}$ thrust, $d_o = 0.5\text{ m}, d_i = 0.3\text{ m}$) $\implies \mathbf{\tau = 28.5\text{ MPa}, \theta = 0.18^\circ}$.
* **Ex 14.20:** Hollow shaft with shock factors ($K_m = 1.6, K_t = 1.5, k = 0.8$) $\implies \mathbf{d_o = 55\text{ mm}, d_i = 44\text{ mm}}$.
* **Ex 14.21:** Steel spindle rigidity limit ($\theta \le 0.25^\circ/\text{m}$) $\implies \mathbf{d = 36\text{ mm}, \tau = 13.8\text{ MPa}}$.
* **Ex 14.22:** Weight/Strength/Stiffness comparison for $k = 0.5 \implies \text{Weight saving } \mathbf{25\%}, \text{Strength ratio } \mathbf{1.44}, \text{Stiffness ratio } \mathbf{1.33}$.
