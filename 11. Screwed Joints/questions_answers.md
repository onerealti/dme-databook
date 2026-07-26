# Screwed Joints — Theory Question Answers

Detailed, exam-ready answers for review questions in [11.Questions.md](11.Questions.md).

---

## Question 1
**What do you understand by single start and double start threads?**

### Answer
* **Single Start Thread:** A thread formed by a single continuous helical groove wound around the cylinder. The lead ($p_L$) is equal to the pitch ($p$):
  $$\text{Lead } p_L = p$$
* **Double Start Thread:** A thread formed by two parallel continuous helical grooves starting $180^\circ$ apart on the cylinder. The lead is twice the pitch:
  $$\text{Lead } p_L = 2p$$

#### Advantage of Multi-Start Threads:
Provides faster axial advance (higher velocity) per revolution without increasing thread depth or weakening the core diameter.

---

## Question 2
**Define the following terms: (a) Major diameter, (b) Minor diameter, (c) Pitch, and (d) Lead.**

### Answer
* **(a) Major Diameter ($d_o$ / nominal diameter):** The largest diameter of a screw thread, measured between crests of an external thread or roots of an internal thread.
* **(b) Minor Diameter ($d_c$ / core or root diameter):** The smallest diameter of a screw thread, measured between roots of an external thread or crests of an internal thread. It is the critical load-bearing cross-section for tensile strength ($A_c = \frac{\pi}{4} d_c^2$).
* **(c) Pitch ($p$):** The axial distance measured parallel to the screw axis between corresponding points on adjacent thread forms in the same axial plane.
* **(d) Lead ($p_L$):** The axial distance moved by a nut relative to the screw in one complete revolution ($360^\circ$).

$$\text{Lead } p_L = n \times p \quad (n = \text{number of starts})$$

---

## Question 3
**Write a short note on nut locking devices covering the necessity and various types. Your answer should be illustrated with neat sketches.**

### Answer

### Necessity:
Threaded fasteners are naturally self-locking under static loads. However, under cyclic vibrations, shock, or fluctuating loads, the thread friction drops periodically, causing nuts to loosen and back off, leading to joint failure.

### Types of Locking Devices:

1. **Lock Nut (Jam Nut):** A thinner nut screwed down over the main nut and tightened against it. Spreads threads in opposite axial directions to lock friction.
2. **Castle Nut & Slotted Nut:** A nut with radial slots on top. A split pin (cotter pin) is inserted through a cross-hole in the bolt shank and through two slots in the nut.
3. **Spring Washer:** Placed under the nut. Exerts continuous axial spring tension against the nut face to maintain friction even under vibration.
4. **Penn, Ring or Grooved Nut:** Features a cylindrical bottom spigot grooved to receive a set-screw driven through the hub.
5. **Wire Lock / Safety Wire:** A wire passed through cross-drilled bolt heads in a group to prevent relative rotation.

---

## Question 4
**Discuss the significance of the initial tightening load and the applied load so far as bolts are concerned. Explain which of the above loads must be greater for a properly designed bolted joint and show how each affects the total load on the bolt.**

### Answer

### Significance:
In pre-loaded bolted joints (e.g., cylinder heads, pressure vessel covers):
* **Initial Tightening Load ($F_i$):** Tensile load induced in the bolt when screwed up tight using a wrench. It compresses the gasket and joint flanges to create a leak-proof seal.
* **External Applied Load ($F_e$):** Load tending to separate the joint plates (e.g., steam pressure inside cylinder).

### Total Resultant Load on Bolt ($P_{\text{total}}$):
$$P_{\text{total}} = F_i + K \cdot F_e$$
where $K$ is the **gasket stiffness factor** ($K = \frac{k_b}{k_b + k_c}$):
* $K = 0.5$ for soft copper/asbestos gaskets.
* $K = 0.2\text{--}0.3$ for hard metal gaskets.
* $K = 0$ for metal-to-metal contact with no gasket ($P_{\text{total}} = F_i$ or $F_e$, whichever is greater).

> **Key Rule:** For a leak-proof joint, the initial pre-load $F_i$ **must exceed** the external opening force $F_e$ ($F_i > F_e$).

---

## Question 5
**Discuss on bolts of uniform strength giving examples of practical applications of such bolts.**

### Answer

### Concept:
A standard bolt has a shank diameter $d_o$ and a smaller core diameter $d_c$ at the threaded section. Under impact/shock loading, stress is highest at the small core area $A_c$, concentrating strain energy in the short threaded portion and causing premature fatigue failure.

A **bolt of uniform strength** is designed so that the stress is uniform along its entire length under axial impact loads:

### Methods to Achieve Uniform Strength:
1. **Turned Shank:** Reducing the unthreaded shank diameter to equal the core diameter ($d_{\text{shank}} = d_c$).
2. **Drilled Axial Hole:** Drilling an axial hole of diameter $d_h$ through the center of the shank down to the threaded region such that:
   $$\frac{\pi}{4} (d_o^2 - d_h^2) = \frac{\pi}{4} d_c^2 \implies d_h = \sqrt{d_o^2 - d_c^2}$$

### Practical Applications:
1. Connecting rod bolts in high-speed IC engines.
2. Cylinder head studs in marine diesel engines and steam turbines.
3. Fasteners in steam hammer anvils and punch press frames.

---

## Question 6
**Bolts less than M 16 should normally not be used in pre-loaded joints. Comment.**

### Answer
When a mechanic tightens a bolt with a standard wrench, the initial tightening force induced ($F_i$) can be estimated by the empirical relation:
$$F_i = 2840 \cdot d \quad [\text{N}] \quad (d \text{ in mm})$$

* Induced tensile stress in shank:
  $$\sigma_i = \frac{F_i}{\frac{\pi}{4} d_c^2} \approx \frac{2840 d}{\frac{\pi}{4} (0.8 d)^2} = \frac{5650}{d} \quad [\text{N/mm}^2]$$

For bolts smaller than M16 (e.g., M10 or M12), an operator using an ordinary wrench can easily exceed the yield strength of the bolt material purely during initial tightening, leading to necking or shearing off of the bolt before any external working load is even applied. Therefore, **M16 is specified as the minimum size** for pre-loaded pressure-tight joints.

---

## Question 7
**How is the core diameter of the bolt determined when a bracket having a rectangular base is bolted to a wall by four bolts and carries an eccentric load parallel to the axis of the bolt?**

### Answer

When an eccentric load $P$ acts parallel to the bolt axis at distance $e$ from the tilting edge:

1. **Direct Tensile Load per Bolt:**
   $$W_{t1} = \frac{P}{n}$$
2. **Maximum Secondary Tensile Load ($W_{t2}$):** The bracket tends to tilt about the bottom edge. For upper bolts at distance $L_{\max}$ from the tilting edge:
   $$W_{t2} = \frac{P \cdot e \cdot L_{\max}}{\sum L_i^2}$$
3. **Total Maximum Tensile Load on Critical Bolt:**
   $$W_{\text{total}} = W_{t1} + W_{t2} = \frac{P}{n} + \frac{P \cdot e \cdot L_{\max}}{\sum L_i^2}$$
4. **Core Diameter Sizing ($d_c$):**
   $$\frac{\pi}{4} d_c^2 \cdot \sigma_t = W_{\text{total}} \implies d_c = \sqrt{\frac{4 W_{\text{total}}}{\pi \sigma_t}}$$

---

## Question 8
**Derive an expression for the maximum load in a bolt when a bracket with circular base is bolted to a wall by means of four bolts.**

### Answer

For a circular base of diameter $D$ with $n$ bolts on a bolt circle of diameter $D_b$:

1. **Tilting Axis:** The bracket tilts about a tangent to the circular base.
2. **Distance of Bolts from Tilting Axis:**
   $$L_i = \frac{D}{2} + \frac{D_b}{2} \cos\alpha_i$$
3. **Maximum Secondary Tensile Load on Most Heavily Loaded Bolt:**
   $$W_{t2,\max} = \frac{2 P \cdot e \left(\frac{D}{2} + \frac{D_b}{2}\right)}{n \left[\left(\frac{D}{2}\right)^2 + \frac{3}{8} D_b^2\right]}$$
4. **Total Maximum Load ($W_{\max}$):**
   $$W_{\max} = \frac{P}{n} + W_{t2,\max}$$

---

## Question 9
**Explain the method of determining the size of the bolt when the bracket carries an eccentric load acting in the plane containing the bolts.**

### Answer

When load $P$ acts in the plane of bolts at eccentricity $e$ from the centroid of $n$ bolts:

1. **Direct Shear Load per Bolt ($F_s$):**
   $$F_s = \frac{P}{n}$$
2. **Secondary Tensile Load per Bolt ($F_{t,i}$):** Due to overturning moment $M = P \cdot e$ about tilting edge at distance $L_i$:
   $$F_{t,i} = \frac{P \cdot e \cdot L_i}{\sum L_i^2}$$
3. **Combined Stress Analysis (Max Shear / Max Principal Stress):**
   * Direct shear stress: $\tau = \frac{F_s}{A_c}$
   * Tensile stress: $\sigma_t = \frac{F_{t,\max}}{A_c}$
   * Equivalent Tensile Stress: $\sigma_{t,e} = \frac{1}{2} \left[ \sigma_t + \sqrt{\sigma_t^2 + 4 \tau^2} \right] \le \sigma_{t,\text{allowable}}$
   * Determine required core area $A_c = \frac{\pi}{4} d_c^2$, then select standard bolt size.
