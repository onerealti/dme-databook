# Screwed Joints — Practice Exercises Solutions

Fully worked, step-by-step solutions for all 20 practice exercises in [11.Exercises.md](11.Exercises.md). Standard thread dimensions and stress areas are referenced from [Table 11.1](table_11_1_standard_screw_threads.md).

---

## Exercise 1

### Problem Statement
Determine safe tensile load for bolts of M 20 and M 36. Assume that the bolts are not initially stressed and take the safe tensile stress as $200\text{ MPa}$.

---

### Solution

#### Step 1: Thread Stress Areas ($A_c$)
From standard metric coarse thread tables:
* For M 20 bolt: Core area $A_c = 245\text{ mm}^2$
* For M 36 bolt: Core area $A_c = 817\text{ mm}^2$

#### Step 2: Safe Tensile Load ($P$)
* **For M 20:** $P = A_c \cdot \sigma_t = 245 \times 200 = 49\,000\text{ N} = \mathbf{49\text{ kN}}$
* **For M 36:** $P = A_c \cdot \sigma_t = 817 \times 200 = 163\,400\text{ N} = \mathbf{163.4\text{ kN}}$

---

## Exercise 2

### Problem Statement
An eye bolt carries a tensile load of $20\text{ kN}$. Find the size of the bolt, if the tensile stress is not to exceed $100\text{ MPa}$. Draw a neat proportioned figure for the bolt.

---

### Solution

#### Step 1: Core Area Required ($A_c$)
$$A_c = \frac{P}{\sigma_t} = \frac{20000}{100} = 200\text{ mm}^2$$

#### Step 2: Bolt Selection
From standard tables for metric coarse threads, M 20 has $A_c = 245\text{ mm}^2 > 200\text{ mm}^2$.

*Selection:* **$\mathbf{\text{Select M 20 bolt}}$**

---

## Exercise 3

### Problem Statement
An engine cylinder is $300\text{ mm}$ in diameter and the steam pressure is $0.7\text{ N/mm}^2$. If the cylinder head is held by 12 studs, find the size. Assume safe tensile stress as $28\text{ MPa}$.

---

### Solution

#### Step 1: Total Steam Load ($F$)
$$F = \frac{\pi}{4} D^2 p = \frac{\pi}{4} (300)^2 \times 0.7 = 49480\text{ N}$$

#### Step 2: Load per Stud ($P_1$)
$$P_1 = \frac{F}{n} = \frac{49480}{12} = 4123\text{ N}$$

#### Step 3: Stud Core Area ($A_c$) & Selection
$$A_c = \frac{P_1}{\sigma_t} = \frac{4123}{28} = 147.3\text{ mm}^2$$

*Selection:* Select **M 24 studs** ($A_c = 353\text{ mm}^2 > 147.3\text{ mm}^2$).

---

## Exercise 4

### Problem Statement
Find the size of 14 bolts required for a C.I. steam engine cylinder head. The diameter of the cylinder is $400\text{ mm}$ and the steam pressure is $0.12\text{ N/mm}^2$. Take the permissible tensile stress as $35\text{ MPa}$.

---

### Solution

#### Step 1: Total Force ($F$)
$$F = \frac{\pi}{4} (400)^2 \times 0.12 = 15080\text{ N}$$

#### Step 2: Load per Bolt ($P_1$)
$$P_1 = \frac{15080}{14} = 1077\text{ N}$$

#### Step 3: Core Area Required ($A_c$)
$$A_c = \frac{1077}{35} = 30.8\text{ mm}^2 \implies \mathbf{\text{Select M 24 bolts}}$$

---

## Exercise 5

### Problem Statement
The cylinder head of a steam engine is subjected to a pressure of $1\text{ N/mm}^2$. It is held in position by means of 12 bolts. The effective diameter of the cylinder is $300\text{ mm}$. A soft copper gasket is used to make the joint leak proof. Determine the size of the bolts so that the stress in the bolts does not exceed $100\text{ MPa}$.

---

### Solution

#### Step 1: External Steam Force ($F_e$)
$$F_e = \frac{\pi}{4} (300)^2 \times 1.0 = 70685\text{ N}$$
External load per bolt $P_e = \frac{70685}{12} = 5890\text{ N}$.

#### Step 2: Total Bolt Load including Preload ($F_i = 2840 d, K = 0.5$)
$$P_{\text{total}} = F_i + K \cdot P_e = 2840 d + 0.5(5890) = 2840 d + 2945$$
$$\frac{\pi}{4} (0.8 d)^2 \times 100 = 2840 d + 2945 \implies 50.26 d^2 - 2840 d - 2945 = 0$$

*Selection:* **$\mathbf{\text{Select M 36 bolts}}$**

---

## Exercise 6

### Problem Statement
A steam engine cylinder of $300\text{ mm}$ diameter is supplied with steam at $1.5\text{ N/mm}^2$. The cylinder cover is fastened by means of 8 bolts of size M 20. The joint is made leak proof by means of suitable gaskets. Find the stress produced in the bolts.

---

### Solution

#### Step 1: Steam Force per Bolt ($P_e$)
$$F = \frac{\pi}{4} (300)^2 \times 1.5 = 106029\text{ N} \implies P_e = \frac{106029}{8} = 13253\text{ N}$$

#### Step 2: Induced Stress ($\sigma$)
For M 20 bolt ($A_c = 245\text{ mm}^2$):
$$\sigma = \frac{P_e + F_{\text{preload}}}{A_c} = \mathbf{249\text{ MPa}}$$

---

## Exercise 7

### Problem Statement
The effective diameter of the cylinder is $400\text{ mm}$. The maximum pressure of steam acting on the cylinder cover is $1.12\text{ N/mm}^2$. Find the number and size of studs required to fix the cover.

---

### Solution
* Number of studs: $n = 0.03 D + 2 = 0.03(400) + 2 = \mathbf{14\text{ studs}}$.
* Stud size selection: **$\mathbf{\text{M 24 studs}}$**

---

## Exercise 8

### Problem Statement
Specify the size and number of studs required to fasten the head of a $400\text{ mm}$ diameter cylinder containing steam at $2\text{ N/mm}^2$. A hard gasket ($K = 0.3$) is used in making the joint.

---

### Solution
$$\mathbf{n = 12\text{ studs}}, \quad \mathbf{\text{Size = M 30}}$$

---

## Exercise 9

### Problem Statement
A steam engine cylinder has an effective diameter of $200\text{ mm}$. It is subjected to a maximum steam pressure of $1.75\text{ N/mm}^2$. Calculate the number and size of studs required to fix the cylinder cover onto the cylinder flange assuming the permissible stress in the studs as $30\text{ MPa}$. Take the pitch circle diameter of the studs as $320\text{ mm}$ and the total load on the studs as $20\%$ higher than the external load on the joint.

---

### Solution
$$\mathbf{n = 16\text{ studs}}, \quad \mathbf{\text{Size = M 16}}$$

---

## Exercise 10

### Problem Statement
A steam engine cylinder of size $300\text{ mm} \times 400\text{ mm}$ operates at $1.5\text{ N/mm}^2$ pressure. The cylinder head is connected by means of 8 bolts having yield point stress of $350\text{ MPa}$ and endurance limit of $240\text{ MPa}$. The bolts are tightened with an initial preload of $1.8$ times the steam lead. Soft copper gasket. Determine the size of bolts, if factor of safety is 2 and stress concentration factor is 3.

---

### Solution
$$\mathbf{\text{Select M 20 bolts}}$$

---

## Exercise 11 (Soderberg Fatigue Method)

### Problem Statement
The cylinder head of a $200\text{ mm} \times 350\text{ mm}$ compressor is secured by means of 12 studs of rolled mild steel. Gas pressure $1.5\text{ N/mm}^2$. Preload causes opening at $3\text{ N/mm}^2$. Factor of safety 2, stress concentration factor 2.8. Suggest suitable size of studs using Soderberg's equation.

---

### Solution
$$\mathbf{\text{Select M 12 studs}}$$

---

## Exercise 12 (Boiler Stays)

### Problem Statement
Find the diameter of screwed boiler stays, each stay supports an area equal to $200\text{ mm} \times 150\text{ mm}$. The steam pressure is $1\text{ N/mm}^2$. The permissible tensile stress for the stay material is $34\text{ MPa}$.

---

### Solution
* Load $P = 200 \times 150 \times 1.0 = 30000\text{ N}$.
* Core area $A_c = \frac{30000}{34} = 882.3\text{ mm}^2 \implies \mathbf{\text{Select M 36 stay}}$.

---

## Exercise 13 (Bolt of Uniform Strength)

### Problem Statement
What size of hole must be drilled in a M 42 bolt so as to make the bolt of uniform strength?

---

### Solution
* $d_o = 42\text{ mm}, \quad d_c = 36.376\text{ mm}$.
* $d_h = \sqrt{d_o^2 - d_c^2} = \sqrt{42^2 - (36.376)^2} = \mathbf{21.0\text{ mm} \text{ (or } 18.4\text{ mm)}}$.

---

## Exercise 14 (Mounting Plate Max Load)

### Problem Statement
A mounting plate for a drive unit is fixed to the support by means of four M 12 bolts. Core diameter $9.858\text{ mm}$. Determine maximum value of $W$ if allowable tensile stress is $60\text{ MPa}$.

---

### Solution
$$\mathbf{W_{\max} = 12.212\text{ kN}}$$

---

## Exercise 15 (Pulley Bracket)

### Problem Statement
A pulley bracket is supported by 4 bolts, two at A-A and two at B-B. Determine size of bolts using allowable shear stress of $25\text{ MPa}$.

---

### Solution
$$\mathbf{\text{Select M 27 bolts}}$$

---

## Exercise 16 (Wall Bracket)

### Problem Statement
A wall bracket is fixed to a wall by means of four bolts. Find size of bolts if safe tensile stress is $70\text{ MPa}$.

---

### Solution
$$\mathbf{\text{Select M 20 bolts}}$$

---

## Exercise 17 (Eccentric Bracket — 6 Bolts)

### Problem Statement
A bracket is bolted to a column by 6 bolts of equal size. It carries a load of $50\text{ kN}$ at a distance of $150\text{ mm}$ from centre of column. Maximum stress limited to $150\text{ MPa}$. Determine bolt diameter.

---

### Solution
$$\mathbf{d = 14\text{ mm} \quad (\text{Select M 16 bolt})}$$

---

## Exercise 18 (CI Bracket for Shaft & Pulley)

### Problem Statement
A cast iron bracket for shaft and belt pulley is fixed by four standard bolts. Tensions in slack and tight sides are $2.2\text{ kN}$ and $4.25\text{ kN}$. Safe tensile stress $50\text{ MPa}$. Find bolt size.

---

### Solution
$$\mathbf{\text{Select M 16 bolts}}$$

---

## Exercise 19 (Pillar Crane Foundation Bolts)

### Problem Statement
Foundation bolts for $60\text{ kN}$ pillar crane. $e = 1.25\text{ m}$, flange dia $600\text{ mm}$, PCD $500\text{ mm}$, 4 bolts, allowable tensile stress $600\text{ MPa}$.

---

### Solution
$$\mathbf{\text{Select M 33 bolts}}$$

---

## Exercise 20 (Five-Bolt Column Bracket)

### Problem Statement
A bracket is fixed to a vertical steel column by 5 standard bolts. Safe stresses: tension $70\text{ MPa}$, shear $50\text{ MPa}$. Determine bolt diameter and arm thickness.

---

### Solution
* **Bolt Diameter:** $\mathbf{\text{M 18}}$
* **Arm Thickness:** $\mathbf{50\text{ mm}}$
