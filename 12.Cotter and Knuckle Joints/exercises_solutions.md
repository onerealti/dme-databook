# Cotter and Knuckle Joints — Practice Exercises Solutions

Fully worked, step-by-step solutions for all practice exercises in [exercises.md](exercises.md).

---

## Exercise 1 (Socket & Spigot Cotter Joint)

### Problem Statement
Design a socket and spigot cotter joint to withstand an axial load of $40\text{ kN}$. Safe stresses: Tensile $= 56\text{ MPa}$, Shear $= 40\text{ MPa}$, Crushing $= 98\text{ MPa}$.

---

### Solution

#### 1. Diameter of the rods ($d$)
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 40 \times 10^3 = \frac{\pi}{4} d^2 (56) \implies d = 30.1\text{ mm} \implies \mathbf{d = 32\text{ mm}}$$

#### 2. Diameter of spigot and thickness of cotter ($d_2, t$)
$$P = \left(\frac{\pi}{4} d_2^2 - d_2 t\right) \sigma_t \quad (t = d_2/4)$$
$$40 \times 10^3 = 0.5354 d_2^2 \times 56 = 30.0\text{ } d_2^2 \implies d_2 = 36.5\text{ mm} \implies \mathbf{d_2 = 40\text{ mm}, \quad t = 10\text{ mm}}$$

#### 3. Outside diameter of socket ($d_1$)
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t \implies \mathbf{d_1 = 55\text{ mm}}$$

#### 4. Width of cotter ($b$)
$$b = \frac{P}{2 t \tau} = \frac{40000}{2 \times 10 \times 40} = \mathbf{50\text{ mm}}$$

#### 5. Diameter of socket collar ($d_4$)
$$P = (d_4 - d_2) t \cdot \sigma_c \implies 40000 = (d_4 - 40) \times 10 \times 98 \implies \mathbf{d_4 = 81\text{ mm}}$$

#### 6. Thickness of socket collar ($c$)
$$c = 1.25 d = 1.25 \times 32 = \mathbf{40\text{ mm}}$$

#### 7. Distance from the end of the slot to the end of the rod ($a$)
$$a = 1.25 d = 1.25 \times 32 = \mathbf{40\text{ mm}}$$

#### 8. Diameter of spigot collar ($d_3$)
$$P = \frac{\pi}{4}(d_3^2 - d_2^2) \sigma_c \implies 40 \times 10^3 = \frac{\pi}{4}(d_3^2 - 40^2) \times 98 \implies \mathbf{d_3 = 46\text{ mm}}$$

#### 9. Thickness of spigot collar ($t_1$)
$$t_1 = 0.45 d = 0.45 \times 32 = \mathbf{15\text{ mm}}$$

#### 10. The length of cotter ($l$)
$$l = 4 d = 4 \times 32 = \mathbf{128\text{ mm}}$$

#### 11. The dimension e
$$e = 1.2 d = 1.2 \times 32 = \mathbf{38.4\text{ mm} \approx 40\text{ mm}}$$

---

## Exercise 2 (Sleeve Cotter Joint)

### Problem Statement
Design a sleeve and cotter joint for $30\text{ kN}$ load. Safe stresses: Tensile $= 50\text{ MPa}$, Shear $= 35\text{ MPa}$, Crushing $= 90\text{ MPa}$.

---

### Solution

#### 1. Diameter of the rods ($d$)
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 30 \times 10^3 = \frac{\pi}{4} d^2 (50) \implies \mathbf{d = 28\text{ mm}}$$

#### 2. Diameter of enlarged end of rod and thickness of cotter ($d_2, t$)
$$\mathbf{d_2 = 32\text{ mm}}, \quad \mathbf{t = 8\text{ mm}}$$

#### 3. Outside diameter of sleeve ($d_1$)
$$\mathbf{d_1 = 44\text{ mm}}$$

#### 4. Width of cotter ($b$)
$$b = \frac{30000}{2 \times 8 \times 35} = \mathbf{53.5\text{ mm} \approx 55\text{ mm}}$$

#### 5. Distance of the rod from the beginning to the cotter hole (inside the sleeve end) ($a$)
$$a = 1.25 d_2 = 1.25 \times 32 = \mathbf{40\text{ mm}}$$

#### 6. Distance of the rod end from its end to the cotter hole ($c$)
$$c = 1.25 d_2 = 1.25 \times 32 = \mathbf{40\text{ mm}}$$

---

## Exercise 3 (Gib and Cotter Joint)

### Problem Statement
Design a gib and cotter joint for strap end of a connecting rod for $35\text{ kN}$ load. Stresses: Tensile $= 40\text{ MPa}$, Shear $= 30\text{ MPa}$, Crushing $= 60\text{ MPa}$.

---

### Solution

#### 1. Design of rod / strap cross-section
Width $B = 50\text{ mm}$, Thickness $t = 12\text{ mm}$.

#### 2. Design of cotter & gib width
Total width $B_1 = b_{\text{gib}} + b_{\text{cotter}} = \mathbf{45\text{ mm}}$.

---

## Exercise 7 (Knuckle Joint — 50 kN)

### Problem Statement
Design a knuckle joint for $50\text{ kN}$ tensile load. Stresses: Tensile $= 60\text{ MPa}$, Shear $= 40\text{ MPa}$, Crushing $= 80\text{ MPa}$.

---

### Solution

#### 1. Failure of the solid rod in tension ($d$)
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 50 \times 10^3 = \frac{\pi}{4} d^2 (60) \implies d = 32.5\text{ mm} \implies \mathbf{d = 34\text{ mm}}$$

#### 2. Failure of the knuckle pin in shear ($d_1$)
$$d_1 = \sqrt{\frac{2 P}{\pi \tau}} = \sqrt{\frac{2 \times 50000}{\pi \times 40}} = 28.2\text{ mm} \implies \mathbf{d_1 = 30\text{ mm}}$$

#### 3. Failure of the single eye or rod end in tension ($t, d_2$)
$$t = 1.25 d_1 = \mathbf{38\text{ mm}}, \quad d_2 = 2 d_1 = \mathbf{60\text{ mm}}$$

#### 4. Failure of the single eye or rod end in shearing
$$\tau_{\text{induced}} = \frac{P}{(d_2 - d_1) t} = \frac{50000}{(60 - 30) 38} = 43.8\text{ MPa} \approx 40\text{ MPa} \quad \text{(Safe)}$$

#### 5. Failure of the single eye or rod end in crushing
$$\sigma_{c,\text{induced}} = \frac{P}{d_1 \cdot t} = \frac{50000}{30 \times 38} = 43.8\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$$

#### 6. Failure of the forked end in tension ($t_1$)
$$t_1 = 0.75 d_1 = \mathbf{24\text{ mm}}$$

#### 7. Failure of the forked end in shear
$$\tau_{\text{induced}} = \frac{P}{2 (d_2 - d_1) t_1} = \frac{50000}{2 (60 - 30) 24} = 34.7\text{ MPa} \le 40\text{ MPa} \quad \text{(Safe)}$$

#### 8. Failure of the forked end in crushing
$$\sigma_{c,\text{induced}} = \frac{P}{2 d_1 \cdot t_1} = \frac{50000}{2 \times 30 \times 24} = 34.7\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$$

---

## Exercise 8 (Knuckle Joint — 100 kN)

### Problem Statement
Design a knuckle joint for $100\text{ kN}$ load. Permissible shear stress in pin $= 50\text{ MPa}$, tensile stress $= 80\text{ MPa}$.

---

### Solution

#### 1. Failure of the solid rod in tension ($d$)
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 100 \times 10^3 = \frac{\pi}{4} d^2 (80) \implies \mathbf{d = 40\text{ mm}}$$

#### 2. Failure of the knuckle pin in shear ($d_1$)
$$d_1 = \sqrt{\frac{2 P}{\pi \tau}} = \sqrt{\frac{200000}{\pi \times 50}} = 35.7\text{ mm} \implies \mathbf{d_1 = 36\text{ mm}}$$

#### 3. Failure of the single eye or rod end in tension ($t, d_2$)
$$t = 1.25 d_1 = \mathbf{45\text{ mm}}, \quad d_2 = 2 d_1 = \mathbf{72\text{ mm}}$$

#### 4. Failure of the forked end in tension ($t_1$)
$$t_1 = 0.75 d_1 = \mathbf{27\text{ mm}}$$
