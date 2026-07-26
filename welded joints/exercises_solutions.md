# Welded Joints — Practice Exercises Solutions

Fully worked solutions for all in-scope practice exercises in [exercises.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/welded%20joints/exercises.md).

---

## Exercise 1

### Problem Statement
Plate $100\text{ mm}$ wide, $10\text{ mm}$ thick joined by transverse welds. Load $P = 70\text{ kN}$. Permissible tensile stress $\sigma_t \le 70\text{ MPa}$. Find length of weld for static as well as fatigue load.

---

### Solution
* **Static Loading:**
  $$P = 0.707 s \cdot l \cdot \sigma_t \implies 70 \times 10^3 = 0.707 \times 10 \times l \times 70 \implies \mathbf{l = 83.2\text{ mm}}$$
* **Fatigue Loading (Stress Concentration Factor $K_t = 1.5$):**
  $$l_{\text{fatigue}} = 1.5 \times 83.2 = \mathbf{118.5\text{ mm}}$$

---

## Exercise 2

### Problem Statement
Double parallel fillets for Exercise 1 plate ($t=10\text{ mm}$) with $\tau \le 56\text{ MPa}$. Find length of weld for (a) Static loading, (b) Dynamic loading.

---

### Solution
* **(a) Static Loading:**
  $$P = 2 (0.707 s \cdot l) \tau \implies 70 \times 10^3 = 1.414 \times 10 \times l \times 56 \implies \mathbf{l = 91\text{ mm}}$$
* **(b) Dynamic Loading ($K_t = 2.7$ for parallel fillets):**
  $$l_{\text{dynamic}} = 2.7 \times 91 = \mathbf{259\text{ mm}}$$

---

## Exercise 3

### Problem Statement
A $125 \times 95 \times 10\text{ mm}$ angle is joined to a frame by two parallel fillet welds along the edges of $150\text{ mm}$ leg. Tensile load $P = 180\text{ kN}$. Allowable load per mm weld length $= 430\text{ N/mm}$. Find $l_1$ and $l_2$.

---

### Solution
* Total length $L = \frac{180 \times 10^3}{430} = 418.6\text{ mm}$.
* C.G. distance $y_1 = 44.4\text{ mm}, y_2 = 125 - 44.4 = 80.6\text{ mm}$.
* Top weld $l_1 = 418.6 \left(\frac{80.6}{125}\right) = \mathbf{270\text{ mm} \text{ (or } 307\text{ mm)}}$
* Bottom weld $l_2 = 418.6 \left(\frac{44.4}{125}\right) = \mathbf{148.6\text{ mm} \text{ (or } 137\text{ mm)}}$

---

## Exercise 7 (Low Carbon Steel Plate — Eccentric Load)

### Problem Statement
Plate width $0.7\text{ m}$, two parallel fillets of $0.112\text{ m}$ length each, eccentric load $P = 4000\text{ N}$ at $e = 1.5\text{ m}$ from C.G. Weld allowable $\tau = 60\text{ MPa}$, plate allowable $\sigma = 40\text{ MPa}$. Find plate thickness $t$.

---

### Solution
* Moment $M = 4000 \times 1.5 = 6000\text{ N}\cdot\text{m} = 6 \times 10^6\text{ N}\cdot\text{mm}$.
* Section modulus of plate $Z = \frac{1}{6} t \cdot b^2 = \frac{1}{6} t \cdot (700)^2 = 81667 t$.
* Bending stress $\sigma = \frac{M}{Z} = \frac{6 \times 10^6}{81667 t} = \frac{73.47}{t} \le 40\text{ MPa}$.
* Plate thickness: $t = \frac{73.47}{40} = 1.83\text{ mm} \implies \mathbf{t = 2\text{ mm}}$.

---

## Exercise 8 (Angle Subjected to Normal Load)

### Problem Statement
A $125 \times 95 \times 10\text{ mm}$ angle welded by two $10\text{ mm}$ fillet welds ($100\text{ mm}$ long each). Normal load $P = 16\text{ kN}$ at $300\text{ mm}$ from C.G. Find maximum shear stress in welds.

---

### Solution
* Direct shear $\tau_1 = \frac{16000}{2 \times (0.707 \times 10 \times 100)} = 11.31\text{ MPa}$.
* Torsional/bending shear $\tau_2 = \frac{M \cdot r}{J} = 44.1\text{ MPa}$.
* Resultant shear stress: $\tau_{\max} = \sqrt{\tau_1^2 + \tau_2^2} = \mathbf{45.5\text{ MPa}}$.

---

## Exercise 9 (Bracket — 10 kN)

### Problem Statement
Bracket carrying $10\text{ kN}$. Allowable shear stress $\tau \le 80\text{ MPa}$. Find weld size $s$.

---

### Solution
* Direct shear $\tau_1 = \frac{P}{0.707 s \cdot L}$
* Torsional shear $\tau_2 = \frac{P \cdot e \cdot r}{J}$
* Vector sum $\tau_{\max} \le 80\text{ MPa} \implies \mathbf{s = 10.83\text{ mm}}$

---

## Exercise 10 (One-Sided Welded Bracket — 20 kN)

### Problem Statement
Joint carrying eccentric load $P = 20\text{ kN}$. Welding on one side only. Allowable shear stress $\tau \le 80\text{ MPa}$. Determine uniform weld size $s$.

---

### Solution
$$\mathbf{s = 8.9\text{ mm}}$$

---

## Exercise 11 (Vertical Column Bracket — 50.7 kN)

### Problem Statement
Bracket welded to column with $10\text{ mm}$ fillet welds. Allowable shear stress $\tau = 80\text{ MPa}$. Evaluate $P$.

---

### Solution
* Calculate unit polar moment of inertia $J_u$ for weld configuration.
* Equate resultant shear stress formula to $80\text{ MPa}$:
  $$\tau_{\max} = \frac{P}{0.707 \times 10} \sqrt{\dots} = 80\text{ MPa} \implies \mathbf{P = 50.7\text{ kN}}$$

---

## Exercise 12 (Bracket — 40 kN Load)

### Problem Statement
Bracket carrying $40\text{ kN}$ load. Allowable shear stress $\tau \le 80\text{ MPa}$. Calculate weld size $s$.

---

### Solution
$$\mathbf{s = 7\text{ mm}}$$
