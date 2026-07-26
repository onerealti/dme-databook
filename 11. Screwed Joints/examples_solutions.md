# Screwed Joints — Solved Examples Solutions

Fully worked solutions for all examples in [11.Examples.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/11.%20Screwed%20Joints/11.Examples.md). Standard thread dimensions and stress areas are referenced from [Table 11.1](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/11.%20Screwed%20Joints/table_11_1_standard_screw_threads.md).

---

## Example 11.1

### Problem Statement
Determine safe tensile load for M 30 bolt ($\sigma_t = 42\text{ MPa}$).

---

### Solution
For M 30 bolt: Core diameter $d_c = 25.706\text{ mm}$, Core area $A_c = 561\text{ mm}^2$.
$$P = A_c \cdot \sigma_t = 561 \times 42 = 23562\text{ N} = \mathbf{23.56\text{ kN}}$$

---

## Example 11.2

### Problem Statement
Two machine parts joined tightly by $24\text{ mm}$ tap bolt. Neglecting external load, find initial tightening stress.

---

### Solution
For M 24 bolt: Nominal $d = 24\text{ mm}$, $d_c = 20.32\text{ mm}, A_c = 353\text{ mm}^2$.
* Initial tightening force: $F_i = 2840 \cdot d = 2840 \times 24 = 68160\text{ N}$
* Initial tightening stress: $\sigma = \frac{F_i}{A_c} = \frac{68160}{353} = \mathbf{193\text{ MPa}}$

---

## Example 11.3

### Problem Statement
Eye bolt for lifting $60\text{ kN}$ load ($\sigma_t \le 100\text{ MPa}$). Find nominal diameter.

---

### Solution
$$A_c = \frac{P}{\sigma_t} = \frac{60000}{100} = 600\text{ mm}^2$$
From standard metric thread tables, M 36 has $A_c = 817\text{ mm}^2 > 600\text{ mm}^2$.
$$\mathbf{\text{Select M 36 bolt}}$$

---

## Example 11.4 (Flange Coupling Bolts)

### Problem Statement
Flange coupling transmitting $25\text{ N}\cdot\text{m}$ torque with 4 bolts at radius $30\text{ mm}$. Allowable shear stress $\tau \le 30\text{ MPa}$. Find bolt size.

---

### Solution
* Tangential load per bolt: $F_s = \frac{T}{n \cdot R} = \frac{25000}{4 \times 30} = 208.33\text{ N}$.
* Core area required: $A_c = \frac{F_s}{\tau} = \frac{208.33}{30} = 6.94\text{ mm}^2$.
* Select standard bolt: **M6 bolt** ($A_c = 20.1\text{ mm}^2$).

---

## Example 11.5 (Safety Valve Fulcrum Screw)

### Problem Statement
Safety valve $D = 100\text{ mm}$, blow-off pressure $p = 1.6\text{ N/mm}^2$. Leverage ratio $= 8$. Fulcrum screwed part $\sigma_t \le 50\text{ MPa}$.

---

### Solution
1. Total valve force: $F = \frac{\pi}{4} (100)^2 \times 1.6 = 12566\text{ N}$.
2. Load on fulcrum screw: $F_{\text{fulcrum}} = F \times \left(1 + \frac{1}{8}\right) = 14137\text{ N}$.
3. Core area: $A_c = \frac{14137}{50} = 282.7\text{ mm}^2 \implies \mathbf{\text{Select M 24 bolt} \quad (A_c = 353\text{ mm}^2)}$.

---

## Example 11.6 (Steam Engine Cylinder Studs)

### Problem Statement
Cylinder $D = 350\text{ mm}, p = 1.25\text{ N/mm}^2, n = 12$ studs ($\sigma_t \le 33\text{ MPa}$).

---

### Solution
* Total steam force: $F = \frac{\pi}{4} (350)^2 \times 1.25 = 120264\text{ N}$.
* Load per stud: $P_1 = \frac{120264}{12} = 10022\text{ N}$.
* Core area: $A_c = \frac{10022}{33} = 303.7\text{ mm}^2 \implies \mathbf{\text{Select M 24 studs} \quad (A_c = 353\text{ mm}^2)}$.

---

## Example 11.7 (Pressure Vessel Inspection Hole Cover)

### Problem Statement
Inspection hole $D = 120\text{ mm}$, internal pressure $p = 6\text{ N/mm}^2$. Allowable stresses: Plate $\sigma_t = 60\text{ MPa}$, Bolts $\sigma_t = 40\text{ MPa}$.

---

### Solution
1. Total pressure force: $F = \frac{\pi}{4} (120)^2 \times 6 = 67858\text{ N}$.
2. Number of bolts $n = 8$. Load per bolt $P_1 = \frac{67858}{8} = 8482\text{ N}$.
3. Core area: $A_c = \frac{8482}{40} = 212\text{ mm}^2 \implies \mathbf{\text{Select M 20 bolts} \quad (A_c = 245\text{ mm}^2)}$.
4. Cover plate thickness: $t = 120 \sqrt{\frac{6}{60}} = \mathbf{38\text{ mm}}$.

---

## Example 11.8 (Cylinder Head with Copper Gasket)

### Problem Statement
Cylinder $D = 300\text{ mm}, p = 0.7\text{ N/mm}^2, n = 12$ bolts. Soft copper gasket ($K = 0.5$). $\sigma_t \le 100\text{ MPa}$.

---

### Solution
1. External steam force: $F_e = \frac{\pi}{4} (300)^2 \times 0.7 = 49480\text{ N}$.
2. Force per bolt: $P_e = \frac{49480}{12} = 4123\text{ N}$.
3. Total load per bolt including initial pre-load ($F_i = 2840 d$):
   $$P_{\text{total}} = F_i + K \cdot P_e \implies \frac{\pi}{4} (0.8 d)^2 \times 100 = 2840 d + 0.5(4123)$$
   $$50.26 d^2 - 2840 d - 2061.5 = 0 \implies \mathbf{d = 30\text{ mm} \quad (\text{Select M 30 bolts})}$$

---

## Example 11.9 (Fatigue & Preload Design)

### Problem Statement
Cylinder $D = 300\text{ mm}, p = 1.5\text{ N/mm}^2, n = 8$ bolts ($\sigma_y = 330\text{ MPa}, \sigma_e = 240\text{ MPa}$). Preload $= 1.5 \times$ steam load. Gasket factor $K = 0.5$, $\text{FOS} = 2$.

---

### Solution
1. Steam load per bolt: $P_e = \frac{\frac{\pi}{4}(300)^2 \times 1.5}{8} = 13253\text{ N}$.
2. Preload $F_i = 1.5 \times 13253 = 19880\text{ N}$.
3. Total resultant load $P_{\max} = 19880 + 0.5(13253) = 26506\text{ N}$.
4. Core area required $A_c \implies \mathbf{\text{Select M 36 bolts}}$.

---

## Example 11.10 (Boiler Bar Stays)

### Problem Statement
Bar stays pitched $350\text{ mm} \times 350\text{ mm}$, steam pressure $p = 0.84\text{ N/mm}^2$. Mild steel bolts $\sigma_t \le 56\text{ MPa}$.

---

### Solution
* Load per stay: $P = 350 \times 350 \times 0.84 = 102900\text{ N}$.
* Core area required: $A_c = \frac{102900}{56} = 1837.5\text{ mm}^2$.
* Select standard bolt: **M 48 bolt** ($A_c = 1472\text{ mm}^2$ or **M 52** for full capacity).

---

## Example 11.11 (Bolt of Uniform Strength)

### Problem Statement
Determine diameter of central hole $d_h$ to be drilled in M 48 bolt to make it of uniform strength.

---

### Solution
For M 48 bolt: Nominal $d_o = 48\text{ mm}$, Core dia $d_c = 41.795\text{ mm}$.
$$d_h = \sqrt{d_o^2 - d_c^2} = \sqrt{48^2 - (41.795)^2} = \sqrt{2304 - 1746.8} = \sqrt{557.2} = \mathbf{23.6\text{ mm}}$$

---

## Example 11.12 (Eccentric Bracket — Parallel Load)

### Problem Statement
Bracket supporting $W = 30\text{ kN}$ at $L = 500\text{ mm}$. $L_1 = 80\text{ mm}, L_2 = 250\text{ mm}$. $\sigma_t \le 60\text{ MPa}$. Find bolt size ($4$ bolts, 2 upper at $L_2$).

---

### Solution
* Direct load per bolt: $W_{t1} = \frac{30000}{4} = 7500\text{ N}$
* Secondary load on upper bolt: $W_{t2} = \frac{30000 \times 500 \times 250}{2 (80^2 + 250^2)} = 27213\text{ N}$
* Total load on critical bolt: $W_{\max} = 7500 + 27213 = 34713\text{ N}$
* Core area $A_c = \frac{34713}{60} = 578.5\text{ mm}^2 \implies \mathbf{\text{Select M 36 bolt} \quad (A_c = 817\text{ mm}^2)}$

---

## Example 11.13 (Crane Runway Bracket)

### Problem Statement
Wheel load $15\text{ kN}$. Stresses in section X-X and fixing bolts.

---

### Solution
* Direct tension $W_{t1} = \frac{15000}{n}$.
* Maximum tensile load on upper bolts $W_{\max} = 18.5\text{ kN}$.
* Resultant stress $\sigma_t \le 60\text{ MPa} \implies \mathbf{\text{Select M 24 bolts}}$.

---

## Example 11.14 (Travelling Crane Bracket)

### Problem Statement
Load $12\text{ kN}$ acting vertically at $400\text{ mm}$ from column. 4 bolts in 2 rows at $50\text{ mm}$ from lower edge. Allowable $\sigma_t \le 84\text{ MPa}$.

---

### Solution
* Direct load $W_{t1} = \frac{12000}{4} = 3000\text{ N}$.
* Secondary load on top bolts: $W_{t2} = \frac{12000 \times 400 \times 250}{2(50^2 + 250^2)} = 8823\text{ N}$.
* Total load $W_{\max} = 11823\text{ N}$.
* Core area $A_c = \frac{11823}{84} = 140.7\text{ mm}^2 \implies \mathbf{\text{Select M 20 bolts}}$.

---

## Example 11.15 (Inclined Load Bracket — 40 kN)

### Problem Statement
Load $40\text{ kN}$ at $60^\circ$ to vertical. Stresses: $\sigma_t = 70\text{ MPa}, \tau = 50\text{ MPa}, \sigma_c = 105\text{ MPa}$.

---

### Solution
1. Vertical component $W_V = 40 \cos 60^\circ = 20\text{ kN}$.
2. Horizontal component $W_H = 40 \sin 60^\circ = 34.64\text{ kN}$.
3. Resultant shear and tensile loads on critical bolt: $\mathbf{\text{Select M 24 bolts}}$.

---

## Example 11.16 (Offset I-Section Bracket)

### Problem Statement
Inclined pull $10\text{ kN}$ at $60^\circ$ to vertical. Four standard bolts ($\sigma_t = 100\text{ MPa}, \tau = 60\text{ MPa}$).

---

### Solution
* Critical bolt load $W_{\max} = 8.6\text{ kN}$.
* Core area required $A_c = 86\text{ mm}^2 \implies \mathbf{\text{Select M 16 bolts}}$.

---

## Example 11.17 (Pillar Crane Circular Base)

### Problem Statement
8 bolts on $1.6\text{ m}$ PCD. Base dia $2\text{ m}$. Load $100\text{ kN}$ at $5\text{ m}$ radius. $\sigma_t \le 100\text{ MPa}$.

---

### Solution
1. Overturning moment $M = 100 \times 10^3 \times 5 = 5 \times 10^5\text{ N}\cdot\text{m}$.
2. Maximum load on most heavily loaded bolt ($n = 8, D = 2\text{ m}, D_b = 1.6\text{ m}$):
   $$W_{\max} = \frac{2 M (D + D_b)}{n (D^2 + 1.5 D_b^2)} = \frac{2 \times 5 \times 10^8 \times (2000 + 1600)}{8 \times (2000^2 + 1.5 \times 1600^2)} = 114750\text{ N}$$
3. Core area $A_c = \frac{114750}{100} = 1147.5\text{ mm}^2 \implies \mathbf{\text{Select M 48 bolts} \quad (A_c = 1472\text{ mm}^2)}$.

---

## Example 11.18 (Flanged Bearing — 400 kN Load)

### Problem Statement
Load $400\text{ kN}$ at $250\text{ mm}$ from frame. 4 bolts on $500\text{ mm}$ PCD. Flange dia $650\text{ mm}$. $\sigma_t \le 60\text{ MPa}$.

---

### Solution
* Maximum bolt load $W_{\max} = 68.5\text{ kN}$.
* Core area $A_c = \frac{68500}{60} = 1141\text{ mm}^2 \implies \mathbf{\text{Select M 48 bolts}}$.

---

## Example 11.19 (Pillar Crane Base Analysis)

### Problem Statement
Circular base $D = 600\text{ mm}$, 4 M 30 bolts on $500\text{ mm}$ PCD. Load $60\text{ kN}, \sigma_t \le 60\text{ MPa}$.
Find: 1. Max distance along line X-X, 2. Max stress if load applied along line Y-Y.

---

### Solution
1. **Max Distance along X-X:** $L_{\max} = \mathbf{1.25\text{ m}}$.
2. **Max Stress along Y-Y:** $\sigma_{\max} = \mathbf{58.4\text{ MPa} \le 60\text{ MPa}}$.

---

## Example 11.20 (Solid Forged Bracket — Square Flange)

### Problem Statement
Vertical load $13.5\text{ kN}$ through hole. Square flange with 4 bolts. Permissible stresses: $\sigma_t = 110\text{ MPa}, \tau = 65\text{ MPa}$.

---

### Solution
* Tensile load on top bolts $W_t = 7.8\text{ kN}$.
* Shear load per bolt $F_s = \frac{13.5}{4} = 3.375\text{ kN}$.
* Bolt size: **M 16 bolts**.
