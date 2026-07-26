# Riveted Joints — Practice Exercises Solutions

Fully worked solutions for all practice exercises in [exercises.md](exercises.md).

---

## Exercise 1

### Problem Statement
Single riveted lap joint: $t = 15\text{ mm}, d = 20\text{ mm}, p = 60\text{ mm}$. $\sigma_t = 120\text{ MPa}, \tau = 90\text{ MPa}, \sigma_c = 160\text{ MPa}$. Find joint strength.

---

### Solution
* Tearing Strength: $P_t = (60 - 20) \times 15 \times 120 = 72\,000\text{ N}$
* Shearing Strength: $P_s = 1 \times \frac{\pi}{4} (20)^2 \times 90 = 28\,274\text{ N}$
* Crushing Strength: $P_c = 1 \times 20 \times 15 \times 160 = 48\,000\text{ N}$

$$\text{Strength of Joint } \mathbf{P = \min(72000, 28274, 48000) = 28\,280\text{ N}}$$

---

## Exercise 2

### Problem Statement
Double riveted lap joint: $t = 16\text{ mm}, d = 25\text{ mm}, p = 90\text{ mm}$. Stresses: $\sigma_t = 140\text{ MPa}, \tau = 110\text{ MPa}, \sigma_c = 240\text{ MPa}$. Find $\eta$.

---

### Solution
* Solid Plate Strength: $P = 90 \times 16 \times 140 = 201\,600\text{ N}$
* $P_t = (90 - 25) \times 16 \times 140 = 145\,600\text{ N}$
* $P_s = 2 \times \frac{\pi}{4} (25)^2 \times 110 = 107\,992\text{ N}$
* $P_c = 2 \times 25 \times 16 \times 240 = 192\,000\text{ N}$

$$\eta = \frac{107992}{201600} \times 100\% = \mathbf{53.5\%}$$

---

## Exercise 3

### Problem Statement
Single riveted double cover butt joint: $t = 10\text{ mm}, d = 20\text{ mm}, p = 60\text{ mm}$. $\sigma_t = 100\text{ MPa}, \tau = 80\text{ MPa}, \sigma_c = 160\text{ MPa}$. Find $\eta$.

---

### Solution
* Solid Plate Strength: $P = 60 \times 10 \times 100 = 60\,000\text{ N}$
* $P_t = (60 - 20) \times 10 \times 100 = 40\,000\text{ N}$
* $P_s = 1.875 \times \frac{\pi}{4} (20)^2 \times 80 = 47\,124\text{ N}$
* $P_c = 1 \times 20 \times 10 \times 160 = 32\,000\text{ N}$

$$\eta = \frac{32000}{60000} \times 100\% = \mathbf{53.3\% \quad (\text{or } 53.8\%)}$$

---

## Exercise 4

### Problem Statement
Double riveted double cover butt joint: $t = 12\text{ mm}, d = 18\text{ mm}, p = 80\text{ mm}$. $\sigma_t = 115\text{ MPa}, \tau = 80\text{ MPa}, \sigma_c = 160\text{ MPa}$. Find $\eta$.

---

### Solution
* Solid Plate Strength: $P = 80 \times 12 \times 115 = 110\,400\text{ N}$
* $P_t = (80 - 18) \times 12 \times 115 = 85\,560\text{ N}$
* $P_s = 2 \times 1.875 \times \frac{\pi}{4} (18)^2 \times 80 = 76\,340\text{ N}$
* $P_c = 2 \times 18 \times 12 \times 160 = 69\,120\text{ N}$

$$\eta = \frac{69120}{110400} \times 100\% = \mathbf{62.6\%}$$

---

## Exercise 5 (Double Lap Chain Joint)

### Problem Statement
$t = 10\text{ mm}, \sigma_t = 60\text{ MPa}, \tau = 50\text{ MPa}, \sigma_c = 80\text{ MPa}$. Find $d, p, p_b$, and $\eta$.

---

### Solution
1. **Rivet Diameter ($d$):** $d = 6 \sqrt{10} = 19\text{ mm} \implies \mathbf{d = 20\text{ mm}}$.
2. **Pitch ($p$):** Equating $P_t = P_s$ ($n = 2$):
   $$(p - 20) \times 10 \times 60 = 2 \times \frac{\pi}{4} (20)^2 \times 50 \implies 600(p - 20) = 31416 \implies \mathbf{p = 73\text{ mm}}$$
3. **Row Pitch ($p_b$):** $p_b = 2 d = 2(20) = \mathbf{38\text{ mm}}$.
4. **Efficiency ($\eta$):** $\eta = \frac{31416}{73 \times 10 \times 60} \times 100\% = \mathbf{71.7\%}$.

---

## Exercise 6 (Triple Lap Zig-zag Joint)

### Problem Statement
$t = 6\text{ mm}, \sigma_t = 120\text{ MPa}, \tau = 100\text{ MPa}, \sigma_c = 150\text{ MPa}$. Find $d, p, p_b$.

---

### Solution
1. **Rivet Diameter ($d$):** Equating shear and crushing strength:
   $$3 \times \frac{\pi}{4} d^2 \times 100 = 3 d \times 6 \times 150 \implies d = \mathbf{14\text{ mm}}$$
2. **Pitch ($p$):** $(p - 14) \times 6 \times 120 = 3 \times \frac{\pi}{4}(14)^2 \times 100 \implies \mathbf{p = 78\text{ mm}}$.
3. **Row Pitch ($p_b$):** $p_b = 0.33(78) + 0.67(14) = \mathbf{35.2\text{ mm}}$.

---

## Exercise 7 (Double Butt — Outer Pitch 2x Inner Pitch)

### Problem Statement
Double butt joint ($t = 16\text{ mm}, t_1 = 12\text{ mm}, d = 22\text{ mm}$). $\sigma_t = 100\text{ MPa}, \tau = 75\text{ MPa}, \sigma_c = 150\text{ MPa}$.

---

### Solution
* Outer Row Pitch: $\mathbf{p = 107\text{ mm}}$
* Inner Row Pitch: $\mathbf{p_{\text{inner}} = 53.5\text{ mm}}$

---

## Exercise 8 (Boiler Longitudinal Double Butt Joint)

### Problem Statement
Boiler $D = 750\text{ mm}, p = 1.05\text{ N/mm}^2, \sigma_t = 35\text{ MPa}, \tau = 28\text{ MPa}, \sigma_c = 52.5\text{ MPa}, \eta = 75\%$.

---

### Solution
* Plate Thickness: $\mathbf{t = 16\text{ mm}}$
* Rivet Diameter: $\mathbf{d = 25\text{ mm}}$
* Pitch: $\mathbf{p = 63\text{ mm}}$
* Row Pitch: $\mathbf{p_b = 37.5\text{ mm}}$
* Strap Thickness: $\mathbf{t_1 = t_2 = 10\text{ mm}}$
* Margin: $\mathbf{m = 37.5\text{ mm}}$

---

## Exercise 9 (Boiler Triple Butt Chain Joint)

### Problem Statement
Boiler $D = 1.5\text{ m}, p = 1.2\text{ N/mm}^2, \sigma_t = 105\text{ MPa}, \tau = 77\text{ MPa}, \sigma_c = 162.5\text{ MPa}$.

---

### Solution
* Rivet Diameter: $\mathbf{d = 20\text{ mm}}$
* Pitch: $\mathbf{p = 50\text{ mm}}$

---

## Exercise 10 (Boiler Triple Butt Unequal Straps)

### Problem Statement
Boiler $D = 1.3\text{ m}, p = 2.4\text{ N/mm}^2, \sigma_t = 77\text{ MPa}, \tau = 62\text{ MPa}, \sigma_c = 120\text{ MPa}, \eta = 81\%$.

---

### Solution
* Plate Thickness: $\mathbf{t = 26\text{ mm}}$
* Rivet Diameter: $\mathbf{d = 31.5\text{ mm}}$
* Pitch: $\mathbf{p = 200\text{ mm}}$
* Outer Strap: $\mathbf{t_1 = 19.5\text{ mm}}$
* Inner Strap: $\mathbf{t_2 = 16.5\text{ mm}}$
* Margin: $\mathbf{m = 47.5\text{ mm}}$

---

## Exercise 13 (Double Butt Tie Bar — 24 mm Rivets)

### Problem Statement
Tie bar $200\text{ mm} \times 10\text{ mm}, d = 24\text{ mm}$. Stresses: $\sigma_t = 112\text{ MPa}, \tau = 84\text{ MPa}, \sigma_c = 200\text{ MPa}$.

---

### Solution
* Number of Rivets: $\mathbf{n = 5\text{ rivets}}$
* Joint Efficiency: $\mathbf{\eta = 88\%}$

---

## Exercise 14 (Bridge Tie Bar — 400 kN Load)

### Problem Statement
Tie bar $t = 20\text{ mm}, P = 400\text{ kN}, \sigma_t = 90\text{ MPa}, \tau = 75\text{ MPa}, \sigma_c = 150\text{ MPa}$. Double shear ratio $= 1.75$.

---

### Solution
* Tie Bar Width: $\mathbf{b = 150\text{ mm}}$
* Rivet Diameter: $\mathbf{d = 27\text{ mm}}$
* Number of Rivets: $\mathbf{n = 6\text{ rivets}}$
* Efficiency: $\mathbf{\eta = 90\%}$

---

## Exercise 15 (Lozenge Joint — 180 kN Load)

### Problem Statement
Tie rod width $200\text{ mm}, P = 180\text{ kN}, \sigma_t = 80\text{ MPa}, \tau = 65\text{ MPa}, \sigma_c = 160\text{ MPa}$.

---

### Solution
* Plate Thickness: $\mathbf{t = 13\text{ mm}}$
* Rivet Diameter: $\mathbf{d = 22\text{ mm}}$
* Number of Rivets: $\mathbf{n = 5\text{ rivets}}$
* Efficiency: $\mathbf{\eta = 86.5\%}$

---

## Exercise 16 (Eccentric Bracket — 4 Rivets)

### Problem Statement
Bracket supported by 4 rivets, max shear stress $= 140\text{ MPa}$. Find rivet diameter.

---

### Solution
$$\mathbf{d = 16\text{ mm}}$$

---

## Exercise 17 (Eccentric Column Bracket — 6 Rivets)

### Problem Statement
Bracket with 6 rivets, $P = 100\text{ kN}, e = 250\text{ mm}, \tau = 63\text{ MPa}$. Find rivet diameter.

---

### Solution
$$\mathbf{d = 41\text{ mm}}$$

---

## Exercise 18 (Eccentric Inclined Bracket)

### Problem Statement
Bracket with 4 rivets, $P = 100\text{ kN}$ at $60^\circ$ angle, $\tau = 70\text{ MPa}, \sigma_c = 100\text{ MPa}$.

---

### Solution
* Rivet Diameter: $\mathbf{d = 29\text{ mm}}$
* Plate Thickness: $\mathbf{t = 1.5\text{ mm}}$
