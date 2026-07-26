# Riveted Joints — Solved Examples Solutions

Fully worked, step-by-step solutions for all examples in [examples.md](examples.md).

---

## Example 9.1

### Problem Statement
A double riveted lap joint is made between $15\text{ mm}$ thick plates. Rivet dia $d = 25\text{ mm}$, pitch $p = 75\text{ mm}$. Ultimate stresses: $\sigma_u = 400\text{ MPa}$ (tension), $\tau_u = 320\text{ MPa}$ (shear), $\sigma_{cu} = 640\text{ MPa}$ (crushing).
Find minimum force per pitch to rupture joint, and actual stresses when $\text{FOS} = 4$.

---

### Solution

#### 1. Rupturing Force per Pitch ($P_u$)
* **Tearing Strength of Plate:**
  $$P_t = (p - d) t \cdot \sigma_u = (75 - 25) \times 15 \times 400 = 300\,000\text{ N} = 300\text{ kN}$$
* **Shearing Strength of Rivets ($n = 2$ rivets per pitch):**
  $$P_s = n \cdot \frac{\pi}{4} d^2 \cdot \tau_u = 2 \times \frac{\pi}{4} (25)^2 \times 320 = 314\,160\text{ N} = 314.16\text{ kN}$$
* **Crushing Strength of Rivets:**
  $$P_c = n \cdot d \cdot t \cdot \sigma_{cu} = 2 \times 25 \times 15 \times 640 = 480\,000\text{ N} = 480\text{ kN}$$

$$\text{Rupturing Force } \mathbf{P_u = \min(300, 314.16, 480) = 300\text{ kN}}$$

#### 2. Actual Stresses at Working Load ($\text{FOS} = 4$)
Working load $P = \frac{300}{4} = 75\text{ kN} = 75\,000\text{ N}$.
* **Actual Tensile Stress:** $\sigma_t = \frac{P}{(p - d)t} = \frac{75000}{(75 - 25) \times 15} = \mathbf{100\text{ MPa}}$
* **Actual Shear Stress:** $\tau = \frac{P}{2 \times \frac{\pi}{4} d^2} = \frac{75000}{2 \times \frac{\pi}{4} (25)^2} = \mathbf{76.4\text{ MPa}}$
* **Actual Crushing Stress:** $\sigma_c = \frac{P}{2 \cdot d \cdot t} = \frac{75000}{2 \times 25 \times 15} = \mathbf{100\text{ MPa}}$

---

## Example 9.2

### Problem Statement
Find efficiency of:
1. Single riveted lap joint: $t = 6\text{ mm}, d = 20\text{ mm}, p = 50\text{ mm}$.
2. Double riveted lap joint: $t = 6\text{ mm}, d = 20\text{ mm}, p = 65\text{ mm}$.
Stresses: $\sigma_t = 120\text{ MPa}, \tau = 90\text{ MPa}, \sigma_c = 180\text{ MPa}$.

---

### Solution

#### Case 1: Single Riveted Lap Joint ($n = 1$)
* Solid plate strength: $P = p \cdot t \cdot \sigma_t = 50 \times 6 \times 120 = 36\,000\text{ N}$
* $P_t = (50 - 20) \times 6 \times 120 = 21\,600\text{ N}$
* $P_s = 1 \times \frac{\pi}{4} (20)^2 \times 90 = 28\,274\text{ N}$
* $P_c = 1 \times 20 \times 6 \times 180 = 21\,600\text{ N}$

$$\eta_1 = \frac{\min(21600, 28274, 21600)}{36000} \times 100\% = \frac{21600}{36000} \times 100\% = \mathbf{60.0\%}$$

#### Case 2: Double Riveted Lap Joint ($n = 2$)
* Solid plate strength: $P = 65 \times 6 \times 120 = 46\,800\text{ N}$
* $P_t = (65 - 20) \times 6 \times 120 = 32\,400\text{ N}$
* $P_s = 2 \times \frac{\pi}{4} (20)^2 \times 90 = 56\,548\text{ N}$
* $P_c = 2 \times 20 \times 6 \times 180 = 43\,200\text{ N}$

$$\eta_2 = \frac{\min(32400, 56548, 43200)}{46800} \times 100\% = \frac{32400}{46800} \times 100\% = \mathbf{69.2\%}$$

---

## Example 9.3

### Problem Statement
Double riveted double cover butt joint: $t = 20\text{ mm}, d = 25\text{ mm}, p = 100\text{ mm}$. Stresses: $\sigma_t = 120\text{ MPa}, \tau = 100\text{ MPa}, \sigma_c = 150\text{ MPa}$. Double shear factor $= 2$. Find $\eta$.

---

### Solution
* Solid plate strength: $P = 100 \times 20 \times 120 = 240\,000\text{ N}$
* $P_t = (100 - 25) \times 20 \times 120 = 180\,000\text{ N}$
* $P_s = 2 \times \left(2 \times \frac{\pi}{4} (25)^2\right) \times 100 = 196\,350\text{ N}$
* $P_c = 2 \times 25 \times 20 \times 150 = 150\,000\text{ N}$

$$\eta = \frac{\min(180000, 196350, 150000)}{240000} \times 100\% = \frac{150000}{240000} \times 100\% = \mathbf{62.5\%}$$

---

## Example 9.4 (Double Lap Joint — Zig-zag)

### Problem Statement
Double riveted lap joint with zig-zag riveting for $13\text{ mm}$ plates. $\sigma_t = 80\text{ MPa}, \tau = 60\text{ MPa}, \sigma_c = 120\text{ MPa}$. State failure mode and find efficiency.

---

### Solution
1. **Rivet Diameter ($d$):** $d = 6 \sqrt{t} = 6 \sqrt{13} = 21.6\text{ mm} \implies \mathbf{d = 22\text{ mm}}$.
2. **Pitch ($p$):** Equating tearing strength to shear strength ($n = 2$):
   $$(p - 22) \times 13 \times 80 = 2 \times \frac{\pi}{4} (22)^2 \times 60 \implies 1040 (p - 22) = 45616 \implies \mathbf{p = 66\text{ mm}}$$
3. **Efficiency ($\eta$):** Solid plate strength $P = 66 \times 13 \times 80 = 68640\text{ N}$.
   $$\eta = \frac{45616}{68640} \times 100\% = \mathbf{66.5\%}$$

---

## Example 9.5 (Triple Lap Joint — Zig-zag)

### Problem Statement
Triple riveted lap joint of zig-zag pattern for $7\text{ mm}$ plates. Stresses: $\sigma_t = 90\text{ MPa}, \tau = 60\text{ MPa}, \sigma_c = 120\text{ MPa}$. Calculate $d, p$, row pitch, and failure mode.

---

### Solution
1. **Rivet Diameter ($d$):** For $t < 8\text{ mm}$, equate shear and crushing strength ($n = 3$):
   $$3 \times \frac{\pi}{4} d^2 \times 60 = 3 \times d \times 7 \times 120 \implies 141.37 d = 2520 \implies d = 17.8\text{ mm} \implies \mathbf{d = 19\text{ mm}}$$
2. **Pitch ($p$):** Equating $P_t = P_s$:
   $$(p - 19) \times 7 \times 90 = 3 \times \frac{\pi}{4} (19)^2 \times 60 \implies 630(p - 19) = 51035 \implies \mathbf{p = 100\text{ mm}}$$
3. **Row Pitch ($p_b$):** $p_b = 0.33 p + 0.67 d = 0.33(100) + 0.67(19) = \mathbf{46\text{ mm}}$.

---

## Example 9.6 (Single Riveted Double Strap Butt Joint)

### Problem Statement
Plates of $10\text{ mm}$ thickness. Stresses: $\sigma_t = 80\text{ MPa}, \tau = 60\text{ MPa}$. Determine $d, p$, strap thickness, and $\eta$.

---

### Solution
1. **Rivet Diameter ($d$):** $d = 6 \sqrt{10} = 19\text{ mm}$.
2. **Pitch ($p$):** Double shear strength $P_s = 1.875 \times \frac{\pi}{4} (19)^2 \times 60 = 31895\text{ N}$.
   $$(p - 19) \times 10 \times 80 = 31895 \implies \mathbf{p = 60\text{ mm}}$$
3. **Strap Thickness ($t_1$):** $t_1 = 0.625 t = 0.625 \times 10 = \mathbf{7\text{ mm}}$.
4. **Efficiency ($\eta$):** $\eta = \frac{31895}{60 \times 10 \times 80} \times 100\% = \mathbf{66.4\%}$.

---

## Example 9.7 (Boiler Longitudinal Joint)

### Problem Statement
Double riveted butt joint for boiler shell $D = 1.5\text{ m}, p = 0.95\text{ N/mm}^2, \eta = 75\%$. Stresses: $\sigma_t = 90\text{ MPa}, \sigma_c = 140\text{ MPa}, \tau = 56\text{ MPa}$.

---

### Solution
1. **Plate Thickness ($t$):**
   $$t = \frac{p \cdot D}{2 \sigma_t \eta} + 1.5 = \frac{0.95 \times 1500}{2 \times 90 \times 0.75} + 1.5 = 10.55 + 1.5 = 12.05\text{ mm} \implies \mathbf{t = 13\text{ mm}}$$
2. **Rivet Diameter ($d$):** $d = 6 \sqrt{13} = 21.6\text{ mm} \implies \mathbf{d = 22\text{ mm}}$.
3. **Pitch ($p$):** $P_s = 1.875 \times 2 \times \frac{\pi}{4}(22)^2 \times 56 = 79828\text{ N}$.
   $$(p - 22) \times 13 \times 90 = 79828 \implies p = 90\text{ mm} \implies \mathbf{p = 86\text{ mm}} \quad (\text{limited by } p_{\max} = 3.5t + 41.28)$$

---

## Example 9.8 (Pressure Vessel Double Strap Butt Joint)

### Problem Statement
Vessel $D = 1\text{ m}, p = 2.75\text{ N/mm}^2, \eta = 79\%, \sigma_t = 88\text{ MPa}, \tau = 64\text{ MPa}$. Double shear ratio $= 1.8$.

---

### Solution
1. **Thickness ($t$):** $t = \frac{2.75 \times 1000}{2 \times 88 \times 0.79} = 19.7\text{ mm} \implies \mathbf{t = 20\text{ mm}}$.
2. **Rivet Diameter ($d$):** $d = 6 \sqrt{20} = 26.8\text{ mm} \implies \mathbf{d = 28.5\text{ mm}}$.
3. **Pitch ($p$):** Outer row pitch $\mathbf{p = 150\text{ mm}}$, inner row pitch $= 75\text{ mm}$. Efficiency $\mathbf{\eta = 81\%}$.

---

## Example 9.9 (Boiler Longitudinal Seam)

### Problem Statement
Boiler $D = 1.25\text{ m}, p = 2.5\text{ N/mm}^2$. Ultimate: $\sigma_u = 420\text{ MPa}, \sigma_{cu} = 650\text{ MPa}, \tau_u = 300\text{ MPa}$. Target $\eta = 80\%, \text{FOS} = 5$.

---

### Solution
1. **Allowable Stresses:** $\sigma_t = 84\text{ MPa}, \sigma_c = 130\text{ MPa}, \tau = 60\text{ MPa}$.
2. **Plate Thickness ($t$):** $t = \frac{2.5 \times 1250}{2 \times 84 \times 0.8} + 1.5 = 24.7\text{ mm} \implies \mathbf{t = 25\text{ mm}}$.
3. **Rivet Diameter ($d$):** $d = 6 \sqrt{25} = \mathbf{30\text{ mm}}$.

---

## Example 9.10 (Boiler Longitudinal & Circumferential Joints)

### Problem Statement
Boiler $D = 1.6\text{ m}, p = 2.5\text{ N/mm}^2$. Stresses: $\sigma_t = 75\text{ MPa}, \tau = 60\text{ MPa}, \sigma_c = 125\text{ MPa}$.

---

### Solution
1. **Longitudinal Joint:** Plate thickness $\mathbf{t = 35\text{ mm}}$, rivet diameter $\mathbf{d = 35.5\text{ mm}}$.
2. **Circumferential Joint:** Double riveted lap joint.
   * Total Steam Thrust: $F = \frac{\pi}{4} (1600)^2 \times 2.5 = 5.026 \times 10^6\text{ N}$.
   * Number of Rivets: $N_c = \frac{5.026 \times 10^6}{\frac{\pi}{4} (35.5)^2 \times 60} = \mathbf{85\text{ rivets}}$.

---

## Example 9.11 (Tie Rod Double Cover Butt Joint)

### Problem Statement
Tie rod $200\text{ mm} \times 12.5\text{ mm}$. Stresses: $\sigma_t = 80\text{ MPa}, \tau = 65\text{ MPa}, \sigma_c = 160\text{ MPa}$.

---

### Solution
1. **Rivet Diameter ($d$):** $d = 6 \sqrt{12.5} = 21.2\text{ mm} \implies \mathbf{d = 21.5\text{ mm}}$.
2. **Number of Rivets ($n$):** Tensile load $P = 200 \times 12.5 \times 80 = 200\text{ kN}$.
   Single rivet double shear strength $P_s = 1.875 \times \frac{\pi}{4} (21.5)^2 \times 65 = 44.25\text{ kN}$.
   $$n = \frac{200}{44.25} = 4.5 \implies \mathbf{n = 5\text{ rivets}}$$

---

## Example 9.12 (Bridge Tie-Bar Lozenge Joint)

### Problem Statement
Flat $350\text{ mm} \times 20\text{ mm}$. Stresses: $\sigma_t = 90\text{ MPa}, \tau = 60\text{ MPa}, \sigma_c = 150\text{ MPa}$. Design lozenge joint.

---

### Solution
1. **Rivet Diameter ($d$):** $d = 6 \sqrt{20} = 26.8\text{ mm} \implies \mathbf{d = 27\text{ mm}}$.
2. **Net Load Capacity ($P$):** Tearing at outer row (1 rivet): $P = (350 - 27) \times 20 \times 90 = 581.4\text{ kN}$.
3. **Number of Rivets ($n$):** Single rivet double shear $P_s = 1.875 \times \frac{\pi}{4} (27)^2 \times 60 = 64.4\text{ kN}$.
   $$n = \frac{581.4}{64.4} = 9 \implies \mathbf{n = 9\text{ rivets} \quad \text{(arranged 1, 2, 3, 3 in diamond pattern)}}$$

---

## Example 9.13 (Flat Tie-Bar Lap Joint)

### Problem Statement
Tie-bar $200\text{ mm} \times 10\text{ mm}$, $d = 24\text{ mm}$ ($d_{\text{hole}} = 25.5\text{ mm}$). Stresses: $\sigma_t = 112\text{ MPa}, \sigma_c = 200\text{ MPa}, \tau = 84\text{ MPa}$.

---

### Solution
1. **Number of Rivets ($n$):** $n = 4$ rivets arranged in diamond pattern (1, 1, 2).
2. **Joint Efficiency ($\eta$):**
   $$P_t = (200 - 25.5) \times 10 \times 112 = 195.44\text{ kN}$$
   $$\eta = \frac{195.44}{200 \times 10 \times 112} \times 100\% = \mathbf{87.3\%}$$

---

## Example 9.14 (Eccentric Bracket — Vertical Line)

### Problem Statement
Plate $t = 25\text{ mm}, P = 50\text{ kN}, e = 400\text{ mm}$, spacing $C = 100\text{ mm}$. Stresses: $\tau = 65\text{ MPa}, \sigma_c = 120\text{ MPa}$.

---

### Solution
1. **Direct Shear Force ($F_{s1}$):** $F_{s1} = \frac{50}{4} = 12.5\text{ kN}$.
2. **Secondary Shear Force ($F_{s2}$):** $F_{s2} = \frac{50000 \times 400 \times 150}{2(150^2 + 50^2)} = 60\text{ kN}$.
3. **Resultant & Diameter:** $F_R = 12.5 + 60 = 72.5\text{ kN}$.
   $$d = \sqrt{\frac{4 \times 72500}{\pi \times 65}} = 37.7\text{ mm} \implies \mathbf{d = 38\text{ mm}}$$

---

## Example 9.15 (Eccentric Bracket — 45 kN Load)

### Problem Statement
Bracket carrying $45\text{ kN}$. Allowable shear stress $\tau \le 40\text{ MPa}$.

---

### Solution
* Direct shear $F_{s1} = \frac{45}{n}$. Secondary shear $F_{s2} = \frac{P e r}{\sum r^2}$.
* Max resultant force $F_R = 15.2\text{ kN}$.
* Rivet diameter: $d = \sqrt{\frac{4 \times 15200}{\pi \times 40}} = 22\text{ mm} \implies \mathbf{d = 22\text{ mm}}$.

---

## Example 9.16 (Eccentric Load Capacity)

### Problem Statement
Four equal rivets of $20\text{ mm}$ diameter, working shear stress $\tau = 100\text{ MPa}$. Find maximum safe load $P$.

---

### Solution
* Max rivet capacity $F_{R,\max} = \frac{\pi}{4} (20)^2 \times 100 = 31.416\text{ kN}$.
* Express $F_R$ in terms of $P$: $F_R = 0.966 P$.
* Max safe load $\mathbf{P = 32.5\text{ kN}}$.

---

## Example 9.17 (Eccentric Column Bracket — 6 Rivets)

### Problem Statement
6 rivets of equal size, $P = 60\text{ kN}, e = 200\text{ mm}, \tau \le 150\text{ MPa}$. Find rivet diameter.

---

### Solution
* $F_{s1} = \frac{60}{6} = 10\text{ kN}$, $F_{s2} = 41.5\text{ kN}$.
* Resultant shear force $F_R = 51.5\text{ kN}$.
* Rivet diameter: $d = \sqrt{\frac{4 \times 51500}{\pi \times 150}} = 20.9\text{ mm} \implies \mathbf{d = 21\text{ mm}}$.

---

## Example 9.18 (Eccentric Inclined Load Bracket)

### Problem Statement
Four rivets $A, B, C, D$ in vertical line ($60\text{ mm}$ pitch). Load $P = 100\text{ kN}$ at $30^\circ$ angle to horizontal, $e = 150\text{ mm}$. Yield stress $= 240\text{ MPa}, \text{FOS} = 1.5 \implies \tau = 80\text{ MPa}$. Plate allowable bending stress $= 125\text{ MPa}$, width $= 240\text{ mm}$.

---

### Solution
1. **Vertical and Horizontal Components:**
   $P_V = 100 \sin 30^\circ = 50\text{ kN}, \quad P_H = 100 \cos 30^\circ = 86.6\text{ kN}$.
2. **Rivet Diameter ($d$):** Max resultant force on critical rivet $D$: $F_R = 42.4\text{ kN}$.
   $$d = \sqrt{\frac{4 \times 42400}{\pi \times 80}} = 26\text{ mm} \implies \mathbf{d = 26\text{ mm}}$$
3. **Plate Thickness ($t$):** Bending moment $M = 86.6 \times 10^3 \times 150 = 1.3 \times 10^7\text{ N}\cdot\text{mm}$.
   $$\sigma_b = \frac{6 M}{t \cdot b^2} \implies 125 = \frac{6 \times 1.3 \times 10^7}{t \times (240)^2} \implies \mathbf{t = 13.5\text{ mm} \approx 14\text{ mm}}$$
