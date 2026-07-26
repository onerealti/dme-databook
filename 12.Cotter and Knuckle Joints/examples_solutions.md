# Cotter and Knuckle Joints — Solved Examples Solutions

Fully worked, step-by-step solutions for all examples in [examples.md](examples.md).

---

## Example 12.1 (Socket & Spigot Cotter Joint)

### Problem Statement
Design and draw a cotter joint to support a load varying from $30\text{ kN}$ in compression to $30\text{ kN}$ in tension. The material used is carbon steel for which the following allowable stresses may be used. The load is applied statically.
* Tensile stress = Compressive stress = $50\text{ MPa}$
* Shear stress = $35\text{ MPa}$
* Crushing stress = $90\text{ MPa}$

---

### Solution

#### Given Data
$P = 30\text{ kN} = 30 \times 10^3\text{ N}$, $\sigma_t = 50\text{ MPa}$, $\tau = 35\text{ MPa}$, $\sigma_c = 90\text{ MPa}$.

---

#### 1. Diameter of the rods ($d$)
Considering failure of the rod in tension:
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 30 \times 10^3 = \frac{\pi}{4} d^2 (50) = 39.3 d^2$$
$$d^2 = \frac{30 \times 10^3}{39.3} = 763 \implies d = 27.6\text{ mm} \quad \text{say } \mathbf{d = 28\text{ mm}}$$

#### 2. Diameter of spigot ($d_2$) and thickness of cotter ($t$)
Let $t = d_2 / 4$.

##### (a) Tension Failure of Spigot Across Slot (Trial):
$$P = \left[\frac{\pi}{4} d_2^2 - d_2 t\right] \sigma_t \implies 30 \times 10^3 = \left[\frac{\pi}{4} d_2^2 - d_2 \left(\frac{d_2}{4}\right)\right] 50 = 26.8 (d_2)^2$$
$$(d_2)^2 = \frac{30 \times 10^3}{26.8} = 1119.4 \implies d_2 = 33.4\text{ mm} \quad \text{say } 34\text{ mm}, \quad t = \frac{34}{4} = 8.5\text{ mm}$$

##### (b) Check Induced Crushing Stress:
$$\sigma_c = \frac{P}{d_2 \cdot t} = \frac{30 \times 10^3}{34 \times 8.5} = 103.8\text{ N/mm}^2 > 90\text{ MPa} \quad \text{(Unsafe!)}$$

Since induced crushing stress ($103.8\text{ MPa}$) exceeds safe limit ($90\text{ MPa}$), recalculate $d_2$ and $t$ using $\sigma_c = 90\text{ MPa}$:
$$30 \times 10^3 = d_2 \cdot \left(\frac{d_2}{4}\right) \cdot 90 = 22.5 (d_2)^2$$
$$(d_2)^2 = \frac{30 \times 10^3}{22.5} = 1333 \implies d_2 = 36.5\text{ mm} \quad \text{say } \mathbf{d_2 = 40\text{ mm}}$$
$$t = \frac{d_2}{4} = \frac{40}{4} = \mathbf{10\text{ mm}}$$

#### 3. Outside diameter of socket ($d_1$)
Considering failure of socket in tension across slot:
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t$$
$$30 \times 10^3 = \left[\frac{\pi}{4}(d_1^2 - 40^2) - (d_1 - 40)(10)\right] 50 \implies 0.7854 d_1^2 - 10 d_1 - 1854.6 = 0$$
$$d_1 = \frac{12.7 + \sqrt{(12.7)^2 + 4(1854.6)}}{2} = 49.9\text{ mm} \quad \text{say } \mathbf{d_1 = 50\text{ mm}}$$

#### 4. Width of cotter ($b$)
Considering failure of cotter in double shear:
$$P = 2 b \cdot t \cdot \tau \implies 30 \times 10^3 = 2 b \times 10 \times 35 = 700 b$$
$$b = \frac{30 \times 10^3}{700} = \mathbf{43\text{ mm}}$$

#### 5. Diameter of socket collar ($d_4$)
Considering crushing failure of socket collar:
$$P = (d_4 - d_2) t \cdot \sigma_c \implies 30 \times 10^3 = (d_4 - 40) \times 10 \times 90 = 900 (d_4 - 40)$$
$$d_4 - 40 = \frac{30 \times 10^3}{900} = 33.3 \implies d_4 = 73.3\text{ mm} \quad \text{say } \mathbf{d_4 = 75\text{ mm}}$$

#### 6. Thickness of socket collar ($c$)
Considering double shear failure of socket end:
$$P = 2(d_4 - d_2) c \cdot \tau \implies 30 \times 10^3 = 2(75 - 40) c \times 35 = 2450 c$$
$$c = \frac{30 \times 10^3}{2450} = \mathbf{12\text{ mm}}$$

#### 7. Distance from end of slot to end of rod ($a$)
Considering double shear failure of rod end:
$$P = 2 a \cdot d_2 \cdot \tau \implies 30 \times 10^3 = 2 a \times 40 \times 35 = 2800 a$$
$$a = \frac{30 \times 10^3}{2800} = 10.7\text{ mm} \quad \text{say } \mathbf{a = 11\text{ mm}}$$

#### 8. Diameter of spigot collar ($d_3$)
Considering crushing failure of spigot collar:
$$P = \frac{\pi}{4}(d_3^2 - d_2^2) \sigma_c \implies 30 \times 10^3 = \frac{\pi}{4}(d_3^2 - 40^2) \times 90$$
$$d_3^2 - 1600 = 424 \implies (d_3)^2 = 2024 \implies \mathbf{d_3 = 45\text{ mm}}$$

#### 9. Thickness of spigot collar ($t_1$)
Considering shear failure of spigot collar:
$$P = \pi d_2 \cdot t_1 \cdot \tau \implies 30 \times 10^3 = \pi \times 40 \times t_1 \times 35 = 4400 t_1$$
$$t_1 = \frac{30 \times 10^3}{4400} = 6.8\text{ mm} \quad \text{say } \mathbf{t_1 = 8\text{ mm}}$$

#### 10. Length of cotter ($l$)
$$l = 4d = 4 \times 28 = \mathbf{112\text{ mm}}$$

#### 11. Dimension $e$
$$e = 1.2d = 1.2 \times 28 = 33.6\text{ mm} \quad \text{say } \mathbf{e = 34\text{ mm}}$$
---

## Example 12.2 (Sleeve and Cotter Joint)

### Problem Statement
Design a sleeve and cotter joint to resist a tensile load of $60\text{ kN}$. All parts of the joint are made of the same material with the following allowable stresses:
* Tensile stress ($\sigma_t$) = $60\text{ MPa}$
* Shear stress ($\tau$) = $70\text{ MPa}$
* Crushing stress ($\sigma_c$) = $125\text{ MPa}$

---

### Solution

#### Given Data
$P = 60\text{ kN} = 60 \times 10^3\text{ N}$, $\sigma_t = 60\text{ MPa}$, $\tau = 70\text{ MPa}$, $\sigma_c = 125\text{ MPa}$.

---

#### 1. Diameter of the rods ($d$)
Considering failure of the rods in tension:
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 60 \times 10^3 = \frac{\pi}{4} d^2 (60) = 47.13 d^2$$
$$d^2 = \frac{60 \times 10^3}{47.13} = 1273 \implies d = 35.7\text{ mm} \quad \text{say } \mathbf{d = 36\text{ mm}}$$

#### 2. Diameter of enlarged end of rod ($d_2$) and thickness of cotter ($t$)
Let $t = d_2 / 4$.

##### (a) Tension Failure of Rod Across Slot:
$$P = \left[\frac{\pi}{4} d_2^2 - d_2 t\right] \sigma_t \implies 60 \times 10^3 = \left[\frac{\pi}{4} d_2^2 - d_2 \left(\frac{d_2}{4}\right)\right] 60 = 32.13 (d_2)^2$$
$$(d_2)^2 = \frac{60 \times 10^3}{32.13} = 1867 \implies d_2 = 43.2\text{ mm} \quad \text{say } \mathbf{d_2 = 44\text{ mm}}$$
$$t = \frac{d_2}{4} = \frac{44}{4} = \mathbf{11\text{ mm}}$$

##### (b) Check Induced Crushing Stress in Rod or Cotter:
$$\sigma_c = \frac{P}{d_2 \cdot t} = \frac{60 \times 10^3}{44 \times 11} = \mathbf{124\text{ N/mm}^2} \le 125\text{ MPa} \quad \text{(Safe)}$$

#### 3. Outside diameter of sleeve ($d_1$)
Considering failure of sleeve in tension across slot:
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t$$
$$60 \times 10^3 = \left[\frac{\pi}{4}(d_1^2 - 44^2) - (d_1 - 44)(11)\right] 60 \implies 0.7854 d_1^2 - 11 d_1 - 1036.7 = 0$$
$$(d_1)^2 - 14 d_1 - 2593 = 0$$
$$d_1 = \frac{14 + \sqrt{14^2 + 4(2593)}}{2} = \frac{14 + 102.8}{2} = 58.4\text{ mm} \quad \text{say } \mathbf{d_1 = 60\text{ mm}}$$

#### 4. Width of cotter ($b$)
Considering failure of cotter in double shear:
$$P = 2 b \cdot t \cdot \tau \implies 60 \times 10^3 = 2 b \times 11 \times 70 = 1540 b$$
$$b = \frac{60 \times 10^3}{1540} = 38.96\text{ mm} \quad \text{say } \mathbf{b = 40\text{ mm}}$$

#### 5. Distance of the rod from the beginning to the cotter hole (inside the sleeve end) ($a$)
Considering failure of rod end in double shear:
$$P = 2 a \cdot d_2 \cdot \tau \implies 60 \times 10^3 = 2 a \times 44 \times 70 = 6160 a$$
$$a = \frac{60 \times 10^3}{6160} = 9.74\text{ mm} \quad \text{say } \mathbf{a = 10\text{ mm}}$$

#### 6. Distance of the rod end from its end to the cotter hole ($c$)
Considering failure of sleeve end in double shear:
$$P = 2(d_1 - d_2) c \cdot \tau \implies 60 \times 10^3 = 2(60 - 44) c \times 70 = 2240 c$$
$$c = \frac{60 \times 10^3}{2240} = 26.78\text{ mm} \quad \text{say } \mathbf{c = 28\text{ mm}}$$

---

## Example 12.3 (Gib and Cotter Joint for Connecting Rod Big End)

### Problem Statement
The big end of a connecting rod, as shown in Fig. 12.12, is subjected to a maximum load of $50\text{ kN}$. The diameter of the circular part of the rod adjacent to the strap end is $75\text{ mm}$. Design the joint, assuming permissible tensile stress for the material of the strap as $25\text{ MPa}$ and permissible shear stress for the material of cotter and gib as $20\text{ MPa}$.

---

### Solution

#### Given Data
$P = 50\text{ kN} = 50 \times 10^3\text{ N}$, $d = 75\text{ mm}$, $\sigma_t = 25\text{ MPa}$, $\tau = 20\text{ MPa}$.

---

#### 1. Width of the strap ($B_1$) and thickness of cotter ($t$)
* Width of the strap: $B_1 = d = \mathbf{75\text{ mm}}$
* Thickness of cotter: $t = \frac{B_1}{4} = \frac{75}{4} = 18.75\text{ mm} \quad \text{say } \mathbf{20\text{ mm}}$
* Thickness of gib = Thickness of cotter = $\mathbf{20\text{ mm}}$
* Height ($t_2$) and length of gib head ($l_3$) = Thickness of cotter = $\mathbf{20\text{ mm}}$

#### 2. Thickness of the strap at the thinnest part ($t_1$)
Considering tensile failure of the strap at the thinnest part:
$$P = 2 B_1 \cdot t_1 \cdot \sigma_t \implies 50 \times 10^3 = 2 \times 75 \times t_1 \times 25 = 3750 t_1$$
$$t_1 = \frac{50 \times 10^3}{3750} = 13.3\text{ mm} \quad \text{say } \mathbf{t_1 = 15\text{ mm}}$$

#### 3. Thickness of the strap at the cotter ($t_3$)
The thickness of the strap at the cotter is increased such that the cross-sectional area at the cotter hole equals the strap area at the thinnest part:
$$2 t_3 (B_1 - t) = 2 t_1 B_1 \implies 2 t_3 (75 - 20) = 2 \times 15 \times 75$$
$$110 t_3 = 2250 \implies t_3 = \frac{2250}{110} = 20.45\text{ mm} \quad \text{say } \mathbf{t_3 = 21\text{ mm}}$$

#### 4. Total width of gib and cotter ($B$)
Considering double shear failure of gib and cotter:
$$P = 2 B \cdot t \cdot \tau \implies 50 \times 10^3 = 2 B \times 20 \times 20 = 800 B$$
$$B = \frac{50 \times 10^3}{800} = 62.5\text{ mm} \quad \text{say } \mathbf{B = 65\text{ mm}}$$

##### Division of Width between Gib and Cotter:
* Width of gib ($b_1$): $b_1 = 0.55 B = 0.55 \times 65 = 35.75\text{ mm} \quad \text{say } \mathbf{36\text{ mm}}$
* Width of cotter ($b$): $b = 0.45 B = 0.45 \times 65 = 29.25\text{ mm} \quad \text{say } \mathbf{30\text{ mm}}$

#### 5. Other Fixed Dimensions
* Strap end thickness ($t_4$): $t_4 = 1.25 t_1 = 1.25 \times 15 = 18.75\text{ mm} \quad \text{say } \mathbf{20\text{ mm}}$
* Distance from cotter hole to end of rod ($l_1$): $l_1 = 2 t_1 = 2 \times 15 = \mathbf{30\text{ mm}}$
* Overhang length ($l_2$): $l_2 = 2.5 t_1 = 2.5 \times 15 = 37.5\text{ mm} \quad \text{say } \mathbf{40\text{ mm}}$

---

## Example 12.7 (Knuckle Joint — 150 kN)

### Problem Statement
Design a knuckle joint to transmit $150\text{ kN}$. The design stresses may be taken as $75\text{ MPa}$ in tension, $60\text{ MPa}$ in shear and $150\text{ MPa}$ in compression.

---

### Solution

#### Given Data
$P = 150\text{ kN} = 150 \times 10^3\text{ N}$, $\sigma_t = 75\text{ MPa}$, $\tau = 60\text{ MPa}$, $\sigma_c = 150\text{ MPa}$.

---

#### 1. Failure of the solid rod in tension
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 150 \times 10^3 = \frac{\pi}{4} d^2 (75) = 59 d^2$$
$$d^2 = \frac{150 \times 10^3}{59} = 2540 \implies d = 50.4\text{ mm} \quad \text{say } \mathbf{d = 52\text{ mm}}$$

##### Fixed Empirical Dimensions:
* Diameter of knuckle pin: $d_1 = d = \mathbf{52\text{ mm}}$
* Outer diameter of eye: $d_2 = 2d = 2 \times 52 = \mathbf{104\text{ mm}}$
* Diameter of pin head and collar: $d_3 = 1.5d = 1.5 \times 52 = \mathbf{78\text{ mm}}$
* Thickness of single eye or rod end: $t = 1.25d = 1.25 \times 52 = \mathbf{65\text{ mm}}$
* Thickness of fork: $t_1 = 0.75d = 0.75 \times 52 = 39\text{ mm} \quad \text{say } \mathbf{40\text{ mm}}$
* Thickness of pin head: $t_2 = 0.5d = 0.5 \times 52 = \mathbf{26\text{ mm}}$

#### 2. Failure of the knuckle pin in shear
Considering double shear of knuckle pin:
$$P = 2 \cdot \frac{\pi}{4} d_1^2 \cdot \tau \implies 150 \times 10^3 = 2 \cdot \frac{\pi}{4} (52)^2 \tau = 4248 \tau$$
$$\tau = \frac{150 \times 10^3}{4248} = \mathbf{35.3\text{ N/mm}^2 = 35.3\text{ MPa}} \le 60\text{ MPa} \quad \text{(Safe)}$$

#### 3. Failure of the single eye or rod end in tension
$$P = (d_2 - d_1) t \cdot \sigma_t \implies 150 \times 10^3 = (104 - 52) 65 \times \sigma_t = 3380 \sigma_t$$
$$\sigma_t = \frac{150 \times 10^3}{3380} = \mathbf{44.4\text{ N/mm}^2 = 44.4\text{ MPa}} \le 75\text{ MPa} \quad \text{(Safe)}$$

#### 4. Failure of the single eye or rod end in shearing
$$P = (d_2 - d_1) t \cdot \tau \implies 150 \times 10^3 = (104 - 52) 65 \times \tau = 3380 \tau$$
$$\tau = \frac{150 \times 10^3}{3380} = \mathbf{44.4\text{ N/mm}^2 = 44.4\text{ MPa}} \le 60\text{ MPa} \quad \text{(Safe)}$$

#### 5. Failure of the single eye or rod end in crushing
$$P = d_1 \cdot t \cdot \sigma_c \implies 150 \times 10^3 = 52 \times 65 \times \sigma_c = 3380 \sigma_c$$
$$\sigma_c = \frac{150 \times 10^3}{3380} = \mathbf{44.4\text{ N/mm}^2 = 44.4\text{ MPa}} \le 150\text{ MPa} \quad \text{(Safe)}$$

#### 6. Failure of the forked end in tension
$$P = (d_2 - d_1) 2 t_1 \cdot \sigma_t \implies 150 \times 10^3 = (104 - 52) 2(40) \times \sigma_t = 4160 \sigma_t$$
$$\sigma_t = \frac{150 \times 10^3}{4160} = \mathbf{36\text{ N/mm}^2 = 36\text{ MPa}} \le 75\text{ MPa} \quad \text{(Safe)}$$

#### 7. Failure of the forked end in shear
$$P = (d_2 - d_1) 2 t_1 \cdot \tau \implies 150 \times 10^3 = (104 - 52) 2(40) \times \tau = 4160 \tau$$
$$\tau = \frac{150 \times 10^3}{4160} = \mathbf{36\text{ N/mm}^2 = 36\text{ MPa}} \le 60\text{ MPa} \quad \text{(Safe)}$$

#### 8. Failure of the forked end in crushing
$$P = d_1 \cdot 2 t_1 \cdot \sigma_c \implies 150 \times 10^3 = 52 \times 2(40) \times \sigma_c = 4160 \sigma_c$$
$$\sigma_c = \frac{150 \times 10^3}{4160} = \mathbf{36\text{ N/mm}^2 = 36\text{ MPa}} \le 150\text{ MPa} \quad \text{(Safe)}$$

---

## Example 12.8 (Knuckle Joint with Factor of Safety)

### Problem Statement
Design a knuckle joint for a tie rod of a circular section to sustain a maximum pull of $70\text{ kN}$. The ultimate strength of the material of the rod against tearing is $420\text{ MPa}$. The ultimate tensile and shearing strength of the pin material are $510\text{ MPa}$ and $396\text{ MPa}$ respectively. Determine the tie rod section and pin section. Take factor of safety = $6$.

---

### Solution

#### Given Data
$P = 70\text{ kN} = 70000\text{ N}$, $\sigma_{tu} \text{ (rod)} = 420\text{ MPa}$, $\sigma_{tu} \text{ (pin)} = 510\text{ MPa}$ (superfluous data), $\tau_u = 396\text{ MPa}$, $\text{FOS} = 6$.

#### Permissible Stresses:
* Permissible tensile stress for rod: $\sigma_t = \frac{\sigma_{tu}}{\text{FOS}} = \frac{420}{6} = \mathbf{70\text{ MPa} = 70\text{ N/mm}^2}$
* Permissible shear stress for pin: $\tau = \frac{\tau_u}{\text{FOS}} = \frac{396}{6} = \mathbf{66\text{ MPa} = 66\text{ N/mm}^2}$

---

#### 1. Failure of the rod in tension
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 70000 = \frac{\pi}{4} d^2 (70) = 55 d^2$$
$$d^2 = \frac{70000}{55} = 1273 \implies d = 35.7\text{ mm} \quad \text{say } \mathbf{d = 36\text{ mm}}$$

##### Fixed Empirical Dimensions:
* Diameter of knuckle pin: $d_1 = d = \mathbf{36\text{ mm}}$
* Outer diameter of eye: $d_2 = 2d = 2 \times 36 = \mathbf{72\text{ mm}}$
* Diameter of pin head and collar: $d_3 = 1.5d = 1.5 \times 36 = \mathbf{54\text{ mm}}$
* Thickness of single eye or rod end: $t = 1.25d = 1.25 \times 36 = \mathbf{45\text{ mm}}$
* Thickness of fork: $t_1 = 0.75d = 0.75 \times 36 = \mathbf{27\text{ mm}}$

#### 2. Failure of the knuckle pin in shear
Considering double shear of knuckle pin:
$$P = 2 \cdot \frac{\pi}{4} (d_1)^2 \cdot \tau \implies 70000 = 2 \cdot \frac{\pi}{4} (36)^2 \tau = 2036 \tau$$
$$\tau = \frac{70000}{2036} = \mathbf{34.4\text{ N/mm}^2 = 34.4\text{ MPa}} \le 66\text{ MPa} \quad \text{(Safe)}$$

#### 3. Failure of the single eye or rod end in tension
$$P = (d_2 - d_1) t \cdot \sigma_t \implies 70000 = (72 - 36) 45 \times \sigma_t = 1620 \sigma_t$$
$$\sigma_t = \frac{70000}{1620} = \mathbf{43.2\text{ N/mm}^2 = 43.2\text{ MPa}} \le 70\text{ MPa} \quad \text{(Safe)}$$

#### 4. Failure of the forked end in tension
$$P = (d_2 - d_1) 2 t_1 \cdot \sigma_t \implies 70000 = (72 - 36) 2(27) \times \sigma_t = 1944 \sigma_t$$
$$\sigma_t = \frac{70000}{1944} = \mathbf{36\text{ N/mm}^2 = 36\text{ MPa}} \le 70\text{ MPa} \quad \text{(Safe)}$$
