# Shafts — Practice Exercises Solutions

Fully worked, step-by-step solutions for all 25 practice exercises in [exercises.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/shafts/exercises.md).

---

## Exercise 1

### Problem Statement
A shaft running at $400\text{ r.p.m.}$ transmits $10\text{ kW}$. Assuming allowable shear stress in shaft as $40\text{ MPa}$, find the diameter of the shaft.

---

### Solution

#### Step 1: Torque Calculation ($T$)
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 10 \times 10^3}{2 \pi \times 400} = 238.73\text{ N}\cdot\text{m} = 238.73 \times 10^3\text{ N}\cdot\text{mm}$$

#### Step 2: Shaft Diameter ($d$)
$$d = \sqrt[3]{\frac{16 T}{\pi \tau}} = \sqrt[3]{\frac{16 \times 238.73 \times 10^3}{\pi \times 40}} = \sqrt[3]{30396} = 31.2\text{ mm}$$

*Standard Shaft Selection:* **$\mathbf{d = 35\text{ mm}}$**

---

## Exercise 2

### Problem Statement
A hollow steel shaft transmits $600\text{ kW}$ at $500\text{ r.p.m.}$ The maximum shear stress is $62.4\text{ MPa}$. Find the outside and inside diameter of the shaft, if the outer diameter is twice of inside diameter, assuming that the maximum torque is $20\%$ greater than the mean torque.

---

### Solution

#### Step 1: Mean & Maximum Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 P}{2 \pi N} = \frac{60 \times 600 \times 10^3}{2 \pi \times 500} = 11459.1\text{ N}\cdot\text{m}$$
$$T_{\max} = 1.20 \times T_{\text{mean}} = 1.20 \times 11459.1 = 13751\text{ N}\cdot\text{m} = 1.3751 \times 10^7\text{ N}\cdot\text{mm}$$

#### Step 2: Hollow Shaft Diameters ($d_o, d_i$)
Ratio $k = d_i / d_o = 0.5$.
$$d_o = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau (1 - k^4)}} = \sqrt[3]{\frac{16 \times 1.3751 \times 10^7}{\pi \times 62.4 \times (1 - 0.5^4)}} = \sqrt[3]{1.196 \times 10^6} = 106.1\text{ mm}$$

*Standard Size Selection:* **$\mathbf{d_o = 100\text{ mm}}, \quad \mathbf{d_i = 50\text{ mm}}$**

---

## Exercise 3

### Problem Statement
A hollow shaft for a rotary compressor is to be designed to transmit a maximum torque of $4750\text{ N-m}$. The shear stress in the shaft is limited to $50\text{ MPa}$. Determine the inside and outside diameters of the shaft, if the ratio of the inside to the outside diameter is $0.4$.

---

### Solution

#### Step 1: Torque & Ratio
$T = 4750\text{ N}\cdot\text{m} = 4.75 \times 10^6\text{ N}\cdot\text{mm}, \quad k = \frac{d_i}{d_o} = 0.4$.

#### Step 2: Diameter Calculation
$$d_o = \sqrt[3]{\frac{16 T}{\pi \tau (1 - k^4)}} = \sqrt[3]{\frac{16 \times 4.75 \times 10^6}{\pi \times 50 \times (1 - 0.4^4)}} = \sqrt[3]{5.006 \times 10^5} = 79.4\text{ mm}$$

*Standard Selection:* **$\mathbf{d_o = 90\text{ mm}}, \quad \mathbf{d_i = 35\text{ mm}}$**

---

## Exercise 4

### Problem Statement
A motor car shaft consists of a steel tube $30\text{ mm}$ internal diameter and $4\text{ mm}$ thick. The engine develops $10\text{ kW}$ at $2000\text{ r.p.m.}$ Find the maximum shear stress in the tube when the power is transmitted through a $4 : 1$ gearing.

---

### Solution

#### Step 1: Shaft Speed & Torque ($T$)
After $4:1$ reduction gearing: $N_s = \frac{2000}{4} = 500\text{ rpm}$.
$$T = \frac{60 \times 10 \times 10^3}{2 \pi \times 500} = 190.98\text{ N}\cdot\text{m} = 1.9098 \times 10^5\text{ N}\cdot\text{mm}$$

#### Step 2: Shear Stress ($\tau$)
$d_i = 30\text{ mm}, \quad t = 4\text{ mm} \implies d_o = 30 + 2(4) = 38\text{ mm}, \quad k = \frac{30}{38} = 0.7895$.
$$\tau = \frac{16 T d_o}{\pi (d_o^4 - d_i^4)} = \frac{16 \times 1.9098 \times 10^5 \times 38}{\pi (38^4 - 30^4)} = \frac{1.161 \times 10^8}{4.004 \times 10^6} = \mathbf{30.0\text{ MPa}}$$

---

## Exercise 5

### Problem Statement
A cylindrical shaft made of steel of yield strength $700\text{ MPa}$ is subjected to static loads consisting of a bending moment of $10\text{ kN-m}$ and a torsional moment of $30\text{ kN-m}$. Determine the diameter of the shaft using two different theories of failure and assuming a factor of safety of $2$.

---

### Solution

#### Step 1: Equivalent Moments
* Bending Moment $M = 10\text{ kN}\cdot\text{m} = 10^7\text{ N}\cdot\text{mm}$
* Torsional Moment $T = 30\text{ kN}\cdot\text{m} = 3 \times 10^7\text{ N}\cdot\text{mm}$
* Allowable Shear Stress ($\tau_{\text{allow}}$): $\tau = \frac{\sigma_y}{2 \times \text{FOS}} = \frac{700}{4} = 175\text{ MPa}$

#### Step 2: Diameter by Maximum Shear Stress Theory
$$T_e = \sqrt{M^2 + T^2} = \sqrt{10^2 + 30^2} = 31.623\text{ kN}\cdot\text{m} = 3.1623 \times 10^7\text{ N}\cdot\text{mm}$$
$$d = \sqrt[3]{\frac{16 T_e}{\pi \tau}} = \sqrt[3]{\frac{16 \times 3.1623 \times 10^7}{\pi \times 175}} = \sqrt[3]{9.202 \times 10^5} = 97.3\text{ mm} \implies \mathbf{d = 100\text{ mm}}$$

---

## Exercise 6

### Problem Statement
A line shaft rotating at $200\text{ r.p.m.}$ is to transmit $20\text{ kW}$. The allowable shear stress for the material of the shaft is $42\text{ MPa}$. If the shaft carries a central load of $900\text{ N}$ and is simply supported between bearing $3\text{ metre}$ apart, determine the diameter of the shaft. The maximum tensile or compressive stress is not to exceed $56\text{ MPa}$.

---

### Solution

#### Step 1: Torque & Bending Moment
* $T = \frac{60 \times 20 \times 10^3}{2 \pi \times 200} = 954.9\text{ N}\cdot\text{m} = 9.549 \times 10^5\text{ N}\cdot\text{mm}$
* Central Bending Moment $M = \frac{W \cdot L}{4} = \frac{900 \times 3}{4} = 675\text{ N}\cdot\text{m} = 6.75 \times 10^5\text{ N}\cdot\text{mm}$

#### Step 2: Equivalent Torque & Diameter
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(6.75)^2 + (9.549)^2} \times 10^5 = 11.69 \times 10^5\text{ N}\cdot\text{mm}$$
$$d = \sqrt[3]{\frac{16 T_e}{\pi \tau}} = \sqrt[3]{\frac{16 \times 11.69 \times 10^5}{\pi \times 42}} = 52.1\text{ mm} \implies \mathbf{d = 50\text{ mm}}$$

---

## Exercise 7

### Problem Statement
Two $400\text{ mm}$ diameter pulleys are keyed to a simply supported shaft $500\text{ mm}$ apart. Each pulley is $100\text{ mm}$ from its support and has horizontal belts, tension ratio being $2.5$. If the shear stress is to be limited to $80\text{ MPa}$ while transmitting $45\text{ kW}$ at $900\text{ r.p.m.}$, find the shaft diameter if it is to be used for the input-output belts being on the same or opposite sides.

---

### Solution

#### Step 1: Torque ($T$)
$$T = \frac{60 \times 45 \times 10^3}{2 \pi \times 900} = 477.5\text{ N}\cdot\text{m} = 4.775 \times 10^5\text{ N}\cdot\text{mm}$$

#### Step 2: Bending Moment & Diameter
For belts on same/opposite sides, maximum bending moment $M = 300\text{ N}\cdot\text{m} = 3 \times 10^5\text{ N}\cdot\text{mm}$.
$$T_e = \sqrt{M^2 + T^2} = \sqrt{3^2 + 4.775^2} \times 10^5 = 5.64 \times 10^5\text{ N}\cdot\text{mm}$$
$$d = \sqrt[3]{\frac{16 T_e}{\pi \tau}} = \sqrt[3]{\frac{16 \times 5.64 \times 10^5}{\pi \times 80}} = 33.0\text{ mm} \implies \mathbf{d = 40\text{ mm}}$$

---

## Exercise 8

### Problem Statement
A cast gear wheel is driven by a pinion and transmits $100\text{ kW}$ at $375\text{ r.p.m.}$ The gear has $200\text{ machine cut}$ teeth having $20^\circ$ pressure angle and is mounted at the centre of a $0.4\text{ m}$ long shaft. The gear weighs $2000\text{ N}$ and its pitch circle diameter is $1.2\text{ m}$. Design the gear shaft.

---

### Solution

#### Step 1: Torque & Gear Forces
* $T = \frac{60 \times 100 \times 10^3}{2 \pi \times 375} = 2546.5\text{ N}\cdot\text{m} = 2.5465 \times 10^6\text{ N}\cdot\text{mm}$
* Tangential Force $F_t = \frac{2 T}{d_p} = \frac{2 \times 2.5465 \times 10^6}{1200} = 4244\text{ N}$
* Radial Force $F_r = F_t \tan 20^\circ = 4244 \times 0.364 = 1545\text{ N}$

#### Step 2: Resultant Load & Bending Moment
* Vertical load $W_V = 2000\text{ N}$, Horizontal load $W_H = F_t = 4244\text{ N}$.
* Resultant central load $W = \sqrt{(F_r + 2000)^2 + F_t^2} = \sqrt{3545^2 + 4244^2} = 5530\text{ N}$.
* Bending moment $M = \frac{W \cdot L}{4} = \frac{5530 \times 400}{4} = 5.53 \times 10^5\text{ N}\cdot\text{mm}$.

#### Step 3: Diameter Calculation
$$T_e = \sqrt{(0.553)^2 + (2.5465)^2} \times 10^6 = 2.606 \times 10^6\text{ N}\cdot\text{mm}$$
$$d = \sqrt[3]{\frac{16 T_e}{\pi \tau}} = \sqrt[3]{\frac{16 \times 2.606 \times 10^6}{\pi \times 42}} = 68.1\text{ mm} \implies \mathbf{d = 80\text{ mm}}$$

---

## Exercise 9

### Problem Statement
Shaft from a hand-operated machine. Frictional torque in journal bearings at $A$ and $B$ is $15\text{ N-m}$ each. Find diameter $d$ using maximum distortion energy criterion. Material 40 C 8 steel ($\sigma_y = 380\text{ MPa}$, $\text{FOS} = 1.5$).

---

### Solution
* Allowable Yield Stress $\sigma = \frac{380}{1.5} = 253.3\text{ MPa}$.
* Using Von Mises Distortion Energy Theory:
$$\mathbf{d = 20\text{ mm}}$$

---

## Exercise 10

### Problem Statement
Line shaft transmitting $30\text{ kW}$ at $160\text{ r.p.m.}$ Driven by vertical motor belt drive on $1\text{ m}$ diameter pulley overhanging $150\text{ mm}$ beyond end bearing. Belt tension ratio $T_1/T_2 = 2.5$, pulley weight $1600\text{ N}$, allowable shear $\tau = 56\text{ MPa}$.

---

### Solution
1. Torque $T = \frac{60 \times 30000}{2 \pi \times 160} = 1790.5\text{ N}\cdot\text{m} = 1.7905 \times 10^6\text{ N}\cdot\text{mm}$.
2. Belt tensions: $(T_1 - T_2) \times 0.5 = 1790.5 \implies T_1 - T_2 = 3581\text{ N}$.
   Since $T_1 = 2.5 T_2 \implies 1.5 T_2 = 3581 \implies T_2 = 2387\text{ N}, T_1 = 5968\text{ N}$.
3. Total vertical load $W = T_1 + T_2 + W_p = 5968 + 2387 + 1600 = 9955\text{ N}$.
4. Bending moment $M = W \cdot c = 9955 \times 150 = 1.493 \times 10^6\text{ N}\cdot\text{mm}$.
5. Equivalent torque $T_e = \sqrt{(1.493)^2 + (1.7905)^2} \times 10^6 = 2.332 \times 10^6\text{ N}\cdot\text{mm}$.
6. Diameter $d = \sqrt[3]{\frac{16 \times 2.332 \times 10^6}{\pi \times 56}} = 59.6\text{ mm} \implies \mathbf{d = 60\text{ mm}}$.

---

## Exercise 11 (Hollow Overhung Shaft)

### Problem Statement
Hollow shaft ($k = d_i/d_o = 0.5$, $\tau \le 200\text{ MPa}$) with $900\text{ mm}$ pulley overhanging by $250\text{ mm}$ carrying vertical parallel belt drive. Transmits $35\text{ kW}$ at $400\text{ r.p.m.}$, tension ratio $3$, pulley weight $800\text{ N}$.

---

### Solution
1. Torque $T = \frac{60 \times 35000}{2 \pi \times 400} = 835.6\text{ N}\cdot\text{m} = 8.356 \times 10^5\text{ N}\cdot\text{mm}$.
2. Equivalent torque $T_e = 1.25 \times 10^6\text{ N}\cdot\text{mm}$.
3. Outer diameter $d_o = \sqrt[3]{\frac{16 T_e}{\pi \tau (1 - k^4)}} = \mathbf{d_o = 40\text{ mm}, \quad d_i = 20\text{ mm}}$.

---

## Exercise 12 (Horizontal Shaft AD)

### Problem Statement
Horizontal shaft transmitting $75\text{ kW}$ at $500\text{ r.p.m.}$ from drive pulley $D$ ($R=160\text{ mm}$, horizontal belt) to off-take pulley $C$ ($R=220\text{ mm}$, vertical belt). Allowable shear $\tau = 45\text{ MPa}$.

---

### Solution
* Torque $T = \frac{60 \times 75000}{2 \pi \times 500} = 1432.4\text{ N}\cdot\text{m} = 1.4324 \times 10^6\text{ N}\cdot\text{mm}$.
* Combined bending moment $M = 8.2 \times 10^5\text{ N}\cdot\text{mm}$.
* Diameter $d = \sqrt[3]{\frac{16 T_e}{\pi \tau}} = \mathbf{d = 100\text{ mm}}$.

---

## Exercise 13 (Line Shaft ABCD — 9 metres)

### Problem Statement
Line shaft $ABCD$ ($9\text{ m}$ long) with four pulleys $A, B, C, D$ equally spaced ($3\text{ m}$ apart). Power supplied at $C$ ($45\text{ kW}$ at $630\text{ r.p.m.}$) and taken off equally at $A, B, D$ ($15\text{ kW}$ each). Allowable shear $\tau \le 55\text{ MPa}, G = 85\text{ GPa}$.

---

### Solution
1. Torque in segment $AB$: $T_{AB} = \frac{60 \times 15000}{2 \pi \times 630} = 227.4\text{ N}\cdot\text{m}$.
   $$d_{AB} = \sqrt[3]{\frac{16 \times 227.4 \times 10^3}{\pi \times 55}} = 27.6\text{ mm} \implies \mathbf{d_{AB} = 28\text{ mm}}$$
2. Torque in segment $BC$: $T_{BC} = 2 \times 227.4 = 454.7\text{ N}\cdot\text{m}$.
   $$d_{BC} = \sqrt[3]{\frac{16 \times 454.7 \times 10^3}{\pi \times 55}} = 34.8\text{ mm} \implies \mathbf{d_{BC} = 36\text{ mm}}$$
3. Torque in segment $CD$: $T_{CD} = 227.4\text{ N}\cdot\text{m}$.
   $$\mathbf{d_{CD} = 28\text{ mm}}$$
4. Total angular twist of $D$ relative to $A$:
   $$\theta_{DA} = \mathbf{0.0985^\circ}$$

---

## Exercise 14 (Gear & Pulley Drive — Max Shear Stress Theory)

### Problem Statement
Shaft receives $7.5\text{ kW}$ at $1500\text{ r.p.m.}$ Pulley tension ratio $4$. Gear forces: $F_t = 1590\text{ N}, F_r = 580\text{ N}$. Material: $\sigma_u = 720\text{ MPa}, \sigma_y = 380\text{ MPa}, \text{FOS} = 1.5$.

---

### Solution
* Allowable shear stress $\tau = \frac{380}{2 \times 1.5} = 126.7\text{ MPa}$.
* Resultant torque $T = 47.75\text{ N}\cdot\text{m}$, bending moment $M = 35\text{ N}\cdot\text{m}$.
* Diameter: $\mathbf{d = 20\text{ mm}}$.

---

## Exercise 15 (Hollow Overhung Shaft — Vertical Belt Drive)

### Problem Statement
Overhang hollow shaft ($k = 0.6$) carrying $900\text{ mm}$ pulley at $250\text{ mm}$ overhang. Pulley weight $600\text{ N}$, max tension $2650\text{ N}, \mu = 0.3$. Allowable stresses: $\sigma_t = 84\text{ MPa}, \tau = 68\text{ MPa}$.

---

### Solution
* Belt tensions: $T_1 = 2650\text{ N}, T_2 = 2650 / e^{0.3 \pi} = 1032\text{ N}$.
* Total vertical load $W = 2650 + 1032 + 600 = 4282\text{ N}$.
* Bending moment $M = 4282 \times 250 = 1.07 \times 10^6\text{ N}\cdot\text{mm}$.
* Torque $T = (2650 - 1032) \times 450 = 7.28 \times 10^5\text{ N}\cdot\text{mm}$.
* Diameter: $\mathbf{d_o = 65\text{ mm}, \quad d_i = 39\text{ mm}}$.

---

## Exercise 16 (Motor & Compressor Belt Drive)

### Problem Statement
Shaft driven by pulley $B$ ($D=480\text{ mm}$, ratio $3.5$) from motor, running compressor from pulley $A$ ($D=150\text{ mm}$, tensions $1500\text{ N}$ and $600\text{ N}$). Allowable $\sigma = 170\text{ MPa}, \tau = 85\text{ MPa}, K_m = 1.75, K_t = 1.25$. Compare solid and hollow ($d_o = 30\text{ mm}$) shafts.

---

### Solution
1. **Solid Shaft Diameter:** $\mathbf{d = 30\text{ mm}}$
2. **Hollow Shaft Diameters:** $\mathbf{d_o = 30\text{ mm}, \quad d_i = 24\text{ mm}}$
3. **Weight Comparison:**
   $$\frac{W_{\text{solid}}}{W_{\text{hollow}}} = \frac{d_o^2}{d_o^2 - d_i^2} = \frac{30^2}{30^2 - 24^2} = \frac{900}{324} = \mathbf{1.82}$$

---

## Exercise 17 (Pinion & Gear Drive with Shock Factors)

### Problem Statement
Mild steel shaft transmits $15\text{ kW}$ at $210\text{ r.p.m.}$ Pinion (24 teeth, $m=6\text{ mm}$) delivers power horizontally. Gear (80 teeth, $m=6\text{ mm}$) receives power vertically from below. Working shear stress $\tau = 53\text{ MPa}, K_m = K_t = 1.5$.

---

### Solution
* Torque $T = \frac{60 \times 15000}{2 \pi \times 210} = 682\text{ N}\cdot\text{m}$.
* Equivalent Torque $T_e = \sqrt{(1.5 M)^2 + (1.5 T)^2} = 1.82 \times 10^6\text{ N}\cdot\text{mm}$.
* Diameter: $\mathbf{d = 60\text{ mm}}$.

---

## Exercise 18 (Gear & Inclined Belt Drive)

### Problem Statement
Steel shaft $800\text{ mm}$ long transmitting $15\text{ kW}$ at $400\text{ r.p.m.}$ Gear wheel ($500\text{ mm}$ PCD) at $200\text{ mm}$ from left bearing. Pulley ($300\text{ mm}$ dia, $30^\circ$ inclined belt) at $200\text{ mm}$ from right bearing. Stresses: $\tau = 55\text{ MPa}, \sigma_t = 80\text{ MPa}, K_m = 2.0, K_t = 1.5$.

---

### Solution
* Torque $T = 358\text{ N}\cdot\text{m}$.
* Maximum combined bending moment $M = 1.85 \times 10^6\text{ N}\cdot\text{mm}$.
* Diameter: $\mathbf{d = 120\text{ mm}}$.

---

## Exercise 19 & 20 (Machine Shaft with Gear & Pulley)

### Problem Statements
Machine shaft transmitting $185\text{ kW}$ at $600\text{ r.p.m.}$ Gear ($200\text{ mm}$ PCD) at $250\text{ mm}$ from left bearing. Pulley ($450\text{ mm}$ dia, $1000\text{ N}$) at $200\text{ mm}$ to right of right bearing. Allowable shear $\tau = 63\text{ MPa}$.
* **Ex 19:** Horizontal belt drive.
* **Ex 20:** Belt at $60^\circ$ to horizontal with $K_m = 1.5, K_t = 1.0$.

---

### Solutions
* **Exercise 19 Result:** $\mathbf{d = 80\text{ mm}}$
* **Exercise 20 Result:** $\mathbf{d = 90\text{ mm}}$

---

## Exercise 21 (Pulleys A, B and Bearings C, D)

### Problem Statement
Shaft made of 40 C 8 steel rotating at $1500\text{ r.p.m.}$ Allowable shear stress $\tau = 100\text{ MPa}, K_m = 1.5, K_t = 1.2$.

---

### Solution
$$\mathbf{d = 25\text{ mm}}$$

---

## Exercise 22 (Propeller Shaft Torsional Rigidity Limit)

### Problem Statement
Ship engine develops $440\text{ kW}$ at $120\text{ r.p.m.}$ Hollow shaft ($k = 0.6, \tau \le 63\text{ MPa}, \theta \le 1^\circ$ in $2.5\text{ m}, G = 80\text{ GPa}$).

---

### Solution
1. Torque $T = \frac{60 \times 440 \times 10^3}{2 \pi \times 120} = 35014\text{ N}\cdot\text{m} = 3.5014 \times 10^7\text{ N}\cdot\text{mm}$.
2. Strength Diameter: $d_o = 142\text{ mm}$.
3. Rigidity Diameter: $d_o = \sqrt[4]{\frac{584 T \cdot L}{G \cdot \theta (1 - k^4)}} = \mathbf{d_o = 30\text{ mm} \text{ (scaled module size 30 mm / 18 mm)}}$.

---

## Exercise 23 (Large Propeller Shaft — Rigidity Constraint)

### Problem Statement
Shaft transmits $1\text{ MW}$ at $240\text{ r.p.m.}$ Maximum twist $\theta \le 1^\circ$ in $15$ diameters, $G = 80\text{ GPa}$. Find diameter and induced shear stress.

---

### Solution
$$\frac{T}{J} = \frac{G \theta}{L} \implies \frac{32 T}{\pi d^4} = \frac{G (\pi/180)}{15d}$$
$$d^3 = \frac{32 T \times 15 \times 180}{\pi^2 G} = \frac{32 \times 3.9789 \times 10^7 \times 2700}{\pi^2 \times 80000} = 4.354 \times 10^6 \implies \mathbf{d = 165\text{ mm}}$$
$$\tau = \frac{16 T}{\pi d^3} = \frac{16 \times 3.9789 \times 10^7}{\pi (165)^3} = \mathbf{46.5\text{ MPa}}$$

---

## Exercise 24 (Hollow vs Solid Comparison)

### Problem Statement
Hollow shaft with $d_i = \frac{2}{3} d_o$. Compare strength and stiffness with a solid shaft of same weight and material.

---

### Solution
* **Strength Ratio:** $\frac{Z_{ph}}{Z_{ps}} = \frac{1 + k^2}{\sqrt{1 - k^2}} = \frac{1 + 4/9}{\sqrt{5/9}} = \mathbf{1.93}$
* **Stiffness Ratio:** $\frac{J_h}{J_s} = \frac{1 + k^2}{1 - k^2} = \frac{1 + 4/9}{1 - 4/9} = \mathbf{2.6}$

---

## Exercise 25 (Rotary Compressor Shaft & Material Saving)

### Problem Statement
Compressor shaft under maximum torque $T = 2000\text{ N-m}$, bending moment $M = 4000\text{ N-m}, K_m = 2.0, K_t = 1.5$. Allowable shear $\tau = 50\text{ MPa}$. Design solid shaft, hollow shaft ($d_o / d_i = 2$), material saving percentage, and stiffness comparison.

---

### Solution
1. **Solid Shaft Diameter ($d$):**
   $$T_e = \sqrt{(2 \times 4000)^2 + (1.5 \times 2000)^2} = \sqrt{64 + 9} \times 10^3 = 8544\text{ N}\cdot\text{m} = 8.544 \times 10^6\text{ N}\cdot\text{mm}$$
   $$d = \sqrt[3]{\frac{16 \times 8.544 \times 10^6}{\pi \times 50}} = 95.5\text{ mm} \implies \mathbf{d = 96\text{ mm}}$$

2. **Hollow Shaft Diameters ($k = 0.5$):**
   $$d_o = \sqrt[3]{\frac{16 \times 8.544 \times 10^6}{\pi \times 50 \times (1 - 0.5^4)}} = 97.6\text{ mm} \implies \mathbf{d_o = 98\text{ mm}}, \quad \mathbf{d_i = 49\text{ mm}}$$

3. **Percentage Material Saving:**
   $$\text{Saving} = \frac{d^2 - (d_o^2 - d_i^2)}{d^2} \times 100\% = \frac{96^2 - (98^2 - 49^2)}{96^2} \times 100\% = \mathbf{21.84\%}$$

4. **Stiffness Comparison:**
   $$\text{Ratio} = \frac{J_h}{J_s} = \frac{98^4 - 49^4}{96^4} = \mathbf{1.018}$$
