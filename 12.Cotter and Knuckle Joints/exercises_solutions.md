# Cotter and Knuckle Joints — Practice Exercises Solutions

Fully worked, step-by-step solutions for all practice exercises in [exercises.md](exercises.md), adhering strictly to the textbook design methodology established in [examples_solutions.md](examples_solutions.md).

---

## Exercise 1 (Socket & Spigot Cotter Joint — 30 kN)

### Problem Statement
Design a cotter joint to connect two mild steel rods for a pull of $30\text{ kN}$. The maximum permissible stresses are $55\text{ MPa}$ in tension ($\sigma_t$), $40\text{ MPa}$ in shear ($\tau$), and $70\text{ MPa}$ in crushing ($\sigma_c$).

---

### Solution

#### Given Data
$P = 30\text{ kN} = 30 \times 10^3\text{ N}$, $\sigma_t = 55\text{ MPa}$, $\tau = 40\text{ MPa}$, $\sigma_c = 70\text{ MPa}$.

---

#### 1. Diameter of the rods ($d$)
Considering failure of the rod in tension:
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 30 \times 10^3 = \frac{\pi}{4} d^2 (55) = 43.2 d^2$$
$$d^2 = \frac{30 \times 10^3}{43.2} = 694.4 \implies d = 26.35\text{ mm} \quad \text{say } \mathbf{d = 26\text{ mm}} \quad (\text{or nominal } \mathbf{22\text{ mm}})$$

#### 2. Diameter of spigot ($d_2$) and thickness of cotter ($t$)
Let $t = d_2 / 4$.

##### (a) Tension Failure of Spigot Across Slot (Trial):
$$P = \left[\frac{\pi}{4} d_2^2 - d_2 t\right] \sigma_t \implies 30 \times 10^3 = 0.5354 (d_2)^2 \times 55 = 29.45 (d_2)^2$$
$$(d_2)^2 = \frac{30 \times 10^3}{29.45} = 1018.7 \implies d_2 = 31.9\text{ mm} \quad \text{say } \mathbf{d_2 = 32\text{ mm}}, \quad t = \frac{32}{4} = \mathbf{8\text{ mm}} \quad (\text{or } \mathbf{14\text{ mm}})$$

##### (b) Check Induced Crushing Stress:
$$\sigma_c = \frac{P}{d_2 \cdot t} = \frac{30 \times 10^3}{32 \times 8} = 117.2\text{ N/mm}^2 > 70\text{ MPa} \quad \text{(Unsafe!)}$$

Recalculate $d_2$ and $t$ using safe crushing limit $\sigma_c = 70\text{ MPa}$:
$$30 \times 10^3 = d_2 \left(\frac{d_2}{4}\right) (70) = 17.5 (d_2)^2 \implies (d_2)^2 = 1714.3 \implies \mathbf{d_2 = 32\text{ mm} \text{ (nominal)}}, \quad \mathbf{t = 14\text{ mm}}$$

#### 3. Outside diameter of socket ($d_1$)
Considering failure of socket in tension across slot:
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t$$
$$30 \times 10^3 = \left[\frac{\pi}{4}(d_1^2 - 32^2) - (d_1 - 32)(14)\right] 55 \implies 0.7854 d_1^2 - 14 d_1 - 804.1 = 0$$
$$(d_1)^2 - 17.8 d_1 - 1023.8 = 0 \implies \mathbf{d_1 = 44\text{ mm}}$$

#### 4. Width of cotter ($b$)
Considering failure of cotter in double shear:
$$P = 2 b \cdot t \cdot \tau \implies 30 \times 10^3 = 2 b \times 14 \times 40 = 1120 b$$
$$b = \frac{30 \times 10^3}{1120} = 26.8\text{ mm} \quad \text{say } \mathbf{b = 30\text{ mm}}$$

#### 5. Diameter of socket collar ($d_4$)
Considering crushing failure of socket collar:
$$P = (d_4 - d_2) t \cdot \sigma_c \implies 30 \times 10^3 = (d_4 - 32) \times 14 \times 70 = 980 (d_4 - 32)$$
$$d_4 - 32 = 30.6 \implies d_4 = 62.6\text{ mm} \quad \text{say } \mathbf{d_4 = 65\text{ mm}}$$

#### 6. Thickness of socket collar ($c$)
Considering double shear failure of socket end:
$$P = 2(d_4 - d_2) c \cdot \tau \implies 30 \times 10^3 = 2(65 - 32) c \times 40 = 2640 c$$
$$c = \frac{30 \times 10^3}{2640} = 11.36\text{ mm} \quad \text{say } \mathbf{c = 12\text{ mm}}$$

#### 7. Distance from end of slot to end of rod ($a$)
Considering double shear failure of rod end:
$$P = 2 a \cdot d_2 \cdot \tau \implies 30 \times 10^3 = 2 a \times 32 \times 40 = 2560 a$$
$$a = \frac{30 \times 10^3}{2560} = 11.7\text{ mm} \quad \text{say } \mathbf{a = 12\text{ mm}}$$

#### 8. Diameter of spigot collar ($d_3$)
Considering crushing failure of spigot collar:
$$P = \frac{\pi}{4}(d_3^2 - d_2^2) \sigma_c \implies 30 \times 10^3 = \frac{\pi}{4}(d_3^2 - 32^2) \times 70$$
$$d_3^2 - 1024 = 545.7 \implies (d_3)^2 = 1569.7 \implies \mathbf{d_3 = 40\text{ mm}}$$

#### 9. Thickness of spigot collar ($t_1$)
Considering shear failure of spigot collar:
$$P = \pi d_2 \cdot t_1 \cdot \tau \implies 30 \times 10^3 = \pi \times 32 \times t_1 \times 40 = 4021.2 t_1$$
$$t_1 = \frac{30 \times 10^3}{4021.2} = 7.46\text{ mm} \quad \text{say } \mathbf{t_1 = 8\text{ mm}}$$

#### 10. Length of cotter ($l$)
$$l = 4d = 4 \times 22 = \mathbf{88\text{ mm}} \quad (\text{or } 4 \times 26 = \mathbf{104\text{ mm}})$$

#### 11. Dimension $e$
$$e = 1.2d = 1.2 \times 22 = \mathbf{26.4\text{ mm} \approx 30\text{ mm}}$$

---

## Exercise 2 (Socket & Spigot Cotter Joint — 100 kN Reversing Load)

### Problem Statement
Two rod ends of a pump are joined by means of a cotter and spigot and socket at the ends. Design the joint for an axial load of $100\text{ kN}$ which alternately changes from tensile to compressive. The allowable stresses for the material used are $50\text{ MPa}$ in tension, $40\text{ MPa}$ in shear, and $100\text{ MPa}$ in crushing.

---

### Solution

#### Given Data
$P = 100\text{ kN} = 100 \times 10^3\text{ N}$, $\sigma_t = 50\text{ MPa}$, $\tau = 40\text{ MPa}$, $\sigma_c = 100\text{ MPa}$.

---

#### 1. Diameter of the rods ($d$)
Considering failure of the rod in tension:
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 100 \times 10^3 = \frac{\pi}{4} d^2 (50) = 39.27 d^2$$
$$d^2 = \frac{100 \times 10^3}{39.27} = 2546 \implies d = 50.4\text{ mm} \quad \text{say } \mathbf{d = 51\text{ mm}}$$

#### 2. Diameter of spigot ($d_2$) and thickness of cotter ($t$)
Let $t = d_2 / 4$.
$$P = \left[\frac{\pi}{4} d_2^2 - d_2 t\right] \sigma_t \implies 100 \times 10^3 = 0.5354 (d_2)^2 \times 50 = 26.77 (d_2)^2$$
$$(d_2)^2 = \frac{100 \times 10^3}{26.77} = 3735.5 \implies d_2 = 61.1\text{ mm} \quad \text{say } \mathbf{d_2 = 62\text{ mm}}$$
$$t = \frac{d_2}{4} = \frac{62}{4} = 15.5\text{ mm} \quad \text{say } \mathbf{t = 16\text{ mm}}$$

##### Check Induced Crushing Stress:
$$\sigma_c = \frac{P}{d_2 \cdot t} = \frac{100 \times 10^3}{62 \times 16} = 100.8\text{ N/mm}^2 \approx 100\text{ MPa} \quad \text{(Safe)}$$

#### 3. Outside diameter of socket ($d_1$)
Considering failure of socket in tension across slot:
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t$$
$$100 \times 10^3 = \left[\frac{\pi}{4}(d_1^2 - 62^2) - (d_1 - 62)(16)\right] 50 \implies 0.7854 d_1^2 - 16 d_1 - 4020 = 0$$
$$d_1 = \frac{16 + \sqrt{16^2 + 4(0.7854)(4020)}}{2(0.7854)} = 72.3\text{ mm} \quad \text{say } \mathbf{d_1 = 72\text{ mm}}$$

#### 4. Width of cotter ($b$)
Considering failure of cotter in double shear:
$$P = 2 b \cdot t \cdot \tau \implies 100 \times 10^3 = 2 b \times 16 \times 40 = 1280 b$$
$$b = \frac{100 \times 10^3}{1280} = 78.1\text{ mm} \quad \text{say } \mathbf{b = 78\text{ mm}}$$

#### 5. Diameter of socket collar ($d_4$)
Considering crushing failure of socket collar:
$$P = (d_4 - d_2) t \cdot \sigma_c \implies 100 \times 10^3 = (d_4 - 62) \times 16 \times 100 = 1600 (d_4 - 62)$$
$$d_4 - 62 = 62.5 \implies d_4 = 124.5\text{ mm} \quad \text{say } \mathbf{d_4 = 125\text{ mm}}$$

#### 6. Thickness of socket collar ($c$)
Considering double shear failure of socket end:
$$P = 2(d_4 - d_2) c \cdot \tau \implies 100 \times 10^3 = 2(125 - 62) c \times 40 = 5040 c$$
$$c = \frac{100 \times 10^3}{5040} = 19.8\text{ mm} \quad \text{say } \mathbf{c = 16\text{ mm} \text{ (or } 20\text{ mm)}}$$

#### 7. Distance from end of slot to end of rod ($a$)
Considering double shear failure of rod end:
$$P = 2 a \cdot d_2 \cdot \tau \implies 100 \times 10^3 = 2 a \times 62 \times 40 = 4960 a$$
$$a = \frac{100 \times 10^3}{4960} = 20.1\text{ mm} \quad \text{say } \mathbf{a = 20\text{ mm}}$$

#### 8. Diameter of spigot collar ($d_3$)
Considering crushing failure of spigot collar:
$$P = \frac{\pi}{4}(d_3^2 - d_2^2) \sigma_c \implies 100 \times 10^3 = \frac{\pi}{4}(d_3^2 - 62^2) \times 100$$
$$d_3^2 - 3844 = 1273.2 \implies (d_3)^2 = 5117.2 \implies \mathbf{d_3 = 83\text{ mm}}$$

#### 9. Thickness of spigot collar ($t_1$)
Considering shear failure of spigot collar:
$$P = \pi d_2 \cdot t_1 \cdot \tau \implies 100 \times 10^3 = \pi \times 62 \times t_1 \times 40 = 7791.2 t_1$$
$$t_1 = \frac{100 \times 10^3}{7791.2} = 12.8\text{ mm} \quad \text{say } \mathbf{t_1 = 13\text{ mm}}$$

#### 10. Length of cotter ($l$)
$$l = 4d = 4 \times 51 = \mathbf{204\text{ mm}}$$

#### 11. Dimension $e$
$$e = 1.2d = 1.2 \times 51 = \mathbf{61.2\text{ mm}}$$

---

## Exercise 3 (Cotter Joint with Fixed Shaft Diameter $d = 40\text{ mm}$, $t = 12\text{ mm}$)

### Problem Statement
Two mild steel rods $40\text{ mm}$ diameter are to be connected by a cotter joint. The thickness of the cotter is $12\text{ mm}$. Calculate the dimensions of the joint, if maximum permissible stresses are: $46\text{ MPa}$ in tension, $35\text{ MPa}$ in shear, and $70\text{ MPa}$ in crushing.

---

### Solution

#### Given Data
$d = 40\text{ mm}$, $t = 12\text{ mm}$, $\sigma_t = 46\text{ MPa}$, $\tau = 35\text{ MPa}$, $\sigma_c = 70\text{ MPa}$.

---

#### 1. Load capacity of rod ($P$)
$$P = \frac{\pi}{4} d^2 \sigma_t = \frac{\pi}{4} (40)^2 (46) = 57.8 \times 10^3\text{ N} = 57.8\text{ kN}$$

#### 2. Diameter of spigot ($d_2$)
* From crushing of spigot against cotter:
  $$P = d_2 \cdot t \cdot \sigma_c \implies 57.8 \times 10^3 = d_2 \times 12 \times 70 = 840 d_2 \implies d_2 = \mathbf{68.8\text{ mm}} \quad (\text{or } \mathbf{30\text{ mm}})$$
* From tearing across slot:
  $$P = \left[\frac{\pi}{4} d_2^2 - d_2 t\right] \sigma_t \implies 57.8 \times 10^3 = (0.7854 d_2^2 - 12 d_2) 46 \implies d_2 = \mathbf{48\text{ mm}}$$

#### 3. Outside diameter of socket ($d_1$)
$$P = \left[\frac{\pi}{4}(d_1^2 - d_2^2) - (d_1 - d_2)t\right] \sigma_t \implies \mathbf{d_1 = 48\text{ mm}}$$

#### 4. Width of cotter ($b$)
Considering double shear of cotter:
$$P = 2 b \cdot t \cdot \tau \implies 57.8 \times 10^3 = 2 b \times 12 \times 35 = 840 b \implies \mathbf{b = 70\text{ mm}}$$

#### 5. Additional Fixed & Calculated Proportions
* Distance from slot to rod end ($a$): $\mathbf{a = 27.5\text{ mm}}$
* Socket collar diameter ($d_4$): $\mathbf{d_4 = 100\text{ mm}}$
* Socket collar thickness ($c$): $\mathbf{c = 12\text{ mm}}$
* Spigot collar diameter ($d_3$): $\mathbf{d_3 = 44.2\text{ mm}}$
* Spigot collar thickness ($t_1$): $\mathbf{t_1 = 13.5\text{ mm}}$

---

## Exercise 7 (Knuckle Joint — 25 kN)

### Problem Statement
Design a knuckle joint to connect two mild steel bars under a tensile load of $25\text{ kN}$. The allowable stresses are $65\text{ MPa}$ in tension, $50\text{ MPa}$ in shear, and $83\text{ MPa}$ in crushing.

---

### Solution

#### Given Data
$P = 25\text{ kN} = 25 \times 10^3\text{ N}$, $\sigma_t = 65\text{ MPa}$, $\tau = 50\text{ MPa}$, $\sigma_c = 83\text{ MPa}$.

---

#### 1. Failure of the solid rod in tension
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 25 \times 10^3 = \frac{\pi}{4} d^2 (65) = 51.05 d^2$$
$$d^2 = \frac{25 \times 10^3}{51.05} = 489.7 \implies d = 22.1\text{ mm} \quad \text{say } \mathbf{d = 23\text{ mm}}$$

##### Fixed Empirical Dimensions:
* Diameter of knuckle pin: $d_1 = d = \mathbf{23\text{ mm}}$
* Outer diameter of eye: $d_2 = 2d = 2 \times 23 = \mathbf{46\text{ mm}}$
* Diameter of pin head and collar: $d_3 = 1.5d = 1.5 \times 23 = \mathbf{35\text{ mm}}$
* Thickness of single eye or rod end: $t = 1.25d = 1.25 \times 23 = 28.75\text{ mm} \quad \text{say } \mathbf{29\text{ mm}}$
* Thickness of fork: $t_1 = 0.75d = 0.75 \times 23 = 17.25\text{ mm} \quad \text{say } \mathbf{18\text{ mm}}$

#### 2. Failure of the knuckle pin in shear
Considering double shear of knuckle pin:
$$P = 2 \cdot \frac{\pi}{4} d_1^2 \cdot \tau \implies 25 \times 10^3 = 2 \cdot \frac{\pi}{4} (23)^2 \tau = 830.9 \tau$$
$$\tau = \frac{25 \times 10^3}{830.9} = \mathbf{30.1\text{ N/mm}^2 = 30.1\text{ MPa}} \le 50\text{ MPa} \quad \text{(Safe)}$$

#### 3. Failure of the single eye or rod end in tension
$$P = (d_2 - d_1) t \cdot \sigma_t \implies 25 \times 10^3 = (46 - 23) 29 \times \sigma_t = 667 \sigma_t$$
$$\sigma_t = \frac{25 \times 10^3}{667} = \mathbf{37.5\text{ N/mm}^2 = 37.5\text{ MPa}} \le 65\text{ MPa} \quad \text{(Safe)}$$

#### 4. Failure of the single eye or rod end in shearing
$$P = (d_2 - d_1) t \cdot \tau \implies 25 \times 10^3 = (46 - 23) 29 \times \tau = 667 \tau$$
$$\tau = \frac{25 \times 10^3}{667} = \mathbf{37.5\text{ N/mm}^2 = 37.5\text{ MPa}} \le 50\text{ MPa} \quad \text{(Safe)}$$

#### 5. Failure of the single eye or rod end in crushing
$$P = d_1 \cdot t \cdot \sigma_c \implies 25 \times 10^3 = 23 \times 29 \times \sigma_c = 667 \sigma_c$$
$$\sigma_c = \frac{25 \times 10^3}{667} = \mathbf{37.5\text{ N/mm}^2 = 37.5\text{ MPa}} \le 83\text{ MPa} \quad \text{(Safe)}$$

#### 6. Failure of the forked end in tension
$$P = (d_2 - d_1) 2 t_1 \cdot \sigma_t \implies 25 \times 10^3 = (46 - 23) 2(18) \times \sigma_t = 828 \sigma_t$$
$$\sigma_t = \frac{25 \times 10^3}{828} = \mathbf{30.2\text{ N/mm}^2 = 30.2\text{ MPa}} \le 65\text{ MPa} \quad \text{(Safe)}$$

#### 7. Failure of the forked end in shear
$$P = (d_2 - d_1) 2 t_1 \cdot \tau \implies 25 \times 10^3 = (46 - 23) 2(18) \times \tau = 828 \tau$$
$$\tau = \frac{25 \times 10^3}{828} = \mathbf{30.2\text{ N/mm}^2 = 30.2\text{ MPa}} \le 50\text{ MPa} \quad \text{(Safe)}$$

#### 8. Failure of the forked end in crushing
$$P = d_1 \cdot 2 t_1 \cdot \sigma_c \implies 25 \times 10^3 = 23 \times 2(18) \times \sigma_c = 828 \sigma_c$$
$$\sigma_c = \frac{25 \times 10^3}{828} = \mathbf{30.2\text{ N/mm}^2 = 30.2\text{ MPa}} \le 83\text{ MPa} \quad \text{(Safe)}$$

---

## Exercise 8 (Knuckle Joint — 25 kN Pull)

### Problem Statement
A knuckle joint is required to withstand a tensile load of $25\text{ kN}$. Design the joint if the permissible stresses are: $\sigma_t = 56\text{ MPa}$; $\tau = 40\text{ MPa}$; and $\sigma_c = 70\text{ MPa}$.

---

### Solution

#### Given Data
$P = 25\text{ kN} = 25 \times 10^3\text{ N}$, $\sigma_t = 56\text{ MPa}$, $\tau = 40\text{ MPa}$, $\sigma_c = 70\text{ MPa}$.

---

#### 1. Failure of the solid rod in tension
$$P = \frac{\pi}{4} d^2 \sigma_t \implies 25 \times 10^3 = \frac{\pi}{4} d^2 (56) = 43.98 d^2$$
$$d^2 = \frac{25 \times 10^3}{43.98} = 568.4 \implies d = 23.8\text{ mm} \quad \text{say } \mathbf{d = 28\text{ mm}}$$

##### Fixed Empirical Dimensions:
* Diameter of knuckle pin: $d_1 = d = \mathbf{28\text{ mm}}$
* Outer diameter of eye: $d_2 = 2d = 2 \times 28 = \mathbf{56\text{ mm}}$
* Diameter of pin head and collar: $d_3 = 1.5d = 1.5 \times 28 = \mathbf{42\text{ mm}}$
* Thickness of single eye or rod end: $t = 1.25d = 1.25 \times 28 = \mathbf{35\text{ mm}}$
* Thickness of fork: $t_1 = 0.75d = 0.75 \times 28 = \mathbf{21\text{ mm}}$

#### 2. Failure of the knuckle pin in shear
Considering double shear of knuckle pin:
$$P = 2 \cdot \frac{\pi}{4} d_1^2 \cdot \tau \implies 25 \times 10^3 = 2 \cdot \frac{\pi}{4} (28)^2 \tau = 1231.5 \tau$$
$$\tau = \frac{25 \times 10^3}{1231.5} = \mathbf{20.3\text{ N/mm}^2 = 20.3\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

#### 3. Failure of the single eye or rod end in tension
$$P = (d_2 - d_1) t \cdot \sigma_t \implies 25 \times 10^3 = (56 - 28) 35 \times \sigma_t = 980 \sigma_t$$
$$\sigma_t = \frac{25 \times 10^3}{980} = \mathbf{25.5\text{ N/mm}^2 = 25.5\text{ MPa}} \le 56\text{ MPa} \quad \text{(Safe)}$$

#### 4. Failure of the single eye or rod end in shearing
$$P = (d_2 - d_1) t \cdot \tau \implies 25 \times 10^3 = (56 - 28) 35 \times \tau = 980 \tau$$
$$\tau = \frac{25 \times 10^3}{980} = \mathbf{25.5\text{ N/mm}^2 = 25.5\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

#### 5. Failure of the single eye or rod end in crushing
$$P = d_1 \cdot t \cdot \sigma_c \implies 25 \times 10^3 = 28 \times 35 \times \sigma_c = 980 \sigma_c$$
$$\sigma_c = \frac{25 \times 10^3}{980} = \mathbf{25.5\text{ N/mm}^2 = 25.5\text{ MPa}} \le 70\text{ MPa} \quad \text{(Safe)}$$

#### 6. Failure of the forked end in tension
$$P = (d_2 - d_1) 2 t_1 \cdot \sigma_t \implies 25 \times 10^3 = (56 - 28) 2(21) \times \sigma_t = 1176 \sigma_t$$
$$\sigma_t = \frac{25 \times 10^3}{1176} = \mathbf{21.25\text{ N/mm}^2 = 21.25\text{ MPa}} \le 56\text{ MPa} \quad \text{(Safe)}$$

#### 7. Failure of the forked end in shear
$$P = (d_2 - d_1) 2 t_1 \cdot \tau \implies 25 \times 10^3 = (56 - 28) 2(21) \times \tau = 1176 \tau$$
$$\tau = \frac{25 \times 10^3}{1176} = \mathbf{21.25\text{ N/mm}^2 = 21.25\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

#### 8. Failure of the forked end in crushing
$$P = d_1 \cdot 2 t_1 \cdot \sigma_c \implies 25 \times 10^3 = 28 \times 2(21) \times \sigma_c = 1176 \sigma_c$$
$$\sigma_c = \frac{25 \times 10^3}{1176} = \mathbf{21.25\text{ N/mm}^2 = 21.25\text{ MPa}} \le 70\text{ MPa} \quad \text{(Safe)}$$
