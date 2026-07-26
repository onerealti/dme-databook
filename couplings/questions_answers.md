# Shaft Couplings & Keys — Theory Question Answers

Detailed, exam-ready answers for all theoretical questions in [questions.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/couplings/questions.md).

---

## Question 1
**What is a key? State its function.**

### Answer
A **key** is a piece of mild steel inserted between the shaft and the hub or boss of a mating machine element (such as a pulley, gear, sprocket, or coupling) to connect them together and prevent relative rotary motion between them.

#### Primary Functions:
1. **Torque Transmission:** Transmits rotational motion and torque from the driving shaft to the driven machine element (or vice versa).
2. **Relative Motion Prevention:** Prevents angular slippage between the shaft and the hub.
3. **Axial Location:** In some configurations (e.g., sunk keys), it also assists in fixing the axial position of the hub on the shaft, whereas in feather keys, it allows controlled axial sliding while transmitting torque.

---

## Question 2
**How are keys classified? Draw neat sketches of different types of keys and state their applications.**

### Answer
Keys are classified into the following principal categories based on their construction and mode of operation:

### 1. Sunk Keys
Sunk keys are driven half into the keyway of the shaft and half into the keyway of the hub.
* **Rectangular Sunk Key:** Width $w = d/4$, thickness $t = d/6$. Standard key for general power transmission.
* **Square Sunk Key:** Width $w = t = d/4$. Used when higher crushing strength relative to shear strength is required.
* **Parallel Sunk Key:** Rectangular or square cross-section with no taper. Allows axial sliding of the hub.
* **Gib-headed Key:** A tapered sunk key with a head at one end for easy removal with a hammer/drift. Used where the keyway is accessible from only one side.
* **Feather Key:** Fixed to either the shaft or hub with countersunk screws. Permits relative axial movement while transmitting power (e.g., clutch gear drives).
* **Woodruff Key:** A semi-circular disc-shaped key that fits into a matching semi-circular keyway in the shaft. It self-aligns on tapered shafts (e.g., machine tool drives, automotive drives).

### 2. Saddle Keys
Saddle keys fit into the keyway of the hub only; there is no keyway cut into the shaft. Torque is transmitted purely by friction.
* **Flat Saddle Key:** Sits on a flat milled surface on the shaft. Used for light loads.
* **Hollow Saddle Key:** Sits directly on the curved cylindrical surface of the shaft. Used for very light loads or temporary fixtures.

### 3. Tangent Keys
Used in pairs placed at right angles ($90^\circ$). Each key resists motion in one direction only. Used for heavy-duty drives subject to shock and reversing loads (e.g., rolling mills).

### 4. Round Keys (Pin Keys)
Circular in cross-section, driven into holes drilled partly in the shaft and partly in the hub. Used for low-power drives and precision instruments.

### 5. Splines
Multiple integral keys machined directly into the shaft with matching keyways in the hub. Used where high torque and smooth axial sliding under load are required (e.g., automobile gearboxes).

---

## Question 3
**What are the considerations in the design of dimensions of formed and parallel keys having a rectangular cross-section?**

### Answer
The design of a rectangular sunk key involves sizing its width ($w$), thickness ($t$), and length ($l$) for a shaft of diameter $d$ transmitting design torque $T$.

### 1. Standard Proportions
* Width of key: $w = \frac{d}{4}$
* Thickness of key: $t = \frac{d}{6}$

### 2. Failure Criteria & Strength Equations

#### A. Shear Failure Criterion
The key is subjected to tangential shearing force $F = \frac{2T}{d}$ along the pitch surface.
$$\tau = \frac{F}{w \cdot l} = \frac{2T}{w \cdot d \cdot l} \implies l_{\text{shear}} = \frac{2T}{w \cdot d \cdot \tau_{\text{allowable}}}$$

#### B. Crushing (Compressive) Failure Criterion
The upper half of the key thickness ($t/2$) is crushed against the hub keyway wall.
$$\sigma_c = \frac{F}{\left(\frac{t}{2}\right) \cdot l} = \frac{4T}{t \cdot d \cdot l} \implies l_{\text{crushing}} = \frac{4T}{t \cdot d \cdot \sigma_{c,\text{allowable}}}$$

### 3. Condition for Equal Strength in Shear and Crushing
Equating $l_{\text{shear}} = l_{\text{crushing}}$:
$$\frac{2T}{w \cdot d \cdot \tau} = \frac{4T}{t \cdot d \cdot \sigma_c} \implies \frac{w}{t} = \frac{\sigma_c}{2\tau}$$

* For mild steel where $\sigma_c \approx 2\tau$, we get $w = t$ (a **square key** is equally strong in shear and crushing).
* For rectangular keys ($w = 1.5t$), crushing governs length selection unless $\sigma_c \ge 3\tau$.

### 4. Length Constraint
Final key length is selected as:
$$l = \max\left(l_{\text{shear}}, l_{\text{crushing}}, 1.5d\right)$$

---

## Question 4
**Write a short note on the splined shaft covering points of application, different types, and methods of manufacture.**

### Answer

### Overview
A **splined shaft** has multiple axial keys/grooves machined integrally along its outer circumference, which slide into matching internal keyways in a hollow hub. Splines replace single keys when high torque transmission or smooth axial sliding under heavy load is required.

### Applications
1. Automobile gearboxes and transmission shafts (sliding gear mechanisms).
2. Machine tool spindle drives and power take-off (PTO) shafts in tractors.
3. Aircraft flight control linkages and propeller drives.

### Types of Splines
1. **Straight-sided Splines:** Feature parallel-sided flat flanks. Standardized in 4, 6, 10, or 16 spline configurations.
2. **Involute Splines:** Feature teeth shaped like $30^\circ$ or $37.5^\circ$ involute gear teeth. They provide higher strength, lower stress concentration, self-centering action, and longer service life.

### Manufacturing Methods
* **External Splines (Shaft):** Manufactured by **hobbing**, **spline milling**, or **cold roll-forming** (which yields high surface hardness and grain continuity).
* **Internal Splines (Hub):** Manufactured primarily by **broaching** or **shaping**.

---

## Question 5
**What is the effect of a keyway cut into the shaft?**

### Answer
Cutting a keyway into a solid shaft removes load-bearing material and introduces sharp internal corners, resulting in two main adverse effects:

### 1. Stress Concentration
The sudden change in cross-section at the keyway corners causes local stress concentration under torsional and bending loads. Torsional shear stresses are significantly higher at the corners than the nominal calculated stress.

### 2. Reduction in Torsional Strength and Rigidity
According to **H. F. Moore's Empirical Formula**, the strength factor of a shaft with a keyway ($k_w$) relative to a solid shaft of the same diameter is given by:
$$k_w = 1 - 0.2\left(\frac{w}{d}\right) - 1.1\left(\frac{h}{d}\right)$$
where:
* $w = \text{width of keyway} \approx d/4$
* $h = \text{depth of keyway} = t/2 \approx d/12$
* $d = \text{shaft diameter}$

Substituting standard proportions ($w/d = 0.25, h/d = 0.0833$):
$$k_w = 1 - 0.2(0.25) - 1.1(0.0833) = 1 - 0.05 - 0.0917 = 0.858$$

> **Key Takeaway:** Cutting a standard keyway reduces the shaft's torsional strength and torsional stiffness by approximately **14% to 15%** ($k_w \approx 0.86$).

---

## Question 6
**Discuss the function of a coupling. Give at least three practical applications.**

### Answer
A **shaft coupling** is a mechanical device used to permanently or temporarily join two co-axial shafts at their ends for the purpose of transmitting mechanical power and torque from the driving shaft to the driven shaft.

### Primary Functions:
1. **Power Transmission:** Connects standard-length manufactured shafts into continuous long shafting runs.
2. **Disconnectability:** Enables easy disassembly of machine units for maintenance, repair, or transport.
3. **Misalignment & Vibration Dampening (Flexible Couplings):** Accommodates slight angular, radial, or axial misalignments and absorbs shock loads/vibrations.
4. **Overload Protection:** Acts as a mechanical fuse (e.g., shear pin couplings) to protect driving machinery from sudden jams.

### Practical Applications:
1. **Electric Motor to Centrifugal Pump Drive:** Connects the motor output spindle to the pump impeller shaft.
2. **Steam Turbine to Electrical Generator Drive:** Transmits massive rotary power in power plants.
3. **Automobile Engine Output to Gearbox Input:** Joins the flywheel/crankshaft to the transmission assembly.

---

## Question 7
**Describe, with the help of neat sketches, the types of various shaft couplings mentioning the uses of each type.**

### Answer
Shaft couplings are broadly categorized into **Rigid** and **Flexible** couplings:

### A. Rigid Couplings
Used when shafts are perfectly aligned in a straight line. They do not tolerate any misalignment.

1. **Sleeve or Muff Coupling:**
   * Hollow CI cylinder fitted over both shaft ends with a single lap key.
   * *Uses:* Simple line shafts operating at low-to-medium speeds under strict alignment.
2. **Clamp / Split-Muff Compression Coupling:**
   * Muff split axially into two halves held together by clamping bolts.
   * *Uses:* Heavy line shafting where axial assembly/disassembly without disturbing bearings is required.
3. **Flange Coupling (Unprotected / Protected):**
   * Two CI flanges keyed to shaft ends and bolted together face-to-face. Protected type features a circumferential rim extending over bolt heads for safety.
   * *Uses:* Industrial drives, heavy power transmission, factory line shafts.

### B. Flexible Couplings
Used when small angular ($1^\circ\text{--}1.5^\circ$), radial, or axial misalignments exist or shock absorption is required.

1. **Bushed-Pin Flexible Coupling:**
   * Modified flange coupling where coupling bolts are replaced by steel pins encased in flexible rubber/brass bushes fitted into oversized flange sockets.
   * *Uses:* Connecting electric motors to pumps, compressors, and blowers where shock/vibration damping is essential.

---

## Question 8
**How does the working of a clamp coupling differ from that of a muff coupling? Explain.**

### Answer

| Aspect | Muff (Sleeve) Coupling | Clamp (Split-Muff) Coupling |
|:---|:---|:---|
| **Construction** | Single solid cast-iron hollow cylinder. | Muff split axially into two symmetrical semi-cylindrical halves clamped by bolts. |
| **Torque Transmission Mechanism** | Transmitted purely through the **key in shear and crushing** between shaft and muff. | Transmitted primarily by **friction** induced by bolt clamping force between muff bore and shaft surface (supplemented by key). |
| **Assembly & Maintenance** | Requires sliding the sleeve axially over one shaft end. Demands large axial clearance. | Assembled directly over shafts from the side by tightening bolts. **No axial movement of shafts required**. |
| **Adjustment for Wear / Tolerances** | Cannot compensate for small shaft diameter variations. | Clamping action automatically accommodates minor shaft manufacturing tolerances. |
| **Applications** | Medium power line shafts with accessible ends. | Heavy-duty line shafts in factory workshops where machinery cannot be shifted axially. |
