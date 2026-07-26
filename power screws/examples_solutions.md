# Power Screws — Solved Examples Solutions

Fully worked solutions for all examples in [examples.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/power%20screws/examples.md).

---

## Example 17.1 (Screw Jack Design)

### Problem Statement
Design a screw jack to lift a load of $50\text{ kN}$ through a height of $200\text{ mm}$. Permissible stresses: Screw material: Tensile & Compressive $= 100\text{ MPa}$, Shear $= 50\text{ MPa}$; Nut material (Bronze): Tensile $= 50\text{ MPa}$, Shear $= 45\text{ MPa}$, Bearing pressure $= 10\text{ N/mm}^2$. Coefficient of friction in screw threads $\mu = 0.14$.

---

### Solution

#### 1. Design of Screw ($d_c, d_o, p, d$)
1. Core area from direct compression load ($P = 50\text{ kN}$):
   $$A_c = \frac{P}{\sigma_c} = \frac{50000}{100} = 500\text{ mm}^2 \implies d_c = \sqrt{\frac{4 \times 500}{\pi}} = 25.2\text{ mm}$$
2. Increase core diameter by $30\%$ to account for torsional shear stress due to friction:
   $$A_c' = 1.30 \times 500 = 650\text{ mm}^2 \implies d_c = 28.7\text{ mm} \implies \mathbf{d_c = 30\text{ mm}}$$
3. Standard square thread selection for $d_c = 30\text{ mm}$:
   * Nominal Diameter $d_o = 38\text{ mm}$, Pitch $p = 7\text{ mm}$, Core Diameter $d_c = 31\text{ mm}$.
   * Mean Diameter $d = \frac{38 + 31}{2} = 34.5\text{ mm}$, Helix Angle $\tan\alpha = \frac{p}{\pi d} = \frac{7}{\pi \times 34.5} = 0.0646 \implies \alpha = 3.69^\circ$.
4. Friction Angle $\phi = \tan^{-1}(\mu) = \tan^{-1}(0.14) = 7.97^\circ$.
5. Torque required to raise load ($T_1$):
   $$T_1 = P \cdot \frac{d}{2} \tan(\alpha + \phi) = 50000 \times 17.25 \times \tan(3.69^\circ + 7.97^\circ) = 50000 \times 17.25 \times 0.2064 = 178020\text{ N}\cdot\text{mm}$$
6. Combined Stresses in Screw:
   * Direct Compressive Stress: $\sigma_c = \frac{50000}{\frac{\pi}{4}(31)^2} = 66.2\text{ MPa}$
   * Torsional Shear Stress: $\tau = \frac{16 T_1}{\pi d_c^3} = \frac{16 \times 178020}{\pi (31)^3} = 30.4\text{ MPa}$
   * Maximum Shear Stress: $\tau_{\max} = \sqrt{\left(\frac{\sigma_c}{2}\right)^2 + \tau^2} = \sqrt{33.1^2 + 30.4^2} = \mathbf{44.9\text{ MPa} \le 50\text{ MPa}} \quad \text{(Safe)}$

#### 2. Design of Nut ($n, H$)
1. Number of threads in contact ($n$):
   $$n = \frac{P}{\frac{\pi}{4}(d_o^2 - d_c^2) p_b} = \frac{50000}{\frac{\pi}{4}(38^2 - 31^2) \times 10} = \frac{50000}{379.35 \times 10} = 13.18 \implies \mathbf{n = 14\text{ threads}}$$
2. Height of nut ($H$):
   $$H = n \cdot p = 14 \times 7 = \mathbf{98\text{ mm}}$$
3. Shear check of nut threads:
   $$\tau_{\text{nut}} = \frac{P}{\pi d_o \cdot t \cdot n} = \frac{50000}{\pi \times 38 \times 3.5 \times 14} = 8.5\text{ MPa} \le 45\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design of Handle ($L, F$)
Taking manual effort by one operator $F = 300\text{ N}$:
$$F \cdot L = T_1 \implies 300 \cdot L = 178020 \implies L = 593.4\text{ mm} \implies \mathbf{L = 600\text{ mm}}$$

---

## Example 17.2 (Differential and Compound Screws)

### Problem Statement
A differential screw has a pitch of $10\text{ mm}$ for the outer thread and $8\text{ mm}$ for the inner thread. Find the linear displacement of the nut per revolution and the mechanical advantage if the handle length is $400\text{ mm}$.

---

### Solution

#### 1. Net Axial Displacement per Revolution ($p_{\text{eff}}$)
$$p_{\text{eff}} = p_1 - p_2 = 10 - 8 = \mathbf{2.0\text{ mm}}$$

#### 2. Mechanical Advantage ($MA$)
$$MA = \frac{2 \pi L}{p_{\text{eff}}} = \frac{2 \pi \times 400}{2.0} = 400 \pi = \mathbf{1256.6}$$
