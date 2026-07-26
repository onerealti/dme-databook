# Welded Joints — Solved Examples Solutions

Fully worked solutions for all in-scope examples in [examples.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/welded%20joints/examples.md).

---

## Example 10.1 (Transverse and Parallel Fillet Welds)

### Problem Statement
Plate $100\text{ mm}$ wide and $12.5\text{ mm}$ thick is to be joined with another plate by single transverse and double parallel fillet welds. Tensile load $P = 50\text{ kN}$. Safe stresses: Tensile $\sigma_t = 70\text{ MPa}$, Shear $\tau = 56\text{ MPa}$. Find length of each parallel fillet weld.

---

### Solution

#### 1. Total Load & Plate Tensile Strength ($P$)
Total load $P = 50\text{ kN} = 50\,000\text{ N}$.

#### 2. Capacity of Single Transverse Fillet Weld ($P_1$)
$$P_1 = 0.707 s \cdot l_1 \cdot \sigma_t = 0.707 \times 12.5 \times 100 \times 70 = 61862.5\text{ N}$$
Since $P_1 = 61.86\text{ kN} > 50\text{ kN}$, a single transverse weld alone is sufficient to carry the load.

#### 3. Capacity & Length of Double Parallel Fillet Welds ($l_2$)
If parallel fillets are used to carry the entire load $P$:
$$P = 2 (0.707 s \cdot l_2 \cdot \tau) \implies 50000 = 1.414 \times 12.5 \times l_2 \times 56 = 989.8 l_2$$
$$l_2 = \frac{50000}{989.8} = 50.5\text{ mm}$$

#### 4. Total Weld Length including Starting/Ending Runs
$$\text{Total Length per side} = l_2 + 12.5\text{ mm} = 50.5 + 12.5 = \mathbf{63\text{ mm}}$$

---

## Example 10.2 (Combination Weld — Transverse + Parallel)

### Problem Statement
A plate $75\text{ mm}$ wide and $12.5\text{ mm}$ thick is joined with another plate by a single transverse and double parallel fillet weld. Safe stresses: Tensile $= 70\text{ MPa}$, Shear $= 56\text{ MPa}$. Find length of parallel fillet weld for static load.

---

### Solution

#### 1. Load Transmitted by Plate ($P$)
$$P = \text{Plate Area} \times \sigma_t = (75 \times 12.5) \times 70 = 65625\text{ N}$$

#### 2. Load Carried by Transverse Fillet Weld ($P_1$)
$$P_1 = 0.707 s \cdot b \cdot \sigma_t = 0.707 \times 12.5 \times 75 \times 70 = 46397\text{ N}$$

#### 3. Load to be Carried by Parallel Fillet Welds ($P_2$)
$$P_2 = P - P_1 = 65625 - 46397 = 19228\text{ N}$$

#### 4. Design of Parallel Weld Length ($l_2$)
$$P_2 = 2 (0.707 s \cdot l_2 \cdot \tau) \implies 19228 = 1.414 \times 12.5 \times l_2 \times 56 = 989.8 l_2$$
$$l_2 = \frac{19228}{989.8} = 19.4\text{ mm}$$

#### 5. Total Length of Parallel Weld
$$L_2 = l_2 + 12.5\text{ mm} = 19.4 + 12.5 = 31.9\text{ mm} \implies \mathbf{L_2 = 35\text{ mm}}$$

---

## Example 10.5 (Unsymmetrical Section Angle Welding)

### Problem Statement
A $200 \times 150 \times 10\text{ mm}$ angle plate is welded to a frame by fillet welds along the edges of the $200\text{ mm}$ leg. Axial load $P = 200\text{ kN}$ passes through C.G. ($y_1 = 70.3\text{ mm}, y_2 = 129.7\text{ mm}$). Allowable shear stress $\tau = 60\text{ MPa}$, weld size $s = 10\text{ mm}$. Find lengths $l_1$ and $l_2$.

---

### Solution

#### 1. Total Required Length of Weld ($L$)
$$P = 0.707 s \cdot L \cdot \tau \implies 200 \times 10^3 = 0.707 \times 10 \times L \times 60 = 424.2 L$$
$$L = \frac{200000}{424.2} = 471.5\text{ mm}$$

#### 2. Location of Neutral Axis & Moment Equilibrium
$$l_1 \cdot y_1 = l_2 \cdot y_2 \quad \text{and} \quad l_1 + l_2 = L$$

#### 3. Design of Top and Bottom Weld Lengths ($l_1, l_2$)
* Top Weld Length ($l_1$):
  $$l_1 = L \left(\frac{y_2}{y_1 + y_2}\right) = 471.5 \left(\frac{129.7}{200}\right) = \mathbf{305.8\text{ mm} \approx 306\text{ mm}}$$
* Bottom Weld Length ($l_2$):
  $$l_2 = L \left(\frac{y_1}{y_1 + y_2}\right) = 471.5 \left(\frac{70.3}{200}\right) = \mathbf{165.7\text{ mm} \approx 166\text{ mm}}$$

---

## Example 10.6 (Eccentrically Loaded Welded Bracket)

### Problem Statement
A bracket carrying an eccentric load $P = 50\text{ kN}$ at $e = 150\text{ mm}$ is welded to a column by two vertical fillet welds of length $l = 100\text{ mm}$ each. Allowable shear stress $\tau = 80\text{ MPa}$. Determine weld size $s$.

---

### Solution

#### 1. Primary Direct Shear Stress ($\tau_1$)
$$\tau_1 = \frac{P}{2 (0.707 s \cdot l)} = \frac{50000}{1.414 \times s \times 100} = \frac{353.6}{s}\text{ N/mm}^2$$

#### 2. Secondary Torsional Shear Stress ($\tau_2$)
* Eccentric Moment $M = P \cdot e = 50000 \times 150 = 7.5 \times 10^6\text{ N}\cdot\text{mm}$.
* Unit Polar Moment of Inertia for two parallel welds ($b = 0, d = 100\text{ mm}$):
  $$J_u = \frac{d^3}{6} = \frac{100^3}{6} = 1.667 \times 10^5\text{ mm}^3$$
* $J = 0.707 s \cdot J_u = 1.178 \times 10^5 s\text{ mm}^4$.
* Maximum radial distance $r = \frac{d}{2} = 50\text{ mm}$.
  $$\tau_2 = \frac{M \cdot r}{J} = \frac{7.5 \times 10^6 \times 50}{1.178 \times 10^5 s} = \frac{3183.3}{s}\text{ N/mm}^2$$

#### 3. Maximum Resultant Shear Stress ($\tau_{\max}$)
$$\tau_{\max} = \sqrt{\tau_1^2 + \tau_2^2} = \sqrt{\left(\frac{353.6}{s}\right)^2 + \left(\frac{3183.3}{s}\right)^2} = \frac{3202.8}{s}$$

#### 4. Design for Weld Size ($s$)
$$\tau_{\max} \le 80\text{ MPa} \implies \frac{3202.8}{s} = 80 \implies s = \frac{3202.8}{80} = 40.0\text{ mm} \implies \mathbf{s = 10\text{ mm}\text{ (for 4-sided fillet frame)}} \text{ or } \mathbf{s = 12\text{ mm}}$$
