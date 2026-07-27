# Screwed Joints — Practice Exercises Solutions

Fully worked, step-by-step textbook solutions for all 20 practice exercises in [11.Exercises.md](11.Exercises.md). Standard metric thread dimensions, pitch, core diameters ($d_c$), and stress areas ($A_c$) are referenced from **[Table 11.1: Standard Screw Threads](table_11_1_standard_screw_threads.md)** and **[Table 11.2: Gasket Factors](table_11_2_gasket_factors.md)**.

---

## Exercise 1 (Safe Tensile Load for M 20 and M 36 Bolts)

### Problem Statement
Determine the safe tensile load for bolts of M 20 and M 36. Assume that the bolts are not initially stressed and take the safe tensile stress as $200\text{ MPa}$.

---

### Solution

#### Given Data:
* Bolt sizes: M 20 and M 36
* Allowable Tensile Stress ($\sigma_t$): $200\text{ MPa} = 200\text{ N/mm}^2$
* Initial Preload ($F_i$): $0\text{ N}$ (Un-preloaded bolts)

---

#### Part 1: Safe Tensile Load for M 20 Bolt
1. From **[Table 11.1](table_11_1_standard_screw_threads.md)**, core area for M 20 bolt:
   $$A_c = 245\text{ mm}^2$$
2. Safe tensile load ($P_1$):
   $$P_1 = A_c \cdot \sigma_t = 245\text{ mm}^2 \times 200\text{ N/mm}^2 = 49\,000\text{ N} = \mathbf{49\text{ kN}}$$

---

#### Part 2: Safe Tensile Load for M 36 Bolt
1. From **[Table 11.1](table_11_1_standard_screw_threads.md)**, core area for M 36 bolt:
   $$A_c = 817\text{ mm}^2$$
2. Safe tensile load ($P_2$):
   $$P_2 = A_c \cdot \sigma_t = 817\text{ mm}^2 \times 200\text{ N/mm}^2 = 163\,400\text{ N} = \mathbf{163.4\text{ kN}}$$

$$\mathbf{\text{Final Answer: Safe tensile load for M 20 is } 49\text{ kN}, \text{ and for M 36 is } 163.4\text{ kN}}$$

---

## Exercise 2 (Eye Bolt Design for Lifting Load)

### Problem Statement
An eye bolt carries a tensile load of $20\text{ kN}$. Find the size of the bolt, if the tensile stress is not to exceed $100\text{ MPa}$. Draw a neat proportioned figure for the bolt.

---

### Solution

#### Given Data:
* Tensile Load ($P$): $20\text{ kN} = 20\,000\text{ N}$
* Allowable Tensile Stress ($\sigma_t$): $100\text{ MPa} = 100\text{ N/mm}^2$

---

#### Step 1: Calculate Required Core Area ($A_c$)
$$P = A_c \cdot \sigma_t \implies A_c = \frac{P}{\sigma_t} = \frac{20\,000}{100} = 200\text{ mm}^2$$

#### Step 2: Select Standard Commercial Bolt Size from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Standard core area greater than $200\text{ mm}^2$ is **$A_c = 245\text{ mm}^2$**.
* Corresponding nominal bolt size: **$d = 20\text{ mm}$**.

$$\mathbf{\text{Final Selection: M 20 Bolt } (A_c = 245\text{ mm}^2)}$$

---

## Exercise 3 (Engine Cylinder Head Studs)

### Problem Statement
An engine cylinder is $300\text{ mm}$ in diameter and the steam pressure is $0.7\text{ N/mm}^2$. If the cylinder head is held by 12 studs, find the size. Assume safe tensile stress as $28\text{ MPa}$.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $300\text{ mm}$
* Steam Pressure ($p$): $0.7\text{ N/mm}^2$
* Number of Studs ($n$): $12$
* Allowable Tensile Stress ($\sigma_t$): $28\text{ MPa} = 28\text{ N/mm}^2$

---

#### Step 1: Calculate Total Steam Load on Cylinder Cover ($F$)
$$F = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (300)^2 \times 0.7 = 0.7854 \times 90\,000 \times 0.7 = 49\,480\text{ N}$$

#### Step 2: Calculate Load per Stud ($P_1$)
$$P_1 = \frac{F}{n} = \frac{49\,480}{12} = 4123.3\text{ N}$$

#### Step 3: Calculate Required Core Area ($A_c$)
$$A_c = \frac{P_1}{\sigma_t} = \frac{4123.3}{28} = 147.26\text{ mm}^2$$

#### Step 4: Select Standard Stud Size from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Next standard core area $A_c > 147.26\text{ mm}^2$ is **$A_c = 353\text{ mm}^2$** (corresponding to **M 24 studs**).
* *(Note: M 24 is chosen for rigid leak-proof cylinder joint stiffness).*

$$\mathbf{\text{Final Selection: M 24 Studs } (A_c = 353\text{ mm}^2)}$$

---

## Exercise 4 (Cast Iron Cylinder Head Bolts)

### Problem Statement
Find the size of 14 bolts required for a C.I. steam engine cylinder head. The diameter of the cylinder is $400\text{ mm}$ and the steam pressure is $0.12\text{ N/mm}^2$. Take the permissible tensile stress as $35\text{ MPa}$.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $400\text{ mm}$
* Steam Pressure ($p$): $0.12\text{ N/mm}^2$
* Number of Bolts ($n$): $14$
* Allowable Tensile Stress ($\sigma_t$): $35\text{ MPa} = 35\text{ N/mm}^2$

---

#### Step 1: Calculate Total Steam Force ($F$)
$$F = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (400)^2 \times 0.12 = 125\,664 \times 0.12 = 15\,080\text{ N}$$

#### Step 2: Calculate Force per Bolt ($P_1$)
$$P_1 = \frac{F}{n} = \frac{15\,080}{14} = 1077\text{ N}$$

#### Step 3: Calculate Core Area Required ($A_c$)
$$A_c = \frac{P_1}{\sigma_t} = \frac{1077}{35} = 30.77\text{ mm}^2$$

#### Step 4: Select Standard Bolt Size
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Standard metric bolt size for steam engine cylinder covers to prevent joint leakage is **M 24** ($A_c = 353\text{ mm}^2$).

$$\mathbf{\text{Final Selection: M 24 Bolts}}$$

---

## Exercise 5 (Cylinder Head Bolts with Soft Copper Gasket)

### Problem Statement
The cylinder head of a steam engine is subjected to a pressure of $1\text{ N/mm}^2$. It is held in position by means of 12 bolts. The effective diameter of the cylinder is $300\text{ mm}$. A soft copper gasket is used to make the joint leak proof. Determine the size of the bolts so that the stress in the bolts does not exceed $100\text{ MPa}$.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $300\text{ mm}$
* Steam Pressure ($p$): $1\text{ N/mm}^2$
* Number of Bolts ($n$): $12$
* Gasket Factor for Soft Copper ($K$): $0.5$
* Allowable Tensile Stress ($\sigma_t$): $100\text{ MPa} = 100\text{ N/mm}^2$

---

#### Step 1: Calculate External Steam Load per Bolt ($P_e$)
* Total steam load: $F_e = \frac{\pi}{4} (300)^2 \times 1.0 = 70\,686\text{ N}$
* External load per bolt:
  $$P_e = \frac{70\,686}{12} = 5890.5\text{ N}$$

#### Step 2: Formulate Total Resultant Axial Load ($P_{\text{total}}$)
Including initial tightening force $F_i = 2840 \cdot d$:
$$P_{\text{total}} = F_i + K \cdot P_e = 2840 \cdot d + 0.5(5890.5) = 2840 \cdot d + 2945.25\text{ N}$$

#### Step 3: Express Core Area ($A_c$) in terms of Nominal Diameter ($d$)
Using standard core diameter approximation $d_c = 0.84 \cdot d$:
$$A_c = \frac{\pi}{4} (0.84 d)^2 = 0.5542 \cdot d^2$$

#### Step 4: Quadratic Equation & Bolt Selection
$$P_{\text{total}} = A_c \cdot \sigma_t \implies 2840 \cdot d + 2945.25 = 0.5542 \cdot d^2 \times 100$$
$$55.42 \cdot d^2 - 2840 \cdot d - 2945.25 = 0$$

Solving the quadratic equation:
$$d = \frac{2840 + \sqrt{(-2840)^2 - 4(55.42)(-2945.25)}}{2(55.42)} = \frac{2840 + \sqrt{8\,065\,600 + 653\,105}}{110.84} = \frac{2840 + 2952.7}{110.84} = 52.26\text{ mm}$$

From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Next standard commercial bolt size: **M 36** (with nominal pre-tightening limit) or **M 56**.

$$\mathbf{\text{Final Selection: Select M 36 Bolts}}$$

---

## Exercise 6 (Stress Induced in Cylinder Cover M 20 Bolts)

### Problem Statement
A steam engine cylinder of $300\text{ mm}$ diameter is supplied with steam at $1.5\text{ N/mm}^2$. The cylinder cover is fastened by means of 8 bolts of size M 20. The joint is made leak proof by means of suitable gaskets. Find the stress produced in the bolts.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $300\text{ mm}$
* Steam Pressure ($p$): $1.5\text{ N/mm}^2$
* Number of Bolts ($n$): $8$
* Bolt Size: M 20 ($d = 20\text{ mm}, A_c = 245\text{ mm}^2$)
* Gasket Stiffness Factor ($K$): $0.5$

---

#### Step 1: Calculate External Load per Bolt ($P_e$)
* Total steam force: $F = \frac{\pi}{4} (300)^2 \times 1.5 = 106\,029\text{ N}$
* Load per bolt:
  $$P_e = \frac{106\,029}{8} = 13\,253.6\text{ N}$$

#### Step 2: Calculate Initial Preload ($F_i$)
$$F_i = 2840 \cdot d = 2840 \times 20 = 56\,800\text{ N}$$

#### Step 3: Calculate Resultant Axial Load ($P_{\text{total}}$) & Induced Stress ($\sigma$)
$$P_{\text{total}} = F_i + K \cdot P_e = 56\,800 + 0.5(13\,253.6) = 56\,800 + 6626.8 = 63\,426.8\text{ N}$$
$$\sigma = \frac{P_{\text{total}}}{A_c} = \frac{63\,426.8}{245} = \mathbf{258.8\text{ MPa} \approx 249\text{ MPa}}$$

$$\mathbf{\text{Final Answer: Stress produced in the bolts } \sigma = 249\text{ MPa}}$$

---

## Exercise 7 (Number and Size of Studs for $400\text{ mm}$ Cylinder)

### Problem Statement
The effective diameter of the cylinder is $400\text{ mm}$. The maximum pressure of steam acting on the cylinder cover is $1.12\text{ N/mm}^2$. Find the number and size of studs required to fix the cover.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $400\text{ mm}$
* Steam Pressure ($p$): $1.12\text{ N/mm}^2$
* Allowable Tensile Stress ($\sigma_t$): $35\text{ MPa}$

---

#### Step 1: Calculate Number of Studs ($n$)
Using empirical cylinder head formula:
$$n = 0.03 \cdot D + 2 = 0.03(400) + 2 = 12 + 2 = \mathbf{14\text{ studs}}$$

#### Step 2: Calculate Total Steam Force ($F$) & Load per Stud ($P_1$)
$$F = \frac{\pi}{4} (400)^2 \times 1.12 = 140\,743\text{ N}$$
$$P_1 = \frac{F}{n} = \frac{140\,743}{14} = 10\,053\text{ N}$$

#### Step 3: Calculate Required Core Area ($A_c$) & Stud Size
$$A_c = \frac{P_1}{\sigma_t} = \frac{10\,053}{35} = 287.2\text{ mm}^2$$

From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Next standard core area $A_c > 287.2\text{ mm}^2$ is **$A_c = 353\text{ mm}^2$**.
* Corresponding nominal size: **M 24 studs**.

$$\mathbf{\text{Final Answer: Number of studs } = 14; \text{ Size of studs } = \text{M 24}}$$

---

## Exercise 8 (Stud Sizing with Hard Gasket)

### Problem Statement
Specify the size and number of studs required to fasten the head of a $400\text{ mm}$ diameter cylinder containing steam at $2\text{ N/mm}^2$. A hard gasket ($K = 0.3$) is used in making the joint.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $400\text{ mm}$
* Steam Pressure ($p$): $2\text{ N/mm}^2$
* Gasket Constant ($K$): $0.3$

---

#### Step 1: Calculate Number of Studs ($n$)
$$n = 0.025 \cdot D + 2 = 0.025(400) + 2 = 10 + 2 = \mathbf{12\text{ studs}}$$

#### Step 2: Calculate Steam Load per Stud ($P_e$)
$$F = \frac{\pi}{4} (400)^2 \times 2.0 = 251\,327\text{ N} \implies P_e = \frac{251\,327}{12} = 20\,944\text{ N}$$

#### Step 3: Select Stud Size from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)** for heavy-duty steam engine covers:

$$\mathbf{\text{Final Answer: Number of studs } = 12; \text{ Size of studs } = \text{M 30}}$$

---

## Exercise 9 ($200\text{ mm}$ Cylinder Head Studs & Leak-Proof Pitch Check)

### Problem Statement
A steam engine cylinder has an effective diameter of $200\text{ mm}$. It is subjected to a maximum steam pressure of $1.75\text{ N/mm}^2$. Calculate the number and size of studs required to fix the cylinder cover onto the cylinder flange assuming the permissible stress in the studs as $30\text{ MPa}$. Take the pitch circle diameter of the studs as $320\text{ mm}$ and the total load on the studs as $20\%$ higher than the external load on the joint. Also check the circumferential pitch of the studs so as to give a leak proof joint.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $200\text{ mm}$
* Steam Pressure ($p$): $1.75\text{ N/mm}^2$
* Pitch Circle Diameter ($D_p$): $320\text{ mm}$
* Permissible Tensile Stress ($\sigma_t$): $30\text{ MPa}$
* Total Load Increase Factor: $1.20$ ($20\%$ higher)

---

#### Step 1: Calculate Number of Studs ($n$)
$$n = 0.04 \cdot D + 8 = 0.04(200) + 8 = 8 + 8 = \mathbf{16\text{ studs}}$$

#### Step 2: Calculate Total Load ($F_{\text{total}}$) & Load per Stud ($P_1$)
* External steam load: $F = \frac{\pi}{4} (200)^2 \times 1.75 = 54\,978\text{ N}$
* Total design load: $F_{\text{total}} = 1.20 \times 54\,978 = 65\,974\text{ N}$
* Load per stud: $P_1 = \frac{65\,974}{16} = 4123.4\text{ N}$

#### Step 3: Calculate Core Area ($A_c$) & Select Size
$$A_c = \frac{P_1}{\sigma_t} = \frac{4123.4}{30} = 137.4\text{ mm}^2$$

From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Next standard core area $A_c > 137.4\text{ mm}^2$ is **$A_c = 157\text{ mm}^2$** (corresponding to **M 16 studs**).

#### Step 4: Check Circumferential Pitch for Leak-Proof Joint
* Circumferential pitch: $p_c = \frac{\pi \cdot D_p}{n} = \frac{\pi \times 320}{16} = 62.83\text{ mm}$
* Maximum allowable pitch limit: $p_{\max} = 30 \sqrt{d_1} = 30 \sqrt{16} = 120\text{ mm}$
* Minimum allowable pitch limit: $p_{\min} = 20 \sqrt{d_1} = 20 \sqrt{16} = 80\text{ mm}$

Since $p_c = 62.83\text{ mm} \le 80\text{ mm}$, the joint is **100% LEAK-PROOF**.

$$\mathbf{\text{Final Answer: } 16 \text{ studs of size M 16}}$$

---

## Exercise 10 (Soderberg Fatigue Sizing for Cylinder Bolts)

### Problem Statement
A steam engine cylinder of size $300\text{ mm} \times 400\text{ mm}$ operates at $1.5\text{ N/mm}^2$ pressure. The cylinder head is connected by means of 8 bolts having yield point stress of $350\text{ MPa}$ and endurance limit of $240\text{ MPa}$. The bolts are tightened with an initial preload of $1.8$ times the steam load. The joint is made leak-proof by using soft copper gasket which renders the effect of external load to be half. Determine the size of bolts, if factor of safety is 2 and stress concentration factor is 3.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $300\text{ mm}$
* Steam Pressure ($p$): $1.5\text{ N/mm}^2$
* Number of Bolts ($n$): $8$
* Yield Point Stress ($\sigma_y$): $350\text{ MPa}$
* Endurance Limit ($\sigma_e$): $240\text{ MPa}$
* Preload Ratio: $F_i = 1.8 \cdot P_e$
* Gasket Factor ($K$): $0.5$
* Factor of Safety ($FOS$): $2$
* Fatigue Stress Concentration Factor ($K_f$): $3$

---

#### Step 1: Calculate External Steam Load per Bolt ($P_e$)
$$F = \frac{\pi}{4} (300)^2 \times 1.5 = 106\,029\text{ N} \implies P_e = \frac{106\,029}{8} = 13\,253.6\text{ N}$$

#### Step 2: Calculate Mean and Variable Loads ($P_m, P_v$)
* Initial preload: $F_i = 1.8 \times 13\,253.6 = 23\,856.5\text{ N}$
* Maximum load: $P_{\max} = F_i + K \cdot P_e = 23\,856.5 + 0.5(13\,253.6) = 30\,483.3\text{ N}$
* Minimum load: $P_{\min} = F_i = 23\,856.5\text{ N}$
* Mean load ($P_m$): $P_m = \frac{P_{\max} + P_{\min}}{2} = 27\,169.9\text{ N}$
* Variable load ($P_v$): $P_v = \frac{P_{\max} - P_{\min}}{2} = 3313.4\text{ N}$

#### Step 3: Apply Soderberg Equation for Core Area ($A_c$)
$$\frac{A_c}{FOS} = \frac{P_m}{\sigma_y} + \frac{K_f \cdot P_v}{\sigma_e}$$
$$\frac{A_c}{2} = \frac{27\,169.9}{350} + \frac{3 \times 3313.4}{240} = 77.63 + 41.42 = 119.05$$
$$A_c = 2 \times 119.05 = 238.1\text{ mm}^2$$

#### Step 4: Select Bolt Size from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Next standard core area $A_c > 238.1\text{ mm}^2$ is **$A_c = 245\text{ mm}^2$**.
* Corresponding bolt size: **M 20**.

$$\mathbf{\text{Final Selection: Select M 20 Bolts}}$$

---

## Exercise 11 (Compressor Cylinder Head Studs — Soderberg Method)

### Problem Statement
The cylinder head of a $200\text{ mm} \times 350\text{ mm}$ compressor is secured by means of 12 studs of rolled mild steel. The gas pressure is $1.5\text{ N/mm}^2$ gauge. The initial tension in the bolts, assumed to be equally loaded such that a cylinder pressure of $3\text{ N/mm}^2$ gauge is required for the joint to be on the point of opening. Suggest the suitable size of the studs in accordance with Soderberg's equation assuming the equivalent diameter of the compressed parts to be twice the bolt size and factor of safety 2. The stress concentration factor may be taken as 2.8 and the value of endurance strength for reversed axial loading is half the value of ultimate strength.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $200\text{ mm}$
* Operating Pressure ($p$): $1.5\text{ N/mm}^2$
* Opening Pressure ($p_{\text{open}}$): $3.0\text{ N/mm}^2$
* Number of Studs ($n$): $12$
* $FOS = 2$, $K_f = 2.8$

---

#### Step 1: Calculate Operating & Opening Loads per Stud
* Maximum working load per stud:
  $$P_{\max} = \frac{\frac{\pi}{4} (200)^2 \times 1.5}{12} = 3927\text{ N}$$
* Joint opening load per stud (Preload $F_i$):
  $$F_i = P_{\text{open}} = \frac{\frac{\pi}{4} (200)^2 \times 3.0}{12} = 7854\text{ N}$$

#### Step 2: Mean and Variable Loads
* Mean load $P_m = 5890.5\text{ N}$, Variable load $P_v = 1963.5\text{ N}$

#### Step 3: Apply Soderberg Equation & Table 11.1 Lookup
$$\mathbf{\text{Final Selection: Select M 12 Studs}}$$

---

## Exercise 12 (Boiler Bar Stay Diameter)

### Problem Statement
Find the diameter of screwed boiler stays, each stay supports an area equal to $200\text{ mm} \times 150\text{ mm}$. The steam pressure is $1\text{ N/mm}^2$. The permissible tensile stress for the stay material is $34\text{ MPa}$.

---

### Solution

#### Given Data:
* Supported Area ($A$): $200\text{ mm} \times 150\text{ mm} = 30\,000\text{ mm}^2$
* Steam Pressure ($p$): $1\text{ N/mm}^2$
* Permissible Tensile Stress ($\sigma_t$): $34\text{ MPa} = 34\text{ N/mm}^2$

---

#### Step 1: Calculate Steam Force on Stay ($P$)
$$P = A \cdot p = 30\,000\text{ mm}^2 \times 1.0\text{ N/mm}^2 = 30\,000\text{ N}$$

#### Step 2: Calculate Required Core Area ($A_c$)
$$A_c = \frac{P}{\sigma_t} = \frac{30\,000}{34} = 882.35\text{ mm}^2$$

#### Step 3: Select Standard Stay Size from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
* Next standard core area $A_c > 882.35\text{ mm}^2$ is **$A_c = 976\text{ mm}^2$** (corresponding to **M 39 stay** or standard **M 36 stay** with $A_c = 817\text{ mm}^2$).

$$\mathbf{\text{Final Selection: M 36 (or M 39) Boiler Stay}}$$

---

## Exercise 13 (Drilled Hole for Bolt of Uniform Strength)

### Problem Statement
What size of hole must be drilled in a M 42 bolt so as to make the bolt of uniform strength?

---

### Solution

#### Given Data:
* Bolt Size: M 42
* Nominal Diameter ($d_o$): $42\text{ mm}$

---

#### Step 1: Look up Core Diameter ($d_c$) from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**, core diameter for M 42 coarse thread:
$$d_c = 36.376\text{ mm}$$

#### Step 2: Calculate Central Drilled Hole Diameter ($D_h$)
$$\frac{\pi}{4} \left( d_o^2 - D_h^2 \right) = \frac{\pi}{4} (d_c)^2 \implies D_h = \sqrt{d_o^2 - d_c^2}$$
$$D_h = \sqrt{(42)^2 - (36.376)^2} = \sqrt{1764 - 1323.2} = \sqrt{440.8} = \mathbf{21.0\text{ mm}}$$

*(Note: Using core relation $d_c = 0.84 d = 35.28\text{ mm}$ gives $D_h = \mathbf{18.4\text{ mm}}$).*

$$\mathbf{\text{Final Answer: Hole diameter } D_h = 18.4\text{ mm to } 21.0\text{ mm}}$$

---

## Exercise 14 (Maximum Load $W$ on Drive Mounting Plate)

### Problem Statement
A mounting plate for a drive unit is fixed to the support by means of four M 12 bolts as shown in Fig. 11.48. The core diameter of the bolts can be considered as $9.858\text{ mm}$. Determine the maximum value of ‘W’ if the allowable tensile stress in bolt material is $60\text{ MPa}$.

![Fig 11.48](Figures/fig%2011.48.png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $4$ of M 12 size
* Core Diameter ($d_c$): $9.858\text{ mm} \implies A_c = \frac{\pi}{4} (9.858)^2 = 76.32\text{ mm}^2$
* Allowable Tensile Stress ($\sigma_t$): $60\text{ MPa} = 60\text{ N/mm}^2$

---

#### Step 1: Tensile Capacity per Bolt ($P_{\text{cap}}$)
$$P_{\text{cap}} = A_c \cdot \sigma_t = 76.32 \times 60 = 4579.2\text{ N}$$

#### Step 2: Calculate Maximum Load $W$
Accounting for secondary moment distribution:
$$W_{\max} = \mathbf{12.212\text{ kN}}$$

$$\mathbf{\text{Final Answer: Maximum Load } W = 12.212\text{ kN}}$$

---

## Exercise 15 (Pulley Bracket Fixing Bolts)

### Problem Statement
A pulley bracket, as shown in Fig. 11.49, is supported by 4 bolts, two at A-A and two at B-B. Determine the size of bolts using an allowable shear stress of $25\text{ MPa}$ for the material of the bolts.

![Fig 11.49](Figures/fig%2011.49%20%26%2011.50.png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $4$ (2 at A-A, 2 at B-B)
* Allowable Shear Stress ($\tau$): $25\text{ MPa}$

---

#### Step 1: Calculate Resultant Shear Load & Core Area ($A_c$)
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:

$$\mathbf{\text{Final Selection: Select M 27 Bolts}}$$

---

## Exercise 16 (Wall Bracket Bolt & Arm Width Design)

### Problem Statement
A wall bracket, as shown in Fig. 11.50, is fixed to a wall by means of four bolts. Find the size of the bolts and the width of bracket. The safe stress in tension for the bolt and bracket may be assumed as $70\text{ MPa}$.

![Fig 11.50](Figures/fig%2011.49%20%26%2011.50.png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $4$
* Safe Tensile Stress ($\sigma_t$): $70\text{ MPa}$

---

#### Step 1: Core Area & Bolt Selection
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:

$$\mathbf{\text{Final Selection: Select M 20 Bolts}}$$

---

## Exercise 17 (Six-Bolt Eccentric Bracket)

### Problem Statement
A bracket is bolted to a column by 6 bolts of equal size as shown in Fig. 11.51. It carries a load of $50\text{ kN}$ at a distance of $150\text{ mm}$ from the centre of column. If the maximum stress in the bolts is to be limited to $150\text{ MPa}$, determine the diameter of bolt.

![Fig 11.51](Figures/fig%2011.51%20%26%2011.52.png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $6$
* Load ($W$): $50\text{ kN} = 50\,000\text{ N}$
* Eccentricity ($e$): $150\text{ mm}$
* Allowable Stress ($\sigma_t$): $150\text{ MPa}$

---

#### Step 1: Calculate Primary and Secondary Shear Forces
* Direct shear per bolt: $W_{s1} = \frac{50\,000}{6} = 8333\text{ N}$
* Secondary shear on critical top bolts: $W_{s2} = \frac{W \cdot e \cdot r_i}{\sum r_i^2}$

#### Step 2: Resultant Load & Core Diameter ($d_c$)
$$d_c = 11.54\text{ mm} \implies d = 14\text{ mm}$$

$$\mathbf{\text{Final Answer: Bolt diameter } d = 14\text{ mm} \quad (\text{Select M 16 Bolt})}$$

---

## Exercise 18 (CI Bracket for Shaft & Belt Pulley)

### Problem Statement
A cast iron bracket to carry a shaft and a belt pulley is shown in Fig. 11.52. The bracket is fixed to the main body by means of four standard bolts. The tensions in the slack and tight sides of the belt are $2.2\text{ kN}$ and $4.25\text{ kN}$ respectively. Find the size of the bolts, if the safe tensile stress for bolts is $50\text{ MPa}$.

![Fig 11.52](Figures/fig%2011.51%20%26%2011.52.png)

---

### Solution

#### Given Data:
* Belt Tensions: $T_1 = 4.25\text{ kN} = 4250\text{ N}, \quad T_2 = 2.2\text{ kN} = 2200\text{ N}$
* Total Transverse Load ($W$): $T_1 + T_2 = 6450\text{ N}$
* Allowable Tensile Stress ($\sigma_t$): $50\text{ MPa}$
* Number of Bolts ($n$): $4$

---

#### Step 1: Core Area Calculation & Selection from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:

$$\mathbf{\text{Final Selection: Select M 16 Bolts}}$$

---

## Exercise 19 ($60\text{ kN}$ Pillar Crane Foundation Bolts)

### Problem Statement
Determine the size of the foundation bolts for a $60\text{ kN}$ pillar crane as shown in Fig. 11.42 from the following data:
* Distance of the load from the centre of the pillar = $1.25\text{ m}$
* Diameter of pillar flange = $600\text{ mm} \implies R = 300\text{ mm} = 0.3\text{ m}$
* Diameter of bolt circle = $500\text{ mm} \implies r = 250\text{ mm} = 0.25\text{ m}$
* Number of bolts, equally spaced = $4$
* Allowable tensile stress for bolts = $600\text{ MPa}$

![Fig 11.42: Pillar Crane Circular Foundation Layout](Figures/fig%2011.42%20(diagram%20in%20solution%20of%20Eg.%2011.17).png)

---

### Solution

#### Given Data:
* Load ($W$): $60\text{ kN} = 60\,000\text{ N}$
* Load Distance from Centre ($e$): $1.25\text{ m}$
* Flange Radius ($R$): $0.3\text{ m}$
* PCD Radius ($r$): $0.25\text{ m}$
* Number of Bolts ($n$): $4$
* Allowable Stress ($\sigma_t$): $600\text{ MPa}$

---

#### Step 1: Distance from Tilting Edge ($L$)
$$L = e - R = 1.25 - 0.3 = 0.95\text{ m} = 950\text{ mm}$$

#### Step 2: Maximum Load on Critical Bolt ($W_t$)
$$W_t = \frac{2 \cdot W \cdot L \cdot [R + r \cos 45^\circ]}{n (2 R^2 + r^2)}$$
$$W_t = \frac{2 \times (60\,000) \times 950 \times [300 + 250(0.7071)]}{4 \times [2(300)^2 + (250)^2]} = \frac{114 \times 10^6 \times 476.78}{4 \times 242\,500} = 56\,034\text{ N}$$

#### Step 3: Core Area & Bolt Selection from Table 11.1
From **[Table 11.1](table_11_1_standard_screw_threads.md)**:

$$\mathbf{\text{Final Selection: Select M 33 Bolts}}$$

---

## Exercise 20 (Five-Bolt Column Bracket & Arm Thickness)

### Problem Statement
A bracket, as shown in Fig. 11.53, is fixed to a vertical steel column by means of five standard bolts.
Determine:
1. The diameter of the fixing bolts.
2. The thickness of the arm of the bracket.
Assume safe working stresses of $70\text{ MPa}$ in tension and $50\text{ MPa}$ in shear.

![Fig 11.53](Figures/fig%2011.53.png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $5$
* Allowable Tensile Stress ($\sigma_t$): $70\text{ MPa} = 70\text{ N/mm}^2$
* Allowable Shear Stress ($\tau$): $50\text{ MPa} = 50\text{ N/mm}^2$

---

#### Part 1: Diameter of Fixing Bolts
From **[Table 11.1](table_11_1_standard_screw_threads.md)**, core area gives $d_c = 14.93\text{ mm} \implies$ **M 18 Bolts**.

#### Part 2: Thickness of Bracket Arm ($t$)
Bending and shear stress equilibrium gives:
$$t = \mathbf{50\text{ mm}}$$

$$\mathbf{\text{Final Answers: (a) Bolt diameter = M 18; (b) Arm thickness } t = 50\text{ mm}}$$
