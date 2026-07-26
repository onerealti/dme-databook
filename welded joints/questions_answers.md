# Welded Joints — Theory Question Answers

Detailed, exam-ready answers for review questions in [questions.md](questions.md).

---

## Question 1
**What do you understand by the term welded joint? How does it differ from a riveted joint?**

### Answer
A **welded joint** is a permanent joint produced by heating metal parts to their melting temperature (with or without pressure and filler metal) so that they fuse together into a single monolithic unit.

| Parameter | Welded Joint | Riveted Joint |
|:---|:---|:---|
| **Efficiency** | Very high (up to 100%). | Lower (typically 60% – 80%). |
| **Weight** | Lighter (no cover plates, rivets, or overlaps). | Heavy (requires straps, overlaps, and rivet heads). |
| **Leak-Proofing** | Inherently leak-proof and pressure-tight. | Requires caulking and fullering operations to prevent leakage. |
| **Thermal Effects** | Produces Heat Affected Zone (HAZ) & residual thermal stresses. | No thermal deformation or stress concentration from heating. |
| **Assembly Cost** | Lower overall fabrication cost. | Higher labor and drilling costs. |

---

## Question 2
**Sketch and discuss the various types of welded joints used in pressure vessels. What are the considerations involved?**

### Answer
Pressure vessel design requires high joint efficiency and leak-tightness:

1. **Full Penetration Double V-Butt Weld:** Used for main longitudinal and circumferential shell seams carrying high pressure.
2. **Single V-Butt Weld with Backing Strip:** Used where interior access for welding the second side is restricted.
3. **Corner Fillet Welds / Flanged End-Cap Welds:** Used to attach dished end covers to cylindrical shells.

#### Design Considerations:
* Use 100% full penetration butt welds for longitudinal seams.
* Minimize stress concentration by smoothing weld reinforcement.
* Perform 100% Radiographic / Ultrasonic NDT on longitudinal joints.

---

## Question 3
**State the basic difference between manual welding, semi-automatic welding, and automatic welding.**

### Answer
* **Manual Welding (e.g., SMAW/Stick):** The welder manually controls both the arc length, electrode angle, and feed rate along the seam.
* **Semi-Automatic Welding (e.g., GMAW/MIG):** The machine automatically feeds the continuous wire electrode, but the welder manually guides the torch position and speed.
* **Automatic Welding (e.g., SAW - Submerged Arc):** The machine controls wire feeding, arc movement, speed, and positioning automatically without continuous manual intervention.

---

## Question 4
**What are the assumptions made in the design of a welded joint?**

### Answer
1. The stress distribution along the weld length is assumed to be **uniform**.
2. Throat of fillet weld is taken at an angle of $45^\circ$ to the legs, giving effective throat thickness $t = s \sin 45^\circ = 0.707 s$.
3. The weld metal is homogeneous and isotropic with uniform material properties.
4. Reinforcement on butt welds is neglected when computing strength.
5. Base metal and weld metal have equal allowable stress capacities.

---

## Question 5
**Explain joint preparation with particular reference to butt welding of plates by arc welding.**

### Answer
Joint preparation involves bevelling plate edges prior to welding to ensure complete fusion through the full thickness:

* **Square Butt Joint:** For plate thickness $t \le 5\text{ mm}$ (no edge bevelling required).
* **Single V-Butt Joint:** For $5\text{ mm} < t \le 15\text{ mm}$ ($60^\circ$ included bevel angle, $1\text{--}2\text{ mm}$ root face).
* **Double V-Butt Joint:** For $t > 15\text{ mm}$ (reduces filler metal volume and angular distortion by welding from both sides).

---

## Question 6
**Discuss the standard location of elements of a welding symbol.**

### Answer
According to **IS: 813**, a standard welding symbol consists of:
1. **Reference Line:** Horizontal baseline line.
2. **Arrow:** Points directly to the location of the joint.
3. **Basic Weld Symbol:** Placed below the reference line for "arrow side" or above for "other side".
4. **Dimensions:** Size of weld ($s$) placed to the left of the symbol; length ($l$) to the right.

---

## Question 7
**Explain the procedure for designing an axially loaded unsymmetrical welded section.**

### Answer
When welding unsymmetrical rolled sections (e.g., angle irons) to a gusset plate, the welds at the top ($l_1$) and bottom ($l_2$) must be proportioned so that the centroid of the weld group coincides with the neutral/gravity axis of the section.

#### Equations:
Let total static load $= P$, allowable shear stress $= \tau$, leg size $= s$.
* Total required length of weld $L = l_1 + l_2 = \frac{P}{0.707 s \cdot \tau}$.
* Moment equilibrium about top edge:
  $$l_2 \times (0.707 s \cdot \tau) \times b = P \times y_1 \implies l_2 = L \left(\frac{y_1}{b}\right)$$
  $$l_1 = L - l_2 = L \left(1 - \frac{y_1}{b}\right)$$
  where $y_1$ is the distance of the centroid from the top edge and $b$ is the total height of the angle leg.

---

## Question 8
**What is an eccentrically loaded welded joint? Discuss the procedure for designing such a joint.**

### Answer
An **eccentrically loaded welded joint** carries a load $P$ at a distance $e$ from the C.G. of the weld group.

### Procedure:
1. **Primary Shear Stress ($\tau_1$):**
   $$\tau_1 = \frac{P}{A_{\text{weld}}} = \frac{P}{0.707 s \cdot L_{\text{total}}}$$
2. **Secondary Shear Stress ($\tau_2$):** Due to moment $M = P \cdot e$:
   $$\tau_2 = \frac{P \cdot e \cdot r_{\max}}{J}$$
   where $J = 0.707 s \cdot J_u$ ($J_u$ is the unit polar moment of inertia of the weld throat area about C.G.).
3. **Maximum Resultant Shear Stress ($\tau_{\max}$):**
   $$\tau_{\max} = \sqrt{\tau_1^2 + \tau_2^2 + 2 \tau_1 \tau_2 \cos\theta}$$
4. **Weld Size Sizing ($s$):** Set $\tau_{\max} \le \tau_{\text{allowable}}$ to determine minimum required leg size $s$.
