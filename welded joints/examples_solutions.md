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
* Load ($P$): $80\text{ kN} = 80 \times 10^3\text{ N}$
* Permissible Shear Stress ($\tau$): $55\text{ MPa} = 55\text{ N/mm}^2$

#### 1. Effective Length of Double Parallel Fillet Weld ($l$)
$$P = 2 (0.707 \cdot s \cdot l \cdot \tau) = 1.414 \cdot s \cdot l \cdot \tau$$
$$80 \times 10^3 = 1.414 \times 10 \times l \times 55 = 777.7 \cdot l \implies l = 102.87\text{ mm} \approx 103\text{ mm}$$

#### 2. Total Length of Weld Run
Adding $12.5\text{ mm}$ for starting and stopping runs on each side:
$$\text{Total Length } L = l + 12.5\text{ mm} = 103 + 12.5 = \mathbf{115.5\text{ mm}}$$

$$\mathbf{\text{Final Answer: Total weld length per side } = 115.5\text{ mm}}$$

---

## Example 10.2 (Circular Fillet Weld under Torsion)

### Problem Statement
A $50\text{ mm}$ diameter solid shaft is welded to a flat plate by a $10\text{ mm}$ fillet weld. Find the maximum torque that the welded joint can sustain if the maximum shear stress intensity in the weld material is not to exceed $80\text{ MPa}$.

---

### Solution

#### Given Data:
* Shaft diameter ($d$): $50\text{ mm} \implies \text{Radius } r = 25\text{ mm}$
* Weld size ($s$): $10\text{ mm}$
* Allowable Shear Stress ($\tau$): $80\text{ MPa} = 80\text{ N/mm}^2$

#### 1. Torque Capacity Formula for Circular Fillet Weld
$$T = \frac{\pi}{\sqrt{2}} \cdot s \cdot r^2 \cdot \tau = 0.707 \cdot \pi \cdot s \cdot r^2 \cdot \tau$$
$$T = 0.707 \times \pi \times 10 \times (25)^2 \times 80 = 1.11 \times 10^6\text{ N}\cdot\text{mm} = \mathbf{1.11\text{ kN}\cdot\text{m}}$$

$$\mathbf{\text{Final Answer: Maximum Torque Capacity } T = 1.11\text{ kN}\cdot\text{m}}$$

---

## Example 10.3 (Rectangular Plate Fillet Weld under Torsion)

### Problem Statement
A plate $1\text{ m}$ long, $60\text{ mm}$ thick is welded to another plate at right angles to each other by a $15\text{ mm}$ fillet weld. Find the maximum torque that the welded joint can sustain if the permissible shear stress intensity in the weld material is not to exceed $80\text{ MPa}$.

---

### Solution

#### Given Data:
* Length of plate ($b$): $1\text{ m} = 1000\text{ mm}$
* Depth / thickness ($d$): $60\text{ mm}$
* Weld size ($s$): $15\text{ mm}$
* Allowable shear stress ($\tau$): $80\text{ N/mm}^2$

#### 1. Polar Unit Section Modulus ($J_u$) & Torque ($T$)
$$J_u = \frac{b \cdot d (b + d)}{2} = \frac{1000 \times 60 \times 1060}{2} = 31.8 \times 10^6\text{ mm}^3$$
$$T = 0.707 \cdot s \cdot \tau \cdot \frac{J_u}{r_{\max}} = \mathbf{14.14\text{ kN}\cdot\text{m}}$$

$$\mathbf{\text{Final Answer: Maximum Torque } T = 14.14\text{ kN}\cdot\text{m}}$$

---

## Example 10.4 (Parallel Fillet Weld — Static & Fatigue Loading)

### Problem Statement
A plate $100\text{ mm}$ wide and $12.5\text{ mm}$ thick is to be welded to another plate by means of double parallel fillet welds. The plates are subjected to a load of $50\text{ kN}$. Find the length of the weld so that the maximum stress does not exceed $56\text{ MPa}$. Consider the joint first under static loading and then under fatigue loading ($K_f = 1.5$).

---

### Solution

#### 1. Under Static Loading
$$50 \times 10^3 = 1.414 \times 12.5 \times l \times 56 \implies l = 50.5\text{ mm}$$
$$\text{Total Length } L = 50.5 + 12.5 = \mathbf{63\text{ mm}}$$

#### 2. Under Fatigue Loading ($K_f = 1.5$)
$$\tau_{\text{fatigue}} = \frac{56}{1.5} = 37.33\text{ N/mm}^2 \implies l_{\text{fatigue}} = 75.8\text{ mm}$$
$$\text{Total Fatigue Length } L_{\text{fatigue}} = 75.8 + 12.5 = \mathbf{88.3\text{ mm} \approx 88.5\text{ mm}}$$

$$\mathbf{\text{Final Answers: Static length } = 63\text{ mm}; \quad \text{Fatigue length } = 88.5\text{ mm}}$$

---

## Example 10.5 (Combination Weld — Static & Fatigue Loading)

### Problem Statement
A plate $75\text{ mm}$ wide and $12.5\text{ mm}$ thick is joined with another plate by a single transverse weld and a double parallel fillet weld. Safe stresses: Tensile $= 70\text{ MPa}$, Shear $= 56\text{ MPa}$. Find length of parallel fillet weld for static and fatigue loading ($K_{ft} = 1.5, K_{fp} = 2.7$).

---

### Solution

#### 1. Static Loading
Plate capacity $P = 65\,625\text{ N}$, Transverse weld $P_1 = 46\,397\text{ N}$, Parallel load $P_2 = 19\,228\text{ N}$.
$$l_2 = 19.4\text{ mm} \implies L_2 = 19.4 + 12.5 = \mathbf{31.9\text{ mm} \approx 35\text{ mm}}$$

#### 2. Fatigue Loading
$P_{1}' = 30\,931\text{ N}, P_{2}' = 34\,694\text{ N}, \tau' = 20.74\text{ MPa} \implies l_2' = 94.6\text{ mm}$.
$$L_2' = 94.6 + 12.5 = \mathbf{107.1\text{ mm} \approx 107.5\text{ mm}}$$

$$\mathbf{\text{Final Answers: Static parallel weld } = 35\text{ mm}; \quad \text{Fatigue parallel weld } = 107.5\text{ mm}}$$

---

## Example 10.6 (Weld Run Length under Variable Loading)

### Problem Statement
Determine weld run length for a plate $120 \times 15\text{ mm}$ subjected to variable load $70\text{ kN to } 220\text{ kN}$.

---

### Solution

* Mean Load $P_m = 145\text{ kN}$, Variable Load $P_v = 75\text{ kN}$.
* **Transverse Weld Length:** $L_1 = \mathbf{225\text{ mm}}$
* **Double Parallel Weld Length:** $L_2 = \mathbf{300\text{ mm}}$

---

## Example 10.7 (Fillet Weld 'T' Section Shear Plane Analysis)

### Problem Statement
Locate the plane of maximum shear stress in parallel and transverse loading patterns for a T-section weld.

---

### Solution

1. **Parallel Load:** Maximum shear stress occurs at throat angle $\theta = 45^\circ$.
2. **Transverse Load:** Maximum shear stress occurs at throat angle $\theta = 67.5^\circ$.
$$\text{Ratio of limiting loads } = \mathbf{1.17}$$

---

## Example 10.8 (Axially Loaded Unsymmetrical Section Angle Welding)

### Problem Statement
Angle $200 \times 150 \times 10\text{ mm}$ under static load $P = 200\text{ kN}, \tau = 75\text{ MPa}, s = 10\text{ mm}, y_1 = 70.3\text{ mm}, y_2 = 129.7\text{ mm}$.

---

### Solution

#### 1. Top Weld Length ($l_1$):
$$l_1 = 188.6 \times \frac{129.7}{200} = \mathbf{122.3\text{ mm}}$$

#### 2. Bottom Weld Length ($l_2$):
$$l_2 = 188.6 \times \frac{70.3}{200} = \mathbf{66.3\text{ mm}}$$

---

## Example 10.9 (Eccentrically Loaded In-Plane Welded Joint)

### Problem Statement
Eccentric load $P = 2\text{ kN}$ at $e = 100\text{ mm}, l = 50\text{ mm}, \tau = 25\text{ MPa}$. Find weld size $s$.

---

### Solution

$$\mathbf{\text{Required Weld Size } s = 30\text{ mm}}$$

---

## Example 10.10 (Circular Fillet Weld under Combined Bending and Torsion)

### Problem Statement
Shaft $d = 50\text{ mm}, s = 15\text{ mm}, P = 10\text{ kN}, L = 200\text{ mm}, T = 1\text{ kN}\cdot\text{m}$. Find maximum normal and shear stress.

---

### Solution

#### 1. Max Normal Stress:
$$\sigma_{\max} = \frac{96.1}{2} + \frac{1}{2}\sqrt{96.1^2 + 4(24)^2} = \mathbf{101.75\text{ MPa}}$$
#### 2. Max Shear Stress:
$$\tau_{\max} = \frac{1}{2}\sqrt{96.1^2 + 4(24)^2} = \mathbf{53.7\text{ MPa}}$$

---

## Example 10.11 (Rectangular Cross-Section Bar Welded to Support)

### Problem Statement
Bar $100 \times 150\text{ mm}$ welded on 4 sides, $P = 25\text{ kN}, e = 200\text{ mm}, \tau = 75\text{ MPa}$. Find weld size $s$.

---

### Solution

$$\mathbf{\text{Required Weld Size } s = 3\text{ mm}}$$

---

## Example 10.12 (Arm Welded to Hollow Shaft under Bending)

### Problem Statement
Force $P = 15\text{ kN}$ on arm welded to hollow shaft. Allowable shear stress $\tau = 120\text{ MPa}$.

---

### Solution

$$\mathbf{\text{Weld Size at Section 1 } s_1 = 8\text{ mm}; \quad \text{Weld Size at Section 2 } s_2 = 10\text{ mm}}$$

---

## Example 10.13 (Eccentrically Loaded Out-of-Plane Bracket Weld)

### Problem Statement
Bracket carrying $P = 15\text{ kN}$ at $e = 120\text{ mm}, \tau = 80\text{ MPa}$. Find weld size $s$.

---

### Solution

$$\mathbf{\text{Required Weld Size } s = 6\text{ mm}}$$

---

## Example 10.14 (Cantilever Plate Weld under Bending)

### Problem Statement
Cantilever plate carrying $P = 50\text{ kN}$ at $e = 150\text{ mm}, \tau = 140\text{ MPa}$. Find weld size $s$.

---

### Solution

$$\mathbf{\text{Required Weld Size } s = 10\text{ mm}}$$

---

## Example 10.15 (Channel Section Welded to Plate under Eccentric Bending)

### Problem Statement
Channel section with weld size $s = 6\text{ mm}$ carrying $P = 20\text{ kN}$ at $e = 200\text{ mm}$. Find maximum shear stress.

---

### Solution

$$\mathbf{\text{Maximum Shear Stress } \tau_{\max} = 112\text{ MPa}}$$

---

## Example 10.16 (Shielded Arc Welded Bracket under Dead Weight)

### Problem Statement
Bracket carrying $P = 15\text{ kN}$ at top and bottom welds. Permissible strength $= 150\text{ MPa}$.

---

### Solution

$$\mathbf{\text{Top Weld Size } s_1 = 12\text{ mm}; \quad \text{Bottom Weld Size } s_2 = 6\text{ mm}}$$
