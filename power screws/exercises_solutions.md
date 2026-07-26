# Power Screws — Practice Exercises Solutions

Fully worked solutions for all practice exercises in [exercises.md](exercises.md).

---

## Exercise 1 (Screw Jack — 20 kN Load)

### Problem Statement
Design a screw jack to lift $20\text{ kN}$ load with lift height $150\text{ mm}$. Permissible stresses: Screw compression $= 80\text{ MPa}$, Nut bearing pressure $= 5\text{ N/mm}^2, \mu = 0.15$.

---

### Solution

#### 1. Design of Screw ($d_c, d_o, p$)
* Core area required: $A_c = 1.30 \times \frac{20000}{80} = 325\text{ mm}^2 \implies d_c = 20.3\text{ mm} \implies \mathbf{d_c = 22\text{ mm}}$.
* Select Square Thread: Nominal $d_o = 28\text{ mm}$, Pitch $p = 5\text{ mm}$, Core $d_c = 23\text{ mm}$, Mean $d = 25.5\text{ mm}$.
* Torque to raise load: $T_1 = P \cdot \frac{d}{2} \tan(\alpha + \phi) = 20000 \times 12.75 \times \tan(3.58^\circ + 8.53^\circ) = \mathbf{54600\text{ N}\cdot\text{mm}}$.

#### 2. Design of Nut ($n, H$)
* Number of threads $n = \frac{20000}{\frac{\pi}{4}(28^2 - 23^2) \times 5} = \mathbf{20\text{ threads}}$.
* Nut height $H = 20 \times 5 = \mathbf{100\text{ mm}}$.

#### 3. Design of Handle ($L$)
With effort $F = 200\text{ N}$: $L = \frac{54600}{200} = 273\text{ mm} \implies \mathbf{L = 300\text{ mm}}$.

---

## Exercise 2 (Differential Screw Jack)

### Problem Statement
Differential screw jack with pitches $12\text{ mm}$ and $9\text{ mm}$. Lift $40\text{ kN}$ with $L = 500\text{ mm}, \mu = 0.1$. Find effort required.

---

### Solution

#### 1. Effective Pitch ($p_{\text{eff}}$)
$$p_{\text{eff}} = 12 - 9 = \mathbf{3\text{ mm}}$$

#### 2. Effort Required ($F$)
$$F = \frac{P \cdot p_{\text{eff}}}{2 \pi L \cdot \eta} = \mathbf{155\text{ N}}$$

---

## Exercise 3 (Compound Screw)

### Problem Statement
Compound screw with right-hand pitches $8\text{ mm}$ and left-hand pitch $6\text{ mm}$. Find axial advance per revolution.

---

### Solution

#### Total Axial Advance ($p_{\text{total}}$)
$$p_{\text{total}} = p_1 + p_2 = 8 + 6 = \mathbf{14\text{ mm/rev}}$$
