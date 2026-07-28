# Welded Joints — Solved Examples Solutions

Fully worked, step-by-step textbook solutions for all 16 solved examples in [examples.md](examples.md).

---

## Example 10.1 (Double Parallel Fillet Weld)

### Problem Statement
A plate $100\text{ mm}$ wide and $10\text{ mm}$ thick is to be welded to another plate by means of double parallel fillets. The plates are subjected to a static load of $80\text{ kN}$. Find the length of weld if the permissible shear stress in the weld does not exceed $55\text{ MPa}$.

---

### Solution

#### Given Data:
* Plate width ($b$): $100\text{ mm}$
* Plate thickness / weld size ($s$): $10\text{ mm}$
* Static load ($P$): $80\text{ kN} = 80 \times 10^3\text{ N}$
* Permissible shear stress ($\tau$): $55\text{ MPa} = 55\text{ N/mm}^2$

Let $l$ = Effective length of weld.

#### 1. Effective Length of Double Parallel Fillet Weld ($l$)
We know that maximum load which the plates can carry for double parallel fillet weld ($P$):
$$P = 1.414 \cdot s \cdot l \cdot \tau$$
$$80 \times 10^3 = 1.414 \times 10 \times l \times 55 = 778 \cdot l$$
$$l = \frac{80 \times 10^3}{778} = 102.8\text{ mm} \approx 103\text{ mm}$$

#### 2. Total Length of Weld Run ($L$)
Adding $12.5\text{ mm}$ for starting and stopping of weld run:
$$L = l + 12.5\text{ mm} = 103 + 12.5 = \mathbf{115.5\text{ mm}}$$

$$\mathbf{\text{Final Answer: Total length of weld } L = 115.5\text{ mm}}$$

---

## Example 10.2 (Circular Fillet Weld under Torsion)

### Problem Statement
A $50\text{ mm}$ diameter solid shaft is welded to a flat plate by a $10\text{ mm}$ fillet weld as shown in Fig. 10.12. Find the maximum torque that the welded joint can sustain if the maximum shear stress intensity in the weld material is not to exceed $80\text{ MPa}$.

![Fig. 10.12](Fig%2010.12.png)

---

### Solution

#### Given Data:
* Shaft diameter ($d$): $50\text{ mm}$
* Weld size ($s$): $10\text{ mm}$
* Permissible shear stress ($\tau_{\max}$): $80\text{ MPa} = 80\text{ N/mm}^2$

Let $T$ = Maximum torque that the welded joint can sustain.

#### 1. Maximum Torque Capacity ($T$)
We know that the maximum shear stress ($\tau_{\max}$):
$$\tau_{\max} = \frac{2.83 T}{\pi \cdot s \cdot d^2}$$
$$80 = \frac{2.83 T}{\pi \times 10 \times (50)^2} = \frac{2.83 T}{78550}$$
$$T = \frac{80 \times 78550}{2.83} = 2.22 \times 10^6\text{ N}\cdot\text{mm} = \mathbf{2.22\text{ kN}\cdot\text{m}}$$

$$\mathbf{\text{Final Answer: Maximum Torque Capacity } T = 2.22\text{ kN}\cdot\text{m}}$$

---

## Example 10.3 (Long Fillet Weld under Torsion)

### Problem Statement
A plate $1\text{ m}$ long, $60\text{ mm}$ thick is welded to another plate at right angles to each other by $15\text{ mm}$ fillet weld, as shown in Fig. 10.13. Find the maximum torque that the welded joint can sustain if the permissible shear stress intensity in the weld material is not to exceed $80\text{ MPa}$.

![Fig. 10.13](Fig%2010.13.png)

---

### Solution

#### Given Data:
* Length of plate ($l$): $1\text{ m} = 1000\text{ mm}$
* Plate thickness: $60\text{ mm}$
* Weld size ($s$): $15\text{ mm}$
* Permissible shear stress ($\tau_{\max}$): $80\text{ MPa} = 80\text{ N/mm}^2$

Let $T$ = Maximum torque that the welded joint can sustain.

#### 1. Maximum Torque Capacity ($T$)
We know that maximum shear stress ($\tau_{\max}$):
$$\tau_{\max} = \frac{4.242 T}{s \cdot l^2}$$
$$80 = \frac{4.242 T}{15 \times (1000)^2} = \frac{0.283 T}{10^6}$$
$$T = \frac{80 \times 10^6}{0.283} = 283 \times 10^6\text{ N}\cdot\text{mm} = \mathbf{283\text{ kN}\cdot\text{m}}$$

$$\mathbf{\text{Final Answer: Maximum Torque Capacity } T = 283\text{ kN}\cdot\text{m}}$$

---

## Example 10.4 (Parallel Fillet Weld — Static & Fatigue Loading)

### Problem Statement
A plate $100\text{ mm}$ wide and $12.5\text{ mm}$ thick is to be welded to another plate by means of parallel fillet welds. The plates are subjected to a load of $50\text{ kN}$. Find the length of the weld so that the maximum stress does not exceed $56\text{ MPa}$. Consider the joint first under static loading and then under fatigue loading.

---

### Solution

#### Given Data:
* Plate width ($b$): $100\text{ mm}$
* Plate thickness / weld size ($s$): $12.5\text{ mm}$
* Load ($P$): $50\text{ kN} = 50 \times 10^3\text{ N}$
* Allowable shear stress ($\tau$): $56\text{ MPa} = 56\text{ N/mm}^2$

#### 1. Length of Weld for Static Loading ($l$)
Let $l$ = Length of weld.
We know that maximum load which the plates can carry for double parallel fillet welds ($P$):
$$P = 1.414 \cdot s \cdot l \cdot \tau$$
$$50 \times 10^3 = 1.414 \times 12.5 \times l \times 56 = 990 \cdot l$$
$$l = \frac{50 \times 10^3}{990} = 50.5\text{ mm}$$
Adding $12.5\text{ mm}$ for starting and stopping of weld run:
$$L = 50.5 + 12.5 = \mathbf{63\text{ mm}}$$

#### 2. Length of Weld for Fatigue Loading
From Table 10.6, stress concentration factor for parallel fillet welding $K_f = 2.7$.
$$\text{Permissible shear stress } \tau = \frac{56}{2.7} = 20.74\text{ N/mm}^2$$
We know that maximum load which the plates can carry for double parallel fillet welds ($P$):
$$50 \times 10^3 = 1.414 \times 12.5 \times l \times 20.74 = 367 \cdot l$$
$$l = \frac{50 \times 10^3}{367} = 136.2\text{ mm}$$
Adding $12.5\text{ mm}$ for starting and stopping of weld run:
$$L_{\text{fatigue}} = 136.2 + 12.5 = \mathbf{148.7\text{ mm}}$$

$$\mathbf{\text{Final Answers: Static weld length } = 63\text{ mm}; \quad \text{Fatigue weld length } = 148.7\text{ mm}}$$

---

## Example 10.5 (Combination Weld — Static & Fatigue Loading)

### Problem Statement
A plate $75\text{ mm}$ wide and $12.5\text{ mm}$ thick is joined with another plate by a single transverse weld and a double parallel fillet weld as shown in Fig. 10.15. The maximum tensile and shear stresses are $70\text{ MPa}$ and $56\text{ MPa}$ respectively. Find the length of each parallel fillet weld, if the joint is subjected to both static and fatigue loading.

![Fig. 10.15](Fig%2010.15.png)

---

### Solution

#### Given Data:
* Width ($b$): $75\text{ mm}$
* Plate thickness / weld size ($s$): $12.5\text{ mm}$
* Allowable tensile stress ($\sigma_t$): $70\text{ MPa} = 70\text{ N/mm}^2$
* Allowable shear stress ($\tau$): $56\text{ MPa} = 56\text{ N/mm}^2$

Effective length of single transverse weld ($l_1$):
$$l_1 = 75 - 12.5 = 62.5\text{ mm}$$

#### 1. Length of Each Parallel Fillet for Static Loading ($l_2$)
Let $l_2$ = Length of each parallel fillet weld.

Maximum load which the plate can carry ($P$):
$$P = \text{Area} \times \text{Stress} = 75 \times 12.5 \times 70 = 65625\text{ N}$$

Load carried by single transverse weld ($P_1$):
$$P_1 = 0.707 \cdot s \cdot l_1 \cdot \sigma_t = 0.707 \times 12.5 \times 62.5 \times 70 = 38664\text{ N}$$

Load carried by double parallel fillet weld ($P_2$):
$$P_2 = 1.414 \cdot s \cdot l_2 \cdot \tau = 1.414 \times 12.5 \times l_2 \times 56 = 990 \cdot l_2\text{ N}$$

Load carried by joint ($P$):
$$65625 = P_1 + P_2 = 38664 + 990 \cdot l_2 \implies l_2 = 27.2\text{ mm}$$

Adding $12.5\text{ mm}$ for starting and stopping of weld run:
$$l_2 = 27.2 + 12.5 = 39.7\text{ mm} \approx \mathbf{40\text{ mm}}$$

#### 2. Length of Each Parallel Fillet for Fatigue Loading
From Table 10.6, stress concentration factor for transverse welds $K_{f1} = 1.5$ and for parallel fillet welds $K_{f2} = 2.7$.

Permissible tensile stress:
$$\sigma_t = \frac{70}{1.5} = 46.7\text{ N/mm}^2$$

Permissible shear stress:
$$\tau = \frac{56}{2.7} = 20.74\text{ N/mm}^2$$

Load carried by single transverse weld ($P_1$):
$$P_1 = 0.707 \cdot s \cdot l_1 \cdot \sigma_t = 0.707 \times 12.5 \times 62.5 \times 46.7 = 25795\text{ N}$$

Load carried by double parallel fillet weld ($P_2$):
$$P_2 = 1.414 \cdot s \cdot l_2 \cdot \tau = 1.414 \times 12.5 \times l_2 \times 20.74 = 366 \cdot l_2\text{ N}$$

Load carried by joint ($P$):
$$65625 = P_1 + P_2 = 25795 + 366 \cdot l_2 \implies l_2 = 108.8\text{ mm}$$

Adding $12.5\text{ mm}$ for starting and stopping of weld run:
$$l_2 = 108.8 + 12.5 = 121.3\text{ mm} \approx \mathbf{121.3\text{ mm}}$$

$$\mathbf{\text{Final Answers: Static parallel weld } l_2 = 40\text{ mm}; \quad \text{Fatigue parallel weld } l_2 = 121.3\text{ mm}}$$

---

## Example 10.6 (Weld Run Length under Variable Loading)

### Problem Statement
Determine the length of the weld run for a plate of size $120\text{ mm}$ wide and $15\text{ mm}$ thick to be welded to another plate by means of:
1. A single transverse weld; and
2. Double parallel fillet welds when the joint is subjected to variable loads (as shown in Fig. 10.16).

![Fig. 10.16](Fig%2010.16.png)

---

### Solution

#### Given Data:
* Width ($b$): $120\text{ mm}$
* Plate thickness / weld size ($s$): $15\text{ mm}$

#### 1. Length of Weld Run for a Single Transverse Weld ($l_1$)
The effective length of the weld run ($l_1$) for a single transverse weld is obtained by subtracting $12.5\text{ mm}$ from the width of the plate:
$$l_1 = 120 - 12.5 = \mathbf{107.5\text{ mm}}$$

#### 2. Length of Weld Run for a Double Parallel Fillet Weld Subjected to Variable Loads ($l_2$)
Let $l_2$ = Length of weld run for each parallel fillet.

Assuming static tensile stress $\sigma_t = 70\text{ MPa}$ and static shear stress $\tau = 56\text{ MPa}$.
Maximum load which the plate can carry ($P$):
$$P = \text{Area} \times \text{Stress} = 120 \times 15 \times 70 = 126 \times 10^3\text{ N}$$

From Table 10.6, stress concentration factor for transverse weld $K_{f1} = 1.5$ and for parallel fillet weld $K_{f2} = 2.7$.

Permissible tensile stress:
$$\sigma_t = \frac{70}{1.5} = 46.7\text{ N/mm}^2$$

Permissible shear stress:
$$\tau = \frac{56}{2.7} = 20.74\text{ N/mm}^2$$

Load carried by single transverse weld ($P_1$):
$$P_1 = 0.707 \cdot s \cdot l_1 \cdot \sigma_t = 0.707 \times 15 \times 107.5 \times 46.7 = 53240\text{ N}$$

Load carried by double parallel fillet weld ($P_2$):
$$P_2 = 1.414 \cdot s \cdot l_2 \cdot \tau = 1.414 \times 15 \times l_2 \times 20.74 = 440 \cdot l_2\text{ N}$$

Load carried by joint ($P$):
$$126 \times 10^3 = P_1 + P_2 = 53240 + 440 \cdot l_2 \implies l_2 = 165.4\text{ mm}$$

Adding $12.5\text{ mm}$ for starting and stopping of weld run:
$$l_2 = 165.4 + 12.5 = 177.9\text{ mm} \approx \mathbf{178\text{ mm}}$$

$$\mathbf{\text{Final Answers: Transverse weld length } l_1 = 107.5\text{ mm}; \quad \text{Double parallel fillet length } l_2 = 178\text{ mm}}$$

---

## Example 10.7 (Fillet Weld 'T' Section Shear Plane Analysis)

### Problem Statement
The fillet welds of equal legs are used to fabricate a 'T' as shown in Fig. 10.17 (a) and (b), where $s$ is the leg size and $l$ is the length of weld. Locate the plane of maximum shear stress in each of the following loading patterns:
1. Load parallel to the weld (neglect eccentricity), and
2. Load at right angles to the weld (transverse load).

Find the ratio of these limiting loads.

![Fig. 10.17](Fig%2010.17.png)

---

### Solution

#### Given Data:
* Leg size: $s$
* Length of weld: $l$

#### 1. Plane of Maximum Shear Stress for Parallel Load
Let $\theta$ = Angle of plane of maximum shear stress, $t$ = Throat thickness.

![Fig. 10.18](Fig%2010.18.png)

$$s = t (\cos\theta + \sin\theta) \implies t = \frac{s}{\cos\theta + \sin\theta}$$

Minimum throat area of double fillet weld ($A$):
$$A = 2 t \cdot l = \frac{2 s \cdot l}{\cos\theta + \sin\theta}$$

Shear stress ($\tau$):
$$\tau = \frac{P}{A} = \frac{P (\cos\theta + \sin\theta)}{2 s \cdot l}$$

Differentiating $\tau$ with respect to $\theta$ and equating to zero:
$$\frac{d\tau}{d\theta} = \frac{P}{2 s \cdot l} (-\sin\theta + \cos\theta) = 0 \implies \sin\theta = \cos\theta \implies \mathbf{\theta = 45^\circ}$$

Substituting $\theta = 45^\circ$:
$$\tau_{\max} = \frac{P (\cos 45^\circ + \sin 45^\circ)}{2 s \cdot l} = \frac{1.414 P}{2 s \cdot l}$$
$$P_{\text{parallel}} = \frac{2 s \cdot l \cdot \tau_{\max}}{1.414} = \mathbf{1.414 \cdot s \cdot l \cdot \tau_{\max}}$$

#### 2. Plane of Maximum Shear Stress for Transverse Load
Summing vertical force components:

![Fig. 10.19](Fig%2010.19.png)

$$P = P_s \sin\theta + P_n \cos\theta$$

Balancing horizontal components:
$$P_s \cos\theta = P_n \sin\theta \implies P_n = P_s \cot\theta$$
Substituting $P_n$ gives $P \sin\theta = P_s \implies P_s = P \sin\theta$.

Shear stress ($\tau$):
$$\tau = \frac{P_s}{A} = \frac{P \sin\theta (\cos\theta + \sin\theta)}{2 s \cdot l}$$

Differentiating $\tau$ with respect to $\theta$ and equating to zero:
$$\cos^2\theta - \sin^2\theta + 2\sin\theta\cos\theta = 0 \implies \cos 2\theta + \sin 2\theta = 0$$
$$\tan 2\theta = -1 \implies 2\theta = 135^\circ \implies \mathbf{\theta = 67.5^\circ}$$

Substituting $\theta = 67.5^\circ$:
$$\tau_{\max} = \frac{P \sin 67.5^\circ (\cos 67.5^\circ + \sin 67.5^\circ)}{2 s \cdot l} = \frac{1.21 P}{2 s \cdot l}$$
$$P_{\text{transverse}} = \frac{2 s \cdot l \cdot \tau_{\max}}{1.21} = \mathbf{1.65 \cdot s \cdot l \cdot \tau_{\max}}$$

#### 3. Ratio of Limiting Loads
$$\text{Ratio} = \frac{P_{\text{parallel}}}{P_{\text{transverse}}} = \frac{1.414 \cdot s \cdot l \cdot \tau_{\max}}{1.65 \cdot s \cdot l \cdot \tau_{\max}} = \mathbf{0.857}$$

$$\mathbf{\text{Final Answers: Parallel plane } \theta = 45^\circ; \quad \text{Transverse plane } \theta = 67.5^\circ; \quad \text{Load Ratio } = 0.857}$$

---

## Example 10.8 (Axially Loaded Unsymmetrical Section Angle Welding)

### Problem Statement
A $200 \times 150 \times 10\text{ mm}$ angle is to be welded to a steel plate by fillet welds as shown in Fig. 10.21. If the angle is subjected to a static load of $200\text{ kN}$, find the length of weld at the top and bottom. The allowable shear stress for static loading may be taken as $75\text{ MPa}$.

![Fig. 10.21](Fig%2010.21.png)

---

### Solution

#### Given Data:
* Angle dimensions: $200 \times 150 \times 10\text{ mm} \implies a + b = 200\text{ mm}$
* Static load ($P$): $200\text{ kN} = 200 \times 10^3\text{ N}$
* Allowable shear stress ($\tau$): $75\text{ MPa} = 75\text{ N/mm}^2$
* Weld size ($s$): $10\text{ mm}$

Let $l_a$ = Length of weld at top, $l_b$ = Length of weld at bottom, $l = l_a + l_b$ = Total length of weld.

#### 1. Total Length of Weld ($l$)
We know that for single parallel fillet welds:
$$P = 0.707 \cdot s \cdot l \cdot \tau$$
$$200 \times 10^3 = 0.707 \times 10 \times l \times 75 = 530.25 \cdot l$$
$$l = \frac{200 \times 10^3}{530.25} = 377\text{ mm} \implies l_a + l_b = 377\text{ mm}$$

#### 2. Position of Centroidal Axis
Let $b$ = Distance of centroidal axis from the bottom of the angle:
$$b = \frac{(200 - 10) \times 10 \times 95 + 150 \times 10 \times 5}{190 \times 10 + 150 \times 10} = \frac{180500 + 7500}{1900 + 1500} = \frac{188000}{3400} = 55.3\text{ mm}$$
$$a = 200 - 55.3 = 144.7\text{ mm}$$

#### 3. Top and Bottom Weld Lengths ($l_a, l_b$)
Taking moments about the bottom edge:
$$l_a = l \times \frac{b}{a + b} = 377 \times \frac{55.3}{200} = \mathbf{104.2\text{ mm}}$$
$$l_b = l - l_a = 377 - 104.2 = \mathbf{272.8\text{ mm}}$$

$$\mathbf{\text{Final Answers: Top weld length } l_a = 104.2\text{ mm}; \quad \text{Bottom weld length } l_b = 272.8\text{ mm}}$$

---

## Example 10.9 (Eccentrically Loaded Out-of-Plane Welded Joint)

### Problem Statement
A welded joint as shown in Fig. 10.24, is subjected to an eccentric load of $2\text{ kN}$. Find the size of weld, if the maximum shear stress in the weld is $25\text{ MPa}$.

![Fig. 10.24](Fig%2010.24.png)

---

### Solution

#### Given Data:
* Load ($P$): $2\text{ kN} = 2000\text{ N}$
* Eccentricity ($e$): $120\text{ mm}$
* Weld length ($l$): $40\text{ mm}$
* Allowable maximum shear stress ($\tau_{\max}$): $25\text{ MPa} = 25\text{ N/mm}^2$

Let $s$ = Size of weld in mm, $t$ = Throat thickness ($0.707 s$).

#### 1. Direct Shear Stress ($\tau$)
Throat area of double fillet weld ($A$):
$$A = 2 \cdot t \cdot l = 2 \times 0.707 \cdot s \times 40 = 56.56 \cdot s\text{ mm}^2$$

Direct shear stress ($\tau$):
$$\tau = \frac{P}{A} = \frac{2000}{56.56 \cdot s} = \frac{35.4}{s}\text{ N/mm}^2$$

#### 2. Bending Stress ($\sigma_b$)
Bending moment ($M$):
$$M = P \times e = 2000 \times 120 = 240 \times 10^3\text{ N}\cdot\text{mm}$$

Section modulus of top/bottom throat sections ($Z$):
$$Z = \frac{s \cdot l^2}{4.242} = \frac{s \times (40)^2}{4.242} = 377 \cdot s\text{ mm}^3$$

Bending stress ($\sigma_b$):
$$\sigma_b = \frac{M}{Z} = \frac{240 \times 10^3}{377 \cdot s} = \frac{636.6}{s}\text{ N/mm}^2$$

#### 3. Maximum Shear Stress & Weld Size ($s$)
Using maximum shear stress theory:
$$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2}$$
$$25 = \frac{1}{2} \sqrt{\left(\frac{636.6}{s}\right)^2 + 4 \left(\frac{35.4}{s}\right)^2} = \frac{320.3}{s}$$
$$s = \frac{320.3}{25} = \mathbf{12.8\text{ mm}}$$

$$\mathbf{\text{Final Answer: Required weld size } s = 12.8\text{ mm}}$$

---

## Example 10.10 (Circular Fillet Weld under Eccentric Bending Load)

### Problem Statement
A $50\text{ mm}$ diameter solid shaft is welded to a flat plate as shown in Fig. 10.25. If the size of the weld is $15\text{ mm}$, find the maximum normal and shear stress in the weld.

![Fig. 10.25](Fig%2010.25.png)

---

### Solution

#### Given Data:
* Shaft diameter ($D$): $50\text{ mm}$
* Weld size ($s$): $15\text{ mm}$
* Load ($P$): $10\text{ kN} = 10000\text{ N}$
* Eccentricity ($e$): $200\text{ mm}$

Let $t$ = Throat thickness ($0.707 s$).

#### 1. Direct Shear Stress ($\tau$)
Throat area for a circular fillet weld ($A$):
$$A = t \cdot \pi D = 0.707 \cdot s \cdot \pi D = 0.707 \times 15 \times \pi \times 50 = 1666\text{ mm}^2$$

Direct shear stress ($\tau$):
$$\tau = \frac{P}{A} = \frac{10000}{1666} = 6\text{ N/mm}^2 = 6\text{ MPa}$$

#### 2. Bending Stress ($\sigma_b$)
Bending moment ($M$):
$$M = P \times e = 10000 \times 200 = 2 \times 10^6\text{ N}\cdot\text{mm}$$

Section modulus for circular weld section ($Z$):
$$Z = \frac{\pi}{4} \cdot t \cdot D^2 = \frac{\pi}{4} \times (0.707 \cdot s) \times D^2 = \frac{\pi}{4} \times 0.707 \times 15 \times (50)^2 = 20825\text{ mm}^3$$

Bending stress ($\sigma_b$):
$$\sigma_b = \frac{M}{Z} = \frac{2 \times 10^6}{20825} = 96\text{ N/mm}^2 = 96\text{ MPa}$$

#### 3. Maximum Normal Stress ($\sigma_{t(\max)}$)
$$\sigma_{t(\max)} = \frac{1}{2} \sigma_b + \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2} = \frac{1}{2} (96) + \frac{1}{2} \sqrt{(96)^2 + 4 (6)^2}$$
$$\sigma_{t(\max)} = 48 + 48.4 = \mathbf{96.4\text{ MPa}}$$

#### 4. Maximum Shear Stress ($\tau_{\max}$)
$$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2} = \frac{1}{2} \sqrt{(96)^2 + 4 (6)^2} = \mathbf{48.4\text{ MPa}}$$

$$\mathbf{\text{Final Answers: Maximum normal stress } = 96.4\text{ MPa}; \quad \text{Maximum shear stress } = 48.4\text{ MPa}}$$

---

## Example 10.11 (Rectangular Cross-Section Bar Welded to Support)

### Problem Statement
A rectangular cross-section bar is welded to a support by means of fillet welds as shown in Fig. 10.26. Determine the size of the welds, if the permissible shear stress in the weld is limited to $75\text{ MPa}$.

![Fig. 10.26](Fig%2010.26.png)

---

### Solution

#### Given Data:
* Load ($P$): $25\text{ kN} = 25 \times 10^3\text{ N}$
* Eccentricity ($e$): $500\text{ mm}$
* Weld horizontal length ($l$): $100\text{ mm}$
* Weld vertical height ($b$): $150\text{ mm}$
* Permissible shear stress ($\tau_{\max}$): $75\text{ MPa} = 75\text{ N/mm}^2$

Let $s$ = Size of weld in mm, $t$ = Throat thickness ($0.707 s$).

#### 1. Direct Shear Stress ($\tau$)
Throat area for a rectangular fillet weld around all 4 sides ($A$):
$$A = t (2b + 2l) = 0.707 \cdot s (2 \times 150 + 2 \times 100) = 353.5 \cdot s\text{ mm}^2$$

Direct shear stress ($\tau$):
$$\tau = \frac{P}{A} = \frac{25 \times 10^3}{353.5 \cdot s} = \frac{70.72}{s}\text{ N/mm}^2$$

#### 2. Bending Stress ($\sigma_b$)
Bending moment ($M$):
$$M = P \times e = 25 \times 10^3 \times 500 = 12.5 \times 10^6\text{ N}\cdot\text{mm}$$

Section modulus for rectangular weld section ($Z$):
$$Z = t \left( \frac{b^2}{3} + b \cdot l \right) = 0.707 \cdot s \left( \frac{150^2}{3} + 150 \times 100 \right) = 15907.5 \cdot s\text{ mm}^3$$

Bending stress ($\sigma_b$):
$$\sigma_b = \frac{M}{Z} = \frac{12.5 \times 10^6}{15907.5 \cdot s} = \frac{785.8}{s}\text{ N/mm}^2$$

#### 3. Maximum Shear Stress & Weld Size ($s$)
Using maximum shear stress theory:
$$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2}$$
$$75 = \frac{1}{2} \sqrt{\left(\frac{785.8}{s}\right)^2 + 4 \left(\frac{70.72}{s}\right)^2} = \frac{399.2}{s}$$
$$s = \frac{399.2}{75} = \mathbf{5.32\text{ mm}}$$

$$\mathbf{\text{Final Answer: Required weld size } s = 5.32\text{ mm}}$$

---

## Example 10.12 (Arm Welded to Hollow Shaft under Bending and Torsion)

### Problem Statement
An arm A is welded to a hollow shaft at section '1'. The hollow shaft is welded to a plate C at section '2'. The arrangement is shown in Fig. 10.27, along with dimensions. A force $P = 15\text{ kN}$ acts at arm A perpendicular to the axis of the arm. Calculate the size of weld at section '1' and '2'. The permissible shear stress in the weld is $120\text{ MPa}$.

![Fig. 10.27](Fig%2010.27.png)

---

### Solution

#### Given Data:
* Force ($P$): $15\text{ kN} = 15 \times 10^3\text{ N}$
* Shaft diameter ($d$): $80\text{ mm}$
* Torque arm length: $240\text{ mm}$
* Bending arm length: $200 - \frac{50}{2} = 175\text{ mm}$
* Permissible shear stress ($\tau_{\max}$): $120\text{ MPa} = 120\text{ N/mm}^2$

Let $s$ = Size of the weld.

#### 1. Torsional Shear Stress ($\tau$)
Torque acting on shaft ($T$):
$$T = 15 \times 10^3 \times 240 = 3600 \times 10^3\text{ N}\cdot\text{mm}$$

Torsional shear stress ($\tau$):
$$\tau = \frac{2.83 T}{\pi \cdot s \cdot d^2} = \frac{2.83 \times 3600 \times 10^3}{\pi \cdot s \times (80)^2} = \frac{506.6}{s}\text{ N/mm}^2$$

#### 2. Bending Stress ($\sigma_b$)
Bending moment ($M$):
$$M = 15 \times 10^3 \times \left( 200 - \frac{50}{2} \right) = 15 \times 10^3 \times 175 = 2625 \times 10^3\text{ N}\cdot\text{mm}$$

Bending stress ($\sigma_b$):
$$\sigma_b = \frac{5.66 M}{\pi \cdot s \cdot d^2} = \frac{5.66 \times 2625 \times 10^3}{\pi \cdot s \times (80)^2} = \frac{738.8}{s}\text{ N/mm}^2$$

#### 3. Maximum Shear Stress & Weld Size ($s$)
Using maximum shear stress theory:
$$\tau_{\max} = \frac{1}{2} \sqrt{\sigma_b^2 + 4 \tau^2}$$
$$120 = \frac{1}{2} \sqrt{\left(\frac{738.8}{s}\right)^2 + 4 \left(\frac{506.6}{s}\right)^2} = \frac{627}{s}$$
$$s = \frac{627}{120} = \mathbf{5.2\text{ mm}}$$

$$\mathbf{\text{Final Answer: Required weld size } s = 5.2\text{ mm}}$$

---

## Example 10.13 (Eccentrically Loaded In-Plane Bracket Weld)

### Problem Statement
A bracket carrying a load of $15\text{ kN}$ is to be welded as shown in Fig. 10.28. Find the size of weld required if the allowable shear stress is not to exceed $80\text{ MPa}$.

![Fig. 10.28 & 10.29](Fig%2010.28.%2610.29.png)

---

### Solution

#### Given Data:
* Load ($P$): $15\text{ kN} = 15 \times 10^3\text{ N}$
* Allowable shear stress ($\tau$): $80\text{ MPa} = 80\text{ N/mm}^2$
* Weld vertical height ($b$): $80\text{ mm}$
* Weld horizontal length ($l$): $50\text{ mm}$
* Eccentricity ($e$): $125\text{ mm}$

Let $s$ = Size of weld in mm, $t$ = Throat thickness ($0.707 s$).

#### 1. Primary Direct Shear Stress ($\tau_1$)
Throat area ($A$):
$$A = 2 \cdot t \cdot l = 2 \times 0.707 \cdot s \times 50 = 70.7 \cdot s\text{ mm}^2$$

Primary shear stress ($\tau_1$):
$$\tau_1 = \frac{P}{A} = \frac{15 \times 10^3}{70.7 \cdot s} = \frac{212}{s}\text{ N/mm}^2$$

#### 2. Secondary Shear Stress ($\tau_2$)
Polar moment of inertia of throat area ($J$):
$$J = \frac{t \cdot l (3 b^2 + l^2)}{6} = \frac{0.707 \cdot s \times 50 \times [3 (80)^2 + (50)^2]}{6} = 127850 \cdot s\text{ mm}^4$$

Centroid radius to critical point ($r_2$):
$$r_2 = \sqrt{(40)^2 + (25)^2} = 47\text{ mm}$$

Secondary shear stress ($\tau_2$):
$$\tau_2 = \frac{P \cdot e \cdot r_2}{J} = \frac{15 \times 10^3 \times 125 \times 47}{127850 \cdot s} = \frac{689.3}{s}\text{ N/mm}^2$$

Angle cosine ($\cos\theta$):
$$\cos\theta = \frac{r_1}{r_2} = \frac{25}{47} = 0.532$$

#### 3. Resultant Shear Stress & Weld Size ($s$)
$$\tau = \sqrt{\tau_1^2 + \tau_2^2 + 2 \tau_1 \tau_2 \cos\theta}$$
$$80 = \sqrt{\left(\frac{212}{s}\right)^2 + \left(\frac{689.3}{s}\right)^2 + 2 \left(\frac{212}{s}\right) \left(\frac{689.3}{s}\right) (0.532)} = \frac{822}{s}$$
$$s = \frac{822}{80} = \mathbf{10.3\text{ mm}}$$

$$\mathbf{\text{Final Answer: Required weld size } s = 10.3\text{ mm}}$$

---

## Example 10.14 (Cantilever Plate Channel Weld under Eccentric Loading)

### Problem Statement
A rectangular steel plate is welded as a cantilever to a vertical column and supports a single concentrated load $P = 60\text{ kN}$, as shown in Fig. 10.30. Determine the weld size if shear stress in the same is not to exceed $140\text{ MPa}$.

![Fig. 10.30 & 10.31](Fig%2010.30.%2610.31.png)

---

### Solution

#### Given Data:
* Load ($P$): $60\text{ kN} = 60 \times 10^3\text{ N}$
* Plate vertical height ($b$): $100\text{ mm}$
* Weld top/bottom flange length ($l$): $50\text{ mm}$
* Allowable shear stress ($\tau$): $140\text{ MPa} = 140\text{ N/mm}^2$

Let $s$ = Weld size in mm, $t$ = Throat thickness ($0.707 s$).

#### 1. Centroid ($G$) & Polar Moment of Inertia ($J$)
Distance of centroid ($G$) from left vertical line ($x$):
$$x = \frac{l^2}{2l + b} = \frac{(50)^2}{2(50) + 100} = \frac{2500}{200} = 12.5\text{ mm}$$

Polar moment of inertia ($J$):
$$J = t \left[ \frac{(b + 2l)^3}{12} - \frac{l^2 (b + l)^2}{b + 2l} \right] = 0.707 \cdot s \left[ \frac{(100 + 100)^3}{12} - \frac{(50)^2 (150)^2}{200} \right]$$
$$J = 0.707 \cdot s [670 \times 10^3 - 281 \times 10^3] = 275 \times 10^3 \cdot s\text{ mm}^4$$

#### 2. Eccentricity ($e$) & Critical Radius ($r_2$)
$$e = 150 + 50 - 12.5 = 187.5\text{ mm}$$
$$r_1 = 50 - x = 50 - 12.5 = 37.5\text{ mm}, \quad AB = \frac{100}{2} = 50\text{ mm}$$
$$r_2 = \sqrt{(50)^2 + (37.5)^2} = 62.5\text{ mm}$$
$$\cos\theta = \frac{r_1}{r_2} = \frac{37.5}{62.5} = 0.6$$

#### 3. Primary ($\tau_1$) & Secondary Shear Stress ($\tau_2$)
Throat area ($A$):
$$A = 0.707 \cdot s (2l + b) = 0.707 \cdot s (2 \times 50 + 100) = 141.4 \cdot s\text{ mm}^2$$

Primary shear stress ($\tau_1$):
$$\tau_1 = \frac{P}{A} = \frac{60 \times 10^3}{141.4 \cdot s} = \frac{424}{s}\text{ N/mm}^2$$

Secondary shear stress ($\tau_2$):
$$\tau_2 = \frac{P \cdot e \cdot r_2}{J} = \frac{60 \times 10^3 \times 187.5 \times 62.5}{275 \times 10^3 \cdot s} = \frac{2557}{s}\text{ N/mm}^2$$

#### 4. Resultant Shear Stress & Weld Size ($s$)
$$\tau = \sqrt{\tau_1^2 + \tau_2^2 + 2 \tau_1 \tau_2 \cos\theta}$$
$$140 = \sqrt{\left(\frac{424}{s}\right)^2 + \left(\frac{2557}{s}\right)^2 + 2 \left(\frac{424}{s}\right) \left(\frac{2557}{s}\right) (0.6)} = \frac{2832}{s}$$
$$s = \frac{2832}{140} = \mathbf{20.23\text{ mm}}$$

$$\mathbf{\text{Final Answer: Required weld size } s = 20.23\text{ mm}}$$

---

## Example 10.15 (Channel Section Welded to Plate under Eccentric In-Plane Loading)

### Problem Statement
Find the maximum shear stress induced in the weld of $6\text{ mm}$ size when a channel, as shown in Fig. 10.32, is welded to a plate and loaded with $20\text{ kN}$ force at a distance of $200\text{ mm}$.

![Fig. 10.32](Fig%2010.32.png)

---

### Solution

#### Given Data:
* Weld size ($s$): $6\text{ mm}$
* Load ($P$): $20\text{ kN} = 20 \times 10^3\text{ N}$
* Flange weld length ($l$): $40\text{ mm}$
* Web weld height ($b$): $90\text{ mm}$
* Distance to load: $200\text{ mm}$

Let $t$ = Throat thickness ($0.707 s$).

#### 1. Centroid ($G$) & Polar Moment of Inertia ($J$)
Distance of centroid ($G$) from left edge ($x$):
$$x = \frac{l^2}{2l + b} = \frac{(40)^2}{2(40) + 90} = \frac{1600}{170} = 9.4\text{ mm}$$

![Fig. 10.33](Fig%2010.33.png)

Polar moment of inertia ($J$):
$$J = 0.707 \cdot s \left[ \frac{(b + 2l)^3}{12} - \frac{l^2 (b + l)^2}{b + 2l} \right] = 0.707 \times 6 \left[ \frac{(90 + 80)^3}{12} - \frac{(40)^2 (130)^2}{170} \right]$$
$$J = 4.242 [409.4 \times 10^3 - 159 \times 10^3] = 1062.2 \times 10^3\text{ mm}^4$$

#### 2. Eccentricity ($e$) & Critical Radius ($r_2$)
$$e = 200 - x = 200 - 9.4 = 190.6\text{ mm}$$
$$r_1 = 40 - x = 40 - 9.4 = 30.6\text{ mm}, \quad AB = \frac{90}{2} = 45\text{ mm}$$
$$r_2 = \sqrt{(45)^2 + (30.6)^2} = 54.4\text{ mm}$$
$$\cos\theta = \frac{r_1}{r_2} = \frac{30.6}{54.4} = 0.5625$$

#### 3. Primary ($\tau_1$) & Secondary Shear Stress ($\tau_2$)
Throat area ($A$):
$$A = 0.707 \cdot s (2l + b) = 0.707 \times 6 \times (2 \times 40 + 90) = 721.14\text{ mm}^2$$

Primary direct shear stress ($\tau_1$):
$$\tau_1 = \frac{P}{A} = \frac{20 \times 10^3}{721.14} = 27.7\text{ N/mm}^2$$

Secondary torsional shear stress ($\tau_2$):
$$\tau_2 = \frac{P \cdot e \cdot r_2}{J} = \frac{20 \times 10^3 \times 190.6 \times 54.4}{1062.2 \times 10^3} = 195.2\text{ N/mm}^2$$

#### 4. Maximum Resultant Shear Stress ($\tau_{\max}$)
$$\tau_{\max} = \sqrt{\tau_1^2 + \tau_2^2 + 2 \tau_1 \tau_2 \cos\theta}$$
$$\tau_{\max} = \sqrt{(27.7)^2 + (195.2)^2 + 2 (27.7) (195.2) (0.5625)} = \sqrt{44903.6} = \mathbf{212\text{ MPa}}$$

$$\mathbf{\text{Final Answer: Maximum shear stress } \tau_{\max} = 212\text{ MPa}}$$

---

## Example 10.16 (Shielded Arc Welded Bracket under Dead Weight)

### Problem Statement
The bracket, as shown in Fig. 10.34, is designed to carry a dead weight of $P = 15\text{ kN}$. What sizes of the fillet welds are required at the top and bottom of the bracket? Assume the forces act through the points A and B. The welds are produced by shielded arc welding process with a permissible strength of $150\text{ MPa}$.

![Fig. 10.34](Fig%2010.34.png)

---

### Solution

#### Given Data:
* Load ($P$): $15\text{ kN} = 15 \times 10^3\text{ N}$
* Permissible stress ($\tau$): $150\text{ MPa} = 150\text{ N/mm}^2$
* Weld length ($l$): $25\text{ mm}$

#### 1. Vertical Forces at A and B ($P_{VA}, P_{VB}$)
Assuming the welds at A and B share the vertical load equally:
$$P_{VA} = P_{VB} = \frac{P}{2} = \frac{15}{2} = 7.5\text{ kN} = 7500\text{ N}$$

#### 2. Horizontal Force at A ($P_{HA}$)
Taking moments about point B:
$$P_{HA} \times 75 = 15 \times 50 = 750 \implies P_{HA} = \frac{750}{75} = 10\text{ kN} = 10000\text{ N}$$

#### 3. Size of Fillet Weld at Top ($s_1$)
Let $s_1$ = Size of fillet weld at top in mm.

Resultant force at A ($P_A$):
$$P_A = \sqrt{(P_{VA})^2 + (P_{HA})^2} = \sqrt{(7.5)^2 + (10)^2} = 12.5\text{ kN} = 12500\text{ N}$$

Equating to weld capacity:
$$P_A = 0.707 \cdot s_1 \cdot l \cdot \tau$$
$$12500 = 0.707 \cdot s_1 \times 25 \times 150 = 2650 \cdot s_1$$
$$s_1 = \frac{12500}{2650} = \mathbf{4.7\text{ mm}}$$

#### 4. Size of Fillet Weld at Bottom ($s_2$)
Let $s_2$ = Size of fillet weld at bottom in mm.

The bottom weld is designed for vertical force ($P_{VB} = 7500\text{ N}$) only:
$$P_{VB} = 0.707 \cdot s_2 \cdot l \cdot \tau$$
$$7500 = 0.707 \cdot s_2 \times 25 \times 150 = 2650 \cdot s_2$$
$$s_2 = \frac{7500}{2650} = \mathbf{2.83\text{ mm}}$$

$$\mathbf{\text{Final Answers: Top weld size } s_1 = 4.7\text{ mm}; \quad \text{Bottom weld size } s_2 = 2.83\text{ mm}}$$
