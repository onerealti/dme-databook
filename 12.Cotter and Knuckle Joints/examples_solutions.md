# Cotter and Knuckle Joints — Solved Examples Solutions

Fully worked, step-by-step solutions for all examples in [examples.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/12.Cotter%20and%20Knuckle%20Joints/examples.md).

---

## Example 12.1 (Socket & Spigot Cotter Joint)

### Problem Statement
Design and draw a cotter joint to support a load varying from $30\text{ kN}$ in compression to $30\text{ kN}$ in tension. Material: Carbon steel. Allowable stresses: Tensile $\sigma_t = 50\text{ MPa}$, Shear $\tau = 35\text{ MPa}$, Crushing $\sigma_c = 90\text{ MPa}$.

---

### Solution

#### 1. Diameter of the rods ($d$)
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 30 \times 10^3 = \frac{\pi}{4} d^2 (50) \implies d = 27.6\text{ mm} \implies \mathbf{d = 30\text{ mm}}$$

#### 2. Diameter of spigot and thickness of cotter ($d_2, t$)
1. **From Crushing Requirement ($P = d_2 \cdot t \cdot \sigma_c$):**
   Setting $t = 10\text{ mm}$ to satisfy crushing stress $\sigma_c \le 90\text{ MPa}$:
   $$d_2 \ge \frac{P}{t \cdot \sigma_c} = \frac{30000}{10 \times 90} = 33.3\text{ mm}$$
2. **From Tearing Requirement ($P = \left[\frac{\pi}{4} d_2^2 - d_2 t\right] \sigma_t$):**
   $$30 \times 10^3 = \left(\frac{\pi}{4} d_2^2 - 10 d_2\right) \times 50 \implies 0.7854 d_2^2 - 10 d_2 - 600 = 0$$
   $$d_2 = 34.7\text{ mm} \implies \mathbf{d_2 = 35\text{ mm}}, \quad \mathbf{t = 10\text{ mm}}$$

#### 3. Outside diameter of socket ($d_1$)
$$P = \left[\frac{\pi}{4} (d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t$$
$$30 \times 10^3 = \left[\frac{\pi}{4} (d_1^2 - 35^2) - (d_1 - 35)(10)\right] \times 50 \implies 0.7854 d_1^2 - 10 d_1 - 1212.1 = 0 \implies \mathbf{d_1 = 50\text{ mm}}$$

#### 4. Width of cotter ($b$)
$$P = 2 b \cdot t \cdot \tau \implies 30 \times 10^3 = 2 \times b \times 10 \times 35 \implies b = 42.8\text{ mm} \implies \mathbf{b = 45\text{ mm}}$$

#### 5. Diameter of socket collar ($d_4$)
$$P = (d_4 - d_2) t \cdot \sigma_c \implies 30000 = (d_4 - 35) \times 10 \times 90 \implies \mathbf{d_4 = 68\text{ mm}}$$

#### 6. Thickness of socket collar ($c$)
$$P = 2 (d_4 - d_2) c \cdot \tau \implies 30000 = 2(68 - 35) c \times 35 \implies c = 13\text{ mm} \implies \mathbf{c = 15\text{ mm}}$$

#### 7. Distance from the end of the slot to the end of the rod ($a$)
$$P = 2 d_2 \cdot a \cdot \tau \implies 30000 = 2 \times 35 \times a \times 35 \implies a = 12.2\text{ mm} \implies \mathbf{a = 15\text{ mm}}$$

#### 8. Diameter of spigot collar ($d_3$)
$$P = \frac{\pi}{4} (d_3^2 - d_2^2) \sigma_c \implies 30 \times 10^3 = \frac{\pi}{4} (d_3^2 - 35^2) \times 90 \implies \mathbf{d_3 = 44\text{ mm}}$$

#### 9. Thickness of spigot collar ($t_1$)
$$P = \pi d_2 t_1 \tau \implies 30000 = \pi \times 35 \times t_1 \times 35 \implies t_1 = 7.8\text{ mm} \implies \mathbf{t_1 = 12\text{ mm}}$$

#### 10. The length of cotter ($l$)
$$l = 4 d = 4 \times 30 = \mathbf{120\text{ mm}}$$

#### 11. The dimension e (socket clearance / slot overhang)
$$e = 1.2 d = 1.2 \times 30 = \mathbf{36\text{ mm}}$$

---

## Example 12.2 (Sleeve and Cotter Joint)

### Problem Statement
Design a sleeve and cotter joint to resist a tensile load of $60\text{ kN}$. All parts of the joint are made of the same material with allowable stresses: $\sigma_t = 60\text{ MPa}$, $\tau = 70\text{ MPa}$, $\sigma_c = 125\text{ MPa}$.

---

### Solution

#### 1. Diameter of the rods ($d$)
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 60 \times 10^3 = \frac{\pi}{4} d^2 (60) \implies d = 35.7\text{ mm} \implies \mathbf{d = 38\text{ mm}}$$

#### 2. Diameter of enlarged end of rod and thickness of cotter ($d_2, t$)
$$P = \left(\frac{\pi}{4} d_2^2 - d_2 t\right) \sigma_t = 0.5354 d_2^2 \times 60 \quad (t = d_2/4)$$
$$60 \times 10^3 = 32.124 d_2^2 \implies d_2 = 43.2\text{ mm} \implies \mathbf{d_2 = 44\text{ mm}}, \quad \mathbf{t = 11\text{ mm}}$$

#### 3. Outside diameter of sleeve ($d_1$)
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t$$
$$60 \times 10^3 = \left[\frac{\pi}{4}(d_1^2 - 44^2) - (d_1 - 44)(11)\right] (60) \implies \mathbf{d_1 = 60\text{ mm}}$$

#### 4. Width of cotter ($b$)
$$b = \frac{P}{2 t \tau} = \frac{60000}{2 \times 11 \times 70} = 38.9\text{ mm} \implies \mathbf{b = 40\text{ mm}}$$

#### 5. Distance of the rod from the beginning to the cotter hole (inside the sleeve end) ($a$)
$$a = 1.25 d_2 = 1.25 \times 44 = \mathbf{55\text{ mm}}$$

#### 6. Distance of the rod end from its end to the cotter hole ($c$)
$$c = 1.25 d_2 = 1.25 \times 44 = \mathbf{55\text{ mm}}$$

---

## Example 12.7 (Knuckle Joint — 150 kN)

### Problem Statement
Design a knuckle joint to transmit $150\text{ kN}$. Stresses: $\sigma_t = 75\text{ MPa}$, $\tau = 60\text{ MPa}$, $\sigma_c = 150\text{ MPa}$.

---

### Solution

#### 1. Failure of the solid rod in tension
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 150 \times 10^3 = \frac{\pi}{4} d^2 (75) \implies d = 50.5\text{ mm} \implies \mathbf{d = 52\text{ mm}}$$

#### 2. Failure of the knuckle pin in shear
1. Double Shear: $P = 2 \times \frac{\pi}{4} d_1^2 \cdot \tau \implies 150 \times 10^3 = \frac{\pi}{2} d_1^2 (60) \implies d_1 = 39.9\text{ mm}$
2. Bending Moment: $M = \frac{P}{2} \left[\frac{t_1}{3} + \frac{t}{4}\right] \implies d_1 = 67.0\text{ mm}$

*Standard Adopted Pin Size:* **$d_1 = d = 52\text{ mm}$**

#### 3. Failure of the single eye or rod end in tension
* Thickness of single eye $t = 1.25 d = \mathbf{65\text{ mm}}$
* Outside diameter of single eye $d_2 = 2 d_1 = \mathbf{104\text{ mm}}$
* Tensile stress check: $\sigma_t = \frac{P}{(d_2 - d_1) t} = \frac{150000}{(104 - 52) 65} = 44.4\text{ MPa} \le 75\text{ MPa} \quad \text{(Safe)}$

#### 4. Failure of the single eye or rod end in shearing
$$\tau_{\text{induced}} = \frac{P}{(d_2 - d_1) t} = \frac{150000}{(104 - 52) 65} = 44.4\text{ MPa} \le 60\text{ MPa} \quad \text{(Safe)}$$

#### 5. Failure of the single eye or rod end in crushing
$$\sigma_{c,\text{induced}} = \frac{P}{d_1 \cdot t} = \frac{150000}{52 \times 65} = 44.4\text{ MPa} \le 150\text{ MPa} \quad \text{(Safe)}$$

#### 6. Failure of the forked end in tension
* Thickness of forked end $t_1 = 0.75 d = \mathbf{40\text{ mm}}$
* Tensile stress check: $\sigma_t = \frac{P}{2 (d_2 - d_1) t_1} = \frac{150000}{2 (104 - 52) 40} = 36.0\text{ MPa} \le 75\text{ MPa} \quad \text{(Safe)}$

#### 7. Failure of the forked end in shear
$$\tau_{\text{induced}} = \frac{P}{2 (d_2 - d_1) t_1} = \frac{150000}{2 (104 - 52) 40} = 36.0\text{ MPa} \le 60\text{ MPa} \quad \text{(Safe)}$$

#### 8. Failure of the forked end in crushing
$$\sigma_{c,\text{induced}} = \frac{P}{2 d_1 \cdot t_1} = \frac{150000}{2 \times 52 \times 40} = 36.0\text{ MPa} \le 150\text{ MPa} \quad \text{(Safe)}$$

---

## Example 12.8 (Knuckle Joint with Factor of Safety)

### Problem Statement
Design a knuckle joint for a tie rod of a circular section to sustain a maximum pull of $70\text{ kN}$.
* Ultimate tensile strength of rod = $420\text{ MPa}$
* Ultimate tensile strength of pin = $510\text{ MPa}$
* Ultimate shear strength of pin = $396\text{ MPa}$
* Factor of Safety ($\text{FOS}$) = 6

---

### Solution

#### Allowable Stresses
* Rod Tensile Stress: $\sigma_t = \frac{420}{6} = 70\text{ MPa}$
* Pin Shear Stress: $\tau = \frac{396}{6} = 66\text{ MPa}$

#### 1. Failure of the rod in tension
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 70 \times 10^3 = \frac{\pi}{4} d^2 (70) \implies d = 35.7\text{ mm} \implies \mathbf{d = 36\text{ mm}}$$

#### 2. Failure of the knuckle pin in shear
$$P = 2 \times \frac{\pi}{4} d_1^2 \cdot \tau \implies 70 \times 10^3 = \frac{\pi}{2} d_1^2 (66) \implies d_1 = 26.0\text{ mm} \implies \mathbf{d_1 = 28\text{ mm}}$$

#### 3. Failure of the single eye or rod end in tension
* Thickness of single eye: $t = 1.25 d = 1.25 \times 36 = \mathbf{45\text{ mm}}$
* Outside diameter of eye: $d_2 = 2 d_1 = 2 \times 28 = \mathbf{56\text{ mm}}$
* Tensile Stress: $\sigma_t = \frac{P}{(d_2 - d_1) t} = \frac{70000}{(56 - 28) 45} = 55.5\text{ MPa} \le 70\text{ MPa} \quad \text{(Safe)}$

#### 4. Failure of the forked end in tension
* Thickness of forked end: $t_1 = 0.75 d = 0.75 \times 36 = \mathbf{27\text{ mm}}$
* Tensile Stress: $\sigma_t = \frac{P}{2(d_2 - d_1) t_1} = \frac{70000}{2(56 - 28) 27} = 46.3\text{ MPa} \le 70\text{ MPa} \quad \text{(Safe)}$
