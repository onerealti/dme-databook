# Shaft Couplings — Solved Examples Solutions

Fully worked, step-by-step solutions for all examples in [examples.md](file:///g:/Shared%20drives/Mech28/SEM%204/DME/markdowns/couplings/examples.md).

---

## Example 13.4 (Muff Coupling)

### Problem Statement
Design and make a neat dimensioned sketch of a muff coupling which is used to connect two steel shafts transmitting $40\text{ kW}$ at $350\text{ rpm}$. The material for the shafts and key is plain carbon steel for which allowable shear and crushing stresses may be taken as $40\text{ MPa}$ and $80\text{ MPa}$ respectively. The material for the muff is cast iron for which the allowable shear stress may be assumed as $15\text{ MPa}$.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 40 \times 10^3}{2 \pi \times 350} = 1091.35\text{ N}\cdot\text{m} \approx 1100 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for shaft
Using the torsional shear strength formula for a solid shaft:
$$\tau_s = \frac{16 T}{\pi d^3} \implies d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 1.09135 \times 10^6}{\pi \times 40}} = 51.8\text{ mm}$$

*Standard shaft diameter selection:* **$d = 55\text{ mm}$**

#### 2. Design for sleeve (muff)
* Outer diameter of muff: $D = 2d + 13\text{ mm} = 2(55) + 13 = 123\text{ mm} \approx 125\text{ mm}$
* Total length of muff: $L = 3.5d = 3.5 \times 55 = 192.5\text{ mm} \approx 195\text{ mm}$

##### Check Shear Stress Induced in Cast Iron Muff:
Treating the muff as a hollow shaft subjected to torque $T$:
$$\tau_c = \frac{16 T D}{\pi (D^4 - d^4)} = \frac{16 \times 1.09135 \times 10^6 \times 125}{\pi (125^4 - 55^4)} = 2.96\text{ MPa} \le 15\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for key
Since allowable crushing stress is twice the allowable shear stress ($\sigma_c = 2 \tau = 80\text{ MPa} = 2 \times 40\text{ MPa}$), a **square key** of equal strength in shearing and crushing is adopted.

From standard empirical tables for a $55\text{ mm}$ diameter shaft:
* Width of key: $w = 18\text{ mm}$
* Thickness of key (square key): $t = w = 18\text{ mm}$
* Length of key in each shaft end: $l = \frac{L}{2} = \frac{195}{2} = 97.5\text{ mm}$

##### Verification of Key Stresses:

1. **Shearing of the key:**
   $$T = l \cdot w \cdot \tau_s \cdot \frac{d}{2}$$
   $$1100 \times 10^3 = 97.5 \times 18 \times \tau_s \times \frac{55}{2} = 48.2 \times 10^3 \tau_s$$
   $$\tau_s = \frac{1100 \times 10^3}{48.2 \times 10^3} = \mathbf{22.8\text{ N/mm}^2} \le 40\text{ MPa} \quad \text{(Safe)}$$

2. **Crushing of the key:**
   $$T = l \cdot \frac{t}{2} \cdot \sigma_{cs} \cdot \frac{d}{2}$$
   $$1100 \times 10^3 = 97.5 \times \frac{18}{2} \times \sigma_{cs} \times \frac{55}{2} = 24.1 \times 10^3 \sigma_{cs}$$
   $$\sigma_{cs} = \frac{1100 \times 10^3}{24.1 \times 10^3} = \mathbf{45.6\text{ N/mm}^2} \le 80\text{ MPa} \quad \text{(Safe)}$$

*Conclusion:* The induced stresses ($\tau_s = 22.8\text{ MPa} \le 40\text{ MPa}$ and $\sigma_{cs} = 45.6\text{ MPa} \le 80\text{ MPa}$) are well within safe permissible limits.

---

## Example 13.5 (Clamp / Split-Muff Coupling)

### Problem Statement
Design a clamp coupling to transmit $30\text{ kW}$ at $100\text{ rpm}$. The allowable shear stress for the shaft and key is $40\text{ MPa}$ and the number of bolts connecting the two halves are six. The permissible tensile stress for the bolts is $70\text{ MPa}$. The coefficient of friction between the muff and the shaft surface may be taken as $0.3$.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 30 \times 10^3}{2 \pi \times 100} = 2864.8\text{ N}\cdot\text{m} = 2.8648 \times 10^6\text{ N}\cdot\text{mm}$$

#### 1. Design for shaft
$$d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 2.8648 \times 10^6}{\pi \times 40}} = 71.45\text{ mm} \implies \mathbf{d = 75\text{ mm}}$$

#### 2. Design for muff
* Outer diameter of muff: $D = 2d + 13\text{ mm} = 2(75) + 13 = 163\text{ mm} \approx 165\text{ mm}$
* Total length of muff: $L = 3.5d = 3.5 \times 75 = 262.5\text{ mm} \approx 265\text{ mm}$

#### 3. Design for key
For $d = 75\text{ mm}$: $w = 22\text{ mm}$, $t = 14\text{ mm}$, $l = L = 265\text{ mm}$.
* Shear stress check: $\tau_k = \frac{2 T}{w \cdot d \cdot L} = \frac{2 \times 2.8648 \times 10^6}{22 \times 75 \times 265} = 13.1\text{ MPa} \le 40\text{ MPa} \quad \text{(Safe)}$

#### 4. Design for bolts
Torque transmitted by friction between muff bore and shaft surface:
$$T = \frac{\pi^2}{8} \cdot \mu \cdot d \cdot n \cdot \left(\frac{\pi}{4} d_b^2 \cdot \sigma_{tb}\right)$$
$$d_b = \sqrt{\frac{8 T}{\pi^2 \mu n \sigma_{tb} d}} = \sqrt{\frac{8 \times 2.8648 \times 10^6}{\pi^2 \times 0.3 \times 6 \times 70 \times 75}} = 15.69\text{ mm}$$

*Selection:* Select **M20 bolts** ($d_b = 17.3\text{ mm} > 15.69\text{ mm}$).
