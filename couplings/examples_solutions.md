# Shaft Couplings — Solved Examples Solutions

Fully worked, step-by-step solutions for all examples in [examples.md](examples.md). Standard key proportions are referenced from [Table 13.1](../keys/table_13_1_standard_key_proportions.md) and thread dimensions from [Table 11.1](../11.%20Screwed%20Joints/table_11_1_standard_screw_threads.md).

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

From standard [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for a $55\text{ mm}$ diameter shaft:
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
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 30 \times 10^3}{2 \pi \times 100} = 2864.8\text{ N}\cdot\text{m} \approx 2865 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for shaft
$$d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 2.8648 \times 10^6}{\pi \times 40}} = 71.45\text{ mm} \implies \mathbf{d = 75\text{ mm}}$$

#### 2. Design for muff
* Outer diameter of muff: $D = 2d + 13\text{ mm} = 2(75) + 13 = 163\text{ mm} \approx 165\text{ mm}$
* Total length of muff: $L = 3.5d = 3.5 \times 75 = 262.5\text{ mm} \approx 265\text{ mm}$

#### 3. Design for key
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 75\text{ mm}$: $w = 22\text{ mm}$, $t = 14\text{ mm}$, $l = L = 265\text{ mm}$.
* Shear stress check: $\tau_k = \frac{2 T}{w \cdot d \cdot L} = \frac{2 \times 2.8648 \times 10^6}{22 \times 75 \times 265} = 13.1\text{ MPa} \le 40\text{ MPa} \quad \text{(Safe)}$

#### 4. Design for bolts
Let $d_b$ be the root or core diameter of the bolt.
Torque transmitted by friction between muff bore and shaft surface:
$$T = \frac{\pi^2}{16} \cdot \mu \cdot d \cdot \left(\frac{\pi}{4} d_b^2 \cdot \sigma_{tb}\right) \cdot n$$
$$2865 \times 10^3 = \frac{\pi^2}{16} \times 0.3 \times 75 \times \left(\frac{\pi}{4} d_b^2 \times 70\right) \times 6 = 5830 \, d_b^2$$
$$d_b^2 = \frac{2865 \times 10^3}{5830} = 492 \implies d_b = \mathbf{22.2\text{ mm}}$$

From [Table 11.1](../11.%20Screwed%20Joints/table_11_1_standard_screw_threads.md) (Design dimensions of screw threads for coarse series), the standard core diameter exceeding $22.2\text{ mm}$ is $d_c = 23.320\text{ mm}$, corresponding to nominal bolt diameter $d = 27\text{ mm}$.

*Selection:* **Select M 27 bolts** ($d_c = 23.32\text{ mm} > 22.2\text{ mm}$).

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
$$T_{\text{mean}} = \frac{60 P}{2 \pi N} = \frac{60 \times 15 \times 10^3}{2 \pi \times 900} = 159.13\text{ N}\cdot\text{m}$$
$$T_{\max} = 1.35 \times 159.13 = 215\text{ N}\cdot\text{m} = 215 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
Using torsional shear strength for solid shaft:
$$\tau_s = \frac{16 T_{\max}}{\pi d^3} \implies 215 \times 10^3 = \frac{\pi}{16} \times 40 \times d^3 = 7.86 d^3$$
$$d^3 = \frac{215 \times 10^3}{7.86} = 27.4 \times 10^3 \implies d = 30.1\text{ mm} \quad \text{say } \mathbf{d = 35\text{ mm}}$$

* Outer diameter of hub: $D = 2d = 2 \times 35 = 70\text{ mm}$
* Length of hub: $L = 1.5d = 1.5 \times 35 = 52.5\text{ mm}$

##### Check Induced Shear Stress in Cast Iron Hub (Hollow Shaft):
$$T_{\max} = \frac{\pi}{16} \tau_c \left(\frac{D^4 - d^4}{D}\right) \implies 215 \times 10^3 = \frac{\pi}{16} \tau_c \left(\frac{70^4 - 35^4}{70}\right) = 63147 \tau_c$$
$$\tau_c = \frac{215 \times 10^3}{63147} = \mathbf{3.4\text{ N/mm}^2 = 3.4\text{ MPa}} \le 8\text{ MPa} \quad \text{(Safe)}$$

#### 2. Design for key
Since crushing stress is twice shear stress ($\sigma_{ck} = 2\tau_k = 80 = 2 \times 40$), a **square key** is used.
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 35\text{ mm}$:
* Width of key: $w = 12\text{ mm}$
* Thickness of key (square key): $t = w = 12\text{ mm}$
* Length of key: $l = L = 52.5\text{ mm}$

##### Verification of Key Stresses:
1. **Shearing of the key:**
   $$T_{\max} = l \cdot w \cdot \tau_k \cdot \frac{d}{2} \implies 215 \times 10^3 = 52.5 \times 12 \times \tau_k \times \frac{35}{2} = 11025 \tau_k$$
   $$\tau_k = \frac{215 \times 10^3}{11025} = \mathbf{19.5\text{ N/mm}^2 = 19.5\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

2. **Crushing of the key:**
   $$T_{\max} = l \cdot \frac{t}{2} \cdot \sigma_{ck} \cdot \frac{d}{2} \implies 215 \times 10^3 = 52.5 \times \frac{12}{2} \times \sigma_{ck} \times \frac{35}{2} = 5512.5 \sigma_{ck}$$
   $$\sigma_{ck} = \frac{215 \times 10^3}{5512.5} = \mathbf{39\text{ N/mm}^2 = 39\text{ MPa}} \le 80\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for flange
* Flange web thickness: $t_f = 0.5d = 0.5 \times 35 = 17.5\text{ mm}$

##### Check Induced Shear Stress in Flange:
$$T_{\max} = \frac{\pi}{2} D^2 t_f \tau_c \implies 215 \times 10^3 = \frac{\pi}{2} (70)^2 \times 17.5 \times \tau_c = 134713 \tau_c$$
$$\tau_c = \frac{215 \times 10^3}{134713} = \mathbf{1.6\text{ N/mm}^2 = 1.6\text{ MPa}} \le 8\text{ MPa} \quad \text{(Safe)}$$

#### 4. Design for bolts
Let $d_1$ be the nominal diameter of bolts.
* Number of bolts: $n = 3$ (since $d = 35\text{ mm} \le 40\text{ mm}$)
* Pitch circle diameter: $D_1 = 3d = 3 \times 35 = 105\text{ mm}$

$$T_{\max} = n \cdot \frac{\pi}{4} d_1^2 \cdot \tau_b \cdot \frac{D_1}{2} \implies 215 \times 10^3 = 3 \times \frac{\pi}{4} d_1^2 \times 40 \times \frac{105}{2} = 4950 (d_1)^2$$
$$(d_1)^2 = \frac{215 \times 10^3}{4950} = 43.43 \implies d_1 = 6.6\text{ mm}$$

Assuming coarse threads, select the nearest standard bolt size: **Use M 8 bolts**.

##### Other Flange Proportions:
* Outer diameter of flange: $D_2 = 4d = 4 \times 35 = 140\text{ mm}$
* Thickness of protective circumferential flange: $t_p = 0.25d = 0.25 \times 35 = 8.75\text{ mm} \approx 10\text{ mm}$

---

## Example 13.7 (Protective Flange Coupling)

### Problem Statement
Design a protective type of cast iron flange coupling for a steel shaft transmitting $15\text{ kW}$ at $200\text{ rpm}$ with $\tau_s = 40\text{ MPa}$, $\tau_b = 30\text{ MPa}$, $\tau_k = 40\text{ MPa}$, $\sigma_{ck} = 80\text{ MPa}$, $T_{\max} = 1.25 T_{\text{mean}}$, and $\tau_c = 14\text{ MPa}$.

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 P}{2 \pi N} = \frac{60 \times 15 \times 10^3}{2 \pi \times 200} = 716\text{ N}\cdot\text{m} = 716 \times 10^3\text{ N}\cdot\text{mm}$$
$$T_{\max} = 1.25 T_{\text{mean}} = 1.25 \times 716 \times 10^3 = 895 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
Using torsional shear strength for solid shaft:
$$\tau_s = \frac{16 T_{\max}}{\pi d^3} \implies 895 \times 10^3 = \frac{\pi}{16} \times 40 \times d^3 = 7.86 d^3$$
$$d^3 = \frac{895 \times 10^3}{7.86} = 113868 \implies d = 48.4\text{ mm} \quad \text{say } \mathbf{d = 50\text{ mm}}$$

* Outer diameter of hub: $D = 2d = 2 \times 50 = 100\text{ mm}$
* Length of hub: $L = 1.5d = 1.5 \times 50 = 75\text{ mm}$

##### Check Induced Shear Stress in Cast Iron Hub (Hollow Shaft):
$$T_{\max} = \frac{\pi}{16} \tau_c \left(\frac{D^4 - d^4}{D}\right) \implies 895 \times 10^3 = \frac{\pi}{16} \tau_c \left(\frac{100^4 - 50^4}{100}\right) = 184100 \tau_c$$
$$\tau_c = \frac{895 \times 10^3}{184100} = \mathbf{4.86\text{ N/mm}^2 = 4.86\text{ MPa}} \le 14\text{ MPa} \quad \text{(Safe)}$$

#### 2. Design for key
Since crushing stress is twice shear stress ($\sigma_{ck} = 2\tau_k = 80 = 2 \times 40$), a **square key** is used.
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 50\text{ mm}$:
* Width of key: $w = 16\text{ mm}$
* Thickness of key (square key): $t = w = 16\text{ mm}$
* Length of key: $l = L = 75\text{ mm}$

##### Verification of Key Stresses:
1. **Shearing of the key:**
   $$T_{\max} = l \cdot w \cdot \tau_k \cdot \frac{d}{2} \implies 895 \times 10^3 = 75 \times 16 \times \tau_k \times \frac{50}{2} = 30 \times 10^3 \tau_k$$
   $$\tau_k = \frac{895 \times 10^3}{30 \times 10^3} = \mathbf{29.8\text{ N/mm}^2 = 29.8\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

2. **Crushing of the key:**
   $$T_{\max} = l \cdot \frac{t}{2} \cdot \sigma_{ck} \cdot \frac{d}{2} \implies 895 \times 10^3 = 75 \times \frac{16}{2} \times \sigma_{ck} \times \frac{50}{2} = 15 \times 10^3 \sigma_{ck}$$
   $$\sigma_{ck} = \frac{895 \times 10^3}{15 \times 10^3} = \mathbf{59.6\text{ N/mm}^2 = 59.6\text{ MPa}} \le 80\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for flange
* Flange web thickness: $t_f = 0.5d = 0.5 \times 50 = 25\text{ mm}$

##### Check Induced Shear Stress in Flange:
$$T_{\max} = \frac{\pi}{2} D^2 t_f \tau_c \implies 895 \times 10^3 = \frac{\pi}{2} (100)^2 \times 25 \times \tau_c = 392750 \tau_c$$
$$\tau_c = \frac{895 \times 10^3}{392750} = \mathbf{2.5\text{ N/mm}^2 = 2.5\text{ MPa}} \le 14\text{ MPa} \quad \text{(Safe)}$$

#### 4. Design for bolts
Let $d_1$ be the nominal diameter of bolts.
* Number of bolts: $n = 4$ (for $d = 50\text{ mm}$)
* Pitch circle diameter: $D_1 = 3d = 3 \times 50 = 150\text{ mm}$

$$T_{\max} = n \cdot \frac{\pi}{4} d_1^2 \cdot \tau_b \cdot \frac{D_1}{2} \implies 895 \times 10^3 = 4 \times \frac{\pi}{4} d_1^2 \times 30 \times \frac{150}{2} = 7070 (d_1)^2$$
$$(d_1)^2 = \frac{895 \times 10^3}{7070} = 126.6 \implies d_1 = 11.25\text{ mm}$$

Assuming coarse threads, select nearest standard bolt size: **Use M 12 bolts**.

##### Other Flange Proportions:
* Outer diameter of flange: $D_2 = 4d = 4 \times 50 = 200\text{ mm}$
* Thickness of protective circumferential flange: $t_p = 0.25d = 0.25 \times 50 = 12.5\text{ mm}$

---

## Example 13.8 (Flange Coupling with Rigidity Constraint)

### Problem Statement
Design and draw a cast iron flange coupling for a mild steel shaft transmitting $90\text{ kW}$ at $250\text{ rpm}$. The allowable shear stress in the shaft is $40\text{ MPa}$ and the angle of twist is not to exceed $1^\circ$ in a length of $20$ diameters. The allowable shear stress in the coupling bolts is $30\text{ MPa}$.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 90 \times 10^3}{2 \pi \times 250} = 3440\text{ N}\cdot\text{m} = 3440 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Shaft Diameter ($d$)

##### (a) Considering Strength of Shaft:
$$T = \frac{\pi}{16} \tau_s d^3 \implies 3440 \times 10^3 = \frac{\pi}{16} \times 40 \times d^3 = 7.86 d^3$$
$$d^3 = \frac{3440 \times 10^3}{7.86} = 0.438 \times 10^6 \implies d = 76\text{ mm}$$

##### (b) Considering Rigidity of Shaft ($\theta = 1^\circ = 0.0175\text{ rad}$ in $L = 20d$, $G = 84\text{ kN/mm}^2$):
$$\frac{T}{J} = \frac{G \theta}{L} \implies \frac{3440 \times 10^3}{\frac{\pi}{32} d^4} = \frac{84 \times 10^3 \times 0.0175}{20 d}$$
$$d^3 = \frac{35 \times 10^6}{73.5} = 0.476 \times 10^6 \implies d = 78\text{ mm}$$

Taking the larger of the two values: $d = 78\text{ mm} \quad \text{say } \mathbf{d = 80\text{ mm}}$

#### 2. Design for hub
* Outer diameter of hub: $D = 2d = 2 \times 80 = 160\text{ mm}$
* Length of hub: $L = 1.5d = 1.5 \times 80 = 120\text{ mm}$

##### Check Induced Shear Stress in Cast Iron Hub (Hollow Shaft):
$$T = \frac{\pi}{16} \tau_c \left(\frac{D^4 - d^4}{D}\right) \implies 3440 \times 10^3 = \frac{\pi}{16} \tau_c \left(\frac{160^4 - 80^4}{160}\right) = 754 \times 10^3 \tau_c$$
$$\tau_c = \frac{3440 \times 10^3}{754 \times 10^3} = \mathbf{4.56\text{ N/mm}^2 = 4.56\text{ MPa}} \le 14\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for key
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 80\text{ mm}$:
* Width of key: $w = 25\text{ mm}$
* Thickness of key: $t = 14\text{ mm}$
* Length of key: $l = L = 120\text{ mm}$

##### Check Induced Shear Stress in Key:
$$T = l \cdot w \cdot \tau_k \cdot \frac{d}{2} \implies 3440 \times 10^3 = 120 \times 25 \times \tau_k \times \frac{80}{2} = 120 \times 10^3 \tau_k$$
$$\tau_k = \frac{3440 \times 10^3}{120 \times 10^3} = \mathbf{28.7\text{ N/mm}^2 = 28.7\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

#### 4. Design for flange
* Flange web thickness: $t_f = 0.5d = 0.5 \times 80 = 40\text{ mm}$

##### Check Induced Shear Stress in Flange:
$$T = \frac{\pi}{2} D^2 t_f \tau_c \implies 3440 \times 10^3 = \frac{\pi}{2} (160)^2 \times 40 \times \tau_c = 1608 \times 10^3 \tau_c$$
$$\tau_c = \frac{3440 \times 10^3}{1608 \times 10^3} = \mathbf{2.14\text{ N/mm}^2 = 2.14\text{ MPa}} \le 14\text{ MPa} \quad \text{(Safe)}$$

#### 5. Design for bolts
Let $d_1$ be the nominal diameter of bolts.
* Number of bolts: $n = 4$
* Pitch circle diameter: $D_1 = 3d = 3 \times 80 = 240\text{ mm}$

$$T = n \cdot \frac{\pi}{4} d_1^2 \cdot \tau_b \cdot \frac{D_1}{2} \implies 3440 \times 10^3 = 4 \times \frac{\pi}{4} d_1^2 \times 30 \times \frac{240}{2} = 11311 (d_1)^2$$
$$(d_1)^2 = \frac{3440 \times 10^3}{11311} = 304 \implies d_1 = 17.4\text{ mm}$$

Assuming coarse threads, select standard nominal bolt diameter: **Use M 18 bolts**.

##### Other Flange Proportions:
* Outer diameter of flange: $D_2 = 4d = 4 \times 80 = 320\text{ mm}$
* Thickness of protective circumferential flange: $t_p = 0.25d = 0.25 \times 80 = 20\text{ mm}$

---

## Example 13.9 (Rigid Flange Coupling — Given Torque)

### Problem Statement
Design a cast iron flange coupling of the protective type to transmit a torque of $250\text{ N}\cdot\text{m}$ using 4 bolts. Permissible stresses: Shaft/Key shear $= 100\text{ MPa}$, Shaft/Key crushing $= 250\text{ MPa}$, Cast iron shear $= 200\text{ MPa}$, Bolt shear $= 100\text{ MPa}$.

---

### Solution

#### Design Torque ($T$)
$$T = 250\text{ N}\cdot\text{m} = 250 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
Using torsional shear strength for solid shaft:
$$\tau_s = \frac{16 T}{\pi d^3} \implies 250 \times 10^3 = \frac{\pi}{16} \times 100 \times d^3 = 19.64 d^3$$
$$d^3 = \frac{250 \times 10^3}{19.64} = 12729 \implies d = 23.35\text{ mm} \quad \text{say } \mathbf{d = 25\text{ mm}}$$

* Outer diameter of hub: $D = 2d = 2 \times 25 = 50\text{ mm}$
* Length of hub: $L = 1.5d = 1.5 \times 25 = 37.5\text{ mm}$

##### Check Induced Shear Stress in Cast Iron Hub (Hollow Shaft):
$$T = \frac{\pi}{16} \tau_c \left(\frac{D^4 - d^4}{D}\right) \implies 250 \times 10^3 = \frac{\pi}{16} \tau_c \left(\frac{50^4 - 25^4}{50}\right) = 23013 \tau_c$$
$$\tau_c = \frac{250 \times 10^3}{23013} = \mathbf{10.86\text{ N/mm}^2 = 10.86\text{ MPa}} \le 200\text{ MPa} \quad \text{(Safe)}$$

#### 2. Design for key
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 25\text{ mm}$:
* Width of key: $w = 10\text{ mm}$
* Thickness of key: $t = 8\text{ mm}$
* Length of key: $l = L = 37.5\text{ mm}$

##### Verification of Key Stresses:
1. **Shearing of the key:**
   $$T = l \cdot w \cdot \tau_k \cdot \frac{d}{2} \implies 250 \times 10^3 = 37.5 \times 10 \times \tau_k \times \frac{25}{2} = 4688 \tau_k$$
   $$\tau_k = \frac{250 \times 10^3}{4688} = \mathbf{53.3\text{ N/mm}^2 = 53.3\text{ MPa}} \le 100\text{ MPa} \quad \text{(Safe)}$$

2. **Crushing of the key:**
   $$T = l \cdot \frac{t}{2} \cdot \sigma_{ck} \cdot \frac{d}{2} \implies 250 \times 10^3 = 37.5 \times \frac{8}{2} \times \sigma_{ck} \times \frac{25}{2} = 1875 \sigma_{ck}$$
   $$\sigma_{ck} = \frac{250 \times 10^3}{1875} = \mathbf{133.3\text{ N/mm}^2 = 133.3\text{ MPa}} \le 250\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for flange
* Flange web thickness: $t_f = 0.5d = 0.5 \times 25 = 12.5\text{ mm}$

##### Check Induced Shear Stress in Flange:
$$T = \frac{\pi}{2} D^2 t_f \tau_c \implies 250 \times 10^3 = \frac{\pi}{2} (50)^2 \times 12.5 \times \tau_c = 49094 \tau_c$$
$$\tau_c = \frac{250 \times 10^3}{49094} = \mathbf{5.1\text{ N/mm}^2 = 5.1\text{ MPa}} \le 200\text{ MPa} \quad \text{(Safe)}$$

#### 4. Design for bolts
Let $d_1$ be the nominal diameter of bolts.
* Number of bolts: $n = 4$
* Pitch circle diameter: $D_1 = 3d = 3 \times 25 = 75\text{ mm}$

$$T = n \cdot \frac{\pi}{4} d_1^2 \cdot \tau_b \cdot \frac{D_1}{2} \implies 250 \times 10^3 = 4 \times \frac{\pi}{4} d_1^2 \times 100 \times \frac{75}{2} = 11780 (d_1)^2$$
$$(d_1)^2 = \frac{250 \times 10^3}{11780} = 21.22 \implies d_1 = 4.6\text{ mm}$$

Assuming coarse threads, select standard nominal bolt diameter: **Use M 6 bolts**.

##### Other Flange Proportions:
* Outer diameter of flange: $D_2 = 4d = 4 \times 25 = 100\text{ mm}$
* Thickness of protective circumferential flange: $t_p = 0.25d = 0.25 \times 25 = 6.25\text{ mm}$

---

## Example 13.10 (Flanged Coupling Analysis for Fixed Shaft Size)

### Problem Statement
Two $35\text{ mm}$ shafts transmit $800\text{ N}\cdot\text{m}$ torque at $350\text{ rpm}$ through a flange coupling with 6 bolts on a $125\text{ mm}$ PCD. Safe stresses: Shaft shear $63\text{ MPa}$, Bolt shear $56\text{ MPa}$, CI shear $10\text{ MPa}$, Key shear $46\text{ MPa}$.
Calculate: 1. Diameter of bolts, 2. Thickness of flanges, 3. Key dimensions, 4. Hub length, 5. Power transmitted.

---

### Solution

#### Given Data
$d = 35\text{ mm}$, $n = 6$, $D_1 = 125\text{ mm}$, $T = 800\text{ N}\cdot\text{m} = 800 \times 10^3\text{ N}\cdot\text{mm}$, $N = 350\text{ rpm}$, $\tau_s = 63\text{ MPa}$, $\tau_b = 56\text{ MPa}$, $\tau_c = 10\text{ MPa}$, $\tau_k = 46\text{ MPa}$.

---

#### 1. Diameter of bolts
Let $d_1$ be the nominal/outside diameter of bolts.
$$T = n \cdot \frac{\pi}{4} d_1^2 \cdot \tau_b \cdot \frac{D_1}{2} \implies 800 \times 10^3 = 6 \times \frac{\pi}{4} d_1^2 \times 56 \times \frac{125}{2} = 16495 (d_1)^2$$
$$(d_1)^2 = \frac{800 \times 10^3}{16495} = 48.5 \implies d_1 = 6.96\text{ mm} \quad \text{say } \mathbf{8\text{ mm}} \implies \text{Use }\mathbf{\text{M 8 bolts}}$$

#### 2. Thickness of flanges ($t_f$)
$D = 2d = 2 \times 35 = 70\text{ mm}$
$$T = \frac{\pi}{2} D^2 t_f \tau_c \implies 800 \times 10^3 = \frac{\pi}{2} (70)^2 \times t_f \times 10 = 76980 t_f$$
$$t_f = \frac{800 \times 10^3}{76980} = 10.4\text{ mm} \quad \text{say } \mathbf{12\text{ mm}}$$

#### 3. Key dimensions ($w, t, l$)
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 35\text{ mm}$:
* Width of key: $w = \mathbf{12\text{ mm}}$
* Thickness of key: $t = \mathbf{8\text{ mm}}$

Trial length of key equal to standard hub length ($L = 1.5d = 52.5\text{ mm}$): $l = 52.5\text{ mm}$.

##### Check Induced Shear Stress in Key for Trial Length ($l = 52.5\text{ mm}$):
$$T = l \cdot w \cdot \tau_k \cdot \frac{d}{2} \implies 800 \times 10^3 = 52.5 \times 12 \times \tau_k \times \frac{35}{2} = 11025 \tau_k$$
$$\tau_k = \frac{800 \times 10^3}{11025} = 72.5\text{ N/mm}^2 > 46\text{ MPa} \quad \text{(Unsafe!)}$$

Since induced shear stress ($72.5\text{ MPa}$) exceeds safe limit ($46\text{ MPa}$), recalculate key length for allowable $\tau_k = 46\text{ MPa}$:
$$800 \times 10^3 = l \times 12 \times 46 \times \frac{35}{2} = 9660 l$$
$$l = \frac{800 \times 10^3}{9660} = 82.8\text{ mm} \quad \text{say } \mathbf{l = 85\text{ mm}}$$

#### 4. Hub length ($L$)
Since key length is taken equal to hub length:
$$\mathbf{L = l = 85\text{ mm}}$$

#### 5. Power transmitted ($P$)
$$P = \frac{2 \pi N T}{60} = \frac{2 \pi \times 350 \times 800}{60} = 29325\text{ W} = \mathbf{29.325\text{ kW}}$$

---

## Example 13.12 (Bushed-Pin Flexible Coupling)

### Problem Statement
Design a bushed-pin flexible coupling for $32\text{ kW}$ at $960\text{ rpm}$ with $20\%$ overload capacity. Stresses: Shaft/Key/Pin shear $40\text{ MPa}$, Key crushing $80\text{ MPa}$, CI shear $15\text{ MPa}$, Rubber bush bearing pressure $p_b = 0.8\text{ N/mm}^2$.

---

### Solution

#### Given Data
$P = 32\text{ kW} = 32 \times 10^3\text{ W}$, $N = 960\text{ rpm}$, $T_{\max} = 1.2 T_{\text{mean}}$, $\tau_s = \tau_k = \tau_b = 40\text{ MPa}$, $\sigma_{ck} = 80\text{ MPa}$, $\tau_c = 15\text{ MPa}$, $p_b = 0.8\text{ N/mm}^2$.

---

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 P}{2 \pi N} = \frac{60 \times 32 \times 10^3}{2 \pi \times 960} = 318.3\text{ N}\cdot\text{m}$$
$$T_{\max} = 1.2 T_{\text{mean}} = 1.2 \times 318.3 = 382\text{ N}\cdot\text{m} = 382 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for pins and rubber bush
Using torsional shear strength for solid shaft:
$$\tau_s = \frac{16 T_{\max}}{\pi d^3} \implies 382 \times 10^3 = \frac{\pi}{16} \times 40 \times d^3 = 7.86 d^3$$
$$d^3 = \frac{382 \times 10^3}{7.86} = 48.6 \times 10^3 \implies d = 36.5\text{ mm} \quad \text{say } \mathbf{d = 40\text{ mm}}$$

* Number of pins: $n = 6$
* Pin shank diameter (incorporating bending allowance): $\mathbf{d_1 = 20\text{ mm}}$
* Overall diameter of rubber bush ($24\text{ mm enlarged pin} + 2 \times 2\text{ mm brass} + 2 \times 6\text{ mm rubber}$): $\mathbf{d_2 = 40\text{ mm}}$
* Pitch circle diameter of pins:
  $$D_1 = 2d + d_2 + 2(6) = 2(40) + 40 + 12 = \mathbf{132\text{ mm}}$$

##### Length of Bush ($l$) and Bearing Load ($W$):
$$W = p_b \cdot d_2 \cdot l = 0.8 \times 40 \times l = 32 l\text{ N}$$
$$T_{\max} = W \cdot n \cdot \frac{D_1}{2} \implies 382 \times 10^3 = 32l \times 6 \times \frac{132}{2} = 12672 l$$
$$l = \frac{382 \times 10^3}{12672} = 30.1\text{ mm} \quad \text{say } \mathbf{l = 32\text{ mm}}$$
$$W = 32 l = 32 \times 32 = \mathbf{1024\text{ N}}$$

##### Stress Verification in Pin:
1. **Direct Shear Stress:**
   $$\tau = \frac{W}{\frac{\pi}{4} d_1^2} = \frac{1024}{\frac{\pi}{4} (20)^2} = \mathbf{3.26\text{ N/mm}^2}$$

2. **Bending Moment ($M$) & Bending Stress ($\sigma_b$):**
   $$M = W \left(\frac{l}{2} + 5\right) = 1024 \left(\frac{32}{2} + 5\right) = 21504\text{ N}\cdot\text{mm}$$
   $$Z = \frac{\pi}{32} d_1^3 = \frac{\pi}{32} (20)^3 = 785.5\text{ mm}^3$$
   $$\sigma_b = \frac{M}{Z} = \frac{21504}{785.5} = \mathbf{27.4\text{ N/mm}^2}$$

3. **Maximum Principal Stress ($\sigma_{\max}$):**
   $$\sigma_{\max} = \frac{1}{2}\left[\sigma_b + \sqrt{\sigma_b^2 + 4\tau^2}\right] = \frac{1}{2}\left[27.4 + \sqrt{(27.4)^2 + 4(3.26)^2}\right] = 13.7 + 14.1 = \mathbf{27.8\text{ N/mm}^2} \quad \text{(Safe)}$$

4. **Maximum Shear Stress ($\tau_{\max}$):**
   $$\tau_{\max} = \frac{1}{2}\sqrt{\sigma_b^2 + 4\tau^2} = \frac{1}{2}\sqrt{(27.4)^2 + 4(3.26)^2} = \mathbf{14.1\text{ N/mm}^2} \le 40\text{ MPa} \quad \text{(Safe)}$$

#### 2. Design for hub
* Outer diameter of hub: $D = 2d = 2 \times 40 = 80\text{ mm}$
* Length of hub: $L = 1.5d = 1.5 \times 40 = 60\text{ mm}$

##### Check Induced Shear Stress in Cast Iron Hub (Hollow Shaft):
$$T_{\max} = \frac{\pi}{16} \tau_c \left(\frac{D^4 - d^4}{D}\right) \implies 382 \times 10^3 = \frac{\pi}{16} \tau_c \left(\frac{80^4 - 40^4}{80}\right) = 94.26 \times 10^3 \tau_c$$
$$\tau_c = \frac{382 \times 10^3}{94.26 \times 10^3} = \mathbf{4.05\text{ N/mm}^2 = 4.05\text{ MPa}} \le 15\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for key
Since crushing stress is twice shear stress ($\sigma_{ck} = 2\tau_k = 80 = 2 \times 40$), a **square key** is used.
From [Table 13.1](../keys/table_13_1_standard_key_proportions.md) for $d = 40\text{ mm}$:
* Width of key: $w = 14\text{ mm}$
* Thickness of key (square key): $t = w = 14\text{ mm}$
* Length of key: $l = L = 60\text{ mm}$

##### Verification of Key Stresses:
1. **Shearing of the key:**
   $$T_{\max} = l \cdot w \cdot \tau_k \cdot \frac{d}{2} \implies 382 \times 10^3 = 60 \times 14 \times \tau_k \times \frac{40}{2} = 16800 \tau_k$$
   $$\tau_k = \frac{382 \times 10^3}{16800} = \mathbf{22.74\text{ N/mm}^2 = 22.74\text{ MPa}} \le 40\text{ MPa} \quad \text{(Safe)}$$

2. **Crushing of the key:**
   $$T_{\max} = l \cdot \frac{t}{2} \cdot \sigma_{ck} \cdot \frac{d}{2} \implies 382 \times 10^3 = 60 \times \frac{14}{2} \times \sigma_{ck} \times \frac{40}{2} = 8400 \sigma_{ck}$$
   $$\sigma_{ck} = \frac{382 \times 10^3}{8400} = \mathbf{45.48\text{ N/mm}^2 = 45.48\text{ MPa}} \le 80\text{ MPa} \quad \text{(Safe)}$$

#### 4. Design for flange
* Flange web thickness: $t_f = 0.5d = 0.5 \times 40 = 20\text{ mm}$

##### Check Induced Shear Stress in Flange:
$$T_{\max} = \frac{\pi}{2} D^2 t_f \tau_c \implies 382 \times 10^3 = \frac{\pi}{2} (80)^2 \times 20 \times \tau_c = 201 \times 10^3 \tau_c$$
$$\tau_c = \frac{382 \times 10^3}{201 \times 10^3} = \mathbf{1.9\text{ N/mm}^2 = 1.9\text{ MPa}} \le 15\text{ MPa} \quad \text{(Safe)}$$
