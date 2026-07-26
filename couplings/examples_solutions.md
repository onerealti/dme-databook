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
   $$1100 \times 10^3 = 97.5 \times 18 \times \tau_s \times \frac{55}{2} = 48.2 \times 10^3 \tau_s \implies \tau_s = \mathbf{22.8\text{ N/mm}^2} \le 40\text{ MPa} \quad \text{(Safe)}$$

2. **Crushing of the key:**
   $$T = l \cdot \frac{t}{2} \cdot \sigma_{cs} \cdot \frac{d}{2}$$
   $$1100 \times 10^3 = 97.5 \times \frac{18}{2} \times \sigma_{cs} \times \frac{55}{2} = 24.1 \times 10^3 \sigma_{cs} \implies \sigma_{cs} = \mathbf{45.6\text{ N/mm}^2} \le 80\text{ MPa} \quad \text{(Safe)}$$

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

---

## Example 13.6 (Cast Iron Protective Flange Coupling)

### Problem Statement
Design a cast iron protective type flange coupling to transmit $15\text{ kW}$ at $900\text{ rpm}$ from an electric motor to a compressor. The service factor may be assumed as $1.35$.
* Shear stress for shaft, bolt, and key material: $40\text{ MPa}$
* Crushing stress for bolt and key: $80\text{ MPa}$
* Shear stress for cast iron: $8\text{ MPa}$

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 \times 15 \times 10^3}{2 \pi \times 900} = 159.15\text{ N}\cdot\text{m}$$
$$T_{\max} = 1.35 \times 159.15 = 214.85\text{ N}\cdot\text{m} = 2.1485 \times 10^5\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
$$d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 2.1485 \times 10^5}{\pi \times 40}} = 30.13\text{ mm} \implies \mathbf{d = 35\text{ mm}}$$
* Outer diameter of hub: $D = 2d = 70\text{ mm}$
* Length of hub: $L = 1.5d = 52.5\text{ mm} \approx 55\text{ mm}$

#### 2. Design for key
For $d = 35\text{ mm}$: $w = 12\text{ mm}$, $t = 8\text{ mm}$, $l = L = 55\text{ mm}$.
* Shear Check: $\tau_k = \frac{2 \times 2.1485 \times 10^5}{12 \times 35 \times 55} = 18.6\text{ MPa} \le 40\text{ MPa} \quad \text{(Safe)}$
* Crushing Check: $\sigma_{ck} = \frac{4 \times 2.1485 \times 10^5}{8 \times 35 \times 55} = 55.8\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$

#### 3. Design for flange
* Pitch circle diameter of bolts: $D_b = 3d = 105\text{ mm}$
* Flange web thickness: $t_f = 0.5d = 17.5\text{ mm} \approx 18\text{ mm}$
* Protective flange thickness: $t_p = 0.25d = 8.75\text{ mm} \approx 10\text{ mm}$
* Outer flange diameter: $D_1 = 4d = 140\text{ mm}$
* Flange Shear Check: $\tau_{\text{flange}} = \frac{2 T_{\max}}{\pi D^2 t_f} = \frac{2 \times 2.1485 \times 10^5}{\pi \times 70^2 \times 18} = 1.55\text{ MPa} \le 8\text{ MPa} \quad \text{(Safe)}$

#### 4. Design for bolts
Number of bolts $n = 3$ (since $d \le 40\text{ mm}$).
$$d_b = \sqrt{\frac{8 T_{\max}}{\pi n D_b \tau_b}} = \sqrt{\frac{8 \times 2.1485 \times 10^5}{\pi \times 3 \times 105 \times 40}} = 6.58\text{ mm} \implies \text{Use }\mathbf{\text{M8 bolts}}$$
* Bolt Crushing Check: $\sigma_{cb} = \frac{2 T_{\max}}{n d_b t_f D_b} = \frac{2 \times 2.1485 \times 10^5}{3 \times 8 \times 18 \times 105} = 9.47\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$

---

## Example 13.7 (Protective Flange Coupling)

### Problem Statement
Design a protective type of cast iron flange coupling for a steel shaft transmitting $15\text{ kW}$ at $200\text{ rpm}$ with $\tau_s = 40\text{ MPa}$, $\tau_b = 30\text{ MPa}$, $\tau_k = 40\text{ MPa}$, $\sigma_{ck} = 80\text{ MPa}$, $T_{\max} = 1.25 T_{\text{mean}}$, and $\tau_c = 14\text{ MPa}$.

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 \times 15000}{2 \pi \times 200} = 716.2\text{ N}\cdot\text{m} \implies T_{\max} = 1.25 \times 716.2 = 895.25\text{ N}\cdot\text{m} = 8.9525 \times 10^5\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
$$d = \sqrt[3]{\frac{16 \times 8.9525 \times 10^5}{\pi \times 40}} = 48.5\text{ mm} \implies \mathbf{d = 50\text{ mm}}$$
* Hub outer diameter: $D = 2d = 100\text{ mm}$, Length of hub: $L = 1.5d = 75\text{ mm}$.

#### 2. Design for key
For $d = 50\text{ mm}$: Square key $w = t = 16\text{ mm}, l = L = 75\text{ mm}$.
* Shear Check: $\tau_k = \frac{2 \times 8.9525 \times 10^5}{16 \times 50 \times 75} = 29.8\text{ MPa} \le 40\text{ MPa} \quad \text{(Safe)}$
* Crushing Check: $\sigma_{ck} = \frac{4 \times 8.9525 \times 10^5}{16 \times 50 \times 75} = 59.7\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$

#### 3. Design for flange
* Pitch circle diameter: $D_b = 3d = 150\text{ mm}$
* Flange web thickness: $t_f = 0.5d = 25\text{ mm}$, Protective rim $t_p = 13\text{ mm}$, Outer dia $D_1 = 4d = 200\text{ mm}$.
* Flange Shear Check: $\tau_{\text{flange}} = \frac{2 \times 8.9525 \times 10^5}{\pi \times 100^2 \times 25} = 2.28\text{ MPa} \le 14\text{ MPa} \quad \text{(Safe)}$

#### 4. Design for bolts
Number of bolts $n = 4$ (for $d = 50\text{ mm}$).
$$d_b = \sqrt{\frac{8 T_{\max}}{\pi n D_b \tau_b}} = \sqrt{\frac{8 \times 8.9525 \times 10^5}{\pi \times 4 \times 150 \times 30}} = 11.25\text{ mm} \implies \text{Use }\mathbf{\text{M12 bolts}}$$
* Bolt Crushing Check: $\sigma_{cb} = \frac{2 \times 8.9525 \times 10^5}{4 \times 12 \times 25 \times 150} = 9.95\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$

---

## Example 13.8 (Flange Coupling with Rigidity Constraint)

### Problem Statement
Design a CI flange coupling for a mild steel shaft transmitting $90\text{ kW}$ at $250\text{ rpm}$. Allowable shear stress in shaft $\tau_s = 40\text{ MPa}$, maximum twist $\theta \le 1^\circ$ in $L = 20d$, and allowable bolt shear stress $\tau_b = 30\text{ MPa}$. Take $G = 84\text{ GPa}$.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 \times 90 \times 10^3}{2 \pi \times 250} = 3437.7\text{ N}\cdot\text{m} = 3.4377 \times 10^6\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
1. **Strength Criterion:** $d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = 75.9\text{ mm}$
2. **Rigidity Criterion ($\theta \le 1^\circ$ in $20d$):** $d = \sqrt[3]{\frac{32 T \times 3600}{\pi^2 G}} = 78.1\text{ mm}$

*Select larger standard diameter:* **$d = 80\text{ mm}$**
* Hub outer diameter: $D = 2d = 160\text{ mm}$, Length $L = 1.5d = 120\text{ mm}$.

#### 2. Design for key
For $d = 80\text{ mm}$: $w = 25\text{ mm}, t = 14\text{ mm}, l = L = 120\text{ mm}$.

#### 3. Design for flange
* Pitch Circle Diameter: $D_b = 3d = 240\text{ mm}$
* Flange Thickness: $t_f = 0.5d = 40\text{ mm}$, Outer Diameter $D_1 = 4d = 320\text{ mm}$.

#### 4. Design for bolts
Number of bolts $n = 6$ (for $d = 80\text{ mm}$).
$$d_b = \sqrt{\frac{8 T}{\pi n D_b \tau_b}} = \sqrt{\frac{8 \times 3.4377 \times 10^6}{\pi \times 6 \times 240 \times 30}} = 14.23\text{ mm} \implies \text{Use }\mathbf{\text{M16 bolts}}$$

---

## Example 13.9 (Rigid Flange Coupling — Given Torque)

### Problem Statement
Design a rigid flange coupling to transmit a torque of $250\text{ N}\cdot\text{m}$ using 4 bolts. Permissible stresses: Shaft/Key shear $= 100\text{ MPa}$, Shaft/Key crushing $= 250\text{ MPa}$, Cast iron shear $= 15\text{ MPa}$, Bolt shear $= 100\text{ MPa}$.

---

### Solution

#### 1. Design for hub
$$d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 2.5 \times 10^5}{\pi \times 100}} = 23.35\text{ mm} \implies \mathbf{d = 25\text{ mm}}$$
* Hub outer diameter: $D = 2d = 50\text{ mm}$, Length $L = 1.5d = 37.5\text{ mm} \approx 40\text{ mm}$.

#### 2. Design for key
For $d = 25\text{ mm}$: $w = 8\text{ mm}, t = 7\text{ mm}, l = L = 40\text{ mm}$.

#### 3. Design for flange
* Pitch Circle Diameter: $D_b = 3d = 75\text{ mm}$
* Flange Thickness: $t_f = 0.5d = 12.5\text{ mm} \approx 13\text{ mm}$.

#### 4. Design for bolts
Number of bolts $n = 4$.
$$d_b = \sqrt{\frac{8 T}{\pi n D_b \tau_b}} = \sqrt{\frac{8 \times 2.5 \times 10^5}{\pi \times 4 \times 75 \times 100}} = 4.6\text{ mm} \implies \text{Use }\mathbf{\text{M6 bolts}}$$

---

## Example 13.10 (Flanged Coupling Analysis for Fixed Shaft Size)

### Problem Statement
Two $35\text{ mm}$ shafts transmit $800\text{ N}\cdot\text{m}$ torque at $350\text{ rpm}$ through a flange coupling with 6 bolts on a $125\text{ mm}$ PCD. Safe stresses: Shaft shear $63\text{ MPa}$, Bolt shear $56\text{ MPa}$, CI shear $10\text{ MPa}$, Key shear $46\text{ MPa}$.
Calculate: 1. Diameter of bolts, 2. Thickness of flanges, 3. Key dimensions, 4. Hub length, 5. Power transmitted.

---

### Solution

#### 1. Diameter of bolts
$$T = n \cdot \frac{\pi}{4} d_b^2 \cdot \tau_b \cdot \frac{D_b}{2} \implies 800 \times 10^3 = 6 \times \frac{\pi}{4} d_b^2 \times 56 \times 62.5$$
$$d_b^2 = 48.5\text{ mm}^2 \implies d_b = 6.96\text{ mm} \implies \mathbf{\text{M8 bolts}}$$

#### 2. Thickness of flanges
$$T = \frac{\pi}{2} D^2 t_f \tau_c \quad (D = 2d = 70\text{ mm})$$
$$800 \times 10^3 = \frac{\pi}{2} (70)^2 \times t_f \times 10 \implies \mathbf{t_f = 10.4\text{ mm} \approx 12\text{ mm}}$$

#### 3. Key dimensions
For $d = 35\text{ mm}$: $w = 10\text{ mm}, t = 8\text{ mm}$.
$$l = \frac{2 T}{w \cdot d \cdot \tau_k} = \frac{2 \times 800 \times 10^3}{10 \times 35 \times 46} = 49.7\text{ mm} \implies \mathbf{l = 50\text{ mm}}$$

#### 4. Hub length
$$L = 1.5 d = 1.5 \times 35 = \mathbf{52.5\text{ mm} \approx 55\text{ mm}}$$

#### 5. Power transmitted
$$P = \frac{2 \pi N T}{60} = \frac{2 \pi \times 350 \times 800}{60} = 29321.5\text{ W} = \mathbf{29.32\text{ kW}}$$

---

## Example 13.12 (Bushed-Pin Flexible Coupling)

### Problem Statement
Design a bushed-pin flexible coupling for $32\text{ kW}$ at $960\text{ rpm}$ with $20\%$ overload capacity. Stresses: Shaft/Key/Pin shear $40\text{ MPa}$, Key crushing $80\text{ MPa}$, CI shear $15\text{ MPa}$, Rubber bush bearing pressure $p_b = 0.8\text{ N/mm}^2$.

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 \times 32000}{2 \pi \times 960} = 318.3\text{ N}\cdot\text{m} \implies T_{\max} = 1.2 \times 318.3 = 382\text{ N}\cdot\text{m} = 3.82 \times 10^5\text{ N}\cdot\text{mm}$$

#### 1. Design for pins and rubber bush
* Pitch circle diameter: $D_b = 3.5 d = 140\text{ mm}$ (for $d = 40\text{ mm}$).
* Number of pins: $n = 6$. Load per pin $W = \frac{2 T_{\max}}{n D_b} = \frac{2 \times 3.82 \times 10^5}{6 \times 140} = 909.5\text{ N}$.
* Rubber bush outer diameter $d_2 = 40\text{ mm}$. Length of rubber bush $l_{\text{bush}} = \frac{W}{p_b d_2} = \frac{909.5}{0.8 \times 40} = 28.4\text{ mm} \approx 30\text{ mm}$.
* Pin shank diameter $d_1$: Bending moment $M = W \left(\frac{l_{\text{bush}}}{2} + 5\text{ mm}\right) = 909.5 \times (15 + 5) = 18190\text{ N}\cdot\text{mm}$.
  $$d_1 = \sqrt[3]{\frac{32 M}{\pi \sigma_b}} = \sqrt[3]{\frac{32 \times 18190}{\pi \times 80}} = 13.2\text{ mm} \implies \mathbf{d_1 = 20\text{ mm}}$$

#### 2. Design for hub
$$d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 3.82 \times 10^5}{\pi \times 40}} = 36.5\text{ mm} \implies \mathbf{d = 40\text{ mm}}$$
* Hub outer diameter: $D = 2d = 80\text{ mm}$, Length $L = 1.5d = 60\text{ mm}$.

#### 3. Design for key
For $d = 40\text{ mm}$: $w = 12\text{ mm}, t = 8\text{ mm}, l = L = 60\text{ mm}$.

#### 4. Design for flange
* Flange web thickness: $t_f = 0.5d = 20\text{ mm}$.
* Flange Shear Check: $\tau_{\text{flange}} = \frac{2 T_{\max}}{\pi D^2 t_f} = \frac{2 \times 3.82 \times 10^5}{\pi \times 80^2 \times 20} = 1.9\text{ MPa} \le 15\text{ MPa} \quad \text{(Safe)}$
