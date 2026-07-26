# Shafts — Theory Question Answers

Detailed, exam-ready answers for review questions in [questions.md](questions.md).

---

## Question 1
**Distinguish clearly, giving examples between pin, axle and shaft.**

### Answer

| Feature | Shaft | Axle | Pin |
|:---|:---|:---|:---|
| **Primary Function** | Transmits rotary power and torque between elements. | Supports rotating or stationary machine members without transmitting torque. | Connects machine parts together to permit hinged rotation or alignment. |
| **Dominant Loading** | Subjected to **combined torque ($T$) and bending moment ($M$)**. | Subjected to **bending moment ($M$) only** ($T = 0$). | Subjected to **direct shear and crushing/bending forces**. |
| **Rotation** | Always rotates with connected components. | May rotate (e.g., railway wagon axle) or remain stationary (e.g., front wheel stub axle of a car). | Non-rotating cylindrical pin element. |
| **Examples** | Engine crankshaft, line shaft, motor spindle, drive shaft. | Railway wagon axle, automobile rear dead axle, wheel barrow axle. | Knuckle pin, gudgeon pin, clevis pin, cotter pin. |

---

## Question 2
**How are shafts formed?**

### Answer
Shafts are manufactured through a sequence of mechanical working and metal finishing processes:

1. **Hot Rolling:** Steel ingots or billets are hot-rolled into long circular bars at high temperatures (above recrystallization temperature).
2. **Cold Drawing:** Hot-rolled bars are drawn through dies at room temperature to improve dimensional accuracy, surface finish, and yield strength (cold work hardening).
3. **Turning and Grinding:** For precision transmission shafts and bearing seatings, the drawn bars are precision-turned on lathes and centerless-ground to achieve high tolerance grades and fine surface finish.

---

## Question 3
**Discuss the various types of shafts and the standard sizes of transmission shafts.**

### Answer

### Types of Shafts:
1. **Transmission Shafts:** Used to transmit power from source to driven machines (e.g., line shafts, counter shafts, overhead factory shafts).
2. **Machine Shafts:** Form integral parts of machines themselves (e.g., engine crankshafts, lathe spindles, generator rotor shafts).

### Standard Commercial Shaft Diameters (IS Specifications):
* **$25\text{ mm to } 60\text{ mm}$:** Steps of $5\text{ mm}$ ($25, 30, 35, 40, 45, 50, 55, 60\text{ mm}$)
* **$60\text{ mm to } 110\text{ mm}$:** Steps of $10\text{ mm}$ ($60, 70, 80, 90, 100, 110\text{ mm}$)
* **$110\text{ mm to } 140\text{ mm}$:** Steps of $15\text{ mm}$ ($110, 125, 140\text{ mm}$)
* **$140\text{ mm to } 500\text{ mm}$:** Steps of $20\text{ mm}$ ($140, 160, 180, 200, 220, \dots, 500\text{ mm}$)

---

## Question 4
**What type of stresses are induced in shafts?**

### Answer
Shafts are subjected to three primary types of stresses in industrial service:

1. **Torsional Shear Stress ($\tau$):** Induced by the transmission of torque $T$:
   $$\tau = \frac{16 T}{\pi d^3}$$
2. **Bending Stress ($\sigma_b$):** Tensile and compressive stresses induced by transverse loads (weights of pulleys/gears, belt tensions, gear forces):
   $$\sigma_b = \frac{32 M}{\pi d^3}$$
3. **Axial Stress ($\sigma_a$):** Tensile or compressive stress due to axial thrust (e.g., propeller thrust, helical gear axial thrust):
   $$\sigma_a = \frac{F_a}{\frac{\pi}{4} d^2}$$

---

## Question 5
**How is the shaft designed when it is subjected to twisting moment only?**

### Answer
When a solid circular shaft is subjected to pure torsion ($M = 0$):

1. **Torsional Strength Criterion:**
   $$T = \frac{\pi}{16} \tau d^3 \implies d = \sqrt[3]{\frac{16 T}{\pi \tau}}$$
   where $\tau$ is the maximum allowable shear stress of the shaft material.

2. **Hollow Shaft (Ratio $k = d_i / d_o$):**
   $$T = \frac{\pi}{16} \tau d_o^3 (1 - k^4) \implies d_o = \sqrt[3]{\frac{16 T}{\pi \tau (1 - k^4)}}$$

---

## Question 6
**Define equivalent twisting moment and equivalent bending moment. State when these two terms are used in design of shafts.**

### Answer

### Definitions:

1. **Equivalent Twisting Moment ($T_e$):**
   The hypothetical twisting moment which, acting alone on the shaft, produces the same maximum shear stress ($\tau_{\max}$) as the combined bending moment ($M$) and actual twisting moment ($T$).
   $$T_e = \sqrt{M^2 + T^2}$$
   *(Based on Maximum Shear Stress Theory / Guest's Theory)*

2. **Equivalent Bending Moment ($M_e$):**
   The hypothetical bending moment which, acting alone on the shaft, produces the same maximum tensile/compressive bending stress ($\sigma_b$) as the combined bending moment ($M$) and actual twisting moment ($T$).
   $$M_e = \frac{1}{2} \left[ M + \sqrt{M^2 + T^2} \right] = \frac{1}{2} \left[ M + T_e \right]$$
   *(Based on Maximum Principal Stress Theory / Rankine's Theory)*

### Application:
These terms are used whenever a shaft is subjected to **combined bending and twisting loads** simultaneously.

---

## Question 7
**When the shaft is subjected to fluctuating loads, what will be the equivalent twisting moment and equivalent bending moment?**

### Answer
When a shaft is subjected to fluctuating or dynamic combined loading involving shock and fatigue:

* **Equivalent Twisting Moment under Fluctuating Loads:**
  $$T_e = \sqrt{(K_m M)^2 + (K_t T)^2}$$

* **Equivalent Bending Moment under Fluctuating Loads:**
  $$M_e = \frac{1}{2} \left[ K_m M + \sqrt{(K_m M)^2 + (K_t T)^2} \right] = \frac{1}{2} \left[ K_m M + T_e \right]$$

where:
* $K_m = \text{Combined shock and fatigue factor for bending}$ (typically $1.5\text{--}2.0$)
* $K_t = \text{Combined shock and fatigue factor for torsion}$ (typically $1.0\text{--}1.5$)

---

## Question 8 (Q9 in original)
**A hollow shaft has greater strength and stiffness than a solid shaft of equal weight. Explain.**

### Answer

### 1. Strength Comparison (Equal Weight / Equal Cross-sectional Area)
Let a solid shaft of diameter $d_s$ and a hollow shaft of outer diameter $d_o$ and inner diameter $d_i = k d_o$ have equal cross-sectional areas ($A_s = A_h \implies d_s^2 = d_o^2 - d_i^2 = d_o^2 (1 - k^2)$):
$$d_s = d_o \sqrt{1 - k^2}$$

Ratio of Polar Section Moduli ($Z_{ph} / Z_{ps}$):
$$\frac{Z_{ph}}{Z_{ps}} = \frac{\frac{\pi}{16} d_o^3 (1 - k^4)}{\frac{\pi}{16} d_s^3} = \frac{d_o^3 (1 - k^4)}{\left(d_o \sqrt{1 - k^2}\right)^3} = \frac{1 + k^2}{\sqrt{1 - k^2}} > 1$$

For $k = 0.5$:
$$\frac{Z_{ph}}{Z_{ps}} = \frac{1 + 0.25}{\sqrt{1 - 0.25}} = \frac{1.25}{0.866} = 1.44$$

> **Conclusion:** The hollow shaft is **44% stronger** in torsion than a solid shaft of the same weight.

### 2. Physical Explanation:
In pure torsion, stress varies linearly from zero at the center to maximum at the outer surface. Material near the central axis carries very little stress. In a hollow shaft, material is redistributed away from the center toward the outer radius, greatly increasing the **polar moment of inertia ($J$)** for the same total volume of material.

---

## Question 9 (Q10 in original)
**Under what circumstances are hollow shafts preferred over solid shafts? Give any two examples where hollow shafts are used. How are they generally manufactured?**

### Answer

### Circumstances for Preference:
1. When a **high strength-to-weight ratio** is critical.
2. In high-speed machinery where minimizing rotational inertia (flywheel effect) is necessary.
3. Where another concentric shaft or fluid line must pass inside the main shaft.

### Practical Examples:
1. **Marine Propeller Shafts:** Transmit massive power over long distances in ships without adding excessive dead weight.
2. **Automobile Drive Shafts (Propeller Shafts):** Transmit power from transmission to rear axle with low rotational inertia.
3. **Aircraft Engine Spindles:** Used where weight minimization is paramount.

### Manufacturing Methods:
1. **Forging over a Mandrel:** Large hollow shafts (e.g., marine shafts) are hot-forged over a steel mandrel.
2. **Seamless Tube Drawing:** Cold/hot drawing of seamless steel tubing.
3. **Deep Hole Drilling:** Precision axial drilling into solid forged bars.
