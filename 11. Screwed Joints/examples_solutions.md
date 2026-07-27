# Screwed Joints — Solved Examples Solutions

Fully worked solutions for all examples in [11.Examples.md](11.Examples.md). Standard thread dimensions and stress areas are referenced from [Table 11.1](table_11_1_standard_screw_threads.md).

---

## Example 11.1

### Problem Statement
Determine the safe tensile load for a bolt of M 30, assuming a safe tensile stress of $42\text{ MPa}$.

---

### Solution

#### Given Data:
* Nominal Bolt Diameter ($d$): $30\text{ mm}$ (M 30 Coarse Series)
* Safe Tensile Stress ($\sigma_t$): $42\text{ MPa} = 42\text{ N/mm}^2$

#### Step 1: Stress Area Lookup
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**, the core stress area ($A_c$) at the bottom of the thread corresponding to **M 30** is:
$$A_c = 561\text{ mm}^2$$

#### Step 2: Calculate Safe Tensile Load ($P$)
$$\text{Safe Tensile Load } (P) = A_c \times \sigma_t$$
$$P = 561\text{ mm}^2 \times 42\text{ N/mm}^2 = 23\,562\text{ N} = \mathbf{23.562\text{ kN}}$$

> **Note:** This calculation assumes that the bolt is not initially pre-tightened ($F_i = 0$).


---

## Example 11.2

### Problem Statement
Two machine parts are fastened together tightly by means of a $24\text{ mm}$ tap bolt. If the load tending to separate these parts is neglected, find the stress that is set up in the bolt by the initial tightening.

---

### Solution

#### Given Data:
* Nominal Bolt Diameter ($d$): $24\text{ mm}$ (M 24 Coarse Series)

#### Step 1: Core Diameter & Area Lookup from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**, the core diameter of the thread corresponding to **M 24** is:
$$d_c = 20.32\text{ mm}$$

Let $\sigma_t$ = Stress set up in the bolt.

#### Step 2: Initial Tightening Load ($P$)
We know that initial tension in the bolt,
$$P = 2840 \cdot d = 2840 \times 24 = 68\,160\text{ N}$$

#### Step 3: Initial Tightening Stress ($\sigma_t$)
We also know that initial tension in the bolt ($P$),
$$68\,160 = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t = \frac{\pi}{4} (20.32)^2 \cdot \sigma_t = 324 \cdot \sigma_t$$
$$\sigma_t = \frac{68\,160}{324} = \mathbf{210\text{ N/mm}^2 = 210\text{ MPa}}$$

> **Note:** If using the effective stress area ($353\text{ mm}^2$) from Table 11.1, $\sigma_t = \frac{68160}{353} = 193\text{ MPa}$. Standard textbook solutions use thread root area $A_c = 324\text{ mm}^2$ giving $\mathbf{210\text{ MPa}}$.


---

## Example 11.3

### Problem Statement
An eye bolt is to be used for lifting a load of $60\text{ kN}$. Find the nominal diameter of the bolt, if the tensile stress is not to exceed $100\text{ MPa}$. Assume coarse threads.

---

### Solution

#### Given Data:
* Lifting Load ($P$): $60\text{ kN} = 60 \times 10^3\text{ N}$
* Permissible Tensile Stress ($\sigma_t$): $100\text{ MPa} = 100\text{ N/mm}^2$

#### Step 1: Calculate Required Core Diameter ($d_c$)
Tensile load equation for un-preloaded lifting eye bolt:
$$P = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
$$60 \times 10^3 = \frac{\pi}{4} (d_c)^2 \times 100 = 78.55 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{60\,000}{78.55} = 763.84 \implies d_c = \sqrt{763.84} = 27.64\text{ mm}$$

#### Step 2: Select Standard Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 27.64\text{ mm}$ is **$d_c = 28.706\text{ mm}$**.
* The corresponding nominal diameter is **$d = 33\text{ mm}$**.

$$\textbf{Select M 33 Bolt } (d = 33\text{ mm}, d_c = 28.706\text{ mm})$$

> **Note:** Eye bolts are used for lifting heavy machinery. If M 33 is unavailable in a given series, the next larger size M 36 ($A_c = 817\text{ mm}^2$) is selected.


---

## Example 11.4 (Flange Coupling Bolts)

### Problem Statement
Two shafts are connected by means of a flange coupling to transmit torque of $25\text{ N}\cdot\text{m}$. The flanges of the coupling are fastened by four bolts of the same material at a radius of $30\text{ mm}$. Find the size of the bolts if the allowable shear stress for the bolt material is $30\text{ MPa}$.

---

### Solution

#### Given Data:
* Transmitted Torque ($T$): $25\text{ N}\cdot\text{m} = 25 \times 10^3\text{ N}\cdot\text{mm}$
* Number of Bolts ($n$): $4$
* Bolt Pitch Circle Radius ($R_p$): $30\text{ mm}$
* Allowable Shear Stress ($\tau$): $30\text{ MPa} = 30\text{ N/mm}^2$

#### Step 1: Calculate Total Shearing Load ($P_s$)
$$\text{Total Shearing Load } (P_s) = \frac{T}{R_p} = \frac{25 \times 10^3\text{ N}\cdot\text{mm}}{30\text{ mm}} = 833.3\text{ N}$$

#### Step 2: Calculate Required Core Diameter ($d_c$)
The total shear load is resisted by $n = 4$ bolts at their core diameter ($d_c$):
$$P_s = n \cdot \left[ \frac{\pi}{4} (d_c)^2 \right] \cdot \tau$$
$$833.3 = 4 \cdot \left[ \frac{\pi}{4} (d_c)^2 \right] \times 30 = 94.26 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{833.3}{94.26} = 8.84 \implies d_c = \sqrt{8.84} = 2.97\text{ mm}$$

#### Step 3: Select Standard Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 2.97\text{ mm}$ is **$d_c = 3.141\text{ mm}$**.
* The corresponding nominal bolt size is **$d = 4\text{ mm}$**.

$$\textbf{Select M 4 Bolt } (d = 4\text{ mm}, d_c = 3.141\text{ mm})$$


---

## Example 11.5 (Safety Valve Fulcrum Screw)

### Problem Statement
A lever loaded safety valve has a diameter of $100\text{ mm}$ and the blow-off pressure is $1.6\text{ N/mm}^2$. The fulcrum of the lever is screwed into the cast iron body of the cover. Find the diameter of the threaded part of the fulcrum if the permissible tensile stress is limited to $50\text{ MPa}$ and the leverage ratio is $8$.

---

### Solution

#### Given Data:
* Valve Diameter ($D$): $100\text{ mm}$
* Blow-off Pressure ($p$): $1.6\text{ N/mm}^2$
* Leverage Ratio: $\frac{L_1}{L_2} = 8$
* Permissible Tensile Stress ($\sigma_t$): $50\text{ MPa} = 50\text{ N/mm}^2$

#### Step 1: Calculate Total Upward Force on Valve ($F$)
$$F = \text{Area} \times \text{pressure} = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (100)^2 \times 1.6 = 12\,568\text{ N}$$

#### Step 2: Calculate Load at End of Lever ($W$) and Load on Fulcrum ($P$)
Since leverage ratio is $8$:
$$W = \frac{F}{8} = \frac{12\,568}{8} = 1571\text{ N}$$

For static equilibrium of the Type 1 lever:
$$P = F - W = 12\,568 - 1571 = 10\,997\text{ N}$$

#### Step 3: Calculate Required Core Diameter ($d_c$)
$$P = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
$$10\,997 = \frac{\pi}{4} (d_c)^2 \times 50 = 39.27 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{10\,997}{39.27} = 280 \implies d_c = \sqrt{280} = 16.7\text{ mm}$$

#### Step 4: Select Standard Fine Metric Thread from Table 11.1
From **[Table 11.1: Standard Screw Threads (Fine Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 16.7\text{ mm}$ is **$d_c = 18.376\text{ mm}$**.
* Corresponding thread size: **M 20 $\times$ 1.5**.

$$\textbf{Select M 20} \times \textbf{1.5 Fine Series Bolt } (d = 20\text{ mm}, d_c = 18.376\text{ mm})$$


---

## Example 11.6 (Steam Engine Cylinder Studs)

### Problem Statement
A steam engine cylinder has an effective diameter of $350\text{ mm}$ and the maximum steam pressure acting on the cylinder cover is $1.25\text{ N/mm}^2$. Calculate the number and size of studs required to fix the cylinder cover, assuming the permissible stress in the studs as $33\text{ MPa}$.

---

### Solution

#### Given Data:
* Cylinder Effective Diameter ($D$): $350\text{ mm}$
* Maximum Steam Pressure ($p$): $1.25\text{ N/mm}^2$
* Permissible Stress in Studs ($\sigma_t$): $33\text{ MPa} = 33\text{ N/mm}^2$

#### Step 1: Calculate Total Upward Steam Force ($P$)
$$P = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (350)^2 \times 1.25 = 120\,265\text{ N}$$

#### Step 2: Determine Number of Studs ($n$) for Assumed Size
Assume standard **M 24** studs are used. From **[Table 11.1](table_11_1_standard_screw_threads.md)**, core diameter $d_c = 20.32\text{ mm}$.
* Resisting force capacity per M 24 stud:
  $$P_1 = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t = \frac{\pi}{4} (20.32)^2 \times 33 = 10\,700\text{ N}$$
* Number of studs required ($n$):
  $$n = \frac{P}{P_1} = \frac{120\,265}{10\,700} = 11.24 \implies \mathbf{n = 12\text{ studs}}$$

#### Step 3: Verify Leak-Proof Circumferential Pitch ($p_c$)
Assuming cylinder wall thickness $t = 10\text{ mm}$ and stud hole diameter $d_1 = 25\text{ mm}$:
* Pitch circle diameter of studs ($D_p$):
  $$D_p = D + 2t + 3d_1 = 350 + 2(10) + 3(25) = 445\text{ mm}$$
* Circumferential pitch ($p_c$):
  $$p_c = \frac{\pi \cdot D_p}{n} = \frac{\pi \times 445}{12} = 116.5\text{ mm}$$

* Leak-proof criteria limits ($d_1$ in mm):
  $$\text{Minimum Pitch } = 20 \sqrt{d_1} = 20 \sqrt{25} = 100\text{ mm}$$
  $$\text{Maximum Pitch } = 30 \sqrt{d_1} = 30 \sqrt{25} = 150\text{ mm}$$

Since $100\text{ mm} \le 116.5\text{ mm} \le 150\text{ mm}$, the design is **satisfactory**.

$$\textbf{Use 12 studs of M 24 size } (n = 12, \text{ M 24 studs})$$


---

## Example 11.7 (Pressure Vessel Inspection Hole Cover & Bolts)

### Problem Statement
A mild steel cover plate is to be designed for an inspection hole in the shell of a pressure vessel. The hole is $120\text{ mm}$ in diameter and the pressure inside the vessel is $6\text{ N/mm}^2$. Design the cover plate along with the bolts. Assume allowable tensile stress for mild steel as $60\text{ MPa}$ and for bolt material as $40\text{ MPa}$.

---

### Solution

#### Given Data:
* Inspection Hole Diameter ($D$): $120\text{ mm}$ (Radius $r = 60\text{ mm}$)
* Internal Pressure ($p$): $6\text{ N/mm}^2$
* Allowable Tensile Stress for Mild Steel Plate ($\sigma_t$): $60\text{ MPa} = 60\text{ N/mm}^2$
* Allowable Tensile Stress for Bolt Material ($\sigma_{tb}$): $40\text{ MPa} = 40\text{ N/mm}^2$

---

#### Part 1: Thickness of Pressure Vessel Shell ($t$)
According to Lame's equation for thick pressure vessels:
$$t = r \left[ \sqrt{\frac{\sigma_t + p}{\sigma_t - p}} - 1 \right] = 60 \left[ \sqrt{\frac{60 + 6}{60 - 6}} - 1 \right] = 60 \left[ \sqrt{1.222} - 1 \right] = 6.3\text{ mm}$$

$$\textbf{Adopt Shell Thickness } t = 10\text{ mm}$$

---

#### Part 2: Design of Fixing Bolts

1. **Total Upward Pressure Load ($P$):**
   $$P = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (120)^2 \times 6 = 67\,860\text{ N}$$

2. **Select Bolt Size & Determine Stud Count ($n$):**
   Assume standard **M 24** bolts are used. From **[Table 11.1](table_11_1_standard_screw_threads.md)**, core diameter $d_c = 20.32\text{ mm}$.
   * Resisting force capacity per M 24 bolt:
     $$P_1 = \frac{\pi}{4} (d_c)^2 \cdot \sigma_{tb} = \frac{\pi}{4} (20.32)^2 \times 40 = 12\,973\text{ N}$$
   * Number of bolts required ($n$):
     $$n = \frac{P}{P_1} = \frac{67\,860}{12\,973} = 5.23 \implies \mathbf{n = 6\text{ bolts}}$$

3. **Verify Leak-Proof Circumferential Pitch ($p_c$):**
   Taking bolt hole diameter $d_1 = 25\text{ mm}$ for M 24 bolts:
   * Pitch circle diameter of bolts ($D_p$):
     $$D_p = D + 2t + 3d_1 = 120 + 2(10) + 3(25) = 215\text{ mm}$$
   * Circumferential pitch ($p_c$):
     $$p_c = \frac{\pi \cdot D_p}{n} = \frac{\pi \times 215}{6} = 112.6\text{ mm}$$

   * Leak-proof criteria limits ($d_1$ in mm):
     $$\text{Minimum Pitch } = 20 \sqrt{d_1} = 20 \sqrt{25} = 100\text{ mm}$$
     $$\text{Maximum Pitch } = 30 \sqrt{d_1} = 30 \sqrt{25} = 150\text{ mm}$$

   Since $100\text{ mm} \le 112.6\text{ mm} \le 150\text{ mm}$, **M 24 bolts ($n = 6$) are satisfactory**.

---

#### Part 3: Design of Cover Plate Thickness ($t_1$)

1. **Maximum Bending Moment ($M$):**
   For a circular cover plate fastened by bolts:
   $$M = 0.053 \cdot P \cdot D_p = 0.053 \times 67\,860 \times 215 = 773\,265\text{ N}\cdot\text{mm}$$

2. **Outside Diameter ($D_o$) and Effective Plate Width ($w$):**
   $$D_o = D_p + 3d_1 = 215 + 3(25) = 290\text{ mm}$$
   $$w = D_o - 2d_1 = 290 - 2(25) = 240\text{ mm}$$

3. **Section Modulus ($Z$) & Cover Plate Thickness ($t_1$):**
   $$Z = \frac{1}{6} \cdot w \cdot (t_1)^2 = \frac{1}{6} \times 240 \times (t_1)^2 = 40 \cdot (t_1)^2$$
   $$\sigma_t = \frac{M}{Z} \implies 60 = \frac{773\,265}{40 \cdot (t_1)^2} \implies (t_1)^2 = \frac{773\,265}{2400} = 322.2$$
   $$t_1 = \sqrt{322.2} \approx 17.95\text{ mm} \implies \mathbf{t_1 = 18\text{ mm}}$$

$$\textbf{Final Design: 6 Bolts of M 24 size, Cover Plate Thickness } t_1 = 18\text{ mm}$$


---

## Example 11.8 (Cylinder Head with Copper Gasket)

### Problem Statement
The cylinder head of a steam engine is subjected to a steam pressure of $0.7\text{ N/mm}^2$. It is held in position by means of $12$ bolts. A soft copper gasket is used to make the joint leak-proof. The effective diameter of the cylinder is $300\text{ mm}$. Find the size of the bolts so that the stress in the bolts is not to exceed $100\text{ MPa}$.

---

### Solution

#### Given Data:
* Steam Pressure ($p$): $0.7\text{ N/mm}^2$
* Number of Bolts ($n$): $12$
* Effective Cylinder Diameter ($D$): $300\text{ mm}$
* Allowable Tensile Stress ($\sigma_t$): $100\text{ MPa} = 100\text{ N/mm}^2$
* Gasket Ratio ($K$): $0.5$ (for soft copper gasket with long through bolts)

#### Step 1: Calculate External Load per Bolt ($P_2$)
Total upward force acting on cylinder head:
$$P_{\text{total}} = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (300)^2 \times 0.7 = 49\,490\text{ N}$$

External load per bolt ($P_2$):
$$P_2 = \frac{49\,490}{12} = 4124\text{ N}$$

#### Step 2: Formulate Resultant Axial Load ($P$)
Initial tightening tension ($P_1$):
$$P_1 = 2840 \cdot d \quad [\text{N}] \qquad (\text{where } d \text{ is nominal bolt diameter in mm})$$

From Table 11.2 (soft copper gasket with long through bolts), minimum value of $K = 0.5$.

Resultant axial load per bolt ($P$):
$$P = P_1 + K \cdot P_2 = 2840 \cdot d + 0.5 \times 4124 = (2840 \cdot d + 2062)\text{ N}$$

#### Step 3: Resisting Load & Quadratic Equation for Bolt Size ($d$)
Using thread relation $d_c = 0.84 \cdot d$:
$$P = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t = \frac{\pi}{4} (0.84 \cdot d)^2 \times 100 = 55.4 \cdot d^2$$

Equating resultant load to resisting load:
$$55.4 \cdot d^2 = 2840 \cdot d + 2062$$
$$55.4 \cdot d^2 - 2840 \cdot d - 2062 = 0$$
$$\text{or } d^2 - 51.3 \cdot d - 37.2 = 0$$

Solving quadratic equation for $d$:
$$d = \frac{51.3 \pm \sqrt{(51.3)^2 + 4(37.2)}}{2} = \frac{51.3 + 52.7}{2} = 52\text{ mm} \qquad (\text{Taking } + \text{ve sign})$$

$$\mathbf{\text{Thus, we shall use a bolt of size M 52. Ans.}}$$


---

## Example 11.9 (Fatigue & Preload Design using Soderberg Criteria)

### Problem Statement
A steam engine of effective diameter $300\text{ mm}$ is subjected to a steam pressure of $1.5\text{ N/mm}^2$. The cylinder head is connected by $8$ bolts having yield point $330\text{ MPa}$ and endurance limit of $240\text{ MPa}$. The bolts are tightened with an initial preload of $1.5$ times the steam load. A soft copper gasket is used to make the joint leak-proof ($K = 0.5$). Assuming a factor of safety of $2$, find the size of bolt required.

---

### Solution

#### Given Data:
* Cylinder Diameter ($D$): $300\text{ mm}$
* Steam Pressure ($p$): $1.5\text{ N/mm}^2$
* Number of Bolts ($n$): $8$
* Yield Strength ($\sigma_y$): $330\text{ MPa} = 330\text{ N/mm}^2$
* Endurance Limit ($\sigma_e$): $240\text{ MPa} = 240\text{ N/mm}^2$
* Initial Preload ($P_1$): $1.5 \cdot P_2$
* Stiffness Factor ($K$): $0.5$
* Factor of Safety ($\text{F.S.}$): $2$

---

#### Step 1: Calculate Total Steam Load ($P_2$) & Initial Preload ($P_1$)
Total steam load on cylinder cover ($P_2$):
$$P_2 = \frac{\pi}{4} D^2 \cdot p = \frac{\pi}{4} (300)^2 \times 1.5 = 106\,040\text{ N}$$

Initial preload ($P_1$):
$$P_1 = 1.5 \cdot P_2 = 1.5 \times 106\,040 = 159\,060\text{ N}$$

---

#### Step 2: Calculate Maximum and Minimum Loads per Bolt
Total maximum load on cylinder cover ($P_{\max}$):
$$P_{\max} = P_1 + K \cdot P_2 = 159\,060 + 0.5 \times 106\,040 = 212\,080\text{ N}$$

Shared across $n = 8$ bolts:
* **Maximum Load per Bolt ($P_{\max,\text{bolt}}$):**
  $$P_{\max,\text{bolt}} = \frac{212\,080}{8} = 26\,510\text{ N}$$
* **Minimum Load per Bolt ($P_{\min,\text{bolt}}$):**
  $$P_{\min,\text{bolt}} = \frac{P_1}{8} = \frac{159\,060}{8} = 19\,882\text{ N}$$

---

#### Step 3: Mean & Variable Loads per Bolt
* **Mean Load ($P_m$):**
  $$P_m = \frac{P_{\max,\text{bolt}} + P_{\min,\text{bolt}}}{2} = \frac{26\,510 + 19\,882}{2} = 23\,196\text{ N}$$
* **Variable Load ($P_v$):**
  $$P_v = \frac{P_{\max,\text{bolt}} - P_{\min,\text{bolt}}}{2} = \frac{26\,510 - 19\,882}{2} = 3314\text{ N}$$

---

#### Step 4: Express Mean & Variable Stresses in Terms of Core Diameter ($d_c$)
Let $A_c = \frac{\pi}{4} (d_c)^2 = 0.7854 (d_c)^2$:
* **Mean Stress ($\sigma_m$):**
  $$\sigma_m = \frac{P_m}{A_c} = \frac{23\,196}{0.7854 (d_c)^2} = \frac{29\,534}{(d_c)^2} \quad [\text{N/mm}^2]$$
* **Variable Stress ($\sigma_v$):**
  $$\sigma_v = \frac{P_v}{A_c} = \frac{3314}{0.7854 (d_c)^2} = \frac{4220}{(d_c)^2} \quad [\text{N/mm}^2]$$

---

#### Step 5: Apply Soderberg's Fatigue Failure Equation
$$\sigma_v = \frac{\sigma_e}{\text{F.S.}} \left[ 1 - \frac{\sigma_m \cdot \text{F.S.}}{\sigma_y} \right]$$

Substitute known values:
$$\frac{4220}{(d_c)^2} = \frac{240}{2} \left[ 1 - \frac{29\,534}{(d_c)^2} \cdot \frac{2}{330} \right] = 120 \left[ 1 - \frac{179.0}{(d_c)^2} \right]$$
$$\frac{4220}{(d_c)^2} = 120 - \frac{21\,480}{(d_c)^2}$$
$$\frac{4220 + 21\,480}{(d_c)^2} = 120 \implies \frac{25\,700}{(d_c)^2} = 120$$
$$(d_c)^2 = \frac{25\,700}{120} = 214.17 \implies d_c = \sqrt{214.17} = 14.63\text{ mm}$$

---

#### Step 6: Select Standard Commercial Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 14.63\text{ mm}$ is **$d_c = 14.933\text{ mm}$**.
* Corresponding nominal bolt size: **$d = 18\text{ mm}$**.

$$\textbf{Select M 18 Bolt } (d = 18\text{ mm}, d_c = 14.933\text{ mm})$$


---

## Example 11.10 (Boiler Bar Stays)

### Problem Statement
The longitudinal bar stays of a short boiler are pitched at $350\text{ mm}$ horizontally and vertically. The steam pressure is $0.84\text{ N/mm}^2$. Find the size of mild steel bolts having permissible tensile stress as $56\text{ MPa}$.

![Fig 11.29: Longitudinal Bar Stay](Figures/fig%2011.29.png)

---


### Solution

#### Given Data:
* Pitch of Stays ($p_s$): $350\text{ mm} \times 350\text{ mm}$
* Steam Pressure ($p$): $0.84\text{ N/mm}^2$
* Permissible Tensile Stress ($\sigma_t$): $56\text{ MPa} = 56\text{ N/mm}^2$

#### Step 1: Calculate Area Supported by Each Stay ($A$)
$$A = 350 \times 350 = 122\,500\text{ mm}^2$$

#### Step 2: Calculate Steam Force Acting on Each Stay ($P$)
$$P = A \cdot p = 122\,500\text{ mm}^2 \times 0.84\text{ N/mm}^2 = 102\,900\text{ N}$$

#### Step 3: Calculate Required Core Diameter ($d_c$)
$$P = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
$$102\,900 = \frac{\pi}{4} (d_c)^2 \times 56 = 43.98 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{102\,900}{43.98} = 2339.6 \implies d_c = \sqrt{2339.6} = 48.37\text{ mm}$$

#### Step 4: Select Standard Commercial Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 48.37\text{ mm}$ is **$d_c = 49.177\text{ mm}$**.
* Corresponding nominal bolt size: **$d = 56\text{ mm}$**.

$$\mathbf{\text{Select M 56 Bolt } (d = 56\text{ mm}, d_c = 49.177\text{ mm})}$$


---

## Example 11.11 (Bolt of Uniform Strength)

### Problem Statement
Determine the diameter of the hole that must be drilled in an M 48 bolt such that the bolt becomes of uniform strength.

---

### Solution

#### Given Data:
* Nominal Diameter ($D_o$): $48\text{ mm}$ (M 48 Coarse Series)

#### Step 1: Core Diameter Lookup from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Core diameter corresponding to M 48 is **$D_c = 41.795\text{ mm}$**.

#### Step 2: Calculate Required Hole Diameter ($D$)
For a bolt of uniform strength, the cross-sectional area of the unthreaded shank with a drilled axial hole must equal the core area of the threaded portion:
$$\frac{\pi}{4} \left( D_o^2 - D^2 \right) = \frac{\pi}{4} D_c^2 \implies D_o^2 - D^2 = D_c^2$$

Solving for hole diameter $D$:
$$D = \sqrt{D_o^2 - D_c^2} = \sqrt{(48)^2 - (41.795)^2} = \sqrt{2304 - 1746.82} = \sqrt{557.18} = \mathbf{23.64\text{ mm}}$$

$$\mathbf{\text{Diameter of the hole, } D = \sqrt{(D_o)^2 - (D_c)^2} = \sqrt{(48)^2 - (41.795)^2} = 23.64\text{ mm. Ans.}}$$


---

## Example 11.12 (Eccentric Bracket — Load Parallel to Bolt Axis)

### Problem Statement
A bracket supports a load of $30\text{ kN}$. Determine the size of bolts, if the maximum allowable tensile stress in the bolt material is $60\text{ MPa}$. The distances are: $L_1 = 80\text{ mm}$, $L_2 = 250\text{ mm}$, and load arm $L = 500\text{ mm}$.

![Fig 11.31: Wall Bracket with Load Parallel to Bolt Axis](Figures/fig%2011.31.png)

---

### Solution

#### Given Data:
* Load ($W$): $30\text{ kN} = 30 \times 10^3\text{ N}$
* Eccentricity Arm ($L$): $500\text{ mm}$
* Distance to Lower Row ($L_1$): $80\text{ mm}$
* Distance to Upper Row ($L_2$): $250\text{ mm}$
* Number of Bolts ($n$): $4$ (2 bolts in row 1, 2 bolts in row 2)
* Allowable Tensile Stress ($\sigma_t$): $60\text{ MPa} = 60\text{ N/mm}^2$

---

#### Step 1: Calculate Direct Tensile Load per Bolt ($W_{t1}$)
$$W_{t1} = \frac{W}{n} = \frac{30\,000}{4} = 7500\text{ N} = 7.5\text{ kN}$$

#### Step 2: Calculate Secondary Tensile Load on Upper Bolts ($W_{t2}$)
Load per unit distance ($w$):
$$w = \frac{W \cdot L}{2 \left( L_1^2 + L_2^2 \right)} = \frac{30 \times 500}{2 \left( 80^2 + 250^2 \right)} = \frac{15\,000}{2 (6400 + 62\,500)} = \frac{15\,000}{137\,800} = 0.10886\text{ kN/mm}$$

Secondary tensile load on each upper bolt at distance $L_2 = 250\text{ mm}$:
$$W_{t2} = w \cdot L_2 = 0.10886 \times 250 = 27.215\text{ kN} = 27\,215\text{ N}$$

#### Step 3: Calculate Total Maximum Tensile Load ($W_t$)
$$W_t = W_{t1} + W_{t2} = 7.5 + 27.215 = 34.715\text{ kN} = 34\,715\text{ N}$$

#### Step 4: Calculate Required Core Diameter ($d_c$)
$$W_t = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
$$34\,715 = \frac{\pi}{4} (d_c)^2 \times 60 = 47.12 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{34\,715}{47.12} = 736.7 \implies d_c = \sqrt{736.7} = 27.14\text{ mm}$$

#### Step 5: Select Standard Commercial Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 27.14\text{ mm}$ is **$d_c = 28.706\text{ mm}$**.
* Corresponding nominal bolt size: **$d = 33\text{ mm}$**.

$$\textbf{Select M 33 Bolt } (d = 33\text{ mm}, d_c = 28.706\text{ mm})$$


---

## Example 11.13 (Crane Runway Bracket & Fastening Bolts)

### Problem Statement
A crane runway bracket supports a wheel load of $15\text{ kN}$. Determine the tensile and compressive stresses produced in section X-X. Also find the maximum stress produced in the 4 bolts ($d = 25\text{ mm}$) used for fastening the bracket to the roof truss.

![Fig 11.32: Crane Runway Bracket](Figures/fig%2011.32.png)
![Fig 11.33: Bracket Plan View & Tilting Axis](Figures/fig%2011.33%20(diagram%20in%20solution%20of%20Eg.%2011.13).png)

---

### Solution

#### Given Data:
* Wheel Load ($W$): $15\text{ kN} = 15 \times 10^3\text{ N}$
* Bolt Diameter ($d$): $25\text{ mm}$ (Number of bolts $n = 4$)

---

#### Part 1: Stresses in Bracket Cross-Section X-X (T-Section)

1. **Centroid ($\bar{y}$) & Area ($A$):**
   * Top Flange: $135\text{ mm} \times 25\text{ mm} \implies A_1 = 3375\text{ mm}^2$
   * Web: $175\text{ mm} \times 25\text{ mm} \implies A_2 = 4375\text{ mm}^2$
   * Total Area ($A$): $A_1 + A_2 = 7750\text{ mm}^2$
   * Centroid from top flange ($\bar{y}$):
     $$\bar{y} = \frac{3375 \times 12.5 + 4375 \times (25 + 87.5)}{7750} = \frac{42\,187.5 + 492\,187.5}{7750} = 68.95\text{ mm} \approx 69\text{ mm}$$
     $$y_1 = 69\text{ mm} \quad (\text{Top}), \qquad y_2 = 200 - 69 = 131\text{ mm} \quad (\text{Bottom})$$

2. **Moment of Inertia ($I_{GG}$) & Section Moduli ($Z_1, Z_2$):**
   $$I_{GG} = \left[ \frac{135(25)^3}{12} + 3375(69 - 12.5)^2 \right] + \left[ \frac{25(175)^3}{12} + 4375(112.5 - 69)^2 \right] = 30.4 \times 10^6\text{ mm}^4$$
   * Tensile Section Modulus: $Z_1 = \frac{30.4 \times 10^6}{69} = 440.6 \times 10^3\text{ mm}^3$
   * Compressive Section Modulus: $Z_2 = \frac{30.4 \times 10^6}{131} = 232 \times 10^3\text{ mm}^3$

3. **Bending Moment ($M$) & Combined Stresses:**
   * Bending moment: $M = 15 \times 10^3 \times (200 + 69) = 4.035 \times 10^6\text{ N}\cdot\text{mm}$
   * Bending tensile stress: $\sigma_{b1} = \frac{4.035 \times 10^6}{440.6 \times 10^3} = 9.16\text{ N/mm}^2$
   * Bending compressive stress: $\sigma_{b2} = \frac{4.035 \times 10^6}{232 \times 10^3} = 17.4\text{ N/mm}^2$
   * Direct tensile stress: $\sigma_{t1} = \frac{W}{A} = \frac{15\,000}{7750} = 1.94\text{ N/mm}^2$

   * **Maximum Tensile Stress at X-X:**
     $$\sigma_t = \sigma_{b1} + \sigma_{t1} = 9.16 + 1.94 = \mathbf{11.1\text{ MPa}}$$
   * **Maximum Compressive Stress at X-X:**
     $$\sigma_c = \sigma_{b2} - \sigma_{t1} = 17.4 - 1.94 = \mathbf{15.46\text{ MPa}}$$

---

#### Part 2: Maximum Tensile Stress in Fastening Bolts ($\sigma_{tb}$)

1. **Direct Tensile Load per Bolt ($W_{t1}$):**
   $$W_{t1} = \frac{W}{n} = \frac{15\,000}{4} = 3750\text{ N}$$

2. **Secondary Tensile Load on Critical Upper Bolts 2 & 3 ($W_{t2}$):**
   * Tilting edge $EE$: $L_1 = 50\text{ mm}$, $L_2 = 50 + 325 = 375\text{ mm}$
   * Total load arm from tilting edge $EE$: $L = 100 + 50 + 325 + 50 = 525\text{ mm}$
   * Load per unit distance ($w$):
     $$w = \frac{W \cdot L}{2 \left( L_1^2 + L_2^2 \right)} = \frac{15\,000 \times 525}{2 \left( 50^2 + 375^2 \right)} = \frac{7\,875\,000}{286\,250} = 27.5\text{ N/mm}$$
   * Secondary load on top bolts: $W_{t2} = w \cdot L_2 = 27.5 \times 375 = 10\,312.5\text{ N}$$

3. **Total Maximum Tensile Load & Bolt Stress ($\sigma_{tb}$):**
   $$W_t = W_{t1} + W_{t2} = 3750 + 10\,312.5 = 14\,062.5\text{ N}$$
   Using core diameter relation $d_c = 0.84 \cdot d = 0.84 \times 25 = 21\text{ mm}$:
   $$\sigma_{tb} = \frac{W_t}{\frac{\pi}{4} (d_c)^2} = \frac{14\,062.5}{\frac{\pi}{4} (21)^2} = \frac{14\,062.5}{346.36} = \mathbf{40.6\text{ N/mm}^2 = 40.6\text{ MPa}}$$


---

## Example 11.14 (Travelling Crane Bracket & Rectangular Arm)

### Problem Statement
For supporting a travelling crane in a workshop, brackets are fixed on steel columns. The maximum load on the bracket is $12\text{ kN}$ acting vertically at a distance of $400\text{ mm}$ from the column face. The vertical face of the bracket is secured to a column by four bolts in two rows (two in each row) at $50\text{ mm}$ from the lower edge. Determine the size of the bolts if permissible tensile stress is $84\text{ MPa}$. Also find the rectangular cross-section of the bracket arm.

![Fig 11.35: Travelling Crane Bracket](Figures/fig%2011.35.png)

---

### Solution

#### Given Data:
* Load ($W$): $12\text{ kN} = 12 \times 10^3\text{ N}$
* Load Arm ($L$): $400\text{ mm}$
* Distance to Lower Row ($L_1$): $50\text{ mm}$
* Distance to Upper Row ($L_2$): $375\text{ mm}$
* Permissible Tensile Stress ($\sigma_t$): $84\text{ MPa} = 84\text{ N/mm}^2$
* Number of Bolts ($n$): $4$

---

#### Part 1: Design of Fixing Bolts (Combined Shear & Tension)

1. **Direct Shear Load per Bolt ($W_s$):**
   $$W_s = \frac{W}{n} = \frac{12\,000}{4} = 3000\text{ N} = 3\text{ kN}$$

2. **Maximum Secondary Tensile Load on Upper Bolts ($W_t$):**
   $$W_t = \frac{W \cdot L \cdot L_2}{2 \left( L_1^2 + L_2^2 \right)} = \frac{12 \times 400 \times 375}{2 \left( 50^2 + 375^2 \right)} = \frac{1\,800\,000}{286\,250} = 6.288\text{ kN} = 6288\text{ N}$$

3. **Equivalent Tensile Load ($W_{te}$):**
   Since bolts carry both direct shear ($W_s$) and secondary tension ($W_t$), apply Maximum Principal Stress Theory:
   $$W_{te} = \frac{1}{2} \left[ W_t + \sqrt{W_t^2 + 4 W_s^2} \right]$$
   $$W_{te} = \frac{1}{2} \left[ 6.29 + \sqrt{(6.29)^2 + 4(3)^2} \right] = \frac{1}{2} [6.29 + 8.69] = 7.49\text{ kN} = 7490\text{ N}$$

4. **Calculate Required Core Diameter ($d_c$):**
   $$W_{te} = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
   $$7490 = \frac{\pi}{4} (d_c)^2 \times 84 = 65.97 \cdot (d_c)^2$$
   $$(d_c)^2 = \frac{7490}{65.97} = 113.5 \implies d_c = \sqrt{113.5} = 10.65\text{ mm}$$

5. **Select Standard Commercial Bolt from Table 11.1:**
   From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
   * Next standard core diameter $d_c > 10.65\text{ mm}$ is **$d_c = 11.546\text{ mm}$**.
   * Corresponding nominal bolt size: **$d = 14\text{ mm}$**.

   $$\textbf{Select M 14 Bolts } (d = 14\text{ mm}, d_c = 11.546\text{ mm})$$

---

#### Part 2: Rectangular Cross-Section of Bracket Arm ($t \times b$)

1. **Maximum Bending Moment ($M$):**
   $$M = W \cdot L = 12 \times 10^3 \times 400 = 4.8 \times 10^6\text{ N}\cdot\text{mm}$$

2. **Flexural Stress Equation:**
   $$Z = \frac{1}{6} \cdot t \cdot b^2$$
   $$\sigma_t = \frac{M}{Z} \implies 84 = \frac{4.8 \times 10^6}{\frac{1}{6} \cdot t \cdot b^2} \implies t \cdot b^2 = \frac{28.8 \times 10^6}{84} = 342\,857\text{ mm}^3$$

3. **Determine Arm Dimensions:**
   Assuming a standard bracket arm depth $b = 250\text{ mm}$:
   $$t = \frac{342\,857}{(250)^2} = \frac{342\,857}{62\,500} = \mathbf{5.5\text{ mm}}$$

$$\textbf{Final Design: M 14 Bolts, Bracket Arm Dimensions } 5.5\text{ mm} \times 250\text{ mm}$$


---

## Example 11.15 (Inclined Load Bracket & Arm Thickness Design)

### Problem Statement
Determine the size of the bolts and the thickness of the arm for the bracket shown, if it carries a load of $40\text{ kN}$ at an angle of $60^\circ$ to the vertical. Permissible safe stresses: Tensile stress $\sigma_t = 70\text{ MPa}$, Shear stress $\tau = 50\text{ MPa}$, Compressive stress $\sigma_c = 105\text{ MPa}$. Depth of bracket arm $b = 130\text{ mm}$.

![Fig 11.36: Inclined Load Bracket](Figures/fig%2011.36.png)
![Fig 11.37: Force Components & Turning Moments](Figures/fig%2011.37%20(diagram%20in%20solution%20of%20Eg.%2011.15).png)

---


### Solution

#### Given Data:
* Inclined Load ($W$): $40\text{ kN} = 40 \times 10^3\text{ N}$ at $\theta = 60^\circ$ to vertical
* Permissible Stresses: $\sigma_t = 70\text{ MPa}$, $\tau = 50\text{ MPa}$, $\sigma_c = 105\text{ MPa}$
* Arm Depth ($b$): $130\text{ mm}$
* Bolt Rows: 4 bolts in total ($n = 4$, $L_1 = 60\text{ mm}$, $L_2 = 180\text{ mm}$)

---

#### Part 1: Force Resolution
* **Horizontal Component ($W_H$):**
  $$W_H = 40 \sin 60^\circ = 40 \times 0.866 = 34.64\text{ kN} = 34\,640\text{ N}$$
* **Vertical Component ($W_V$):**
  $$W_V = 40 \cos 60^\circ = 40 \times 0.5 = 20\text{ kN} = 20\,000\text{ N}$$

---

#### Part 2: Design of Fixing Bolts

1. **Direct Loads per Bolt:**
   * Direct tensile load per bolt due to $W_H$:
     $$W_{t1} = \frac{W_H}{4} = \frac{34\,640}{4} = 8660\text{ N}$$
   * Direct shear load per bolt due to $W_V$:
     $$W_s = \frac{W_V}{4} = \frac{20\,000}{4} = 5000\text{ N}$$

2. **Net Turning Moment ($T_{\text{net}}$):**
   * Counterclockwise turning moment due to $W_H$ about bolt C.G.:
     $$T_H = W_H \times (60 + 60 - 100) = 34\,640 \times 20 = 692.8 \times 10^3\text{ N}\cdot\text{mm}$$
   * Clockwise turning moment due to $W_V$ about tilting edge $E$:
     $$T_V = W_V \times 175 = 20\,000 \times 175 = 3500 \times 10^3\text{ N}\cdot\text{mm}$$
   * **Net Clockwise Moment ($T_{\text{net}}$):**
     $$T_{\text{net}} = T_V - T_H = (3500 - 692.8) \times 10^3 = 2807.2 \times 10^3\text{ N}\cdot\text{mm}$$

3. **Secondary Tensile Load on Critical Upper Bolts 3 & 4 ($W_{t2}$):**
   Load per unit distance ($w$):
   $$w = \frac{T_{\text{net}}}{2 \left( L_1^2 + L_2^2 \right)} = \frac{2807.2 \times 10^3}{2 \left( 60^2 + 180^2 \right)} = \frac{2\,807\,200}{72\,000} = 38.99 \approx 39\text{ N/mm}$$
   Secondary load:
   $$W_{t2} = w \cdot L_2 = 39 \times 180 = 7020\text{ N}$$

4. **Total Tensile Load ($W_t$) & Equivalent Tensile Load ($W_{te}$):**
   $$W_t = W_{t1} + W_{t2} = 8660 + 7020 = 15\,680\text{ N}$$
   Using Maximum Principal Stress Theory for combined shear ($W_s = 5000\text{ N}$) and tension ($W_t = 15\,680\text{ N}$):
   $$W_{te} = \frac{1}{2} \left[ W_t + \sqrt{W_t^2 + 4 W_s^2} \right] = \frac{1}{2} \left[ 15\,680 + \sqrt{(15\,680)^2 + 4(5000)^2} \right] = \frac{1}{2} [15\,680 + 18\,600] = 17\,140\text{ N}$$

5. **Calculate Required Core Diameter ($d_c$):**
   $$W_{te} = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t \implies 17\,140 = \frac{\pi}{4} (d_c)^2 \times 70 \approx 55 \cdot (d_c)^2$$
   $$(d_c)^2 = \frac{17\,140}{55} = 311.64 \implies d_c = \sqrt{311.64} = 17.65\text{ mm}$$

6. **Select Standard Commercial Bolt from Table 11.1:**
   From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
   * Next standard core diameter $d_c > 17.65\text{ mm}$ is **$d_c = 18.933\text{ mm}$**.
   * Corresponding nominal bolt size: **$d = 22\text{ mm}$**.   $$\textbf{Select M 22 Bolts } (d = 22\text{ mm}, d_c = 18.933\text{ mm})$$

---

#### Part 3: Thickness of Bracket Arm ($t$)

1. **Section Area ($A$) & Section Modulus ($Z$):**
   For depth $b = 130\text{ mm}$:
   $$A = b \cdot t = 130 \cdot t \quad [\text{mm}^2]$$
   $$Z = \frac{1}{6} \cdot t \cdot b^2 = \frac{1}{6} \cdot t \cdot (130)^2 = 2817 \cdot t \quad [\text{mm}^3]$$

2. **Stresses in Upper Fibre of Arm:**
   * Direct tensile stress due to $W_H$: $\sigma_{t1} = \frac{W_H}{A} = \frac{34\,640}{130 t} = \frac{266.5}{t}$
   * Bending tensile stress due to $W_H$: $\sigma_{t2} = \frac{M_H}{Z} = \frac{34\,640 \times (100 - 65)}{2817 t} = \frac{1\,212\,400}{2817 t} = \frac{430.4}{t}$
   * Bending tensile stress due to $W_V$: $\sigma_{t3} = \frac{M_V}{Z} = \frac{20\,000 \times 200}{2817 t} = \frac{4\,000\,000}{2817 t} = \frac{1420}{t}$

3. **Total Tensile Stress & Maximum Principal Tensile Stress:**
   * Direct + Bending tensile stress:
     $$\sigma_t = \sigma_{t1} + \sigma_{t2} + \sigma_{t3} = \frac{266.5 + 430.4 + 1420}{t} = \frac{2116.9}{t}$$
   * Direct shear stress: $\tau = \frac{W_V}{A} = \frac{20\,000}{130 t} = \frac{154}{t}$
   * Maximum principal tensile stress:
     $$\sigma_{t(\text{max})} = \frac{\sigma_t}{2} + \frac{1}{2}\sqrt{\sigma_t^2 + 4\tau^2} = \frac{1058.45}{t} + \frac{1069.6}{t} = \frac{2128.05}{t}$$

4. **Arm Thickness ($t$) & Stress Verification:**
   * Equating $\sigma_{t(\text{max})}$ to allowable tensile stress ($\sigma_t = 70\text{ MPa}$):
     $$70 = \frac{2128.05}{t} \implies t = \frac{2128.05}{70} = 30.4\text{ mm} \approx \mathbf{31\text{ mm}}$$
   * Maximum shear stress check for $t = 31\text{ mm}$:
     $$\tau_{\max} = \frac{1069.6}{31} = 34.5\text{ MPa} \le 50\text{ MPa} \quad (\mathbf{SAFE})$$

$$\textbf{Final Design: M 22 Bolts, Bracket Arm Thickness } t = 31\text{ mm}$$


---

## Example 11.16 (Offset I-Section Bracket under Inclined Load)

### Problem Statement
A bracket carrying a pull of $10\text{ kN}$ at $60^\circ$ to the vertical is fastened by 4 bolts. Safe working stresses: $\sigma_t = 100\text{ MPa}$, $\tau = 60\text{ MPa}$. Find the size of fixing bolts and the dimensions of the I-section bracket arm (width $b = 3t$).

![Fig 11.38: Offset I-Section Bracket](Figures/fig%2011.38.png)
![Fig 11.39: Load Distribution for Offset Bracket](Figures/fig%2011.39%20(diagram%20in%20solution%20of%20Eg.%2011.16).png)

---

### Solution

#### Given Data:
* Load ($W$): $10\text{ kN} = 10 \times 10^3\text{ N}$ at $\theta = 60^\circ$ to vertical
* Permissible Tensile Stress ($\sigma_t$): $100\text{ MPa} = 100\text{ N/mm}^2$
* Permissible Shear Stress ($\tau$): $60\text{ MPa} = 60\text{ N/mm}^2$
* Number of Bolts ($n$): $4$
* Flange Width ($b$): $3t$

---

#### Part 1: Force Resolution
* **Horizontal Component ($W_H$):**
  $$W_H = 10 \sin 60^\circ = 10 \times 0.866 = 8.66\text{ kN} = 8660\text{ N}$$
* **Vertical Component ($W_V$):**
  $$W_V = 10 \cos 60^\circ = 10 \times 0.5 = 5\text{ kN} = 5000\text{ N}$$

---

#### Part 2: Design of Fixing Bolts

1. **Direct Loads per Bolt:**
   * Direct tension per bolt: $W_{t1} = \frac{W_H}{4} = \frac{8660}{4} = 2165\text{ N}$
   * Direct shear per bolt: $W_s = \frac{W_V}{4} = \frac{5000}{4} = 1250\text{ N}$

2. **Net Turning Moment ($T_{\text{net}}$):**
   * Clockwise turning moment due to $W_H$ about bolt C.G.:
     $$T_H = W_H \times 0.05\text{ m} = 8660 \times 0.05 = 433\text{ N}\cdot\text{m} \quad (\text{Clockwise})$$
   * Counterclockwise turning moment due to $W_V$ about tilting edge $E$:
     $$T_V = W_V \times 0.3\text{ m} = 5000 \times 0.3 = 1500\text{ N}\cdot\text{m} \quad (\text{Counterclockwise})$$
   * **Net Counterclockwise Moment ($T_{\text{net}}$):**
     $$T_{\text{net}} = T_V - T_H = 1500 - 433 = 1067\text{ N}\cdot\text{m}$$

3. **Secondary Tensile Load on Critical Upper Bolts 3 & 4 ($W_{t2}$):**
   * Bolt distances from tilting edge $E$: $L_1 = 0.0375\text{ m}$, $L_2 = 0.2125\text{ m}$
   * Load per unit distance ($w$):
     $$w = \frac{T_{\text{net}}}{2 \left( L_1^2 + L_2^2 \right)} = \frac{1067}{2 \left( 0.0375^2 + 0.2125^2 \right)} = \frac{1067}{0.093} = 11\,470\text{ N/m}$$
   * Secondary load:
     $$W_{t2} = w \cdot L_2 = 11\,470 \times 0.2125 = 2435\text{ N}$$

4. **Total Tensile Load ($W_t$) & Equivalent Tensile Load ($W_{te}$):**
   $$W_t = W_{t1} + W_{t2} = 2165 + 2435 = 4600\text{ N}$$
   Using Maximum Principal Stress Theory for combined shear ($W_s = 1250\text{ N}$) and tension ($W_t = 4600\text{ N}$):
   $$W_{te} = \frac{1}{2} \left[ W_t + \sqrt{W_t^2 + 4 W_s^2} \right] = \frac{1}{2} \left[ 4600 + \sqrt{(4600)^2 + 4(1250)^2} \right] = \frac{1}{2} [4600 + 5240] = 4920\text{ N}$$

5. **Calculate Required Core Diameter ($d_c$):**
   $$W_{te} = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t \implies 4920 = \frac{\pi}{4} (d_c)^2 \times 100 = 78.55 \cdot (d_c)^2$$
   $$(d_c)^2 = \frac{4920}{78.55} = 62.63 \implies d_c = \sqrt{62.63} = 7.91\text{ mm}$$

6. **Select Standard Commercial Bolt from Table 11.1:**
   From **[Table 11.1](table_11_1_standard_screw_threads.md)**:
   * Next standard core diameter $d_c > 7.91\text{ mm}$ is **$d_c = 8.18\text{ mm}$**.
   * Corresponding nominal bolt size: **$d = 10\text{ mm}$**.

   $$\mathbf{\text{Select M 10 Bolts } (d = 10\text{ mm}, d_c = 8.18\text{ mm})}$$

---

#### Part 3: Dimensions of I-Section Bracket Arm ($t$ and $b = 3t$)

1. **Cross-Sectional Area ($A$) & Section Modulus ($Z$):**
   $$A = 9 \cdot t^2 \quad [\text{mm}^2]$$
   $$Z = 10.7 \cdot t^3 \quad [\text{mm}^3]$$

2. **Stresses in Upper Flange Fibre:**
   * Direct tensile stress: $\sigma_{t1} = \frac{W_H}{A} = \frac{8660}{9 t^2} = \frac{962}{t^2}$
   * Bending stress due to $W_H$: $\sigma_{t2} = \frac{M_H}{Z} = \frac{433 \times 10^3}{10.7 t^3} = \frac{40.5 \times 10^3}{t^3}$
   * Bending stress due to $W_V$: $\sigma_{t3} = \frac{M_V}{Z} = \frac{1500 \times 10^3}{10.7 t^3} = \frac{140.2 \times 10^3}{t^3}$

3. **Net Tensile Stress & Thickness Calculation:**
   $$\sigma_t = \sigma_{t1} - \sigma_{t2} + \sigma_{t3} = \frac{962}{t^2} + \frac{99.7 \times 10^3}{t^3}$$
   Equating to safe tensile stress $\sigma_t = 100\text{ MPa}$:
   $$\frac{962}{t^2} + \frac{99.7 \times 10^3}{t^3} = 100 \implies \mathbf{t = 10.4\text{ mm}}$$
   $$b = 3t = 3 \times 10.4 = \mathbf{31.2\text{ mm}}$$

$$\mathbf{\text{Final Design: M 10 Bolts, I-Section Arm Dimensions } t = 10.4\text{ mm}, b = 31.2\text{ mm}}$$


---

## Example 11.17 (Pillar Crane Circular Base Bolts)

### Problem Statement
The base of a pillar crane is fastened to the foundation (a level plane) by eight bolts spaced equally on a bolt circle of diameter $1.6\text{ m}$. The diameter of the pillar base is $2\text{ m}$. Determine the size of bolts when the crane carries a load of $100\text{ kN}$ at a distance of $5\text{ m}$ from the centre of the base. The allowable stress for the bolt material is $100\text{ MPa}$.

![Fig 11.42: Pillar Crane Circular Foundation Layout](Figures/fig%2011.42%20(diagram%20in%20solution%20of%20Eg.%2011.17).png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $8$
* Bolt Circle Diameter ($d$): $1.6\text{ m} \implies$ Radius $r = 0.8\text{ m}$
* Pillar Base Diameter ($D$): $2\text{ m} \implies$ Radius $R = 1\text{ m}$
* Load ($W$): $100\text{ kN} = 100 \times 10^3\text{ N}$
* Load Distance from Base Centre ($e$): $5\text{ m}$
* Allowable Tensile Stress ($\sigma_t$): $100\text{ MPa} = 100\text{ N/mm}^2$

---

#### Step 1: Calculate Distance from Tilting Edge ($L$)
The pillar crane tilts about the outer circular edge $A-A$ of radius $R = 1\text{ m}$:
$$L = e - R = 5 - 1 = 4\text{ m}$$

#### Step 2: Calculate Maximum Tensile Load on Critical Bolt ($W_t$)
Using the standard circular bolt layout formula for tilting about base edge $A-A$:
$$W_t = \frac{2 \cdot W \cdot L \cdot (R + r)}{n \left( 2 R^2 + r^2 \right)}$$

Substitute given values:
$$W_t = \frac{2 \times (100 \times 10^3) \times 4 \times (1 + 0.8)}{8 \times \left( 2(1)^2 + 0.8^2 \right)} = \frac{800 \times 10^3 \times 1.8}{8 \times (2 + 0.64)} = \frac{1\,440\,000}{21.12} = 68.18 \times 10^3\text{ N} = 68\,180\text{ N}$$

#### Step 3: Calculate Required Core Diameter ($d_c$)
$$W_t = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
$$68\,180 = \frac{\pi}{4} (d_c)^2 \times 100 = 78.54 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{68\,180}{78.54} = 868.1 \implies d_c = \sqrt{868.1} = 29.46\text{ mm}$$

#### Step 4: Select Standard Commercial Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 29.46\text{ mm}$ is **$d_c = 31.093\text{ mm}$**.
* Corresponding nominal bolt size: **$d = 36\text{ mm}$**.

$$\mathbf{\text{Select M 36 Bolt } (d = 36\text{ mm}, d_c = 31.093\text{ mm}, A_c = 817\text{ mm}^2)}$$


---

## Example 11.18 (Flanged Bearing Circular Base Bolts)

### Problem Statement
A flanged bearing is fastened to a frame by means of four bolts spaced equally on a $500\text{ mm}$ bolt circle. The diameter of the bearing flange is $650\text{ mm}$ and a load of $400\text{ kN}$ acts at a distance of $250\text{ mm}$ from the frame. Determine the size of the bolts, taking safe tensile stress as $60\text{ MPa}$ for the material of the bolts.

![Fig 11.40: Flanged Bearing](Figures/fig%2011.40.png)

---

### Solution

#### Given Data:
* Number of Bolts ($n$): $4$
* Bolt Circle Diameter ($d$): $500\text{ mm} \implies$ Radius $r = 250\text{ mm}$
* Bearing Flange Diameter ($D$): $650\text{ mm} \implies$ Radius $R = 325\text{ mm}$
* Overturning Load ($W$): $400\text{ kN} = 400 \times 10^3\text{ N}$
* Load Arm Distance ($L$): $250\text{ mm}$
* Allowable Tensile Stress ($\sigma_t$): $60\text{ MPa} = 60\text{ N/mm}^2$

---

#### Step 1: Calculate Maximum Load on Critical Bolt ($W_t$)
When $n = 4$ bolts are equally spaced on a circular flange, the most heavily loaded bolt lies at an angle $\alpha = \frac{180^\circ}{n} = \frac{180^\circ}{4} = 45^\circ$ to the axis of symmetry. The maximum tensile load formula is:
$$W_t = \frac{2 \cdot W \cdot L \cdot \left[ R + r \cos\left( \frac{180^\circ}{n} \right) \right]}{n \left( 2 R^2 + r^2 \right)}$$

Substitute given values:
$$W_t = \frac{2 \times (400 \times 10^3) \times 250 \times \left[ 325 + 250 \cos 45^\circ \right]}{4 \times \left( 2(325)^2 + (250)^2 \right)}$$
$$W_t = \frac{200 \times 10^6 \times [325 + 250(0.7071)]}{4 \times (211\,250 + 62\,500)} = \frac{200 \times 10^6 \times (325 + 176.78)}{4 \times 273\,750}$$
$$W_t = \frac{200 \times 10^6 \times 501.78}{1\,095\,000} = 91\,643\text{ N}$$

#### Step 2: Calculate Required Core Diameter ($d_c$)
$$W_t = \frac{\pi}{4} (d_c)^2 \cdot \sigma_t$$
$$91\,643 = \frac{\pi}{4} (d_c)^2 \times 60 = 47.13 \cdot (d_c)^2$$
$$(d_c)^2 = \frac{91\,643}{47.13} = 1944.5 \implies d_c = \sqrt{1944.5} = 44.1\text{ mm}$$

#### Step 3: Select Standard Commercial Bolt from Table 11.1
From **[Table 11.1: Standard Screw Threads (Coarse Series)](table_11_1_standard_screw_threads.md)**:
* Next standard core diameter $d_c > 44.1\text{ mm}$ is **$d_c = 45.795\text{ mm}$**.
* Corresponding nominal bolt size: **$d = 52\text{ mm}$**.

$$\mathbf{\text{Select M 52 Bolt } (d = 52\text{ mm}, d_c = 45.795\text{ mm})}$$


---

## Example 11.19 (Pillar Crane Circular Base Analysis)

### Problem Statement
A pillar crane circular base of diameter $D = 600\text{ mm}$ ($R = 300\text{ mm}$) is fastened to a foundation by 4 M 30 bolts spaced equally on a PCD of $d = 500\text{ mm}$ ($r = 250\text{ mm}$). Overturning load $W = 60\text{ kN}$, allowable tensile stress $\sigma_t = 60\text{ MPa}$.
Determine:
1. The maximum distance $e$ of the load from the centre of the pillar along line X-X (at $45^\circ$ to bolts).
2. The maximum stress induced in the bolt if the load is applied along line Y-Y (in line with bolts) at the same distance $e$.

![Fig 11.43: Pillar Crane Circular Flange Lines X-X and Y-Y](Figures/fig%2011.43.png)

---

### Solution

#### Given Data:
* Base Diameter ($D$): $600\text{ mm} \implies R = 300\text{ mm} = 0.3\text{ m}$
* Bolt Pitch Circle Diameter ($d$): $500\text{ mm} \implies r = 250\text{ mm} = 0.25\text{ m}$
* Number of Bolts ($n$): $4$ of M 30 size ($A_c = 561\text{ mm}^2$)
* Load ($W$): $60\text{ kN} = 60 \times 10^3\text{ N}$
* Allowable Tensile Stress ($\sigma_t$): $60\text{ MPa} = 60\text{ N/mm}^2$

---

#### Part 1: Maximum Load Distance ($e$) along Line X-X (at $45^\circ$ to Bolts)

1. **Bolt Capacities & Distances from Tilting Edge $A-A$:**
   * Tensile load capacity per M 30 bolt: $P_{\text{cap}} = 561 \times 60 = 33.66\text{ kN}$
   * Direct tensile load per bolt: $W_{t1} = \frac{60}{4} = 15\text{ kN}$
   * Net maximum load on most heavily loaded bolt at distance $L_2$:
     $$P_{\max} = 33.66 + 15 = 48.66\text{ kN}$$
   * Bolt distances from tilting tangent $A-A$:
     $$L_1 = R - r \cos 45^\circ = 0.3 - 0.25(0.7071) = 0.123\text{ m}$$
     $$L_2 = R + r \cos 45^\circ = 0.3 + 0.25(0.7071) = 0.477\text{ m}$$

2. **Load per Unit Distance ($w$) & Resisting Moment ($M_{\text{res}}$):**
   $$w = \frac{P_{\max}}{L_2} = \frac{48.66}{0.477} = 102\text{ kN/m}$$
   Total resisting moment of 4 bolts about tilting edge $A-A$:
   $$M_{\text{res}} = 2 \cdot w \cdot \left[ L_1^2 + L_2^2 \right] = 2 \times 102 \times \left[ (0.123)^2 + (0.477)^2 \right] = 204 \times (0.0151 + 0.2275) = 49.4\text{ kN}\cdot\text{m}$$

3. **Calculate Load Distance ($e$):**
   Overturning moment $M_{\text{overturn}} = W \cdot (e - R) = 60(e - 0.3)\text{ kN}\cdot\text{m}$.
   $$60(e - 0.3) = 49.4 \implies e - 0.3 = \frac{49.4}{60} = 0.8233\text{ m}$$
   $$e = 0.8233 + 0.3 = \mathbf{1.123\text{ m}}$$

---

#### Part 2: Maximum Stress Induced in Bolt along Line Y-Y (In Line with Bolts)

1. **Distances from Tilting Line $B-B$ at $e = 1.123\text{ m}$ ($L = 0.823\text{ m}$):**
   $$L_1 = R - r = 0.3 - 0.25 = 0.05\text{ m} \quad (1 \text{ bolt})$$
   $$L_2 = R = 0.3\text{ m} \quad (2 \text{ bolts})$$
   $$L_3 = R + r = 0.3 + 0.25 = 0.55\text{ m} \quad (1 \text{ bolt, critical})$$

2. **Resisting Moment & Unit Load ($w$):**
   $$M_{\text{res}} = w \cdot \left[ L_1^2 + 2 L_2^2 + L_3^2 \right] = w \cdot \left[ (0.05)^2 + 2(0.3)^2 + (0.55)^2 \right] = 0.485 \cdot w$$
   Equating to turning moment $M_{\text{overturn}} = 60 \times 0.823 = 49.4\text{ kN}\cdot\text{m}$:
   $$0.485 \cdot w = 49.4 \implies w = \frac{49.4}{0.485} = 102\text{ kN/m}$$

3. **Maximum Induced Tensile Stress ($\sigma_{\max}$):**
   * Secondary tensile load on critical bolt at $L_3$:
     $$W_{t2} = w \cdot L_3 = 102 \times 0.55 = 56.1\text{ kN}$$
   * Net force acting on critical bolt:
     $$P_{\text{net}} = W_{t2} - W_{t1} = 56.1 - 15 = 41.1\text{ kN} = 41\,100\text{ N}$$
   * Maximum stress induced:
     $$\sigma_{\max} = \frac{P_{\text{net}}}{\text{Stress Area}} = \frac{41\,100}{516} = \mathbf{79.65\text{ MPa}}$$

$$\textbf{Final Answers: (1) Maximum Distance } e = 1.123\text{ m}, \quad (2) \text{ Maximum Induced Stress } \sigma_{\max} = 79.65\text{ MPa}$$


---

## Example 11.20 (Solid Forged Bracket with Square Flange)

### Problem Statement
A solid forged bracket carrying a vertical load of $13.5\text{ kN}$ at an eccentricity of $250\text{ mm}$ is fastened to a structure using 4 bolts in a square flange layout. Permissible safe stresses: Tensile stress $\sigma_t = 110\text{ MPa}$, Shear stress $\tau = 65\text{ MPa}$.
Determine:
1. Diameter $D$ for the arm subjected to combined bending and torsion.
2. Diameter $d$ for the arm subjected to bending only.
3. Tensile load on each top bolt due to turning moment.
4. Maximum shearing force on each bolt due to primary and secondary shear.

![Fig 11.45 & 11.46: Solid Forged Bracket with Square Flange](Figures/fig%2011.45%20%26%2011.46.png)
![Fig 11.47: Primary and Secondary Shear Vectors](Figures/fig%2011.47%20(diagram%20in%20solution%20of%20Eg.%2011.20).png)

---

### Solution

#### Given Data:
* Vertical Load ($W$): $13.5\text{ kN} = 13\,500\text{ N}$
* Eccentricity ($e$): $250\text{ mm}$
* Allowable Tensile Stress ($\sigma_t$): $110\text{ MPa} = 110\text{ N/mm}^2$
* Allowable Shear Stress ($\tau$): $65\text{ MPa} = 65\text{ N/mm}^2$

---

#### Part 1: Diameter $D$ for Arm (Combined Bending + Torsion)

1. **Bending & Twisting Moments:**
   * Bending moment: $M = 13\,500 \times (300 - 25) = 3.7125 \times 10^6\text{ N}\cdot\text{mm}$
   * Twisting moment: $T = 13\,500 \times 250 = 3.375 \times 10^6\text{ N}\cdot\text{mm}$

2. **Equivalent Twisting Moment ($T_e$) & Diameter $D$:**
   $$T_e = \sqrt{M^2 + T^2} = \sqrt{(3.7125 \times 10^6)^2 + (3.375 \times 10^6)^2} = 5.017 \times 10^6\text{ N}\cdot\text{mm}$$
   $$T_e = \frac{\pi}{16} D^3 \cdot \tau \implies 5.017 \times 10^6 = \frac{\pi}{16} D^3 \times 65 = 12.76 \cdot D^3$$
   $$D^3 = \frac{5.017 \times 10^6}{12.76} = 393.2 \times 10^3 \implies D = \sqrt[3]{393.2 \times 10^3} = 73.24\text{ mm} \implies \mathbf{D = 75\text{ mm}}$$

---

#### Part 2: Diameter $d$ for Arm (Pure Bending)

1. **Bending Moment & Section Modulus ($Z$):**
   * Bending moment: $M = 13\,500 \times \left(250 - \frac{75}{2}\right) = 13\,500 \times 212.5 = 2.8688 \times 10^6\text{ N}\cdot\text{mm}$
   * Section modulus: $Z = \frac{\pi}{32} d^3 = 0.0982 \cdot d^3$

2. **Calculate Arm Diameter $d$:**
   $$\sigma_t = \frac{M}{Z} \implies 110 = \frac{2.8688 \times 10^6}{0.0982 \cdot d^3} \implies d^3 = \frac{29.214 \times 10^6}{110} = 265.58 \times 10^3$$
   $$d = \sqrt[3]{265.58 \times 10^3} = 64.28\text{ mm} \implies \mathbf{d = 65\text{ mm}}$$

---

#### Part 3: Tensile Load on Each Top Bolt

1. **Tilting Distances from Edge $E-E$:**
   $$L_1 = 37.5\text{ mm}, \qquad L_2 = 237.5\text{ mm}$$

2. **Unit Load ($w$) & Secondary Tension ($W_t$):**
   * Resisting moment of 4 bolts: $M_{\text{res}} = 2 \cdot w \cdot (L_1^2 + L_2^2) = 2 \cdot w \cdot (37.5^2 + 237.5^2) = 115\,625 \cdot w$
   * Overturning moment: $M_{\text{overturn}} = W \cdot L = 13\,500 \times 300 = 4.05 \times 10^6\text{ N}\cdot\text{mm}$
   * Unit load $w$: $w = \frac{4.05 \times 10^6}{115\,625} = 35.03\text{ N/mm}$
   * Tensile load on top bolts:
     $$W_t = w \cdot L_2 = 35.03 \times 237.5 = \mathbf{8320\text{ N} = 8.32\text{ kN}}$$

---

#### Part 4: Maximum Shearing Force on Each Bolt

1. **Primary Shear Load ($W_{s1}$):**
   $$W_{s1} = \frac{W}{n} = \frac{13\,500}{4} = 3375\text{ N}$$

2. **Secondary Shear Load ($W_{s2}$):**
   * Radial distance to each bolt from C.G. $G$: $r_i = \sqrt{100^2 + 100^2} = 141.4\text{ mm}$
   * Secondary shear:
     $$W_{s2} = \frac{W \cdot e \cdot r_i}{4 \cdot r_i^2} = \frac{13\,500 \times 250 \times 141.4}{4 \times (141.4)^2} = 5967\text{ N}$$

3. **Resultant Shear Forces:**
   * **Bolts 1 and 4 ($\theta = 135^\circ$):**
     $$W_s = \sqrt{W_{s1}^2 + W_{s2}^2 + 2 W_{s1} W_{s2} \cos 135^\circ} = \sqrt{(3375)^2 + (5967)^2 - 2(3375)(5967)(0.7071)} = \mathbf{4303\text{ N}}$$
   * **Bolts 2 and 3 ($\theta = 45^\circ$):**
     $$W_s = \sqrt{W_{s1}^2 + W_{s2}^2 + 2 W_{s1} W_{s2} \cos 45^\circ} = \sqrt{(3375)^2 + (5967)^2 + 2(3375)(5967)(0.7071)} = \mathbf{8687\text{ N}}$$

$$\textbf{Final Answers: (1) } D = 75\text{ mm}, \quad (2) \text{ } d = 65\text{ mm}, \quad (3) \text{ } W_t = 8320\text{ N}, \quad (4) \text{ Max Shear Force } = 8687\text{ N}$$
