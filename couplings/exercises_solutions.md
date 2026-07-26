# Shaft Couplings — Practice Exercises Solutions

Fully worked, step-by-step solutions for all practice exercises in [exercises.md](exercises.md).

---

## Exercise 4 (Muff Coupling)

### Problem Statement
Design a muff coupling to connect two shafts transmitting $40\text{ kW}$ at $120\text{ rpm}$. The permissible shear and crushing stress for the shaft and key material (mild steel) are $30\text{ MPa}$ and $80\text{ MPa}$ respectively. The material of muff is cast iron with permissible shear stress of $15\text{ MPa}$. Assume that the maximum torque transmitted is $25\%$ greater than the mean torque.

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 P}{2 \pi N} = \frac{60 \times 40 \times 10^3}{2 \pi \times 120} = 3183.1\text{ N}\cdot\text{m}$$
$$T_{\max} = 1.25 \times T_{\text{mean}} = 1.25 \times 3183.1 = 3978.88\text{ N}\cdot\text{m} = 3.9789 \times 10^6\text{ N}\cdot\text{mm}$$

#### 1. Design for shaft
$$d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 3.9789 \times 10^6}{\pi \times 30}} = \sqrt[3]{6.75 \times 10^5} = 87.7\text{ mm} \implies \mathbf{d = 90\text{ mm}}$$

#### 2. Design for sleeve (muff)
* Outer diameter of muff: $D = 2d + 13\text{ mm} = 2(90) + 13 = 193\text{ mm} \implies \mathbf{D = 195\text{ mm}}$
* Length of muff: $L = 3.5 d = 3.5 \times 90 = \mathbf{315\text{ mm}}$
* Muff Shear Verification:
  $$\tau_c = \frac{16 T_{\max} D}{\pi (D^4 - d^4)} = \frac{16 \times 3.9789 \times 10^6 \times 195}{\pi (195^4 - 90^4)} = 2.86\text{ MPa} \le 15\text{ MPa} \quad \text{(Safe)}$$

#### 3. Design for key
For $d = 90\text{ mm}$: $w = 28\text{ mm}$, $t = 16\text{ mm}$, Length per shaft $l = L/2 = 157.5\text{ mm}$.
* Shear Check: $\tau_k = \frac{2 T_{\max}}{w \cdot d \cdot l} = \frac{2 \times 3.9789 \times 10^6}{28 \times 90 \times 157.5} = 10.0\text{ MPa} \le 30\text{ MPa} \quad \text{(Safe)}$
* Crushing Check: $\sigma_{ck} = \frac{4 T_{\max}}{t \cdot d \cdot l} = \frac{4 \times 3.9789 \times 10^6}{16 \times 90 \times 157.5} = 35.1\text{ MPa} \le 80\text{ MPa} \quad \text{(Safe)}$

---

## Exercise 5 (Compression / Clamp Coupling)

### Problem Statement
Design a compression coupling for a shaft to transmit $1300\text{ N}\cdot\text{m}$. The allowable shear stress for the shaft and key is $40\text{ MPa}$ and the number of bolts connecting the two halves are $4$. The permissible tensile stress for the bolts material is $70\text{ MPa}$. The coefficient of friction between the muff and the shaft surface may be taken as $0.3$.

---

### Solution

#### Design Torque ($T$)
$$T = 1300\text{ N}\cdot\text{m} = 1.3 \times 10^6\text{ N}\cdot\text{mm}$$

#### 1. Design for shaft
$$d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 1.3 \times 10^6}{\pi \times 40}} = 54.9\text{ mm} \implies \mathbf{d = 55\text{ mm}}$$

#### 2. Design for muff
* Outer diameter: $D = 2d + 13\text{ mm} = 2(55) + 13 = 123\text{ mm} \implies \mathbf{D = 125\text{ mm}}$
* Total length: $L = 3.5 d = 3.5 \times 55 = \mathbf{192.5\text{ mm}}$

#### 3. Design for key
For $d = 55\text{ mm}$: $w = 18\text{ mm}, t = 11\text{ mm}, l = 192.5\text{ mm}$.

#### 4. Design for bolts
$$d_b = \sqrt{\frac{8 T}{\pi^2 \mu n \sigma_{tb} d}} = \sqrt{\frac{8 \times 1.3 \times 10^6}{\pi^2 \times 0.3 \times 4 \times 70 \times 55}} = \sqrt{228} = 15.1\text{ mm} \implies \mathbf{d_b = 24\text{ mm}\text{ (M24)}}$$

---

## Exercise 6 (Cast Iron Protective Flange Coupling)

### Problem Statement
Design a cast iron protective flange coupling to connect two shafts in order to transmit $7.5\text{ kW}$ at $720\text{ rpm}$. Permissible stresses: Shaft/Bolt/Key shear $= 33\text{ MPa}$, Crushing $= 60\text{ MPa}$, CI shear $= 15\text{ MPa}$.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 7.5 \times 10^3}{2 \pi \times 720} = 99.47\text{ N}\cdot\text{m} = 99.47 \times 10^3\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
$$d = \sqrt[3]{\frac{16 T}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 99.47 \times 10^3}{\pi \times 33}} = 24.85\text{ mm} \implies \mathbf{d = 25\text{ mm}}$$
* Hub Diameter: $D = 2d = 2(25) = \mathbf{50\text{ mm}}$

#### 2. Design for key
For $d = 25\text{ mm}$: $w = 8\text{ mm}, t = 7\text{ mm}, l = 37.5\text{ mm}$.

#### 3. Design for flange
* Flange Thickness: $t_f = 0.5d = 12.5\text{ mm}$.

#### 4. Design for bolts
* Number of bolts $n = 3$, $d_b = 6\text{ mm}$ (M6).

---

## Exercise 7 (Rigid Protective Flange Coupling with Overload)

### Problem Statement
Two shafts of plain carbon steel are connected by a rigid protective flange coupling running at $500\text{ rpm}$ transmitting $25\text{ kW}$ with $25\%$ overload capacity. Permissible stresses: Shaft tensile $= 60\text{ MPa}$, shear $= 35\text{ MPa}$; Key compressive $= 60\text{ MPa}$; Bolts ($6$ nos) shear $= 28\text{ MPa}$; Flange CI shear $= 12\text{ MPa}$.

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 \times 25 \times 10^3}{2 \pi \times 500} = 477.46\text{ N}\cdot\text{m} \implies T_{\max} = 1.25 \times 477.46 = 596.8\text{ N}\cdot\text{m} = 5.968 \times 10^5\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
$$d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}} = \sqrt[3]{\frac{16 \times 5.968 \times 10^5}{\pi \times 35}} = 44.28\text{ mm} \implies \mathbf{d = 45\text{ mm}}$$
* Hub Diameter: $D = 2d = 2(45) = \mathbf{90\text{ mm}}$

#### 2. Design for key
For $d = 45\text{ mm}$: $w = 14\text{ mm}, t = 9\text{ mm}, l = 67.5\text{ mm}$.

#### 3. Design for flange
* Flange Thickness: $t_f = 0.5d = 22.5\text{ mm}$.

#### 4. Design for bolts
* Bolts ($n = 6$): $d_b = 10\text{ mm}$ (M10).

---

## Exercise 8 (Diesel Engine Flange Coupling)

### Problem Statement
Design a shaft and flange for a Diesel engine transmitting $75\text{ kW}$ at $200\text{ rpm}$. Allowable shaft shear $= 40\text{ MPa}$, max twist $= 1^\circ$ in $30d$, $T_{\max} = 1.25 T_{\text{mean}}$, $D_b = 3d$, bolt shear $= 20\text{ MPa}$.

---

### Solution

#### Design Torque ($T_{\max}$)
$$T_{\text{mean}} = \frac{60 \times 75000}{2 \pi \times 200} = 3581\text{ N}\cdot\text{m} \implies T_{\max} = 1.25 \times 3581 = 4476\text{ N}\cdot\text{m} = 4.476 \times 10^6\text{ N}\cdot\text{mm}$$

#### 1. Design for hub
1. **Strength:** $d = 82.9\text{ mm}$
2. **Rigidity ($\theta = 1^\circ$ in $30d$):** $d = \sqrt[3]{\frac{32 T_{\max} \times 5400}{\pi^2 G}} = 97.7\text{ mm}$

*Adopt larger diameter:* **$\mathbf{d = 100\text{ mm}}$**
* Hub Diameter: $D = 2d = \mathbf{200\text{ mm}}$

#### 2. Design for key
For $d = 100\text{ mm}$: $w = 28\text{ mm}, t = 16\text{ mm}, l = 150\text{ mm}$.

#### 3. Design for flange
* Flange Thickness: $t_f = 0.5d = \mathbf{50\text{ mm}}$

#### 4. Design for bolts
* PCD of bolts: $D_b = 3d = 300\text{ mm}$
* Number of bolts: **$\mathbf{n = 4\text{ bolts}}$**
* Bolt diameter ($d_b$): $d_b = \sqrt{\frac{8 T_{\max}}{\pi n D_b \tau_b}} = \sqrt{\frac{8 \times 4.476 \times 10^6}{\pi \times 4 \times 300 \times 20}} = 21.8\text{ mm} \implies \mathbf{d_b = 22\text{ mm}}$

---

## Exercise 9 (Flanged Protective Coupling with Hollow Shaft)

### Problem Statement
A flanged protective coupling transmits $50\text{ kW}$ at $2000\text{ rpm}$ with $\tau = 100\text{ MPa}$.
Find: (a) Shaft diameters, (b) Bolt diameter, (c) Flange thickness and hub diameter.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 \times 50000}{2 \pi \times 2000} = 238.73\text{ N}\cdot\text{m} = 2.3873 \times 10^5\text{ N}\cdot\text{mm}$$

#### 1. Design for hub (Shaft Diameters)
* **Hollow Driving Shaft ($k = 0.6$):** $d_o = \sqrt[3]{\frac{16 T}{\pi \tau (1 - k^4)}} = 24.1\text{ mm} \implies \mathbf{d_o = 25\text{ mm}}, \quad \mathbf{d_i = 15\text{ mm}}$
* **Solid Driven Shaft:** $d = \sqrt[3]{\frac{16 T}{\pi \tau}} = 23.0\text{ mm} \implies \mathbf{d = 25\text{ mm}}$
* Hub Diameter: $D = 2 d_o = \mathbf{50\text{ mm}}$

#### 2. Design for key
For $d_o = 25\text{ mm}$: $w = 8\text{ mm}, t = 7\text{ mm}, l = 37.5\text{ mm}$.

#### 3. Design for flange
* Flange Web Thickness: $t_f = 0.5 d_o = \mathbf{12.5\text{ mm}}$

#### 4. Design for bolts
With $n = 4$, $D_b = 3 d_o = 75\text{ mm}$, $\tau_b = 25\text{ MPa}$:
$$d_b = \sqrt{\frac{8 T}{\pi n D_b \tau_b}} = \sqrt{\frac{8 \times 2.3873 \times 10^5}{\pi \times 4 \times 75 \times 25}} = 9.0\text{ mm} \implies \mathbf{d_b = 10\text{ mm}\text{ (M10)}}$$

---

## Exercise 11 (Bushed-Pin Flexible Coupling)

### Problem Statement
Design a bushed-pin flexible coupling for motor shaft $50\text{ mm}$ and pump shaft $45\text{ mm}$ transmitting $40\text{ kW}$ at $1000\text{ rpm}$. Allowable rubber bush bearing pressure $p_b \le 0.45\text{ N/mm}^2$, pin shear stress $\tau_p \le 25\text{ MPa}$.

---

### Solution

#### Design Torque ($T$)
$$T = \frac{60 \times 40000}{2 \pi \times 1000} = 381.97\text{ N}\cdot\text{m} = 3.8197 \times 10^5\text{ N}\cdot\text{mm}$$

#### 1. Design for pins and rubber bush
* Design for larger shaft: $d = 50\text{ mm}$.
* Number of pins: **$\mathbf{n = 6}$**, Pitch circle diameter $D_b = 3.5 d = 175\text{ mm}$.
* Load per pin: $W = \frac{2 T}{n D_b} = \frac{2 \times 3.8197 \times 10^5}{6 \times 175} = 727.56\text{ N}$.
* Rubber bush outer diameter: **$\mathbf{d_2 = 40\text{ mm}}$**, Pin shank diameter: **$\mathbf{d_1 = 20\text{ mm}}$**.
* Length of rubber bush: $l = \frac{W}{p_b d_2} = \frac{727.56}{0.45 \times 40} = 40.4\text{ mm} \implies \mathbf{l = 42\text{ mm}}$.

#### 2. Design for hub
* Hub outer diameter $D = 2d = \mathbf{100\text{ mm}}$, Hub length $L = 1.5d = \mathbf{75\text{ mm}}$.

#### 3. Design for key
For $d = 50\text{ mm}$: $w = 16\text{ mm}, t = 10\text{ mm}, l = 75\text{ mm}$.

#### 4. Design for flange
* Flange web thickness $t_f = 0.5d = \mathbf{25\text{ mm}}$.
