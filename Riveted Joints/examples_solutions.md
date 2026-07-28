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

## Example 9.3 (Double Riveted Double Cover Butt Joint)

### Problem Statement
A double riveted double cover butt joint in plates $20\text{ mm}$ thick is made with $25\text{ mm}$ diameter rivets at $100\text{ mm}$ pitch. The permissible stresses are:
$$\sigma_t = 120\text{ MPa}, \quad \tau = 100\text{ MPa}, \quad \sigma_c = 150\text{ MPa}$$
Find the efficiency of joint, taking the strength of the rivet in double shear as twice than that of single shear.

---

### Solution

#### Given Data:
* Plate thickness ($t$): $20\text{ mm}$
* Rivet diameter ($d$): $25\text{ mm}$
* Pitch ($p$): $100\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $120\text{ MPa} = 120\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $100\text{ MPa} = 100\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $150\text{ MPa} = 150\text{ N/mm}^2$

#### 1. Tearing Resistance of Plate ($P_t$)
$$P_t = (p - d) t \cdot \sigma_t$$
$$P_t = (100 - 25) \times 20 \times 120 = \mathbf{180\,000\text{ N}}$$

#### 2. Shearing Resistance of Rivets ($P_s$)
Since the joint is double riveted ($n = 2$) in double shear:
$$P_s = n \times 2 \times \frac{\pi}{4} d^2 \cdot \tau$$
$$P_s = 2 \times 2 \times \frac{\pi}{4} (25)^2 \times 100 = \mathbf{196\,375\text{ N}}$$

#### 3. Crushing Resistance of Rivets ($P_c$)
Since the joint is double riveted ($n = 2$):
$$P_c = n \cdot d \cdot t \cdot \sigma_c$$
$$P_c = 2 \times 25 \times 20 \times 150 = \mathbf{150\,000\text{ N}}$$

#### 4. Strength of Unriveted Solid Plate ($P$)
$$P = p \cdot t \cdot \sigma_t$$
$$P = 100 \times 20 \times 120 = \mathbf{240\,000\text{ N}}$$

#### 5. Efficiency of Joint ($\eta$)
$$\text{Strength of Joint} = \min(P_t, P_s, P_c) = 150\,000\text{ N}$$
$$\eta = \frac{\text{Least of } P_t, P_s, P_c}{P} = \frac{150\,000}{240\,000} = 0.625 = \mathbf{62.5\%}$$

$$\mathbf{\text{Final Answer: Efficiency of joint } \eta = 62.5\%}$$

---

## Example 9.4 (Double Riveted Lap Joint with Zig-Zag Riveting)

### Problem Statement
A double riveted lap joint with zig-zag riveting is to be designed for $13\text{ mm}$ thick plates. Assume:
$$\sigma_t = 80\text{ MPa}, \quad \tau = 60\text{ MPa}, \quad \sigma_c = 120\text{ MPa}$$
State how the joint will fail and find the efficiency of the joint.

---

### Solution

#### Given Data:
* Plate thickness ($t$): $13\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $80\text{ MPa} = 80\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $60\text{ MPa} = 60\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $120\text{ MPa} = 120\text{ N/mm}^2$

#### 1. Diameter of Rivet ($d$)
Since thickness of plate $t > 8\text{ mm}$, Unwins' formula gives diameter of rivet hole:
$$d = 6 \sqrt{t} = 6 \sqrt{13} = 21.6\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole size is $d = 23\text{ mm}$ (corresponding rivet diameter $22\text{ mm}$).

#### 2. Pitch of Rivets ($p$)
Since the joint is double riveted lap joint with zig-zag riveting ($n = 2$ in single shear):
Tearing resistance of plate ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 23) \times 13 \times 80 = (p - 23) \times 1040\text{ N}$$

Shearing resistance of rivets ($P_s$):
$$P_s = n \times \frac{\pi}{4} d^2 \cdot \tau = 2 \times \frac{\pi}{4} (23)^2 \times 60 = 49\,864\text{ N}$$

Equating $P_t = P_s$:
$$(p - 23) \times 1040 = 49\,864 \implies p - 23 = 48 \implies p = 71\text{ mm}$$

Maximum pitch ($p_{\max}$):
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 2.62 \times 13 + 41.28 = 75.28\text{ mm}$$
Since $p_{\max} > p$, adopt pitch $p = \mathbf{71\text{ mm}}$.

#### 3. Distance Between Rows of Rivets ($p_b$)
For zig-zag riveting:
$$p_b = 0.33 p + 0.67 d = 0.33 \times 71 + 0.67 \times 23 = 38.8\text{ mm} \approx \mathbf{40\text{ mm}}$$

#### 4. Margin ($m$)
$$m = 1.5 d = 1.5 \times 23 = 34.5\text{ mm} \approx \mathbf{35\text{ mm}}$$

#### 5. Failure Mode Analysis
* Tearing resistance $P_t = (71 - 23) \times 13 \times 80 = 49\,920\text{ N}$
* Shearing resistance $P_s = 49\,864\text{ N}$
* Crushing resistance $P_c = n \cdot d \cdot t \cdot \sigma_c = 2 \times 23 \times 13 \times 120 = 71\,760\text{ N}$

Least of $P_t, P_s, P_c$ is $P_s = 49\,864\text{ N}$.
Hence, **the joint will fail due to shearing of the rivets**.

#### 6. Efficiency of Joint ($\eta$)
Strength of unriveted solid plate ($P$):
$$P = p \cdot t \cdot \sigma_t = 71 \times 13 \times 80 = 73\,840\text{ N}$$

$$\eta = \frac{P_s}{P} = \frac{49\,864}{73\,840} = 0.675 = \mathbf{67.5\%}$$

$$\mathbf{\text{Final Answers: Hole size } d = 23\text{ mm}, \text{ Pitch } p = 71\text{ mm}, \text{ Failure Mode: Shearing}, \text{ Efficiency } \eta = 67.5\%}$$

---

## Example 9.5 (Triple Riveted Lap Joint with Zig-Zag Pattern)

### Problem Statement
Two plates of $7\text{ mm}$ thickness are connected by a triple riveted lap joint of zig-zag pattern. Calculate the rivet diameter, rivet pitch and distance between rows of rivets for the joint. Also state the mode of failure of the joint. The safe working stresses are as follows:
$$\sigma_t = 90\text{ MPa}, \quad \tau = 60\text{ MPa}, \quad \sigma_c = 120\text{ MPa}$$

---

### Solution

#### Given Data:
* Plate thickness ($t$): $7\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $90\text{ MPa} = 90\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $60\text{ MPa} = 60\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $120\text{ MPa} = 120\text{ N/mm}^2$

#### 1. Diameter of Rivet ($d$)
Since plate thickness $t < 8\text{ mm}$, diameter of rivet hole $d$ is obtained by equating shearing resistance ($P_s$) to crushing resistance ($P_c$) of rivets ($n = 3$ in single shear):
$$P_s = n \times \frac{\pi}{4} d^2 \cdot \tau = 3 \times \frac{\pi}{4} d^2 \times 60 = 141.4 d^2\text{ N}$$
$$P_c = n \cdot d \cdot t \cdot \sigma_c = 3 \times d \times 7 \times 120 = 2520 d\text{ N}$$

Equating $P_s = P_c$:
$$141.4 d^2 = 2520 d \implies d = \frac{2520}{141.4} = 17.8\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{19\text{ mm}}$ (corresponding nominal rivet diameter $= 18\text{ mm}$).

#### 2. Pitch of Rivets ($p$)
Tearing resistance of plate ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 19) \times 7 \times 90 = 630 (p - 19)\text{ N}$$

Shearing resistance of rivets ($P_s$):
$$P_s = 141.4 (19)^2 = 51\,045\text{ N}$$

Equating $P_t = P_s$:
$$630 (p - 19) = 51\,045 \implies p - 19 = 81 \implies p = 100\text{ mm}$$

Maximum pitch per I.B.R. ($p_{\max}$):
For lap joint with 3 rivets per pitch, $C = 3.47$:
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 3.47 \times 7 + 41.28 = 65.57\text{ mm} \approx 66\text{ mm}$$
Since $p_{\max} < p$, adopt pitch $p = p_{\max} = \mathbf{66\text{ mm}}$.

#### 3. Distance Between Rows of Rivets ($p_b$)
For zig-zag pattern:
$$p_b = 0.33 p + 0.67 d = 0.33 \times 66 + 0.67 \times 19 = \mathbf{34.5\text{ mm}}$$

#### 4. Mode of Failure of Joint
* Tearing resistance $P_t = (66 - 19) \times 7 \times 90 = 29\,610\text{ N}$
* Shearing resistance $P_s = 3 \times \frac{\pi}{4} (19)^2 \times 60 = 51\,045\text{ N}$
* Crushing resistance $P_c = 3 \times 19 \times 7 \times 120 = 47\,880\text{ N}$

The least value of $P_t, P_s, P_c$ is $P_t = 29\,610\text{ N}$.
Hence, **the joint will fail due to tearing of the plate**.

$$\mathbf{\text{Final Answers: Hole size } d = 19\text{ mm}, \text{ Pitch } p = 66\text{ mm}, \text{ Row Pitch } p_b = 34.5\text{ mm}, \text{ Failure Mode: Tearing of Plate}}$$

---

## Example 9.6 (Single Riveted Double Strap Butt Joint)

### Problem Statement
Two plates of $10\text{ mm}$ thickness each are to be joined by means of a single riveted double strap butt joint. Determine the rivet diameter, rivet pitch, strap thickness and efficiency of the joint. Take the working stresses in tension and shearing as $80\text{ MPa}$ and $60\text{ MPa}$ respectively.

---

### Solution

#### Given Data:
* Plate thickness ($t$): $10\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $80\text{ MPa} = 80\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $60\text{ MPa} = 60\text{ N/mm}^2$

#### 1. Diameter of Rivet ($d$)
Since plate thickness $t > 8\text{ mm}$, Unwin's formula gives diameter of rivet hole:
$$d = 6 \sqrt{t} = 6 \sqrt{10} = 18.97\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{19\text{ mm}}$ (corresponding nominal rivet diameter $= 18\text{ mm}$).

#### 2. Pitch of Rivets ($p$)
Since the joint is a single riveted double strap butt joint ($n = 1$), rivets are in double shear (factor $= 1.875$).
Tearing resistance of plate ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 19) \times 10 \times 80 = 800 (p - 19)\text{ N}$$

Shearing resistance of rivets ($P_s$):
$$P_s = n \times 1.875 \times \frac{\pi}{4} d^2 \cdot \tau = 1 \times 1.875 \times \frac{\pi}{4} (19)^2 \times 60 = \mathbf{31\,900\text{ N}}$$

Equating $P_t = P_s$:
$$800 (p - 19) = 31\,900 \implies p - 19 = \frac{31\,900}{800} = 39.87 \implies p = 58.87\text{ mm} \approx 60\text{ mm}$$

Maximum pitch per I.B.R. ($p_{\max}$):
For double strap butt joint with $n = 1$, $C = 1.75$:
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 1.75 \times 10 + 41.28 = 58.78\text{ mm} \approx 60\text{ mm}$$
Adopt pitch $p = p_{\max} = \mathbf{60\text{ mm}}$.

#### 3. Thickness of Cover Plates / Straps ($t_1$)
$$t_1 = 0.625 t = 0.625 \times 10 = \mathbf{6.25\text{ mm}}$$

#### 4. Efficiency of Joint ($\eta$)
Tearing resistance of plate:
$$P_t = (60 - 19) \times 10 \times 80 = 32\,800\text{ N}$$

Shearing resistance of rivets:
$$P_s = 31\,900\text{ N}$$

Strength of joint $= \min(P_t, P_s) = 31\,900\text{ N}$

Strength of unriveted solid plate per pitch length ($P$):
$$P = p \cdot t \cdot \sigma_t = 60 \times 10 \times 80 = 48\,000\text{ N}$$

Efficiency of joint:
$$\eta = \frac{P_s}{P} = \frac{31\,900}{48\,000} = 0.665 = \mathbf{66.5\%}$$

$$\mathbf{\text{Final Answers: Hole size } d = 19\text{ mm}, \text{ Pitch } p = 60\text{ mm}, \text{ Strap Thickness } t_1 = 6.25\text{ mm}, \text{ Efficiency } \eta = 66.5\%}$$

---

## Example 9.7 (Boiler Longitudinal Double Riveted Double Strap Butt Joint)

### Problem Statement
Design a double riveted butt joint with two cover plates for the longitudinal seam of a boiler shell $1.5\text{ m}$ in diameter subjected to a steam pressure of $0.95\text{ N/mm}^2$. Assume joint efficiency as $75\%$, allowable tensile stress in the plate $90\text{ MPa}$, compressive stress $140\text{ MPa}$, and shear stress in the rivet $56\text{ MPa}$.

---

### Solution

#### Given Data:
* Boiler shell diameter ($D$): $1.5\text{ m} = 1500\text{ mm}$
* Internal steam pressure ($P$): $0.95\text{ N/mm}^2$
* Target joint efficiency ($\eta_l$): $75\% = 0.75$
* Permissible tensile stress ($\sigma_t$): $90\text{ MPa} = 90\text{ N/mm}^2$
* Permissible compressive/crushing stress ($\sigma_c$): $140\text{ MPa} = 140\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $56\text{ MPa} = 56\text{ N/mm}^2$

#### 1. Thickness of Boiler Shell Plate ($t$)
$$t = \frac{P \cdot D}{2 \sigma_t \cdot \eta_l} + 1\text{ mm} = \frac{0.95 \times 1500}{2 \times 90 \times 0.75} + 1 = 10.55 + 1 = 11.55\text{ mm} \approx \mathbf{12\text{ mm}}$$

#### 2. Diameter of Rivet Hole ($d$)
Since plate thickness $t = 12\text{ mm} > 8\text{ mm}$, Unwin's formula gives:
$$d = 6 \sqrt{t} = 6 \sqrt{12} = 20.8\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{21\text{ mm}}$ (corresponding nominal rivet diameter $= 20\text{ mm}$).

#### 3. Pitch of Rivets ($p$)
Since the joint is double riveted double strap butt joint ($n = 2$ per pitch in double shear, factor $= 1.875$):
Tearing resistance of plate ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 21) \times 12 \times 90 = 1080 (p - 21)\text{ N}$$

Shearing resistance of rivets ($P_s$):
$$P_s = n \times 1.875 \times \frac{\pi}{4} d^2 \cdot \tau = 2 \times 1.875 \times \frac{\pi}{4} (21)^2 \times 56 = \mathbf{72\,745\text{ N}}$$

Equating $P_t = P_s$:
$$1080 (p - 21) = 72\,745 \implies p - 21 = \frac{72\,745}{1080} = 67.35 \implies p = 88.35\text{ mm} \approx 90\text{ mm}$$

Maximum pitch per I.B.R. ($p_{\max}$):
For double riveted double strap butt joint with $n = 2$, $C = 3.50$:
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 3.5 \times 12 + 41.28 = 83.28\text{ mm} \approx 84\text{ mm}$$
Since calculated $p > p_{\max}$, adopt pitch $p = p_{\max} = \mathbf{84\text{ mm}}$.

#### 4. Distance Between Rows of Rivets ($p_b$)
Assuming zig-zag riveting, according to I.B.R.:
$$p_b = 0.33 p + 0.67 d = 0.33 \times 84 + 0.67 \times 21 = 41.8\text{ mm} \approx \mathbf{42\text{ mm}}$$

#### 5. Thickness of Cover Plates / Straps ($t_1$)
According to I.B.R., for equal width cover straps:
$$t_1 = 0.625 t = 0.625 \times 12 = \mathbf{7.5\text{ mm}}$$

#### 6. Margin ($m$)
$$m = 1.5 d = 1.5 \times 21 = 31.5\text{ mm} \approx \mathbf{32\text{ mm}}$$

#### 7. Efficiency of Designed Joint ($\eta$)
* Tearing resistance $P_t = (84 - 21) \times 12 \times 90 = 68\,040\text{ N}$
* Shearing resistance $P_s = 72\,745\text{ N}$
* Crushing resistance $P_c = n \cdot d \cdot t \cdot \sigma_c = 2 \times 21 \times 12 \times 140 = 70\,560\text{ N}$

Strength of riveted joint $= \min(P_t, P_s, P_c) = P_t = 68\,040\text{ N}$

Strength of unriveted solid plate ($P$):
$$P = p \cdot t \cdot \sigma_t = 84 \times 12 \times 90 = 90\,720\text{ N}$$

Efficiency:
$$\eta = \frac{P_t}{P} = \frac{68\,040}{90\,720} = 0.75 = \mathbf{75\%} \quad (\text{Satisfies required } \eta_l = 75\%)$$

$$\mathbf{\text{Final Answers: Shell } t = 12\text{ mm}, \text{ Hole } d = 21\text{ mm}, \text{ Pitch } p = 84\text{ mm}, \text{ Row Pitch } p_b = 42\text{ mm}, \text{ Strap } t_1 = 7.5\text{ mm}, \text{ Margin } m = 32\text{ mm}, \eta = 75\%}$$

---

## Example 9.8 (Pressure Vessel Double Riveted Double Strap Butt Joint with Unequal Pitch)

### Problem Statement
A pressure vessel has an internal diameter of $1\text{ m}$ and is to be subjected to an internal pressure of $2.75\text{ N/mm}^2$ above atmospheric pressure. Considering it as a thin cylinder and assuming efficiency of its riveted joint to be $79\%$, calculate the plate thickness if the tensile stress in the material is not to exceed $88\text{ MPa}$.

Design a longitudinal double riveted double strap butt joint with equal straps for this vessel. The pitch of the rivets in the outer row is to be double the pitch in the inner row and zig-zag riveting is proposed. The maximum allowable shear stress in the rivets is $64\text{ MPa}$. You may assume that the rivets in double shear are $1.8$ times stronger than in single shear and the joint does not fail by crushing. Make a sketch of the joint showing all calculated values. Calculate the efficiency of the joint.

---

### Solution

#### Given Data:
* Internal diameter ($D$): $1\text{ m} = 1000\text{ mm}$
* Internal pressure ($P$): $2.75\text{ N/mm}^2$
* Target joint efficiency ($\eta_l$): $79\% = 0.79$
* Permissible tensile stress ($\sigma_t$): $88\text{ MPa} = 88\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $64\text{ MPa} = 64\text{ N/mm}^2$
* Double shear strength factor $= 1.8$

#### 1. Thickness of Plate ($t$)
$$t = \frac{P \cdot D}{2 \sigma_t \cdot \eta_l} + 1\text{ mm} = \frac{2.75 \times 1000}{2 \times 88 \times 0.79} + 1 = 19.8 + 1 = 20.8\text{ mm} \approx \mathbf{21\text{ mm}}$$

#### 2. Diameter of Rivet Hole ($d$)
Since plate thickness $t = 21\text{ mm} > 8\text{ mm}$, Unwin's formula gives:
$$d = 6 \sqrt{t} = 6 \sqrt{21} = 27.5\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{28.5\text{ mm}}$ (corresponding nominal rivet diameter $= 27\text{ mm}$).

#### 3. Pitch of Rivets ($p$)
Let $p$ = Pitch in the outer row. Pitch in the inner row $= p / 2$.
For one outer pitch length, there are $n = 3$ rivets in double shear ($1$ in outer row $+ 2$ in inner row).
Tearing resistance of plate ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 28.5) \times 21 \times 88 = 1848 (p - 28.5)\text{ N}$$

Shearing resistance of rivets ($P_s$):
$$P_s = n \times 1.8 \times \frac{\pi}{4} d^2 \cdot \tau = 3 \times 1.8 \times \frac{\pi}{4} (28.5)^2 \times 64 = \mathbf{220\,500\text{ N}}$$

Equating $P_t = P_s$:
$$1848 (p - 28.5) = 220\,500 \implies p - 28.5 = \frac{220\,500}{1848} = 119.3 \implies p = 147.8\text{ mm}$$

Maximum pitch per I.B.R. ($p_{\max}$):
For double strap butt joint with 3 rivets per pitch, $C = 4.63$:
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 4.63 \times 21 + 41.28 = 138.5\text{ mm} \approx 140\text{ mm}$$
Since calculated $p > p_{\max}$, adopt outer row pitch $p = p_{\max} = \mathbf{140\text{ mm}}$.
Inner row pitch $= 140 / 2 = \mathbf{70\text{ mm}}$.

#### 4. Distance Between Rows of Rivets ($p_b$)
According to I.B.R., for zig-zag riveting with unequal pitches:
$$p_b = 0.2 p + 1.15 d = 0.2 \times 140 + 1.15 \times 28.5 = 28 + 32.775 = 60.775\text{ mm} \approx \mathbf{61\text{ mm}}$$

#### 5. Thickness of Butt Straps / Cover Plates ($t_1$)
According to I.B.R., for double butt straps of equal width with unequal pitches:
$$t_1 = 0.625 t \left( \frac{p - d}{p - 2d} \right) = 0.625 \times 21 \times \left( \frac{140 - 28.5}{140 - 2 \times 28.5} \right) = 13.125 \times \frac{111.5}{83} = 17.6\text{ mm} \approx \mathbf{18\text{ mm}}$$

#### 6. Margin ($m$)
$$m = 1.5 d = 1.5 \times 28.5 = 42.75\text{ mm} \approx \mathbf{43\text{ mm}}$$

#### 7. Efficiency of Designed Joint ($\eta$)
Tearing resistance of plate at outer row:
$$P_t = (p - d) t \cdot \sigma_t = (140 - 28.5) \times 21 \times 88 = 206\,050\text{ N}$$

Shearing resistance of rivets:
$$P_s = 220\,500\text{ N}$$

Strength of solid plate per outer pitch length ($P$):
$$P = p \cdot t \cdot \sigma_t = 140 \times 21 \times 88 = 258\,720\text{ N}$$

Efficiency of joint:
$$\eta = \frac{P_t}{P} = \frac{206\,050}{258\,720} = 0.796 = \mathbf{79.6\%} \quad (\text{Satisfies required } \eta_l = 79\%)$$

$$\mathbf{\text{Final Answers: Plate } t = 21\text{ mm}, \text{ Hole } d = 28.5\text{ mm}, \text{ Outer Pitch } p = 140\text{ mm}, \text{ Inner Pitch } = 70\text{ mm}, \text{ Row Pitch } p_b = 61\text{ mm}, \text{ Strap } t_1 = 18\text{ mm}, \text{ Margin } m = 43\text{ mm}, \eta = 79.6\%}$$

---

## Example 9.9 (Boiler Longitudinal Seam Triple Riveted Double Strap Butt Joint with Unequal Straps)

### Problem Statement
Design the longitudinal joint for a $1.25\text{ m}$ diameter steam boiler to carry a steam pressure of $2.5\text{ N/mm}^2$. The ultimate strength of the boiler plate may be assumed as $420\text{ MPa}$, crushing strength as $650\text{ MPa}$ and shear strength as $300\text{ MPa}$. Take the joint efficiency as $80\%$. Sketch the joint with all the dimensions. Adopt the suitable factor of safety.

---

### Solution

#### Given Data:
* Boiler shell diameter ($D$): $1.25\text{ m} = 1250\text{ mm}$
* Steam pressure ($P$): $2.5\text{ N/mm}^2$
* Target joint efficiency ($\eta_l$): $80\% = 0.8$
* Ultimate tensile stress ($\sigma_{tu}$): $420\text{ MPa}$
* Ultimate crushing stress ($\sigma_{cu}$): $650\text{ MPa}$
* Ultimate shear stress ($\tau_u$): $300\text{ MPa}$

Assuming Factor of Safety ($\text{F.S.}$) $= 5$:
$$\sigma_t = \frac{420}{5} = 84\text{ N/mm}^2, \quad \sigma_c = \frac{650}{5} = 130\text{ N/mm}^2, \quad \tau = \frac{300}{5} = 60\text{ N/mm}^2$$

#### 1. Thickness of Boiler Shell Plate ($t$)
$$t = \frac{P \cdot D}{2 \sigma_t \cdot \eta_l} + 1\text{ mm} = \frac{2.5 \times 1250}{2 \times 84 \times 0.8} + 1 = 23.3 + 1 = 24.3\text{ mm} \approx \mathbf{25\text{ mm}}$$

#### 2. Diameter of Rivet Hole ($d$)
Since plate thickness $t = 25\text{ mm} > 8\text{ mm}$, Unwin's formula gives:
$$d = 6 \sqrt{t} = 6 \sqrt{25} = 30\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{31.5\text{ mm}}$ (corresponding nominal rivet diameter $= 30\text{ mm}$).

#### 3. Pitch of Rivets ($p$)
Assume a triple riveted double strap butt joint with unequal straps (5 rivets per pitch: 4 in double shear $+ 1$ in single shear).
Let $p$ = Pitch in the outermost row. Inner row pitch $p' = p / 2$.
Tearing resistance of plate per pitch ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 31.5) \times 25 \times 84 = 2100 (p - 31.5)\text{ N}$$

Shearing resistance of rivets per pitch ($P_s$):
Assuming double shear strength is $1.875$ times single shear strength:
$$P_s = \left(4 \times 1.875 + 1\right) \frac{\pi}{4} d^2 \cdot \tau = 8.5 \times \frac{\pi}{4} (31.5)^2 \times 60 = \mathbf{397\,500\text{ N}}$$

Equating $P_t = P_s$:
$$2100 (p - 31.5) = 397\,500 \implies p - 31.5 = \frac{397\,500}{2100} = 189.3 \implies p = 220.8\text{ mm}$$

Maximum pitch per I.B.R. ($p_{\max}$):
For double strap butt joint with 5 rivets per pitch, $C = 6$:
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 6 \times 25 + 41.28 = 191.28\text{ mm} \approx 196\text{ mm}$$
Since calculated $p > p_{\max}$, adopt outer row pitch $p = p_{\max} = \mathbf{196\text{ mm}}$.
Inner row pitch $p' = 196 / 2 = \mathbf{98\text{ mm}}$.

#### 4. Distance Between Rows of Rivets ($p_b$)
According to I.B.R.:
* Between outer row and next row: $0.2 p + 1.15 d = 0.2 \times 196 + 1.15 \times 31.5 = 39.2 + 36.225 = 75.425\text{ mm} \approx \mathbf{76\text{ mm}}$
* Between inner rows (zig-zag): $0.165 p + 0.67 d = 0.165 \times 196 + 0.67 \times 31.5 = 32.34 + 21.105 = 53.445\text{ mm} \approx \mathbf{54\text{ mm}}$

#### 5. Thickness of Cover Plates / Butt Straps
* Inside wide strap ($t_1$): $t_1 = 0.75 t = 0.75 \times 25 = 18.75\text{ mm} \approx \mathbf{20\text{ mm}}$
* Outside narrow strap ($t_2$): $t_2 = 0.625 t = 0.625 \times 25 = 15.625\text{ mm} \approx \mathbf{16\text{ mm}}$

#### 6. Margin ($m$)
$$m = 1.5 d = 1.5 \times 31.5 = 47.25\text{ mm} \approx \mathbf{47.5\text{ mm}}$$

#### 7. Efficiency Verification of Designed Joint ($\eta$)
* Tearing resistance at outer row: $P_{t1} = (196 - 31.5) \times 25 \times 84 = 345\,450\text{ N}$
* Shearing resistance of 5 rivets: $P_s = 397\,500\text{ N}$
* Crushing resistance of 5 rivets: $P_c = 5 \times 31.5 \times 25 \times 130 = 511\,875\text{ N}$
* Combined tearing of 2nd row and shearing of 1st row:
  $$P_{t2+s1} = (p - 2d) t \cdot \sigma_t + \frac{\pi}{4} d^2 \cdot \tau = (196 - 2 \times 31.5) \times 25 \times 84 + \frac{\pi}{4} (31.5)^2 \times 60 = 279\,300 + 46\,765 = 326\,065\text{ N}$$

Strength of joint $= \text{Least of } P_{t1}, P_s, P_c, P_{t2+s1} = \mathbf{326\,065\text{ N}}$
Solid plate strength $P = p \cdot t \cdot \sigma_t = 196 \times 25 \times 84 = \mathbf{411\,600\text{ N}}$

Efficiency:
$$\eta = \frac{326\,065}{411\,600} = 0.792 = \mathbf{79.2\%} \quad (\text{Nearly equal to target } 80\% \implies \text{Satisfactory})$$

$$\mathbf{\text{Final Answers: Plate } t = 25\text{ mm}, \text{ Hole } d = 31.5\text{ mm}, \text{ Outer Pitch } p = 196\text{ mm}, \text{ Inner Pitch } = 98\text{ mm}, \text{ Row Spacing } = 76\text{ mm \& } 54\text{ mm}, \text{ Straps } t_1 = 20\text{ mm}, t_2 = 16\text{ mm}, \text{ Margin } m = 47.5\text{ mm}, \eta = 79.2\%}$$

---

## Example 9.10 (Boiler Longitudinal & Circumferential Seam Design)

### Problem Statement
A steam boiler is to be designed for a working pressure of $2.5\text{ N/mm}^2$ with its inside diameter $1.6\text{ m}$. Give the design calculations for the longitudinal and circumferential joints for the following working stresses for steel plates and rivets:
$$\text{In tension } \sigma_t = 75\text{ MPa}, \quad \text{In shear } \tau = 60\text{ MPa}, \quad \text{In crushing } \sigma_c = 125\text{ MPa}$$
Draw the joints to a suitable scale.

---

### Solution

#### Given Data:
* Boiler inside diameter ($D$): $1.6\text{ m} = 1600\text{ mm}$
* Working steam pressure ($P$): $2.5\text{ N/mm}^2$
* Permissible tensile stress ($\sigma_t$): $75\text{ MPa} = 75\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $60\text{ MPa} = 60\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $125\text{ MPa} = 125\text{ N/mm}^2$

---

### Part A: Design of Longitudinal Joint

#### 1. Thickness of Boiler Shell Plate ($t$)
$$t = \frac{P \cdot D}{2 \sigma_t} + 1\text{ mm} = \frac{2.5 \times 1600}{2 \times 75} + 1 = 26.6 + 1 = 27.6\text{ mm} \approx \mathbf{28\text{ mm}}$$

#### 2. Diameter of Rivet Hole ($d$)
Since plate thickness $t = 28\text{ mm} > 8\text{ mm}$, Unwin's formula gives:
$$d = 6 \sqrt{t} = 6 \sqrt{28} = 31.75\text{ mm}$$
From IS: 1928–1961 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{34.5\text{ mm}}$ (corresponding nominal rivet diameter $= 33\text{ mm}$).

#### 3. Pitch of Rivets ($p$)
Assume a triple riveted double strap butt joint with unequal cover straps (5 rivets per pitch: 4 in double shear $+ 1$ in single shear).
Let $p$ = Pitch in the outermost row. Inner row pitch $p' = p / 2$.
Tearing resistance of plate per pitch ($P_t$):
$$P_t = (p - d) t \cdot \sigma_t = (p - 34.5) \times 28 \times 75 = 2100 (p - 34.5)\text{ N}$$

Shearing resistance of rivets per pitch ($P_s$):
Assuming double shear strength is $1.875$ times single shear strength:
$$P_s = \left(4 \times 1.875 + 1\right) \frac{\pi}{4} d^2 \cdot \tau = 8.5 \times \frac{\pi}{4} (34.5)^2 \times 60 = \mathbf{476\,820\text{ N}}$$

Equating $P_t = P_s$:
$$2100 (p - 34.5) = 476\,820 \implies p - 34.5 = \frac{476\,820}{2100} = 227 \implies p = 261.5\text{ mm}$$

Maximum pitch per I.B.R. ($p_{\max}$):
For double strap butt joint with 5 rivets per pitch, $C = 6.00$:
$$p_{\max} = C \cdot t + 41.28\text{ mm} = 6 \times 28 + 41.28 = 209.28\text{ mm} \approx 220\text{ mm}$$
Since calculated $p > p_{\max}$, adopt outer row pitch $p = p_{\max} = \mathbf{220\text{ mm}}$.
Inner row pitch $p' = 220 / 2 = \mathbf{110\text{ mm}}$.

#### 4. Distance Between Rows of Rivets ($p_b$)
According to I.B.R.:
* Between outer row and next row: $0.2 p + 1.15 d = 0.2 \times 220 + 1.15 \times 34.5 = 44 + 39.675 = 83.675\text{ mm} \approx \mathbf{85\text{ mm}}$
* Between inner rows (zig-zag): $0.165 p + 0.67 d = 0.165 \times 220 + 0.67 \times 34.5 = 36.3 + 23.115 = 59.415\text{ mm} \approx \mathbf{60\text{ mm}}$

#### 5. Thickness of Butt Straps / Cover Plates
* Inside wide strap ($t_1$): $t_1 = 0.75 t = 0.75 \times 28 = \mathbf{21\text{ mm}}$
* Outside narrow strap ($t_2$): $t_2 = 0.625 t = 0.625 \times 28 = 17.5\text{ mm} \approx \mathbf{18\text{ mm}}$

#### 6. Margin ($m$)
$$m = 1.5 d = 1.5 \times 34.5 = 51.75\text{ mm} \approx \mathbf{52\text{ mm}}$$

#### 7. Efficiency Verification of Longitudinal Joint ($\eta_l$)
* Tearing resistance at outer row: $P_{t1} = (220 - 34.5) \times 28 \times 75 = 389\,550\text{ N}$
* Shearing resistance of 5 rivets: $P_s = 476\,820\text{ N}$
* Crushing resistance of 5 rivets: $P_c = 5 \times 34.5 \times 28 \times 125 = 603\,750\text{ N}$
* Combined 2nd row tearing and 1st row shearing:
  $$P_{t2+s1} = (p - 2d) t \cdot \sigma_t + \frac{\pi}{4} d^2 \cdot \tau = (220 - 2 \times 34.5) \times 28 \times 75 + \frac{\pi}{4} (34.5)^2 \times 60 = 317\,100 + 56\,096 = 373\,196\text{ N}$$

Strength of longitudinal joint $= \mathbf{373\,196\text{ N}}$
Solid plate strength $P = p \cdot t \cdot \sigma_t = 220 \times 28 \times 75 = \mathbf{462\,000\text{ N}}$

$$\eta_l = \frac{373\,196}{462\,000} = 0.808 = \mathbf{80.8\%}$$

---

### Part B: Design of Circumferential Joint

#### 1. Shell Thickness & Rivet Hole Size
Same as longitudinal joint: $t = 28\text{ mm}$, $d = 34.5\text{ mm}$.

#### 2. Number of Rivets ($n$)
Equating total steam thrust acting on boiler end to shearing resistance of rivets:
$$n \times \frac{\pi}{4} d^2 \cdot \tau = \frac{\pi}{4} D^2 \cdot P \implies n = \frac{D^2 \cdot P}{d^2 \cdot \tau}$$
$$n = \frac{(1600)^2 \times 2.5}{(34.5)^2 \times 60} = \frac{6\,400\,000}{71\,415} = 89.6 \approx \mathbf{90\text{ rivets}}$$

#### 3. Pitch of Rivets in Circumferential Joint ($p_1$)
Assuming a double riveted lap joint with zig-zag riveting:
Rivets per row $= 90 / 2 = 45\text{ rivets}$.
Pitch required around mean circumference:
$$p_1 = \frac{\pi (D + t)}{45} = \frac{\pi (1600 + 28)}{45} = 113.7\text{ mm}$$
Adopt pitch $p_1 = \mathbf{140\text{ mm}}$.

#### 4. Efficiency of Circumferential Joint ($\eta_c$)
$$\eta_c = \frac{p_1 - d}{p_1} = \frac{140 - 34.5}{140} = \frac{105.5}{140} = 0.753 = \mathbf{75.3\%}$$

#### 5. Distance Between Rows of Rivets ($p_b$)
For zig-zag riveting:
$$p_b = 0.33 p_1 + 0.67 d = 0.33 \times 140 + 0.67 \times 34.5 = 46.2 + 23.115 = 69.315\text{ mm} \approx \mathbf{70\text{ mm}}$$

#### 6. Margin ($m$)
$$m = 1.5 d = 1.5 \times 34.5 = 51.75\text{ mm} \approx \mathbf{52\text{ mm}}$$

$$\mathbf{\text{Final Answers: Long. Joint: } t = 28\text{ mm}, d = 34.5\text{ mm}, p = 220\text{ mm}, p_b = 85 \& 60\text{ mm}, t_1 = 21\text{ mm}, t_2 = 18\text{ mm}, \eta_l = 80.8\%; \quad \text{Circ. Joint: } n = 90\text{ rivets}, p_1 = 140\text{ mm}, p_b = 70\text{ mm}, \eta_c = 75.3\%}$$

---

## Example 9.11 (Tie Rod Double Cover Butt Joint Design)

### Problem Statement
Two lengths of mild steel tie rod having width $200\text{ mm}$ and thickness $12.5\text{ mm}$ are to be connected by means of a butt joint with double cover plates. Design the joint if the permissible stresses are $80\text{ MPa}$ in tension, $65\text{ MPa}$ in shear and $160\text{ MPa}$ in crushing. Make a sketch of the joint.

---

### Solution

#### Given Data:
* Tie rod width ($b$): $200\text{ mm}$
* Tie rod thickness ($t$): $12.5\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $80\text{ MPa} = 80\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $65\text{ MPa} = 65\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $160\text{ MPa} = 160\text{ N/mm}^2$

#### 1. Diameter of Rivet ($d$)
Unwin's formula gives:
$$d = 6 \sqrt{t} = 6 \sqrt{12.5} = 21.2\text{ mm}$$
From IS: 1929–1982 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{21.5\text{ mm}}$ (corresponding nominal rivet diameter $= 20\text{ mm}$).

#### 2. Number of Rivets ($n$)
Maximum tensile load acting on joint ($P_t$):
$$P_t = (b - d) t \cdot \sigma_t = (200 - 21.5) \times 12.5 \times 80 = \mathbf{178\,500\text{ N}}$$

Shearing resistance of one rivet in double shear (double shear factor $= 1.75$):
$$P_{s1} = 1.75 \times \frac{\pi}{4} d^2 \cdot \tau = 1.75 \times \frac{\pi}{4} (21.5)^2 \times 65 = \mathbf{41\,300\text{ N}}$$

Crushing resistance of one rivet ($P_{c1}$):
$$P_{c1} = d \cdot t \cdot \sigma_c = 21.5 \times 12.5 \times 160 = \mathbf{43\,000\text{ N}}$$

Since $P_{s1} < P_{c1}$, shearing governs single rivet strength.
Number of rivets required:
$$n = \frac{P_t}{P_{s1}} = \frac{178\,500}{41\,300} = 4.32 \approx \mathbf{5\text{ rivets}}$$

#### 3. Rivet Arrangement Pattern
The $5$ rivets are arranged in diamond pattern:
- Section 1-1 (outermost row): 1 rivet
- Section 2-2 (middle row): 2 rivets
- Section 3-3 (innermost row): 2 rivets

#### 4. Thickness of Cover Plates / Butt Straps ($t_1$)
$$t_1 = 0.75 t = 0.75 \times 12.5 = 9.375\text{ mm} \approx \mathbf{9.4\text{ mm}}$$

#### 5. Pitch ($p$), Row Spacing ($p_b$), and Margin ($m$)
* Pitch $p = 3 d + 5\text{ mm} = 3 \times 21.5 + 5 = 69.5\text{ mm} \approx \mathbf{70\text{ mm}}$
* Row spacing $p_b = 2.5 d = 2.5 \times 21.5 = 53.75\text{ mm} \approx \mathbf{55\text{ mm}}$
* Margin $m = 1.5 d = 1.5 \times 21.5 = 32.25\text{ mm} \approx \mathbf{35\text{ mm}}$

#### 6. Efficiency Verification of Joint ($\eta$)
- Tearing at Section 1-1 (1 rivet hole):
  $$P_{t1} = (b - d) t \cdot \sigma_t = (200 - 21.5) \times 12.5 \times 80 = \mathbf{178\,500\text{ N}}$$
- Tearing at Section 2-2 + Shearing of 1 rivet at Section 1-1:
  $$P_{t2} = (b - 2d) t \cdot \sigma_t + P_{s1} = (200 - 43) \times 12.5 \times 80 + 41\,300 = 157\,000 + 41\,300 = \mathbf{198\,300\text{ N}}$$
- Tearing at Section 3-3 + Shearing of 3 rivets at Sections 1-1 & 2-2:
  $$P_{t3} = (b - 2d) t \cdot \sigma_t + 3 P_{s1} = 157\,000 + 3 \times 41\,300 = \mathbf{280\,900\text{ N}}$$
- Total shearing resistance of 5 rivets: $P_s = 5 \times 41\,300 = \mathbf{206\,500\text{ N}}$
- Total crushing resistance of 5 rivets: $P_c = 5 \times 43\,000 = \mathbf{215\,000\text{ N}}$

Least strength of joint $= \mathbf{178\,500\text{ N}}$ (Tearing at Section 1-1).
Solid unriveted tie rod strength ($P$):
$$P = b \cdot t \cdot \sigma_t = 200 \times 12.5 \times 80 = \mathbf{200\,000\text{ N}}$$

Efficiency of joint:
$$\eta = \frac{178\,500}{200\,000} = 0.8925 = \mathbf{89.25\%}$$

$$\mathbf{\text{Final Answers: Hole size } d = 21.5\text{ mm}, n = 5\text{ rivets}, \text{ Pitch } p = 70\text{ mm}, \text{ Row Spacing } = 55\text{ mm}, \text{ Straps } t_1 = 9.4\text{ mm}, \text{ Margin } m = 35\text{ mm}, \eta = 89.25\%}$$

---

## Example 9.12 (Bridge Tie-Bar Lozenge / Diamond Joint Design)

### Problem Statement
A tie-bar in a bridge consists of flat $350\text{ mm}$ wide and $20\text{ mm}$ thick. It is connected to a gusset plate of the same thickness by a double cover butt joint. Design an economical joint if the permissible stresses are:
$$\sigma_t = 90\text{ MPa}, \quad \tau = 60\text{ MPa}, \quad \sigma_c = 150\text{ MPa}$$

---

### Solution

#### Given Data:
* Flat width ($b$): $350\text{ mm}$
* Flat thickness ($t$): $20\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $90\text{ MPa} = 90\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $60\text{ MPa} = 60\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $150\text{ MPa} = 150\text{ N/mm}^2$

#### 1. Diameter of Rivet Hole ($d$)
Unwin's formula gives:
$$d = 6 \sqrt{t} = 6 \sqrt{20} = 26.8\text{ mm}$$
From IS: 1929–1982 (Reaffirmed 1996), standard rivet hole diameter is $d = \mathbf{29\text{ mm}}$ (corresponding nominal rivet diameter $= 27\text{ mm}$).

#### 2. Number of Rivets ($n$)
Maximum tensile load acting on joint ($P_t$):
$$P_t = (b - d) t \cdot \sigma_t = (350 - 29) \times 20 \times 90 = \mathbf{577\,800\text{ N}}$$

Shearing resistance of one rivet in double shear (double shear factor $= 1.75$):
$$P_{s1} = 1.75 \times \frac{\pi}{4} d^2 \cdot \tau = 1.75 \times \frac{\pi}{4} (29)^2 \times 60 = \mathbf{69\,360\text{ N}}$$

Crushing resistance of one rivet ($P_{c1}$):
$$P_{c1} = d \cdot t \cdot \sigma_c = 29 \times 20 \times 150 = \mathbf{87\,000\text{ N}}$$

Since $P_{s1} < P_{c1}$, shearing governs single rivet strength.
Number of rivets required:
$$n = \frac{P_t}{P_{s1}} = \frac{577\,800}{69\,360} = 8.33 \approx \mathbf{9\text{ rivets}}$$

#### 3. Rivet Arrangement Pattern (Diamond / Lozenge Joint)
The $9$ rivets are arranged in diamond pattern:
- Section 1-1: 1 rivet
- Section 2-2: 2 rivets
- Section 3-3: 3 rivets
- Section 4-4: 3 rivets

#### 4. Thickness of Cover Plates / Butt Straps ($t_1$)
$$t_1 = 0.75 t = 0.75 \times 20 = \mathbf{15\text{ mm}}$$

#### 5. Pitch ($p$), Row Spacing ($p_b$), and Margin ($m$)
* Pitch $p = 3 d + 5\text{ mm} = 3 \times 29 + 5 = 92\text{ mm} \approx \mathbf{95\text{ mm}}$
* Row spacing $p_b = 2.5 d = 2.5 \times 29 = 72.5\text{ mm} \approx \mathbf{75\text{ mm}}$
* Margin $m = 1.5 d = 1.5 \times 29 = 43.5\text{ mm} \approx \mathbf{45\text{ mm}}$

#### 6. Efficiency Verification of Joint ($\eta$)
- Tearing at Section 1-1 (1 rivet hole):
  $$P_{t1} = (b - d) t \cdot \sigma_t = (350 - 29) \times 20 \times 90 = \mathbf{577\,800\text{ N}}$$
- Tearing at Section 2-2 + Shearing of 1 rivet at Section 1-1:
  $$P_{t2} = (b - 2d) t \cdot \sigma_t + P_{s1} = (350 - 58) \times 20 \times 90 + 69\,360 = 525\,600 + 69\,360 = \mathbf{594\,960\text{ N}}$$
- Tearing at Section 3-3 + Shearing of 3 rivets at Sections 1-1 & 2-2:
  $$P_{t3} = (b - 3d) t \cdot \sigma_t + 3 P_{s1} = (350 - 87) \times 20 \times 90 + 3 \times 69\,360 = 473\,400 + 208\,080 = \mathbf{681\,480\text{ N}}$$
- Tearing at Section 4-4 + Shearing of 6 rivets at Sections 1-1, 2-2 & 3-3:
  $$P_{t4} = (b - 3d) t \cdot \sigma_t + 6 P_{s1} = 473\,400 + 6 \times 69\,360 = \mathbf{889\,560\text{ N}}$$
- Total shearing resistance of 9 rivets: $P_s = 9 \times 69\,360 = \mathbf{624\,240\text{ N}}$
- Total crushing resistance of 9 rivets: $P_c = 9 \times 87\,000 = \mathbf{783\,000\text{ N}}$

Least strength of joint $= \mathbf{577\,800\text{ N}}$ (Tearing at Section 1-1).
Solid unriveted plate strength ($P$):
$$P = b \cdot t \cdot \sigma_t = 350 \times 20 \times 90 = \mathbf{630\,000\text{ N}}$$

Efficiency of joint:
$$\eta = \frac{577\,800}{630\,000} = 0.917 = \mathbf{91.7\%}$$

$$\mathbf{\text{Final Answers: Hole size } d = 29\text{ mm}, n = 9\text{ rivets (1-2-3-3 pattern)}, \text{ Pitch } p = 95\text{ mm}, \text{ Row Spacing } = 75\text{ mm}, \text{ Straps } t_1 = 15\text{ mm}, \text{ Margin } m = 45\text{ mm}, \eta = 91.7\%}$$

---

## Example 9.13 (Mild Steel Flat Tie-Bar Lap Joint Design)

### Problem Statement
Design a lap joint for a mild steel flat tie-bar $200\text{ mm} \times 10\text{ mm}$ thick, using $24\text{ mm}$ diameter rivets. Assume allowable stresses in tension and compression of the plate material as $112\text{ MPa}$ and $200\text{ MPa}$ respectively and shear stress of the rivets as $84\text{ MPa}$. Show the disposition of the rivets for maximum joint efficiency and determine the joint efficiency. Take diameter of rivet hole as $25.5\text{ mm}$ for a $24\text{ mm}$ diameter rivet.

---

### Solution

#### Given Data:
* Flat width ($b$): $200\text{ mm}$
* Flat thickness ($t$): $10\text{ mm}$
* Nominal rivet diameter ($d_1$): $24\text{ mm}$
* Rivet hole diameter ($d$): $25.5\text{ mm}$
* Permissible tensile stress ($\sigma_t$): $112\text{ MPa} = 112\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $200\text{ MPa} = 200\text{ N/mm}^2$
* Permissible shear stress ($\tau$): $84\text{ MPa} = 84\text{ N/mm}^2$

#### 1. Number of Rivets ($n$)
Maximum tensile pull acting on joint ($P_t$):
$$P_t = (b - d) t \cdot \sigma_t = (200 - 25.5) \times 10 \times 112 = \mathbf{195\,440\text{ N}}$$

Shearing resistance of one rivet in single shear ($P_{s1}$):
$$P_{s1} = \frac{\pi}{4} d^2 \cdot \tau = \frac{\pi}{4} (25.5)^2 \times 84 = \mathbf{42\,905\text{ N}}$$

Crushing resistance of one rivet ($P_{c1}$):
$$P_{c1} = d \cdot t \cdot \sigma_c = 25.5 \times 10 \times 200 = \mathbf{51\,000\text{ N}}$$

Since $P_{s1} < P_{c1}$, shearing governs single rivet strength.
Number of rivets required:
$$n = \frac{P_t}{P_{s1}} = \frac{195\,440}{42\,905} = 4.56 \approx \mathbf{5\text{ rivets}}$$

#### 2. Rivet Arrangement Pattern
The $5$ rivets are arranged in diamond pattern (1-3-1):
- Section 1-1: 1 rivet
- Section 2-2: 3 rivets
- Section 3-3: 1 rivet

#### 3. Thickness of Cover Plate ($t_1$)
For lap joint with cover plate:
$$t_1 = 1.25 t = 1.25 \times 10 = \mathbf{12.5\text{ mm}}$$

#### 4. Efficiency Verification of Joint ($\eta$)
- Tearing resistance along Section 1-1 (1 rivet hole):
  $$P_{t1} = (b - d) t \cdot \sigma_t = (200 - 25.5) \times 10 \times 112 = \mathbf{195\,440\text{ N}}$$
- Tearing resistance along Section 2-2 (3 rivet holes) + Shearing of 1 rivet at Section 1-1:
  $$P_{t2} = (b - 3d) t \cdot \sigma_t + P_{s1} = (200 - 3 \times 25.5) \times 10 \times 112 + 42\,905 = 138\,320 + 42\,905 = \mathbf{181\,225\text{ N}}$$
- Tearing resistance along Section 3-3: $P_{t3} = P_{t1} = \mathbf{195\,440\text{ N}}$
- Total shearing resistance of 5 rivets: $P_s = 5 \times 42\,905 = \mathbf{214\,525\text{ N}}$
- Total crushing resistance of 5 rivets: $P_c = 5 \times 51\,000 = \mathbf{255\,000\text{ N}}$

Least strength of joint $= \mathbf{181\,225\text{ N}}$ (Tearing at Section 2-2).
Solid unriveted tie-bar strength ($P$):
$$P = b \cdot t \cdot \sigma_t = 200 \times 10 \times 112 = \mathbf{224\,000\text{ N}}$$

Efficiency of joint:
$$\eta = \frac{181\,225}{224\,000} = 0.809 = \mathbf{80.9\%}$$

$$\mathbf{\text{Final Answers: Hole size } d = 25.5\text{ mm}, n = 5\text{ rivets (1-3-1 pattern)}, \text{ Cover Plate } t_1 = 12.5\text{ mm}, \eta = 80.9\%}$$

---

## Example 9.14 (Eccentrically Loaded Lap Riveted Bracket — 7 Rivet System Design)

### Problem Statement
An eccentrically loaded lap riveted joint is to be designed for a steel bracket as shown in Fig. 9.24. The bracket plate is $25\text{ mm}$ thick. All rivets are to be of the same size. Load on the bracket, $P = 50\text{ kN}$; rivet spacing, $C = 100\text{ mm}$; load arm, $e = 400\text{ mm}$. Permissible shear stress is $65\text{ MPa}$ and crushing stress is $120\text{ MPa}$. Determine the size of the rivets to be used for the joint.

---

### Solution

#### Given Data:
* Plate thickness ($t$): $25\text{ mm}$
* Load ($P$): $50\text{ kN} = 50 \times 10^3\text{ N}$
* Eccentricity ($e$): $400\text{ mm}$
* Number of rivets ($n$): $7$
* Spacing ($C$): $100\text{ mm}$
* Permissible shear stress ($\tau$): $65\text{ MPa} = 65\text{ N/mm}^2$
* Permissible crushing stress ($\sigma_c$): $120\text{ MPa} = 120\text{ N/mm}^2$

#### 1. Center of Gravity ($G$) of Rivet System
Let origin $O(0,0)$ be at Rivet 6.
Rivet coordinates $(x_i, y_i)$ in mm:
- Rivet 1: $(0, 200)$, Rivet 2: $(100, 200)$, Rivet 3: $(200, 200)$
- Rivet 4: $(200, 100)$, Rivet 5: $(200, 0)$
- Rivet 6: $(0, 0)$, Rivet 7: $(0, 100)$

Center of gravity coordinates $(x_G, y_G)$:
$$x_G = \frac{\sum x_i}{n} = \frac{0 + 100 + 200 + 200 + 200 + 0 + 0}{7} = \frac{700}{7} = \mathbf{100\text{ mm}}$$
$$y_G = \frac{\sum y_i}{n} = \frac{200 + 200 + 200 + 100 + 0 + 0 + 100}{7} = \frac{800}{7} = \mathbf{114.3\text{ mm}}$$

#### 2. Direct Shear Load per Rivet ($P_s$)
$$P_s = \frac{P}{n} = \frac{50 \times 10^3}{7} = \mathbf{7143\text{ N}} \quad (\text{acting vertically downward})$$

#### 3. Eccentric Turning Moment ($M$)
$$M = P \cdot e = 50 \times 10^3 \times 400 = \mathbf{20 \times 10^6\text{ N-mm}}$$

#### 4. Radial Distances ($l_i$) from C.G. $G(100, 114.3)$
* $l_1 = l_3 = \sqrt{(100)^2 + (200 - 114.3)^2} = \sqrt{10000 + 7344.5} = \mathbf{131.7\text{ mm}}$
* $l_2 = 200 - 114.3 = \mathbf{85.7\text{ mm}}$
* $l_4 = l_7 = \sqrt{(100)^2 + (114.3 - 100)^2} = \sqrt{10000 + 204.5} = \mathbf{101\text{ mm}}$
* $l_5 = l_6 = \sqrt{(100)^2 + (114.3)^2} = \sqrt{10000 + 13064.5} = \mathbf{152\text{ mm}}$

Sum of squared radial distances ($\sum l_i^2$):
$$\sum l_i^2 = 2(131.7)^2 + (85.7)^2 + 2(101)^2 + 2(152)^2 = 34\,690 + 7345 + 20\,402 + 46\,208 = \mathbf{108\,645\text{ mm}^2}$$

#### 5. Secondary Shear Loads ($F_i$)
Equating turning moment $M$ to resisting moment:
$$F_1 = \frac{M \cdot l_1}{\sum l_i^2} = \frac{20 \times 10^6 \times 131.7}{108\,645} = \mathbf{24\,244\text{ N}}$$
* $F_2 = F_1 \frac{l_2}{l_1} = 24\,244 \times \frac{85.7}{131.7} = \mathbf{15\,776\text{ N}}$
* $F_3 = F_1 = \mathbf{24\,244\text{ N}}$
* $F_4 = F_7 = 24\,244 \times \frac{101}{131.7} = \mathbf{18\,593\text{ N}}$
* $F_5 = F_6 = 24\,244 \times \frac{152}{131.7} = \mathbf{27\,981\text{ N}}$$

#### 6. Angles and Resultant Shear Loads ($R_i$)
Cosine of angle $\theta_i$ between direct load $P_s$ and secondary load $F_i$:
* $\cos \theta_3 = \frac{100}{131.7} = 0.76 \implies R_3 = \sqrt{(7143)^2 + (24\,244)^2 + 2(7143)(24\,244)(0.76)} = \mathbf{30\,033\text{ N}}$
* $\cos \theta_4 = \frac{100}{101} = 0.99 \implies R_4 = \sqrt{(7143)^2 + (18\,593)^2 + 2(7143)(18\,593)(0.99)} = \mathbf{25\,684\text{ N}}$
* $\cos \theta_5 = \frac{100}{152} = 0.658 \implies R_5 = \sqrt{(7143)^2 + (27\,981)^2 + 2(7143)(27\,981)(0.658)} = \mathbf{33\,121\text{ N}}$

Rivet 5 experiences the maximum resultant load: $R_{\max} = R_5 = \mathbf{33\,121\text{ N}}$.

#### 7. Rivet Size Determination ($d$)
Equating maximum resultant load to shearing strength of rivet hole:
$$R_5 = \frac{\pi}{4} d^2 \cdot \tau \implies 33\,121 = \frac{\pi}{4} d^2 \times 65 = 51 d^2$$
$$d^2 = \frac{33\,121}{51} = 649.4 \implies d = \mathbf{25.5\text{ mm}}$$
From IS: 1929–1982, standard rivet hole diameter $d = \mathbf{25.5\text{ mm}}$ (nominal rivet diameter $= 24\text{ mm}$).

#### 8. Crushing Stress Check ($\sigma_c$)
$$\sigma_c = \frac{R_5}{d \cdot t} = \frac{33\,121}{25.5 \times 25} = 51.95\text{ N/mm}^2 = \mathbf{51.95\text{ MPa}} \quad ( \le 120\text{ MPa} \implies \text{Satisfactory})$$

$$\mathbf{\text{Final Answers: Rivet hole diameter } d = 25.5\text{ mm}, \text{ Nominal rivet diameter } = 24\text{ mm}, \text{ Max load on Rivet 5 } R_5 = 33.12\text{ kN}, \sigma_c = 51.95\text{ MPa}}$$

---

## Example 9.15 (Eccentrically Loaded 9-Rivet Bracket Joint Design)

### Problem Statement
The bracket as shown in Fig. 9.27, is to carry a load of $45\text{ kN}$. Determine the size of the rivet if the shear stress is not to exceed $40\text{ MPa}$. Assume all rivets of the same size.

---

### Solution

#### Given Data:
* Load ($P$): $45\text{ kN} = 45 \times 10^3\text{ N}$
* Eccentricity ($e$): $500\text{ mm}$
* Number of rivets ($n$): $9$ (3 rows $\times$ 3 columns, spacing horizontal $100\text{ mm}$, vertical $120\text{ mm}$)
* Permissible shear stress ($\tau$): $40\text{ MPa} = 40\text{ N/mm}^2$

#### 1. Center of Gravity ($G$) of Rivet System
By symmetry, the center of gravity $G$ lies at Rivet 5 (the central rivet of the $3 \times 3$ grid).

#### 2. Direct Shear Load per Rivet ($P_s$)
$$P_s = \frac{P}{n} = \frac{45 \times 10^3}{9} = \mathbf{5000\text{ N}} \quad (\text{acting vertically downward})$$

#### 3. Eccentric Turning Moment ($M$)
$$M = P \cdot e = 45 \times 10^3 \times 500 = \mathbf{22.5 \times 10^6\text{ N-mm}}$$

#### 4. Radial Distances ($l_i$) from C.G. $G(0,0)$
* Corner rivets (1, 3, 7, 9): $l_1 = l_3 = l_7 = l_9 = \sqrt{(100)^2 + (120)^2} = \mathbf{156.2\text{ mm}}$
* Vertical middle rivets (2, 8): $l_2 = l_8 = \mathbf{120\text{ mm}}$
* Horizontal middle rivets (4, 6): $l_4 = l_6 = \mathbf{100\text{ mm}}$
* Center rivet (5): $l_5 = 0\text{ mm}$

Sum of squared radial distances per unit distance ($\frac{\sum l_i^2}{l_1}$):
$$\frac{\sum l_i^2}{l_1} = \frac{4(156.2)^2 + 2(120)^2 + 2(100)^2}{156.2} = \frac{97\,594 + 28\,800 + 20\,000}{156.2} = \mathbf{973.2\text{ mm}}$$

#### 5. Secondary Shear Loads ($F_i$)
Secondary shear load on corner rivets (1, 3, 7, 9):
$$F_1 = F_3 = F_7 = F_9 = \frac{M}{\frac{\sum l_i^2}{l_1}} = \frac{22.5 \times 10^6}{973.2} = \mathbf{23\,120\text{ N}}$$
* $F_2 = F_8 = F_1 \frac{l_2}{l_1} = 23\,120 \times \frac{120}{156.2} = \mathbf{17\,762\text{ N}}$
* $F_4 = F_6 = F_1 \frac{l_4}{l_1} = 23\,120 \times \frac{100}{156.2} = \mathbf{14\,800\text{ N}}$

#### 6. Resultant Shear Load ($R_i$) on Critical Rivets
By inspection, rivets 3 and 9 experience the maximum resultant shear load.
For Rivets 3 and 9:
$$\cos \theta_3 = \cos \theta_9 = \frac{100}{156.2} = 0.64$$
$$R_3 = R_9 = \sqrt{P_s^2 + F_3^2 + 2 P_s F_3 \cos \theta_3} = \sqrt{(5000)^2 + (23\,120)^2 + 2(5000)(23\,120)(0.64)} = \mathbf{26\,600\text{ N}}$$

For Rivet 6:
$$R_6 = P_s + F_6 = 5000 + 14\,800 = \mathbf{19\,800\text{ N}}$$

Maximum resultant shear load $R_{\max} = R_3 = R_9 = \mathbf{26\,600\text{ N}}$.

#### 7. Rivet Size Determination ($d$)
$$R_3 = \frac{\pi}{4} d^2 \cdot \tau \implies 26\,600 = \frac{\pi}{4} d^2 \times 40 = 31.42 d^2$$
$$d^2 = \frac{26\,600}{31.42} = 846 \implies d = \mathbf{29\text{ mm}}$$
From IS: 1929–1982 (Reaffirmed 1996), standard rivet hole diameter $d = \mathbf{29\text{ mm}}$ (corresponding nominal rivet diameter $= \mathbf{27\text{ mm}}$).

$$\mathbf{\text{Final Answers: Rivet hole diameter } d = 29\text{ mm}, \text{ Nominal rivet diameter } = 27\text{ mm}, \text{ Max resultant load } R_3 = 26.6\text{ kN}}$$

---

## Example 9.16 (Maximum Safe Load Capacity for 4-Rivet Horizontal System)

### Problem Statement
Find the value of $P$ for the joint shown in Fig. 9.29 based on a working shear stress of $100\text{ MPa}$ for the rivets. The four rivets are equal, each of $20\text{ mm}$ diameter.

---

### Solution

#### Given Data:
* Permissible shear stress ($\tau$): $100\text{ MPa} = 100\text{ N/mm}^2$
* Number of rivets ($n$): $4$ (horizontally aligned rivets A, B, C, D with $200\text{ mm}$ pitch)
* Rivet diameter ($d$): $20\text{ mm}$

#### 1. Direct Shear Load per Rivet ($P_s$)
$$P_s = \frac{P}{n} = \frac{P}{4} = \mathbf{0.25 P} \quad (\text{acting vertically downward})$$

#### 2. Center of Gravity ($E$) and Eccentricity ($e$)
By symmetry of the horizontal row of 4 rivets (A, B, C, D spaced $200\text{ mm}$ apart):
* C.G. $E$ lies at the midpoint between B and C.
* Perpendicular distance from $E$ to the line of action of load $P$: $e = \mathbf{100\text{ mm}}$.
* Turning moment $M = P \cdot e = \mathbf{100 P\text{ N-mm}}$ (anticlockwise).

#### 3. Radial Distances ($l_i$) from C.G. $E$
* $l_A = l_D = 100 + 200 = \mathbf{300\text{ mm}}$
* $l_B = l_C = \mathbf{100\text{ mm}}$

Sum of squared radial distances ($\sum l_i^2$):
$$\sum l_i^2 = 2(300)^2 + 2(100)^2 = 180\,000 + 20\,000 = \mathbf{200\,000\text{ mm}^2}$$

#### 4. Secondary Shear Loads ($F_i$)
Equating turning moment $M$ to resisting moment:
$$F_A = \frac{M \cdot l_A}{\sum l_i^2} = \frac{100 P \times 300}{200\,000} = \mathbf{0.15 P\text{ N}}$$
* $F_B = F_A \frac{l_B}{l_A} = 0.15 P \times \frac{100}{300} = \mathbf{0.05 P\text{ N}}$
* $F_C = \mathbf{0.05 P\text{ N}}$
* $F_D = \mathbf{0.15 P\text{ N}}$

#### 5. Resultant Shear Loads ($R_i$) on Each Rivet
Since direct and secondary shear loads act vertically:
* $R_A = P_s - F_A = 0.25 P - 0.15 P = \mathbf{0.10 P}$
* $R_B = P_s - F_B = 0.25 P - 0.05 P = \mathbf{0.20 P}$
* $R_C = P_s + F_C = 0.25 P + 0.05 P = \mathbf{0.30 P}$
* $R_D = P_s + F_D = 0.25 P + 0.15 P = \mathbf{0.40 P}$

Maximum resultant shear load occurs on **Rivet D**: $R_{\max} = R_D = \mathbf{0.40 P}$.

#### 6. Maximum Permissible Shear Capacity per Rivet ($P_{\text{shear}}$)
$$P_{\text{shear}} = \frac{\pi}{4} d^2 \cdot \tau = \frac{\pi}{4} (20)^2 \times 100 = \mathbf{31\,420\text{ N}}$$

#### 7. Maximum Safe Load ($P$)
Equating maximum resultant load $R_D$ to rivet shear capacity $P_{\text{shear}}$:
$$0.40 P = 31\,420 \implies P = \frac{31\,420}{0.40} = 78\,550\text{ N} = \mathbf{78.55\text{ kN}}$$

$$\mathbf{\text{Final Answers: Direct shear } P_s = 0.25 P, \text{ Max resultant load on Rivet D } R_D = 0.40 P, \text{ Max safe load } P = 78.55\text{ kN}}$$

---

## Example 9.17 (Eccentrically Loaded 6-Rivet Column Bracket Design)

### Problem Statement
A bracket is riveted to a column by $6$ rivets of equal size as shown in Fig. 9.31. It carries a load of $60\text{ kN}$ at a distance of $200\text{ mm}$ from the centre of the column. If the maximum shear stress in the rivet is limited to $150\text{ MPa}$, determine the diameter of the rivet.

---

### Solution

#### Given Data:
* Load ($P$): $60\text{ kN} = 60 \times 10^3\text{ N}$
* Eccentricity ($e$): $200\text{ mm}$
* Number of rivets ($n$): $6$ (2 columns $\times$ 3 rows, spacing horizontal $100\text{ mm}$, vertical $150\text{ mm}$)
* Permissible shear stress ($\tau$): $150\text{ MPa} = 150\text{ N/mm}^2$

#### 1. Center of Gravity ($G$) of Rivet System
By symmetry of the 6-rivet pattern, center of gravity $G$ lies at the midpoint between Rivet 2 and Rivet 5.

#### 2. Direct Shear Load per Rivet ($P_s$)
$$P_s = \frac{P}{n} = \frac{60 \times 10^3}{6} = \mathbf{10\,000\text{ N}} \quad (\text{acting vertically downward})$$

#### 3. Eccentric Turning Moment ($M$)
$$M = P \cdot e = 60 \times 10^3 \times 200 = \mathbf{12 \times 10^6\text{ N-mm}}$$

#### 4. Radial Distances ($l_i$) from C.G. $G(0,0)$
* Corner rivets (1, 3, 4, 6): $l_1 = l_3 = l_4 = l_6 = \sqrt{(75)^2 + (50)^2} = \sqrt{5625 + 2500} = \mathbf{90.1\text{ mm}}$
* Middle rivets (2, 5): $l_2 = l_5 = \mathbf{50\text{ mm}}$

Sum of squared radial distances per unit distance ($\frac{\sum l_i^2}{l_1}$):
$$\frac{\sum l_i^2}{l_1} = \frac{4(90.1)^2 + 2(50)^2}{90.1} = \frac{32\,472 + 5000}{90.1} = \mathbf{416\text{ mm}}$$

#### 5. Secondary Shear Loads ($F_i$)
Secondary shear load on corner rivets (1, 3, 4, 6):
$$F_1 = F_3 = F_4 = F_6 = \frac{M}{\frac{\sum l_i^2}{l_1}} = \frac{12 \times 10^6}{416} = \mathbf{28\,846\text{ N}}$$
* Secondary shear load on middle rivets (2, 5):
  $$F_2 = F_5 = F_1 \frac{l_2}{l_1} = 28\,846 \times \frac{50}{90.1} = \mathbf{16\,008\text{ N}}$$

#### 6. Resultant Shear Loads ($R_i$) on Critical Rivets
By inspection, rivets 1 and 3 experience the maximum resultant shear load.
For Rivets 1 and 3:
$$\cos \theta_1 = \cos \theta_3 = \frac{50}{90.1} = 0.555$$
$$R_1 = R_3 = \sqrt{P_s^2 + F_1^2 + 2 P_s F_1 \cos \theta_1} = \sqrt{(10\,000)^2 + (28\,846)^2 + 2(10\,000)(28\,846)(0.555)} = \mathbf{35\,384\text{ N}}$$

For Rivet 2:
$$R_2 = P_s + F_2 = 10\,000 + 16\,008 = \mathbf{26\,008\text{ N}}$$

Maximum resultant shear load $R_{\max} = R_1 = R_3 = \mathbf{35\,384\text{ N}}$.

#### 7. Rivet Size Determination ($d$)
$$R_1 = \frac{\pi}{4} d^2 \cdot \tau \implies 35\,384 = \frac{\pi}{4} d^2 \times 150 = 117.8 d^2$$
$$d^2 = \frac{35\,384}{117.8} = 300.4 \implies d = \mathbf{17.33\text{ mm}}$$
From IS: 1929–1982 (Reaffirmed 1996), standard rivet hole diameter $d = \mathbf{19.5\text{ mm}}$ (corresponding nominal rivet diameter $= \mathbf{18\text{ mm}}$).

$$\mathbf{\text{Final Answers: Rivet hole diameter } d = 19.5\text{ mm}, \text{ Nominal rivet diameter } = 18\text{ mm}, \text{ Max resultant load } R_1 = 35.38\text{ kN}}$$

---

## Example 9.18 (Eccentrically Loaded Inclined Load Bracket & Plate Design)

### Problem Statement
A bracket in the form of a plate is fitted to a column by means of four rivets A, B, C and D in the same vertical line, as shown in Fig. 9.33. $AB = BC = CD = 60\text{ mm}$. $E$ is the mid-point of $BC$. A load of $100\text{ kN}$ is applied to the bracket at a point $F$ which is at a horizontal distance of $150\text{ mm}$ from $E$. The load acts at an angle of $30^\circ$ to the horizontal. Determine the diameter of the rivets which are made of steel having a yield stress in shear of $240\text{ MPa}$. Take a factor of safety of $1.5$.
What would be the thickness of the plate taking an allowable bending stress of $125\text{ MPa}$ for the plate, assuming its total width at section ABCD as $240\text{ mm}$?

---

### Solution

#### Given Data:
* Number of rivets ($n$): $4$ (in a vertical line, pitch $AB = BC = CD = 60\text{ mm}$)
* Load ($P$): $100\text{ kN} = 100 \times 10^3\text{ N}$ at $\theta = 30^\circ$ to horizontal
* Horizontal distance ($EF$): $150\text{ mm}$
* Shear yield stress ($\tau_y$): $240\text{ MPa}$
* Factor of safety ($\text{F.S.}$): $1.5 \implies$ Allowable shear stress $\tau = \frac{240}{1.5} = \mathbf{160\text{ N/mm}^2}$
* Plate width ($b$): $240\text{ mm}$
* Allowable bending stress ($\sigma_b$): $125\text{ MPa} = 125\text{ N/mm}^2$

---

### Part A: Diameter of Rivets ($d$)

#### 1. Direct Shear Load per Rivet ($P_s$)
$$P_s = \frac{P}{n} = \frac{100 \times 10^3}{4} = \mathbf{25\,000\text{ N}} \quad (\text{acting at } 30^\circ \text{ to horizontal})$$

#### 2. Center of Gravity ($E$) & Eccentricity ($e$)
C.G. lies at midpoint $E$ of $BC$.
Perpendicular distance from $E$ to line of action of load $P$:
$$e = EG = EF \cdot \sin 30^\circ = 150 \times 0.5 = \mathbf{75\text{ mm}}$$

Eccentric turning moment ($M$):
$$M = P \cdot e = 100 \times 10^3 \times 75 = \mathbf{7.5 \times 10^6\text{ N-mm}}$$

#### 3. Radial Distances ($l_i$) and Secondary Shear Loads ($F_i$)
* $l_A = l_D = 60 + 30 = \mathbf{90\text{ mm}}$
* $l_B = l_C = \mathbf{30\text{ mm}}$

Sum of squared radial distances ($\sum l_i^2$):
$$\sum l_i^2 = 2(90)^2 + 2(30)^2 = 16\,200 + 1800 = \mathbf{18\,000\text{ mm}^2}$$

Secondary shear loads:
$$F_A = F_D = \frac{M \cdot l_A}{\sum l_i^2} = \frac{7.5 \times 10^6 \times 90}{18\,000} = \mathbf{37\,500\text{ N}}$$
$$F_B = F_C = 37\,500 \times \frac{30}{90} = \mathbf{12\,500\text{ N}}$$

#### 4. Resultant Shear Load ($R_i$) on Each Rivet
* Rivet A: $R_A = \sqrt{(25\,000)^2 + (37\,500)^2 + 2(25\,000)(37\,500) \cos 150^\circ} = \mathbf{20\,180\text{ N}}$
* Rivet B: $R_B = \sqrt{(25\,000)^2 + (12\,500)^2 + 2(25\,000)(12\,500) \cos 150^\circ} = \mathbf{15\,492\text{ N}}$
* Rivet C: $R_C = \sqrt{(25\,000)^2 + (12\,500)^2 + 2(25\,000)(12\,500) \cos 30^\circ} = \mathbf{36\,366\text{ N}}$
* Rivet D: $R_D = \sqrt{(25\,000)^2 + (37\,500)^2 + 2(25\,000)(37\,500) \cos 30^\circ} = \mathbf{60\,455\text{ N}}$

Maximum resultant load occurs on **Rivet D**: $R_{\max} = R_D = \mathbf{60\,455\text{ N}}$.

#### 5. Rivet Hole Diameter ($d$) Determination
$$R_D = \frac{\pi}{4} d^2 \cdot \tau \implies 60\,455 = \frac{\pi}{4} d^2 \times 160 = 125.7 d^2$$
$$d^2 = \frac{60\,455}{125.7} = 481 \implies d = \mathbf{21.9\text{ mm}}$$
From IS: 1929–1982 (Reaffirmed 1996), standard rivet hole diameter $d = \mathbf{23.5\text{ mm}}$ (corresponding nominal rivet diameter $= \mathbf{22\text{ mm}}$).

---

### Part B: Thickness of Bracket Plate ($t$)

1. **Section Modulus & Moment of Inertia ($I_{XX}$)**:
   Taking hole diameter $d = 23.5\text{ mm}$ and plate width $b = 240\text{ mm}$:
   $$I_{XX} = \frac{1}{12} t (240)^3 - \left[ 4 \times \frac{1}{12} t (23.5)^3 + 2 (23.5 t)(30)^2 + 2 (23.5 t)(90)^2 \right]$$
   $$I_{XX} = 1.152 \times 10^6 t - \left[ 4.326 \times 10^3 t + 423 \times 10^3 t \right] = \mathbf{724\,674 t\text{ mm}^4}$$

2. **Bending Stress Equation**:
   Distance to neutral axis $y = 240 / 2 = 120\text{ mm}$, Bending moment $M = 7.5 \times 10^6\text{ N-mm}$.
   $$\sigma_b = \frac{M \cdot y}{I_{XX}} \implies 125 = \frac{7.5 \times 10^6 \times 120}{724\,674 t} = \frac{1241.94}{t}$$
   $$t = \frac{1241.94}{125} = 9.93\text{ mm} \approx \mathbf{10\text{ mm}}$$

$$\mathbf{\text{Final Answers: Rivet hole } d = 23.5\text{ mm}, \text{ Nominal rivet diameter } = 22\text{ mm}, \text{ Max resultant load } R_D = 60.46\text{ kN}, \text{ Plate thickness } t = 10\text{ mm}}$$
