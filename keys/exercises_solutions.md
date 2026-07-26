# Keys — Practice Exercises Solutions

Fully worked solutions for all practice exercises in [exercises.md](exercises.md).

---

## Exercise 1 (Rectangular Key Design)

### Problem Statement
Design a rectangular sunk key for a shaft of $40\text{ mm}$ diameter transmitting $15\text{ kW}$ at $300\text{ rpm}$. Allowable shear stress $= 40\text{ MPa}$, crushing stress $= 80\text{ MPa}$.

---

### Solution

#### 1. Torque Calculation ($T$)
$$T = \frac{60 \times 15000}{2 \pi \times 300} = 477.5\text{ N}\cdot\text{m} = 4.775 \times 10^5\text{ N}\cdot\text{mm}$$

#### 2. Key Cross-Section ($w, t$)
For $d = 40\text{ mm}$: Width $w = 12\text{ mm}$, Thickness $t = 8\text{ mm}$.

#### 3. Length of key ($l$)
* Shear Length: $l = \frac{2 T}{w \cdot d \cdot \tau} = \frac{2 \times 4.775 \times 10^5}{12 \times 40 \times 40} = 49.7\text{ mm}$
* Crushing Length: $l = \frac{4 T}{t \cdot d \cdot \sigma_c} = \frac{4 \times 4.775 \times 10^5}{8 \times 40 \times 80} = 74.6\text{ mm}$

$$\mathbf{\text{Adopt } l = 75\text{ mm}}$$

---

## Exercise 2 (Square Key vs Shaft Shear)

### Problem Statement
A $30\text{ mm}$ diameter shaft carries a square key. Allowable shear stress for key and shaft is equal. Safe crushing stress $= 2 \times$ shear stress. Find key length relative to shaft diameter.

---

### Solution

#### 1. Shaft Torque Capacity ($T_{\text{shaft}}$)
$$T_{\text{shaft}} = \frac{\pi}{16} d^3 \tau$$

#### 2. Key Torque Capacity ($T_{\text{key}}$)
For square key ($w = d/4$):
$$T_{\text{key}} = w \cdot l \cdot \tau \cdot \frac{d}{2} = \left(\frac{d}{4}\right) \cdot l \cdot \tau \cdot \left(\frac{d}{2}\right) = \frac{d^2 \cdot l \cdot \tau}{8}$$

#### 3. Equal Strength Criterion
$$\frac{d^2 \cdot l \cdot \tau}{8} = \frac{\pi}{16} d^3 \tau \implies l = \frac{\pi}{2} d \approx 1.57 d \implies \mathbf{l = 1.57 d}$$

---

## Exercise 3 (Kennedy Key Analysis)

### Problem Statement
Determine the torque transmitted by two Kennedy keys on a $60\text{ mm}$ shaft. Key dimensions $15\text{ mm} \times 15\text{ mm} \times 90\text{ mm}$. Safe shear stress $= 50\text{ MPa}$.

---

### Solution

#### Torque Capacity ($T$)
$$T = 2 \times \left(w \cdot l \cdot \tau \cdot \frac{d}{2}\right) = 2 \times \left(15 \times 90 \times 50 \times 30\right) = 4.05 \times 10^6\text{ N}\cdot\text{mm} = \mathbf{4.05\text{ kN}\cdot\text{m}}$$
