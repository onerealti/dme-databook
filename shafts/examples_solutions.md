# Shafts — Solved Examples Solutions

Fully worked solutions for all 22 examples in [examples.md](examples.md).

---

## Example 14.1

### Problem Statement
A line shaft rotating at $200\text{ r.p.m.}$ is to transmit $20\text{ kW}$. The shaft may be assumed to be made of mild steel with an allowable shear stress of $42\text{ MPa}$. Determine the diameter of the shaft, neglecting the bending moment on the shaft.

---

### Solution

#### Given Data
$N = 200\text{ r.p.m.}$, $P = 20\text{ kW} = 20 \times 10^3\text{ W}$, $\tau = 42\text{ MPa} = 42\text{ N/mm}^2$.

---

Let $d = \text{Diameter of the shaft}$.

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{20 \times 10^3 \times 60}{2 \pi \times 200} = 955\text{ N}\cdot\text{m} = 955 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that torque transmitted by the shaft ($T$):
$$955 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 42 = 8.25 d^3$$
$$d^3 = \frac{955 \times 10^3}{8.25} = 115733 \implies d = 48.7\text{ mm} \quad \text{say } \mathbf{d = 50\text{ mm}}$$

---

## Example 14.2

### Problem Statement
A solid shaft is transmitting $1\text{ MW}$ at $240\text{ r.p.m.}$ Determine the diameter of the shaft if the maximum torque transmitted exceeds the mean torque by $20\%$. Take the maximum allowable shear stress as $60\text{ MPa}$.

---

### Solution

#### Given Data
$P = 1\text{ MW} = 1 \times 10^6\text{ W}$, $N = 240\text{ r.p.m.}$, $T_{\max} = 1.2 T_{\text{mean}}$, $\tau = 60\text{ MPa} = 60\text{ N/mm}^2$.

---

Let $d = \text{Diameter of the shaft}$.

We know that mean torque transmitted by the shaft ($T_{\text{mean}}$):
$$T_{\text{mean}} = \frac{P \times 60}{2 \pi N} = \frac{1 \times 10^6 \times 60}{2 \pi \times 240} = 39784\text{ N}\cdot\text{m} = 39784 \times 10^3\text{ N}\cdot\text{mm}$$

Maximum torque transmitted ($T_{\max}$):
$$T_{\max} = 1.2 T_{\text{mean}} = 1.2 \times 39784 \times 10^3 = 47741 \times 10^3\text{ N}\cdot\text{mm}$$

We know that maximum torque transmitted ($T_{\max}$):
$$47741 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 60 = 11.78 d^3$$
$$d^3 = \frac{47741 \times 10^3}{11.78} = 4053 \times 10^3 \implies d = 159.4\text{ mm} \quad \text{say } \mathbf{d = 160\text{ mm}}$$

---

## Example 14.3

### Problem Statement
Find the diameter of a solid steel shaft to transmit $20\text{ kW}$ at $200\text{ r.p.m.}$ The ultimate shear stress for the steel may be taken as $360\text{ MPa}$ and a factor of safety as $8$.
If a hollow shaft is to be used in place of the solid shaft, find the inside and outside diameter when the ratio of inside to outside diameters is $0.5$.

---

### Solution

#### Given Data
$P = 20\text{ kW} = 20 \times 10^3\text{ W}$, $N = 200\text{ r.p.m.}$, $\tau_u = 360\text{ MPa} = 360\text{ N/mm}^2$, $\text{F.S.} = 8$, $k = d_i / d_o = 0.5$.

We know that allowable shear stress ($\tau$):
$$\tau = \frac{\tau_u}{\text{F.S.}} = \frac{360}{8} = 45\text{ N/mm}^2$$

---

#### 1. Diameter of the solid shaft
Let $d = \text{Diameter of the solid shaft}$.

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{20 \times 10^3 \times 60}{2 \pi \times 200} = 955\text{ N}\cdot\text{m} = 955 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that torque transmitted by the solid shaft ($T$):
$$955 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 45 = 8.84 d^3$$
$$d^3 = \frac{955 \times 10^3}{8.84} = 108032 \implies d = 47.6\text{ mm} \quad \text{say } \mathbf{d = 50\text{ mm}}$$

---

#### 2. Diameter of hollow shaft
Let $d_i = \text{Inside diameter}$, and $d_o = \text{Outside diameter}$.

We know that torque transmitted by the hollow shaft ($T$):
$$955 \times 10^3 = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4) = \frac{\pi}{16} \times 45 \times (d_o)^3 [1 - (0.5)^4] = 8.3 (d_o)^3$$
$$(d_o)^3 = \frac{955 \times 10^3}{8.3} = 115060 \implies d_o = 48.6\text{ mm} \quad \text{say } \mathbf{d_o = 50\text{ mm}}$$
$$d_i = 0.5 d_o = 0.5 \times 50 = \mathbf{25\text{ mm}}$$

---

## Example 14.4

### Problem Statement
A pair of wheels of a railway wagon carries a load of $50\text{ kN}$ on each axle box, acting at a distance of $100\text{ mm}$ outside the wheel base. The gauge of the rails is $1.4\text{ m}$. Find the diameter of the axle between the wheels, if the stress is not to exceed $100\text{ MPa}$.

---

### Solution

#### Given Data
$W = 50\text{ kN} = 50 \times 10^3\text{ N}$, $L = 100\text{ mm}$, $x = 1.4\text{ m}$, $\sigma_b = 100\text{ MPa} = 100\text{ N/mm}^2$.

---

A little consideration will show that the maximum bending moment acts on the wheels at $C$ and $D$. Therefore maximum bending moment:
$$M = W \cdot L = 50 \times 10^3 \times 100 = 5 \times 10^6\text{ N}\cdot\text{mm}$$

Let $d = \text{Diameter of the axle}$.

We know that the maximum bending moment ($M$):
$$5 \times 10^6 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 100 = 9.82 d^3$$
$$d^3 = \frac{5 \times 10^6}{9.82} = 0.51 \times 10^6 \implies d = 79.8\text{ mm} \quad \text{say } \mathbf{d = 80\text{ mm}}$$

---

## Example 14.5

### Problem Statement
A solid circular shaft is subjected to a bending moment of $3000\text{ N-m}$ and a torque of $10\,000\text{ N-m}$. The shaft is made of 45 C 8 steel having ultimate tensile stress of $700\text{ MPa}$ and an ultimate shear stress of $500\text{ MPa}$. Assuming a factor of safety as $6$, determine the diameter of the shaft.

---

### Solution

#### Given Data
$M = 3000\text{ N-m} = 3 \times 10^6\text{ N-mm}$, $T = 10\,000\text{ N-m} = 10 \times 10^6\text{ N-mm}$, $\sigma_{tu} = 700\text{ MPa} = 700\text{ N/mm}^2$, $\tau_u = 500\text{ MPa} = 500\text{ N/mm}^2$, $\text{F.S.} = 6$.

We know that allowable tensile stress ($\sigma_t$ or $\sigma_b$):
$$\sigma_t = \frac{\sigma_{tu}}{\text{F.S.}} = \frac{700}{6} = 116.7\text{ N/mm}^2$$

and allowable shear stress ($\tau$):
$$\tau = \frac{\tau_u}{\text{F.S.}} = \frac{500}{6} = 83.3\text{ N/mm}^2$$

Let $d = \text{Diameter of the shaft in mm}$.

---

#### 1. According to maximum shear stress theory
Equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(3 \times 10^6)^2 + (10 \times 10^6)^2} = 10.44 \times 10^6\text{ N-mm}$$

We also know that equivalent twisting moment ($T_e$):
$$10.44 \times 10^6 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 83.3 = 16.36 d^3$$
$$d^3 = \frac{10.44 \times 10^6}{16.36} = 0.636 \times 10^6 \implies d = 86\text{ mm}$$

---

#### 2. According to maximum normal stress theory
Equivalent bending moment ($M_e$):
$$M_e = \frac{1}{2} [M + \sqrt{M^2 + T^2}] = \frac{1}{2} [M + T_e] = \frac{1}{2} (3 \times 10^6 + 10.44 \times 10^6) = 6.72 \times 10^6\text{ N-mm}$$

We also know that equivalent bending moment ($M_e$):
$$6.72 \times 10^6 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 116.7 = 11.46 d^3$$
$$d^3 = \frac{6.72 \times 10^6}{11.46} = 0.586 \times 10^6 \implies d = 83.7\text{ mm}$$

Taking the larger of the two values, we have:
$$d = 86 \quad \text{say } \mathbf{d = 90\text{ mm}}$$

---

## Example 14.6

### Problem Statement
A shaft supported at the ends in ball bearings carries a straight tooth spur gear at its mid span and is to transmit $7.5\text{ kW}$ at $300\text{ r.p.m.}$ The pitch circle diameter of the gear is $150\text{ mm}$. The distances between the centre line of bearings and gear are $100\text{ mm}$ each. If the shaft is made of steel and the allowable shear stress is $45\text{ MPa}$, determine the diameter of the shaft. Show in a sketch how the gear will be mounted on the shaft; also indicate the ends where the bearings will be mounted? The pressure angle of the gear may be taken as $20^\circ$.

---

### Solution

#### Given Data
$P = 7.5\text{ kW} = 7500\text{ W}$, $N = 300\text{ r.p.m.}$, $D = 150\text{ mm} = 0.15\text{ m}$, $L = 200\text{ mm} = 0.2\text{ m}$, $\tau = 45\text{ MPa} = 45\text{ N/mm}^2$, $\alpha = 20^\circ$.

---

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{7500 \times 60}{2 \pi \times 300} = 238.7\text{ N}\cdot\text{m}$$

Tangential force on the gear ($F_t$):
$$F_t = \frac{2 T}{D} = \frac{2 \times 238.7}{0.15} = 3182.7\text{ N}$$

and the normal load acting on the tooth of the gear ($W$):
$$W = \frac{F_t}{\cos\alpha} = \frac{3182.7}{\cos 20^\circ} = \frac{3182.7}{0.9397} = 3387\text{ N}$$

Since the gear is mounted at the middle of the shaft, therefore maximum bending moment at the centre of the gear ($M$):
$$M = \frac{W \cdot L}{4} = \frac{3387 \times 0.2}{4} = 169.4\text{ N}\cdot\text{m}$$

Let $d = \text{Diameter of the shaft}$.

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(169.4)^2 + (238.7)^2} = 292.7\text{ N}\cdot\text{m} = 292.7 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$292.7 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 45 = 8.84 d^3$$
$$d^3 = \frac{292.7 \times 10^3}{8.84} = 33 \times 10^3 \implies d = 32\text{ mm} \quad \text{say } \mathbf{d = 35\text{ mm}}$$

---

## Example 14.7

### Problem Statement
A shaft made of mild steel is required to transmit $100\text{ kW}$ at $300\text{ r.p.m.}$ The supported length of the shaft is $3\text{ metres}$. It carries two pulleys each weighing $1500\text{ N}$ supported at a distance of $1\text{ metre}$ from the ends respectively. Assuming the safe value of stress, determine the diameter of the shaft.

---

### Solution

#### Given Data
$P = 100\text{ kW} = 100 \times 10^3\text{ W}$, $N = 300\text{ r.p.m.}$, $L = 3\text{ m}$, $W = 1500\text{ N}$.

---

We know that the torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{100 \times 10^3 \times 60}{2 \pi \times 300} = 3183\text{ N}\cdot\text{m}$$

The shaft carrying the two pulleys is like a simply supported beam. The reaction at each support will be $1500\text{ N}$, i.e.:
$$R_A = R_B = 1500\text{ N}$$

A little consideration will show that the maximum bending moment lies at each pulley i.e. at $C$ and $D$.
$$\text{Maximum bending moment, } M = 1500 \times 1 = 1500\text{ N}\cdot\text{m}$$

Let $d = \text{Diameter of the shaft in mm}$.

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(1500)^2 + (3183)^2} = 3519\text{ N}\cdot\text{m} = 3519 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$3519 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 60 = 11.8 d^3 \quad \text{(Assuming } \tau = 60\text{ N/mm}^2\text{)}$$
$$d^3 = \frac{3519 \times 10^3}{11.8} = 298 \times 10^3 \implies d = 66.8\text{ mm} \quad \text{say } \mathbf{d = 70\text{ mm}}$$

---

## Example 14.8

### Problem Statement
A line shaft is driven by means of a motor placed vertically below it. The pulley on the line shaft is $1.5\text{ metre}$ in diameter and has belt tensions $5.4\text{ kN}$ and $1.8\text{ kN}$ on the tight side and slack side of the belt respectively. Both these tensions may be assumed to be vertical. If the pulley be overhang from the shaft, the distance of the centre line of the pulley from the centre line of the bearing being $400\text{ mm}$, find the diameter of the shaft. Assuming maximum allowable shear stress of $42\text{ MPa}$.

---

### Solution

#### Given Data
$D = 1.5\text{ m}$ or $R = 0.75\text{ m}$, $T_1 = 5.4\text{ kN} = 5400\text{ N}$, $T_2 = 1.8\text{ kN} = 1800\text{ N}$, $L = 400\text{ mm}$, $\tau = 42\text{ MPa} = 42\text{ N/mm}^2$.

---

We know that torque transmitted by the shaft ($T$):
$$T = (T_1 - T_2) R = (5400 - 1800) 0.75 = 2700\text{ N}\cdot\text{m} = 2700 \times 10^3\text{ N}\cdot\text{mm}$$

Neglecting the weight of shaft, total vertical load acting on the pulley:
$$W = T_1 + T_2 = 5400 + 1800 = 7200\text{ N}$$

$$\text{Bending moment, } M = W \times L = 7200 \times 400 = 2880 \times 10^3\text{ N}\cdot\text{mm}$$

Let $d = \text{Diameter of the shaft in mm}$.

We know that the equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(2880 \times 10^3)^2 + (2700 \times 10^3)^2} = 3950 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$3950 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 42 = 8.25 d^3$$
$$d^3 = \frac{3950 \times 10^3}{8.25} = 479 \times 10^3 \implies d = 78\text{ mm} \quad \text{say } \mathbf{d = 80\text{ mm}}$$

---

## Example 14.9

### Problem Statement
A shaft is supported by two bearings placed $1\text{ m}$ apart. A $600\text{ mm}$ diameter pulley is mounted at a distance of $300\text{ mm}$ to the right of left hand bearing and this drives a pulley directly below it with the help of belt having maximum tension of $2.25\text{ kN}$. Another pulley $400\text{ mm}$ diameter is placed $200\text{ mm}$ to the left of right hand bearing and is driven with the help of electric motor and belt, which is placed horizontally to the right. The angle of contact for both the pulleys is $180^\circ$ and $\mu = 0.24$. Determine the suitable diameter for a solid shaft, allowing working stress of $63\text{ MPa}$ in tension and $42\text{ MPa}$ in shear for the material of shaft. Assume that the torque on one pulley is equal to that on the other pulley.

---

### Solution

#### Given Data
$AB = 1\text{ m}$, $D_C = 600\text{ mm}$ or $R_C = 300\text{ mm} = 0.3\text{ m}$, $AC = 300\text{ mm} = 0.3\text{ m}$, $T_1 = 2.25\text{ kN} = 2250\text{ N}$, $D_D = 400\text{ mm}$ or $R_D = 200\text{ mm} = 0.2\text{ m}$, $BD = 200\text{ mm} = 0.2\text{ m}$, $\theta = 180^\circ = \pi\text{ rad}$, $\mu = 0.24$, $\sigma_b = 63\text{ MPa} = 63\text{ N/mm}^2$, $\tau = 42\text{ MPa} = 42\text{ N/mm}^2$.

---

Let $T_1 = \text{Tension in tight side on pulley } C = 2250\text{ N}$, $T_2 = \text{Tension in slack side on pulley } C$.

We know that:
$$2.3 \log \left(\frac{T_1}{T_2}\right) = \mu \theta = 0.24 \times \pi = 0.754 \implies \log \left(\frac{T_1}{T_2}\right) = 0.3278 \implies \frac{T_1}{T_2} = 2.127$$
$$T_2 = \frac{2250}{2.127} = 1058\text{ N}$$

Vertical load acting on the shaft at $C$:
$$W_C = T_1 + T_2 = 2250 + 1058 = 3308\text{ N}, \quad W_{D,V} = 0$$

Torque acting on pulley $C$:
$$T = (T_1 - T_2) R_C = (2250 - 1058) 0.3 = 357.6\text{ N}\cdot\text{m}$$

---

Let $T_3 = \text{Tension in tight side on pulley } D$, $T_4 = \text{Tension in slack side on pulley } D$.

Since torque on both pulleys is the same:
$$(T_3 - T_4) R_D = T = 357.6 \implies T_3 - T_4 = \frac{357.6}{0.2} = 1788\text{ N} \quad \text{--- (i)}$$
$$\frac{T_3}{T_4} = 2.127 \implies T_3 = 2.127 T_4 \quad \text{--- (ii)}$$

From equations (i) and (ii):
$$T_3 = 3376\text{ N}, \quad T_4 = 1588\text{ N}$$

Horizontal load acting on the shaft at $D$:
$$W_D = T_3 + T_4 = 3376 + 1588 = 4964\text{ N}, \quad W_{C,H} = 0$$

---

#### Vertical Bending Moments
Reactions at bearings $A$ and $B$:
$$R_{AV} + R_{BV} = 3308\text{ N}$$
Taking moments about $A$:
$$R_{BV} \times 1 = 3308 \times 0.3 \implies R_{BV} = 992.4\text{ N}, \quad R_{AV} = 2315.6\text{ N}$$
$$M_{CV} = R_{AV} \times 0.3 = 2315.6 \times 0.3 = 694.7\text{ N}\cdot\text{m}$$
$$M_{DV} = R_{BV} \times 0.2 = 992.4 \times 0.2 = 198.5\text{ N}\cdot\text{m}$$

---

#### Horizontal Bending Moments
Reactions at bearings $A$ and $B$:
$$R_{AH} + R_{BH} = 4964\text{ N}$$
Taking moments about $A$:
$$R_{BH} \times 1 = 4964 \times 0.8 \implies R_{BH} = 3971\text{ N}, \quad R_{AH} = 993\text{ N}$$
$$M_{CH} = R_{AH} \times 0.3 = 993 \times 0.3 = 297.9\text{ N}\cdot\text{m}$$
$$M_{DH} = R_{BH} \times 0.2 = 3971 \times 0.2 = 794.2\text{ N}\cdot\text{m}$$

---

#### Resultant Bending Moments
$$M_C = \sqrt{(M_{CV})^2 + (M_{CH})^2} = \sqrt{(694.7)^2 + (297.9)^2} = 756\text{ N}\cdot\text{m}$$
$$M_D = \sqrt{(M_{DV})^2 + (M_{DH})^2} = \sqrt{(198.5)^2 + (794.2)^2} = 819.2\text{ N}\cdot\text{m}$$

Maximum bending moment occurs at $D$:
$$M = M_D = 819.2\text{ N}\cdot\text{m}$$

---

#### Diameter Calculation
1. **Equivalent Twisting Moment ($T_e$):**
   $$T_e = \sqrt{M^2 + T^2} = \sqrt{(819.2)^2 + (357.6)^2} = 894\text{ N}\cdot\text{m} = 894 \times 10^3\text{ N}\cdot\text{mm}$$
   $$894 \times 10^3 = \frac{\pi}{16} \times d^3 \times 42 = 8.25 d^3 \implies d^3 = 108 \times 10^3 \implies d = 47.6\text{ mm}$$

2. **Equivalent Bending Moment ($M_e$):**
   $$M_e = \frac{1}{2} [M + T_e] = \frac{1}{2} [819.2 + 894] = 856.6\text{ N}\cdot\text{m} = 856.6 \times 10^3\text{ N}\cdot\text{mm}$$
   $$856.6 \times 10^3 = \frac{\pi}{32} \times d^3 \times 63 = 6.2 d^3 \implies d^3 = 138.2 \times 10^3 \implies d = 51.7\text{ mm}$$

Taking the larger of the two values:
$$d = 51.7\text{ mm} \quad \text{say } \mathbf{d = 55\text{ mm}}$$

---

## Example 14.10

### Problem Statement
A shaft is supported on bearings $A$ and $B$, $800\text{ mm}$ between centres. A $20^\circ$ straight tooth spur gear having $600\text{ mm}$ pitch diameter, is located $200\text{ mm}$ to the right of the left hand bearing $A$, and a $700\text{ mm}$ diameter pulley is mounted $250\text{ mm}$ towards the left of bearing $B$. The gear is driven by a pinion with a downward tangential force while the pulley drives a horizontal belt having $180^\circ$ angle of wrap. The pulley also serves as a flywheel and weighs $2000\text{ N}$. The maximum belt tension is $3000\text{ N}$ and the tension ratio is $3 : 1$. Determine the maximum bending moment and the necessary shaft diameter if the allowable shear stress of the material is $40\text{ MPa}$.

---

### Solution

#### Given Data
$AB = 800\text{ mm}$, $\alpha_C = 20^\circ$, $D_C = 600\text{ mm}$ or $R_C = 300\text{ mm}$, $AC = 200\text{ mm}$, $D_D = 700\text{ mm}$ or $R_D = 350\text{ mm}$, $DB = 250\text{ mm}$, $\theta = 180^\circ = \pi\text{ rad}$, $W = 2000\text{ N}$, $T_1 = 3000\text{ N}$, $T_1/T_2 = 3$, $\tau = 40\text{ MPa} = 40\text{ N/mm}^2$.

---

```mermaid
flowchart LR
    A["Bearing A"] ---|"200 mm"| C["Spur Gear C (D = 600 mm)"]
    C ---|"350 mm"| D["Pulley D (D = 700 mm)"]
    D ---|"250 mm"| B["Bearing B"]
```

Torque acting on the shaft at $D$:
$$T = (T_1 - T_2) R_D = T_1 \left(1 - \frac{T_2}{T_1}\right) R_D = 3000 \left(1 - \frac{1}{3}\right) 350 = 700 \times 10^3\text{ N-mm}$$

Tangential force acting on gear $C$:
$$F_{tc} = \frac{T}{R_C} = \frac{700 \times 10^3}{300} = 2333\text{ N}$$

Normal load acting on the tooth of gear $C$:
$$W_C = \frac{F_{tc}}{\cos 20^\circ} = \frac{2333}{0.9397} = 2483\text{ N}$$

Resolving the normal load vertically and horizontally:
$$\text{Vertical component, } W_{CV} = W_C \cos 20^\circ = 2483 \times 0.9397 = 2333\text{ N}$$
$$\text{Horizontal component, } W_{CH} = W_C \sin 20^\circ = 2483 \times 0.342 = 849\text{ N}$$

Belt tensions on pulley $D$:
$$T_2 = \frac{T_1}{3} = \frac{3000}{3} = 1000\text{ N}$$
$$\text{Horizontal load acting on shaft at } D, W_{DH} = T_1 + T_2 = 3000 + 1000 = 4000\text{ N}$$
$$\text{Vertical load acting on shaft at } D, W_{DV} = W = 2000\text{ N}$$

---

#### Vertical Loading & Bending Moments
$$R_{AV} + R_{BV} = 2333 + 2000 = 4333\text{ N}$$
Taking moments about $A$:
$$R_{BV} \times 800 = 2000 (800 - 250) + 2333 \times 200 = 1\,566\,600 \implies R_{BV} = 1958\text{ N}, \quad R_{AV} = 2375\text{ N}$$
$$M_{CV} = R_{AV} \times 200 = 2375 \times 200 = 475 \times 10^3\text{ N-mm}$$
$$M_{DV} = R_{BV} \times 250 = 1958 \times 250 = 489.5 \times 10^3\text{ N-mm}$$

---

#### Horizontal Loading & Bending Moments
$$R_{AH} + R_{BH} = 849 + 4000 = 4849\text{ N}$$
Taking moments about $A$:
$$R_{BH} \times 800 = 4000 (800 - 250) + 849 \times 200 = 2\,369\,800 \implies R_{BH} = 2963\text{ N}, \quad R_{AH} = 1886\text{ N}$$
$$M_{CH} = R_{AH} \times 200 = 1886 \times 200 = 377\,200\text{ N-mm}$$
$$M_{DH} = R_{BH} \times 250 = 2963 \times 250 = 740\,750\text{ N-mm}$$

---

#### Resultant Bending Moments
$$M_C = \sqrt{(M_{CV})^2 + (M_{CH})^2} = \sqrt{(475 \times 10^3)^2 + (377\,200)^2} = 606\,552\text{ N-mm}$$
$$M_D = \sqrt{(M_{DV})^2 + (M_{DH})^2} = \sqrt{(489.5 \times 10^3)^2 + (740\,750)^2} = 887\,874\text{ N-mm}$$

$$\text{Maximum Bending Moment, } \mathbf{M = M_D = 887\,874\text{ N-mm}}$$

---

#### Diameter of the Shaft
Let $d = \text{Diameter of the shaft}$.

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(887\,874)^2 + (700 \times 10^3)^2} = 1131 \times 10^3\text{ N-mm}$$
$$1131 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 40 = 7.86 d^3$$
$$d^3 = \frac{1131 \times 10^3}{7.86} = 144 \times 10^3 \implies d = 52.4\text{ mm} \quad \text{say } \mathbf{d = 55\text{ mm}}$$

---

## Example 14.11

### Problem Statement
A steel solid shaft transmitting $15\text{ kW}$ at $200\text{ r.p.m.}$ is supported on two bearings $750\text{ mm}$ apart and has two gears keyed to it. The pinion having $30\text{ teeth}$ of $5\text{ mm}$ module is located $100\text{ mm}$ to the left of the right hand bearing and delivers power horizontally to the right. The gear having $100\text{ teeth}$ of $5\text{ mm}$ module is located $150\text{ mm}$ to the right of the left hand bearing and receives power in a vertical direction from below. Using an allowable stress of $54\text{ MPa}$ in shear, determine the diameter of the shaft.

---

### Solution

#### Given Data
$P = 15\text{ kW} = 15 \times 10^3\text{ W}$, $N = 200\text{ r.p.m.}$, $AB = 750\text{ mm}$, $T_D = 30$, $m_D = 5\text{ mm}$, $BD = 100\text{ mm}$, $T_C = 100$, $m_C = 5\text{ mm}$, $AC = 150\text{ mm}$, $\tau = 54\text{ MPa} = 54\text{ N/mm}^2$.

---

We know that the torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{15 \times 10^3 \times 60}{2 \pi \times 200} = 716\text{ N}\cdot\text{m} = 716 \times 10^3\text{ N}\cdot\text{mm}$$

Radius of gear $C$:
$$R_C = \frac{T_C \times m_C}{2} = \frac{100 \times 5}{2} = 250\text{ mm}$$

and radius of pinion $D$:
$$R_D = \frac{T_D \times m_D}{2} = \frac{30 \times 5}{2} = 75\text{ mm}$$

Tangential force on gear $C$ (acting downward):
$$F_{tC} = \frac{T}{R_C} = \frac{716 \times 10^3}{250} = 2870\text{ N}$$

Tangential force on pinion $D$ (acting horizontally):
$$F_{tD} = \frac{T}{R_D} = \frac{716 \times 10^3}{75} = 9550\text{ N}$$

---

#### Vertical Loading & Bending Moments
$$R_{AV} + R_{BV} = 2870\text{ N}$$
Taking moments about $A$:
$$R_{BV} \times 750 = 2870 \times 150 \implies R_{BV} = \frac{2870 \times 150}{750} = 574\text{ N}, \quad R_{AV} = 2870 - 574 = 2296\text{ N}$$
$$M_{CV} = R_{AV} \times 150 = 2296 \times 150 = 344\,400\text{ N-mm}$$
$$M_{DV} = R_{BV} \times 100 = 574 \times 100 = 57\,400\text{ N-mm}$$

---

#### Horizontal Loading & Bending Moments
$$R_{AH} + R_{BH} = 9550\text{ N}$$
Taking moments about $A$:
$$R_{BH} \times 750 = 9550 (750 - 100) = 9550 \times 650 \implies R_{BH} = \frac{9550 \times 650}{750} = 8277\text{ N}, \quad R_{AH} = 9550 - 8277 = 1273\text{ N}$$
$$M_{CH} = R_{AH} \times 150 = 1273 \times 150 = 190\,950\text{ N-mm}$$
$$M_{DH} = R_{BH} \times 100 = 8277 \times 100 = 827\,700\text{ N-mm}$$

---

#### Resultant Bending Moments
$$M_C = \sqrt{(M_{CV})^2 + (M_{CH})^2} = \sqrt{(344\,400)^2 + (190\,950)^2} = 393\,790\text{ N-mm}$$
$$M_D = \sqrt{(M_{DV})^2 + (M_{DH})^2} = \sqrt{(57\,400)^2 + (827\,700)^2} = 829\,690\text{ N-mm}$$

$$\text{Maximum bending moment, } M = M_D = 829\,690\text{ N-mm}$$

---

#### Diameter of the Shaft
Let $d = \text{Diameter of the shaft}$.

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(829\,690)^2 + (716 \times 10^3)^2} = 1096 \times 10^3\text{ N-mm}$$

We also know that equivalent twisting moment ($T_e$):
$$1096 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 54 = 10.6 d^3$$
$$d^3 = \frac{1096 \times 10^3}{10.6} = 103.4 \times 10^3 \implies d = 47\text{ mm} \quad \text{say } \mathbf{d = 50\text{ mm}}$$

---

## Example 14.12

### Problem Statement
A mild steel shaft transmits $20\text{ kW}$ at $200\text{ r.p.m.}$ It carries a central load of $900\text{ N}$ and is simply supported between the bearings $2.5\text{ metres}$ apart. Determine the size of the shaft, if the allowable shear stress is $42\text{ MPa}$ and the maximum tensile or compressive stress is not to exceed $56\text{ MPa}$. What size of the shaft will be required, if it is subjected to gradually applied loads?

---

### Solution

#### Given Data
$P = 20\text{ kW} = 20 \times 10^3\text{ W}$, $N = 200\text{ r.p.m.}$, $W = 900\text{ N}$, $L = 2.5\text{ m}$, $\tau = 42\text{ MPa} = 42\text{ N/mm}^2$, $\sigma_b = 56\text{ MPa} = 56\text{ N/mm}^2$.

---

#### 1. Size of the shaft
Let $d = \text{Diameter of the shaft, in mm}$.

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{20 \times 10^3 \times 60}{2 \pi \times 200} = 955\text{ N}\cdot\text{m} = 955 \times 10^3\text{ N}\cdot\text{mm}$$

and maximum bending moment of a simply supported shaft carrying a central load ($M$):
$$M = \frac{W \cdot L}{4} = \frac{900 \times 2.5}{4} = 562.5\text{ N}\cdot\text{m} = 562.5 \times 10^3\text{ N}\cdot\text{mm}$$

We know that the equivalent twisting moment ($T_e$):
$$T_e = \sqrt{M^2 + T^2} = \sqrt{(562.5 \times 10^3)^2 + (955 \times 10^3)^2} = 1108 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$1108 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 42 = 8.25 d^3$$
$$d^3 = \frac{1108 \times 10^3}{8.25} = 134.3 \times 10^3 \implies d = 51.2\text{ mm}$$

We know that the equivalent bending moment ($M_e$):
$$M_e = \frac{1}{2} [M + \sqrt{M^2 + T^2}] = \frac{1}{2} [M + T_e] = \frac{1}{2} (562.5 \times 10^3 + 1108 \times 10^3) = 835.25 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent bending moment ($M_e$):
$$835.25 \times 10^3 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 56 = 5.5 d^3$$
$$d^3 = \frac{835.25 \times 10^3}{5.5} = 152 \times 10^3 \implies d = 53.4\text{ mm}$$

Taking the larger of the two values, we have:
$$d = 53.4 \quad \text{say } \mathbf{d = 55\text{ mm}}$$

---

#### 2. Size of the shaft when subjected to gradually applied load
Let $d = \text{Diameter of the shaft}$.

For rotating shafts with gradually applied loads:
$$K_m = 1.5 \quad \text{and} \quad K_t = 1.0$$

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{(K_m \times M)^2 + (K_t \times T)^2} = \sqrt{(1.5 \times 562.5 \times 10^3)^2 + (1.0 \times 955 \times 10^3)^2} = 1274 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$1274 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 42 = 8.25 d^3$$
$$d^3 = \frac{1274 \times 10^3}{8.25} = 154.6 \times 10^3 \implies d = 53.6\text{ mm}$$

We know that the equivalent bending moment ($M_e$):
$$M_e = \frac{1}{2} [K_m \times M + T_e] = \frac{1}{2} [1.5 \times 562.5 \times 10^3 + 1274 \times 10^3] = 1059 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent bending moment ($M_e$):
$$1059 \times 10^3 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 56 = 5.5 d^3$$
$$d^3 = \frac{1059 \times 10^3}{5.5} = 192.5 \times 10^3 \implies d = 57.7\text{ mm}$$

Taking the larger of the two values, we have:
$$d = 57.7 \quad \text{say } \mathbf{d = 60\text{ mm}}$$

---

## Example 14.13

### Problem Statement
Design a shaft to transmit power from an electric motor to a lathe head stock through a pulley by means of a belt drive. The pulley weighs $200\text{ N}$ and is located at $300\text{ mm}$ from the centre of the bearing. The diameter of the pulley is $200\text{ mm}$ and the maximum power transmitted is $1\text{ kW}$ at $120\text{ r.p.m.}$ The angle of lap of the belt is $180^\circ$ and coefficient of friction between the belt and the pulley is $0.3$. The shock and fatigue factors for bending and twisting are $1.5$ and $2.0$ respectively. The allowable shear stress in the shaft may be taken as $35\text{ MPa}$.

---

### Solution

#### Given Data
$W = 200\text{ N}$, $L = 300\text{ mm}$, $D = 200\text{ mm}$ or $R = 100\text{ mm}$, $P = 1\text{ kW} = 1000\text{ W}$, $N = 120\text{ r.p.m.}$, $\theta = 180^\circ = \pi\text{ rad}$, $\mu = 0.3$, $K_m = 1.5$, $K_t = 2$, $\tau = 35\text{ MPa} = 35\text{ N/mm}^2$.

---

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{1000 \times 60}{2 \pi \times 120} = 79.6\text{ N}\cdot\text{m} = 79.6 \times 10^3\text{ N}\cdot\text{mm}$$

Let $T_1$ and $T_2 = \text{Tensions in the tight side and slack side of the belt respectively in newtons}$.

Torque transmitted ($T$):
$$79.6 \times 10^3 = (T_1 - T_2) R = (T_1 - T_2) 100 \implies T_1 - T_2 = \frac{79.6 \times 10^3}{100} = 796\text{ N} \quad \text{--- (i)}$$

We know that:
$$2.3 \log \left(\frac{T_1}{T_2}\right) = \mu \theta = 0.3 \pi = 0.9426$$
$$\log \left(\frac{T_1}{T_2}\right) = \frac{0.9426}{2.3} = 0.4098 \implies \frac{T_1}{T_2} = 2.57 \quad \text{--- (ii)}$$

From equations (i) and (ii), we get:
$$T_1 = 1303\text{ N}, \quad \text{and} \quad T_2 = 507\text{ N}$$

We know that the total vertical load acting on the pulley:
$$W_T = T_1 + T_2 + W = 1303 + 507 + 200 = 2010\text{ N}$$

Bending moment acting on the shaft ($M$):
$$M = W_T \times L = 2010 \times 300 = 603 \times 10^3\text{ N}\cdot\text{mm}$$

Let $d = \text{Diameter of the shaft}$.

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{(K_m \times M)^2 + (K_t \times T)^2} = \sqrt{(1.5 \times 603 \times 10^3)^2 + (2 \times 79.6 \times 10^3)^2} = 918 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$918 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 35 = 6.87 d^3$$
$$d^3 = \frac{918 \times 10^3}{6.87} = 133.6 \times 10^3 \implies d = 51.1\text{ mm} \quad \text{say } \mathbf{d = 55\text{ mm}}$$

---

## Example 14.14

### Problem Statement
Fig. 14.10 shows a shaft carrying a pulley $A$ and a gear $B$ and supported in two bearings $C$ and $D$. The shaft transmits $20\text{ kW}$ at $150\text{ r.p.m.}$ The tangential force $F_t$ on the gear $B$ acts vertically upwards as shown.
The pulley delivers the power through a belt to another pulley of equal diameter vertically below the pulley $A$. The ratio of tensions $T_1 / T_2$ is equal to $2.5$. The gear and the pulley weigh $900\text{ N}$ and $2700\text{ N}$ respectively. The permissible shear stress for the material of the shaft may be taken as $63\text{ MPa}$. Assuming the weight of the shaft to be negligible in comparison with the other loads, determine its diameter. Take shock and fatigue factors for bending and torsion as $2$ and $1.5$ respectively.

---

### Solution

#### Given Data
$P = 20\text{ kW} = 20 \times 10^3\text{ W}$, $N = 150\text{ r.p.m.}$, $T_1 / T_2 = 2.5$, $W_B = 900\text{ N}$, $W_A = 2700\text{ N}$, $\tau = 63\text{ MPa} = 63\text{ N/mm}^2$, $K_m = 2$, $K_t = 1.5$, $D_B = 750\text{ mm}$ or $R_B = 375\text{ mm}$, $D_A = 1250\text{ mm}$ or $R_A = 625\text{ mm}$.

---

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{20 \times 10^3 \times 60}{2 \pi \times 150} = 1273\text{ N}\cdot\text{m} = 1273 \times 10^3\text{ N}\cdot\text{mm}$$

Let $T_1$ and $T_2 = \text{Tensions in tight side and slack side of belt on pulley } A$.

Torque on pulley:
$$(T_1 - T_2) R_A = 1273 \times 10^3 \implies T_1 - T_2 = \frac{1273 \times 10^3}{625} = 2037\text{ N} \quad \text{--- (i)}$$

Since $T_1 / T_2 = 2.5 \implies T_1 = 2.5 T_2$:
$$2.5 T_2 - T_2 = 2037 \implies T_2 = \frac{2037}{1.5} = 1358\text{ N}$$
$$T_1 = 2.5 \times 1358 = 3395\text{ N}$$

Total vertical load acting downward on the shaft at $A$:
$$= T_1 + T_2 + W_A = 3395 + 1358 + 2700 = 7453\text{ N}$$

Tangential force acting vertically upward on gear $B$:
$$F_t = \frac{T}{R_B} = \frac{1273 \times 10^3}{375} = 3395\text{ N}$$

Since weight of gear $B$ ($W_B = 900\text{ N}$) acts downward, total vertical load acting upward on shaft at $B$:
$$= F_t - W_B = 3395 - 900 = 2495\text{ N}$$

---

#### Reactions & Bending Moments
Reaction $R_C$ acts upward while reaction $R_D$ acts downward.

Taking moments about $D$:
$$R_C \times 1000 = 7453 \times 1250 + 2495 \times 350 = 10.2 \times 10^6 \implies R_C = 10\,200\text{ N}$$

For equilibrium of the shaft:
$$R_D + 7453 = R_C + 2495 = 10\,200 + 2495 = 12\,695 \implies R_D = 5242\text{ N}$$

Bending moment at $C$:
$$M_C = 7453 \times 250 = 1863 \times 10^3\text{ N}\cdot\text{mm}$$

Bending moment at $D$:
$$M_D = 2495 \times 350 = 873 \times 10^3\text{ N}\cdot\text{mm}$$

Maximum bending moment occurs at $C$:
$$\mathbf{M = M_C = 1863 \times 10^3\text{ N}\cdot\text{mm}}$$

---

#### Diameter Calculation
Let $d = \text{Diameter of the shaft}$.

We know that equivalent twisting moment ($T_e$):
$$T_e = \sqrt{(K_m \times M)^2 + (K_t \times T)^2} = \sqrt{(2 \times 1863 \times 10^3)^2 + (1.5 \times 1273 \times 10^3)^2} = 4187 \times 10^3\text{ N}\cdot\text{mm}$$

We also know that equivalent twisting moment ($T_e$):
$$4187 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 63 = 12.37 d^3$$
$$d^3 = \frac{4187 \times 10^3}{12.37} = 338 \times 10^3 \implies d = 69.6\text{ mm} \quad \text{say } \mathbf{d = 70\text{ mm}}$$

---

## Example 14.15

### Problem Statement
A horizontal nickel steel shaft rests on two bearings, $A$ at the left and $B$ at the right end and carries two gears $C$ and $D$ located at distances of $250\text{ mm}$ and $400\text{ mm}$ respectively from the centre line of the left and right bearings. The pitch diameter of the gear $C$ is $600\text{ mm}$ and that of gear $D$ is $200\text{ mm}$. The distance between the centre line of the bearings is $2400\text{ mm}$. The shaft transmits $20\text{ kW}$ at $120\text{ r.p.m.}$ The power is delivered to the shaft at gear $C$ and is taken out at gear $D$ in such a manner that the tooth pressure $F_{tC}$ of the gear $C$ and $F_{tD}$ of the gear $D$ act vertically downwards.
Find the diameter of the shaft, if the working stress is $100\text{ MPa}$ in tension and $56\text{ MPa}$ in shear. The gears $C$ and $D$ weighs $950\text{ N}$ and $350\text{ N}$ respectively. The combined shock and fatigue factors for bending and torsion may be taken as $1.5$ and $1.2$ respectively.

---

### Solution

#### Given Data
$AC = 250\text{ mm}$, $BD = 400\text{ mm}$, $D_C = 600\text{ mm}$ or $R_C = 300\text{ mm}$, $D_D = 200\text{ mm}$ or $R_D = 100\text{ mm}$, $AB = 2400\text{ mm}$, $P = 20\text{ kW} = 20 \times 10^3\text{ W}$, $N = 120\text{ r.p.m.}$, $\sigma_t = 100\text{ MPa} = 100\text{ N/mm}^2$, $\tau = 56\text{ MPa} = 56\text{ N/mm}^2$, $W_C = 950\text{ N}$, $W_D = 350\text{ N}$, $K_m = 1.5$, $K_t = 1.2$.

---

We know that the torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{20 \times 10^3 \times 60}{2 \pi \times 120} = 1590\text{ N}\cdot\text{m} = 1590 \times 10^3\text{ N}\cdot\text{mm}$$

Tangential force acting at gear $C$:
$$F_{tC} = \frac{T}{R_C} = \frac{1590 \times 10^3}{300} = 5300\text{ N}$$
$$\text{Total load acting downwards at } C = F_{tC} + W_C = 5300 + 950 = 6250\text{ N}$$

Tangential force acting at gear $D$:
$$F_{tD} = \frac{T}{R_D} = \frac{1590 \times 10^3}{100} = 15\,900\text{ N}$$
$$\text{Total load acting downwards at } D = F_{tD} + W_D = 15\,900 + 350 = 16\,250\text{ N}$$

---

#### Reactions & Bending Moments
Reactions at $A$ and $B$:
$$R_A + R_B = 6250 + 16\,250 = 22\,500\text{ N}$$

Taking moments about $A$:
$$R_B \times 2400 = 16\,250 \times 2000 + 6250 \times 250 = 34\,062.5 \times 10^3 \implies R_B = \frac{34\,062.5 \times 10^3}{2400} = 14\,190\text{ N}$$
$$R_A = 22\,500 - 14\,190 = 8310\text{ N}$$

Bending moment at $C$:
$$M_C = R_A \times 250 = 8310 \times 250 = 2077.5 \times 10^3\text{ N-mm}$$

Bending moment at $D$:
$$M_D = R_B \times 400 = 14\,190 \times 400 = 5676 \times 10^3\text{ N-mm}$$

Maximum bending moment transmitted by the shaft:
$$\mathbf{M = M_D = 5676 \times 10^3\text{ N-mm}}$$

---

#### Diameter Calculation
Let $d = \text{Diameter of the shaft}$.

1. **According to Maximum Shear Stress Theory:**
   $$T_e = \sqrt{(K_m \times M)^2 + (K_t \times T)^2} = \sqrt{(1.5 \times 5676 \times 10^3)^2 + (1.2 \times 1590 \times 10^3)^2} = 8725 \times 10^3\text{ N-mm}$$
   $$8725 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 56 = 11 d^3$$
   $$d^3 = \frac{8725 \times 10^3}{11} = 793 \times 10^3 \implies d = 92.5\text{ mm}$$

2. **According to Maximum Normal Stress Theory:**
   $$M_e = \frac{1}{2} [K_m \times M + T_e] = \frac{1}{2} [1.5 \times 5676 \times 10^3 + 8725 \times 10^3] = 8620 \times 10^3\text{ N-mm}$$
   $$8620 \times 10^3 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 100 = 9.82 d^3$$
   $$d^3 = \frac{8620 \times 10^3}{9.82} = 878 \times 10^3 \implies d = 95.7\text{ mm}$$

Taking the larger of the two values, we have:
$$d = 95.7\text{ mm} \quad \text{say } \mathbf{d = 100\text{ mm}}$$

---

## Example 14.16

### Problem Statement
A hoisting drum $0.5\text{ m}$ in diameter is keyed to a shaft which is supported in two bearings and driven through a $12 : 1$ reduction ratio by an electric motor. Determine the power of the driving motor, if the maximum load of $8\text{ kN}$ is hoisted at a speed of $50\text{ m/min}$ and the efficiency of the drive is $80\%$. Also determine the torque on the drum shaft and the speed of the motor in $\text{r.p.m.}$ Determine also the diameter of the shaft made of machinery steel, the working stresses of which are $115\text{ MPa}$ in tension and $50\text{ MPa}$ in shear. The drive gear whose diameter is $450\text{ mm}$ is mounted at the end of the shaft such that it overhangs the nearest bearing by $150\text{ mm}$. The combined shock and fatigue factors for bending and torsion may be taken as $2$ and $1.5$ respectively.

---

### Solution

#### Given Data
$D = 0.5\text{ m}$ or $R = 0.25\text{ m}$, Reduction ratio $= 12 : 1$, $W = 8\text{ kN} = 8000\text{ N}$, $v = 50\text{ m/min}$, $\eta = 80\% = 0.8$, $\sigma_t = 115\text{ MPa} = 115\text{ N/mm}^2$, $\tau = 50\text{ MPa} = 50\text{ N/mm}^2$, $D_1 = 450\text{ mm}$ or $R_1 = 225\text{ mm} = 0.225\text{ m}$, Overhang $= 150\text{ mm} = 0.15\text{ m}$, $K_m = 2$, $K_t = 1.5$.

---

#### 1. Power of the driving motor
Energy supplied to the hoisting drum per minute:
$$= W \times v = 8000 \times 50 = 400 \times 10^3\text{ N-m/min}$$

Power supplied to the hoisting drum:
$$= \frac{400 \times 10^3}{60} = 6670\text{ W} = 6.67\text{ kW}$$

Since efficiency of the drive is $0.8$, power of driving motor:
$$= \frac{6.67}{0.8} = \mathbf{8.33\text{ kW}}$$

---

#### 2. Torque on the drum shaft
$$T = W \cdot R = 8000 \times 0.25 = \mathbf{2000\text{ N}\cdot\text{m}}$$

---

#### 3. Speed of the motor
Let $N = \text{Speed of the motor in r.p.m.}$

Angular speed of hoisting drum:
$$= \frac{\text{Linear speed}}{\text{Radius of drum}} = \frac{v}{R} = \frac{50}{0.25} = 200\text{ rad/min}$$

Since reduction ratio is $12 : 1$, angular speed of motor:
$$\omega = 200 \times 12 = 2400\text{ rad/min}$$

Speed of motor in r.p.m.:
$$N = \frac{\omega}{2 \pi} = \frac{2400}{2 \pi} = \mathbf{382\text{ r.p.m.}}$$

---

#### 4. Diameter of the shaft
Let $d = \text{Diameter of the shaft}$.

Tangential tooth load on drive gear:
$$F_t = \frac{T}{R_1} = \frac{2000}{0.225} = 8900\text{ N}$$

Assuming pressure angle of drive gear is $20^\circ$, maximum bending load on shaft due to tooth load:
$$W_{\text{bending}} = \frac{F_t}{\cos 20^\circ} = \frac{8900}{0.9397} = 9470\text{ N}$$

Bending moment at bearing (overhang $= 0.15\text{ m}$):
$$M = 9470 \times 0.15 = 1420\text{ N}\cdot\text{m}$$

1. **According to Maximum Shear Stress Theory:**
   $$T_e = \sqrt{(K_m \times M)^2 + (K_t \times T)^2} = \sqrt{(2 \times 1420)^2 + (1.5 \times 2000)^2} = 4130\text{ N}\cdot\text{m} = 4130 \times 10^3\text{ N-mm}$$
   $$4130 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 50 = 9.82 d^3$$
   $$d^3 = \frac{4130 \times 10^3}{9.82} = 420.6 \times 10^3 \implies d = 75\text{ mm}$$

2. **According to Maximum Normal Stress Theory:**
   $$M_e = \frac{1}{2} [K_m \times M + T_e] = \frac{1}{2} [2 \times 1420 + 4130] = 3485\text{ N}\cdot\text{m} = 3485 \times 10^3\text{ N-mm}$$
   $$3485 \times 10^3 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 115 = 11.3 d^3$$
   $$d^3 = \frac{3485 \times 10^3}{11.3} = 308.4 \times 10^3 \implies d = 67.5\text{ mm}$$

Taking the larger of the two values, we have:
$$\mathbf{d = 75\text{ mm}}$$

---

## Example 14.17

### Problem Statement
A solid steel shaft is supported on two bearings $1.8\text{ m}$ apart and rotates at $250\text{ r.p.m.}$ A $20^\circ$ involute gear $D$, $300\text{ mm}$ diameter is keyed to the shaft at a distance of $150\text{ mm}$ to the left on the right hand bearing. Two pulleys $B$ and $C$ are located on the shaft at distances of $600\text{ mm}$ and $1350\text{ mm}$ respectively to the right of the left hand bearing. The diameters of the pulleys $B$ and $C$ are $750\text{ mm}$ and $600\text{ mm}$ respectively. $30\text{ kW}$ is supplied to the gear, out of which $18.75\text{ kW}$ is taken off at the pulley $C$ and $11.25\text{ kW}$ from pulley $B$. The drive from $B$ is vertically downward while from $C$ the drive is downward at an angle of $60^\circ$ to the horizontal. In both cases the belt tension ratio is $2$ and the angle of lap is $180^\circ$. The combined fatigue and shock factors for torsion and bending may be taken as $1.5$ and $2$ respectively.
Design a suitable shaft taking working stress to be $42\text{ MPa}$ in shear and $84\text{ MPa}$ in tension.

---

### Solution

#### Given Data
$PQ = 1.8\text{ m}$, $N = 250\text{ r.p.m.}$, $\alpha_D = 20^\circ$, $D_D = 300\text{ mm}$ or $R_D = 150\text{ mm} = 0.15\text{ m}$, $QD = 150\text{ mm} = 0.15\text{ m}$, $PB = 600\text{ mm} = 0.6\text{ m}$, $PC = 1350\text{ mm} = 1.35\text{ m}$, $D_B = 750\text{ mm}$ or $R_B = 375\text{ mm} = 0.375\text{ m}$, $D_C = 600\text{ mm}$ or $R_C = 300\text{ mm} = 0.3\text{ m}$, $P_D = 30\text{ kW} = 30 \times 10^3\text{ W}$, $P_C = 18.75\text{ kW} = 18.75 \times 10^3\text{ W}$, $P_B = 11.25\text{ kW} = 11.25 \times 10^3\text{ W}$, $T_{B1}/T_{B2} = T_{C1}/T_{C2} = 2$, $\theta = 180^\circ = \pi\text{ rad}$, $K_t = 1.5$, $K_m = 2$, $\tau = 42\text{ MPa} = 42\text{ N/mm}^2$, $\sigma_t = 84\text{ MPa} = 84\text{ N/mm}^2$.

---

#### 1. For Gear D
Torque transmitted by gear $D$:
$$T_D = \frac{P_D \times 60}{2 \pi N} = \frac{30 \times 10^3 \times 60}{2 \pi \times 250} = 1146\text{ N}\cdot\text{m}$$

Tangential force acting on gear $D$:
$$F_{tD} = \frac{T_D}{R_D} = \frac{1146}{0.15} = 7640\text{ N}$$

Normal load acting on gear tooth:
$$W_D = \frac{F_{tD}}{\cos 20^\circ} = \frac{7640}{0.9397} = 8130\text{ N}$$
$$\text{Vertical component of } W_D = W_D \cos 20^\circ = 8130 \times 0.9397 = 7640\text{ N}$$
$$\text{Horizontal component of } W_D = W_D \sin 20^\circ = 8130 \times 0.342 = 2780\text{ N}$$

---

#### 2. For Pulley C
Torque transmitted by pulley $C$:
$$T_C = \frac{P_C \times 60}{2 \pi N} = \frac{18.75 \times 10^3 \times 60}{2 \pi \times 250} = 716\text{ N}\cdot\text{m}$$
$$716 = (T_{C1} - T_{C2}) R_C = (T_{C1} - T_{C2}) 0.3 \implies T_{C1} - T_{C2} = 2387\text{ N} \quad \text{--- (i)}$$
Since $T_{C1}/T_{C2} = 2 \implies T_{C2} = 2387\text{ N}, T_{C1} = 4774\text{ N}$.

Total load acting on pulley $C$:
$$W_C = T_{C1} + T_{C2} = 4774 + 2387 = 7161\text{ N}$$
$$\text{Vertical component of } W_C = W_C \sin 60^\circ = 7161 \times 0.866 = 6200\text{ N}$$
$$\text{Horizontal component of } W_C = W_C \cos 60^\circ = 7161 \times 0.5 = 3580\text{ N}$$

---

#### 3. For Pulley B
Torque transmitted by pulley $B$:
$$T_B = \frac{P_B \times 60}{2 \pi N} = \frac{11.25 \times 10^3 \times 60}{2 \pi \times 250} = 430\text{ N}\cdot\text{m}$$
$$430 = (T_{B1} - T_{B2}) R_B = (T_{B1} - T_{B2}) 0.375 \implies T_{B1} - T_{B2} = 1147\text{ N} \quad \text{--- (ii)}$$
Since $T_{B1}/T_{B2} = 2 \implies T_{B2} = 1147\text{ N}, T_{B1} = 2294\text{ N}$.

Total load acting on pulley $B$ (vertically downwards):
$$W_B = T_{B1} + T_{B2} = 2294 + 1147 = 3441\text{ N}, \quad W_{BH} = 0$$

---

#### Load Summary Table

| Location | Vertical Load (N) | Horizontal Load (N) |
| :---: | :---: | :---: |
| **At D** | 7640 | 2780 |
| **At C** | 6200 | 3580 |
| **At B** | 3441 | 0 |

---

#### Vertical Loading & Bending Moments
$$R_{PV} + R_{QV} = 7640 + 6200 + 3441 = 17\,281\text{ N}$$
Taking moments about $P$:
$$R_{QV} \times 1.8 = 7640 \times 1.65 + 6200 \times 1.35 + 3441 \times 0.6 = 23\,041 \implies R_{QV} = 12\,800\text{ N}, \quad R_{PV} = 4481\text{ N}$$
$$M_{BV} = 4481 \times 0.6 = 2690\text{ N}\cdot\text{m}$$
$$M_{CV} = 4481 \times 1.35 - 3441 \times 0.75 = 3470\text{ N}\cdot\text{m}$$
$$M_{DV} = 12\,800 \times 0.15 = 1920\text{ N}\cdot\text{m}$$

---

#### Horizontal Loading & Bending Moments
$$R_{PH} + R_{QH} = 2780 + 3580 = 6360\text{ N}$$
Taking moments about $P$:
$$R_{QH} \times 1.8 = 2780 \times 1.65 + 3580 \times 1.35 = 9420 \implies R_{QH} = 5233\text{ N}, \quad R_{PH} = 1127\text{ N}$$
$$M_{BH} = 1127 \times 0.6 = 676\text{ N}\cdot\text{m}$$
$$M_{CH} = 1127 \times 1.35 = 1521\text{ N}\cdot\text{m}$$
$$M_{DH} = 5233 \times 0.15 = 785\text{ N}\cdot\text{m}$$

---

#### Resultant Bending Moments
$$\text{Resultant } M_B = \sqrt{(2690)^2 + (676)^2} = 2774\text{ N}\cdot\text{m}$$
$$\text{Resultant } M_C = \sqrt{(3470)^2 + (1521)^2} = 3790\text{ N}\cdot\text{m}$$
$$\text{Resultant } M_D = \sqrt{(1920)^2 + (785)^2} = 2074\text{ N}\cdot\text{m}$$

Maximum resultant bending moment occurs at $C$:
$$\mathbf{M = M_C = 3790\text{ N}\cdot\text{m}}$$
Maximum torque at $C$ (torque corresponding to $30\text{ kW}$):
$$T = T_D = 1146\text{ N}\cdot\text{m}$$

---

#### Diameter Calculation
Let $d = \text{Diameter of the shaft in mm}$.

1. **According to Maximum Shear Stress Theory:**
   $$T_e = \sqrt{(K_m \times M)^2 + (K_t \times T)^2} = \sqrt{(2 \times 3790)^2 + (1.5 \times 1146)^2} = 7772\text{ N}\cdot\text{m} = 7772 \times 10^3\text{ N-mm}$$
   $$7772 \times 10^3 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times d^3 \times 42 = 8.25 d^3$$
   $$d^3 = \frac{7772 \times 10^3}{8.25} = 942 \times 10^3 \implies d = 98\text{ mm}$$

2. **According to Maximum Normal Stress Theory:**
   $$M_e = \frac{1}{2} [K_m \times M + T_e] = \frac{1}{2} [2 \times 3790 + 7772] = 7676\text{ N}\cdot\text{m} = 7676 \times 10^3\text{ N-mm}$$
   $$7676 \times 10^3 = \frac{\pi}{32} \times d^3 \times \sigma_b = \frac{\pi}{32} \times d^3 \times 84 = 8.25 d^3$$
   $$d^3 = \frac{7676 \times 10^3}{8.25} = 930 \times 10^3 \implies d = 97.6\text{ mm}$$

Taking the larger of the two values, we have:
$$d = 98\text{ mm} \quad \text{say } \mathbf{d = 100\text{ mm}}$$

---

## Example 14.18

### Problem Statement
A hollow shaft is subjected to a maximum torque of $1.5\text{ kN-m}$ and a maximum bending moment of $3\text{ kN-m}$. It is subjected, at the same time, to an axial load of $10\text{ kN}$. Assume that the load is applied gradually and the ratio of the inner diameter to the outer diameter is $0.5$. If the outer diameter of the shaft is $80\text{ mm}$, find the shear stress induced in the shaft.

---

### Solution

#### Given Data
$T = 1.5\text{ kN-m} = 1.5 \times 10^3\text{ N-m}$, $M = 3\text{ kN-m} = 3 \times 10^3\text{ N-m}$, $F = 10\text{ kN} = 10 \times 10^3\text{ N}$, $k = d_i / d_o = 0.5$, $d_o = 80\text{ mm} = 0.08\text{ m}$.

Let $\tau = \text{Shear stress induced in the shaft}$.

Since the load is applied gradually, from Table 14.2:
$$K_m = 1.5 \quad \text{and} \quad K_t = 1.0$$
$$\alpha = 1 \quad \text{(for axial tensile loading)}$$

---

We know that equivalent twisting moment for a hollow shaft ($T_e$):
$$T_e = \sqrt{\left[K_m \cdot M + \frac{\alpha \cdot F \cdot d_o (1 + k^2)}{8}\right]^2 + (K_t \cdot T)^2}$$
$$= \sqrt{\left[1.5 \times 3 \times 10^3 + \frac{1 \times 10 \times 10^3 \times 0.08 (1 + 0.5^2)}{8}\right]^2 + (1 \times 1.5 \times 10^3)^2}$$
$$= \sqrt{(4500 + 125)^2 + (1500)^2} = 4862\text{ N-m} = 4862 \times 10^3\text{ N-mm}$$

We also know that equivalent twisting moment for a hollow shaft ($T_e$):
$$4862 \times 10^3 = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4) = \frac{\pi}{16} \times \tau \times (80)^3 [1 - (0.5)^4] = 94\,260 \tau$$
$$\tau = \frac{4862 \times 10^3}{94\,260} = 51.6\text{ N/mm}^2 = \mathbf{51.6\text{ MPa}}$$

---

## Example 14.19

### Problem Statement
A hollow shaft of $0.5\text{ m}$ outside diameter and $0.3\text{ m}$ inside diameter is used to drive a propeller of a marine vessel. The shaft is mounted on bearings $6\text{ metre}$ apart and it transmits $5600\text{ kW}$ at $150\text{ r.p.m.}$ The maximum axial propeller thrust is $500\text{ kN}$ and the shaft weighs $70\text{ kN}$.
Determine:
1. The maximum shear stress developed in the shaft, and
2. The angular twist between the bearings.

---

### Solution

#### Given Data
$d_o = 0.5\text{ m}$, $d_i = 0.3\text{ m}$, $P = 5600\text{ kW} = 5600 \times 10^3\text{ W}$, $L = 6\text{ m}$, $N = 150\text{ r.p.m.}$, $F = 500\text{ kN} = 500 \times 10^3\text{ N}$, $W = 70\text{ kN} = 70 \times 10^3\text{ N}$.

---

#### 1. Maximum shear stress developed in the shaft
Let $\tau = \text{Maximum shear stress developed in the shaft}$.

We know that torque transmitted by the shaft ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{5600 \times 10^3 \times 60}{2 \pi \times 150} = 356\,460\text{ N}\cdot\text{m}$$

and maximum bending moment ($M$):
$$M = \frac{W \cdot L}{8} = \frac{70 \times 10^3 \times 6}{8} = 52\,500\text{ N}\cdot\text{m}$$

Least radius of gyration ($K$):
$$K = \sqrt{\frac{I}{A}} = \sqrt{\frac{\frac{\pi}{64} [(d_o)^4 - (d_i)^4]}{\frac{\pi}{4} [(d_o)^2 - (d_i)^2]}} = \frac{1}{4} \sqrt{(d_o)^2 + (d_i)^2} = \frac{1}{4} \sqrt{(0.5)^2 + (0.3)^2} = 0.1458\text{ m}$$

Slenderness ratio ($L / K$):
$$\frac{L}{K} = \frac{6}{0.1458} = 41.15$$

Column factor ($\alpha$):
$$\alpha = \frac{1}{1 - 0.0044 (L/K)} = \frac{1}{1 - 0.0044 \times 41.15} = \frac{1}{1 - 0.18} = 1.22 \quad \text{--- (since } L/K < 115\text{)}$$

From Table 14.2 (gradually applied load):
$$K_m = 1.5, \quad K_t = 1.0, \quad k = \frac{d_i}{d_o} = \frac{0.3}{0.5} = 0.6$$

We know that equivalent twisting moment for a hollow shaft ($T_e$):
$$T_e = \sqrt{\left[K_m \cdot M + \frac{\alpha \cdot F \cdot d_o (1 + k^2)}{8}\right]^2 + (K_t \cdot T)^2}$$
$$= \sqrt{\left[1.5 \times 52\,500 + \frac{1.22 \times 500 \times 10^3 \times 0.5 (1 + 0.6^2)}{8}\right]^2 + (1 \times 356\,460)^2}$$
$$= \sqrt{(78\,750 + 51\,850)^2 + (356\,460)^2} = 380 \times 10^3\text{ N}\cdot\text{m}$$

We also know that equivalent twisting moment for a hollow shaft ($T_e$):
$$380 \times 10^3 = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4) = \frac{\pi}{16} \times \tau \times (0.5)^3 [1 - (0.6)^4] = 0.02 \tau$$
$$\tau = \frac{380 \times 10^3}{0.02} = 19 \times 10^6\text{ N/m}^2 = \mathbf{19\text{ MPa}}$$

---

#### 2. Angular twist between the bearings
Let $\theta = \text{Angular twist between bearings in radians}$.

Polar moment of inertia for a hollow shaft ($J$):
$$J = \frac{\pi}{32} [(d_o)^4 - (d_i)^4] = \frac{\pi}{32} [(0.5)^4 - (0.3)^4] = 0.00534\text{ m}^4$$

From torsion equation $\frac{T}{J} = \frac{G \theta}{L}$ (taking $G = 84\text{ GPa} = 84 \times 10^9\text{ N/m}^2$):
$$\theta = \frac{T \cdot L}{G \cdot J} = \frac{356\,460 \times 6}{84 \times 10^9 \times 0.00534} = 0.0048\text{ rad}$$
$$\theta = 0.0048 \times \frac{180}{\pi} = \mathbf{0.275^\circ}$$

---

## Example 14.20

### Problem Statement
A hollow steel shaft is to transmit $20\text{ kW}$ at $300\text{ r.p.m.}$ The loading is such that the maximum bending moment is $1000\text{ N-m}$, the maximum torsional moment is $500\text{ N-m}$ and axial compressive load is $15\text{ kN}$. The shaft is supported on rigid bearings $1.5\text{ m}$ apart. The maximum permissible shear stress on the shaft is $40\text{ MPa}$. The inside diameter is $0.8$ times the outside diameter. The load is cyclic in nature and applied with shocks. The values for the shock factors are $K_t = 1.5$ and $K_m = 1.6$.

---

### Solution

#### Given Data
$P = 20\text{ kW}$ *(superfluous)*, $N = 300\text{ r.p.m.}$ *(superfluous)*, $M = 1000\text{ N-m} = 1000 \times 10^3\text{ N-mm}$, $T = 500\text{ N-m} = 500 \times 10^3\text{ N-mm}$, $F = 15\text{ kN} = 15\,000\text{ N}$, $L = 1.5\text{ m} = 1500\text{ mm}$, $\tau = 40\text{ MPa} = 40\text{ N/mm}^2$, $d_i = 0.8 d_o$ or $k = d_i / d_o = 0.8$, $K_t = 1.5$, $K_m = 1.6$.

---

Let $d_o = \text{Outside diameter of the shaft, and } d_i = \text{Inside diameter of the shaft} = 0.8 d_o$.

Radius of gyration of the hollow shaft ($K$):
$$K = \sqrt{\frac{I}{A}} = \sqrt{\frac{\frac{\pi}{64} [(d_o)^4 - (d_i)^4]}{\frac{\pi}{4} [(d_o)^2 - (d_i)^2]}} = \frac{\sqrt{(d_o)^2 + (d_i)^2}}{4} = \frac{d_o \sqrt{1 + (0.8)^2}}{4} = 0.32 d_o$$

Column factor for compressive loads ($\alpha$):
$$\alpha = \frac{1}{1 - 0.0044 (L/K)} = \frac{1}{1 - 0.0044 (1500 / 0.32 d_o)} = \frac{1}{1 - 20.6 / d_o}$$

We know that equivalent twisting moment for a hollow shaft ($T_e$):
$$T_e = \sqrt{\left[K_m \cdot M + \frac{\alpha \cdot F \cdot d_o (1 + k^2)}{8}\right]^2 + (K_t \cdot T)^2}$$
$$= \sqrt{\left[1.6 \times 1000 \times 10^3 + \frac{\frac{1}{1 - 20.6/d_o} \times 15\,000 \times d_o (1 + 0.8^2)}{8}\right]^2 + (1.5 \times 500 \times 10^3)^2}$$
$$= \sqrt{\left[1600 \times 10^3 + \frac{3075 d_o}{1 - 20.6/d_o}\right]^2 + (750 \times 10^3)^2} \quad \text{--- (i)}$$

We also know that equivalent twisting moment for a hollow shaft ($T_e$):
$$T_e = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4) = \frac{\pi}{16} \times 40 \times (d_o)^3 (1 - 0.8^4) = 4.65 (d_o)^3 \quad \text{--- (ii)}$$

Equating equations (i) and (ii):
$$4.65 (d_o)^3 = \sqrt{\left[1600 \times 10^3 + \frac{3075 d_o}{1 - 20.6/d_o}\right]^2 + (750 \times 10^3)^2}$$

Solving this expression by hit and trial method:
$$d_o = 76.32\text{ mm} \quad \text{say } \mathbf{d_o = 80\text{ mm}}$$
$$d_i = 0.8 d_o = 0.8 \times 80 = \mathbf{64\text{ mm}}$$

> [!NOTE]
> **Minimum Bound for Trial:** Without axial load, $T_e = \sqrt{(1.6 \times 1000 \times 10^3)^2 + (1.5 \times 500 \times 10^3)^2} = 1767 \times 10^3\text{ N-mm} \implies 4.65 (d_o)^3 = 1767 \times 10^3 \implies d_o = 72.4\text{ mm}$. Thus trial value must be $> 72.4\text{ mm}$.

---

## Example 14.21

### Problem Statement
A steel spindle transmits $4\text{ kW}$ at $800\text{ r.p.m.}$ The angular deflection should not exceed $0.25^\circ$ per metre of the spindle. If the modulus of rigidity for the material of the spindle is $84\text{ GPa}$, find the diameter of the spindle and the shear stress induced in the spindle.

---

### Solution

#### Given Data
$P = 4\text{ kW} = 4000\text{ W}$, $N = 800\text{ r.p.m.}$, $\theta = 0.25^\circ = 0.25 \times \frac{\pi}{180} = 0.0044\text{ rad}$, $L = 1\text{ m} = 1000\text{ mm}$, $G = 84\text{ GPa} = 84 \times 10^9\text{ N/m}^2 = 84 \times 10^3\text{ N/mm}^2$.

---

#### 1. Diameter of the spindle
Let $d = \text{Diameter of the spindle in mm}$.

We know that torque transmitted by the spindle ($T$):
$$T = \frac{P \times 60}{2 \pi N} = \frac{4000 \times 60}{2 \pi \times 800} = 47.74\text{ N}\cdot\text{m} = 47\,740\text{ N-mm}$$

We also know that:
$$\frac{T}{J} = \frac{G \cdot \theta}{L} \implies J = \frac{T \cdot L}{G \cdot \theta}$$
$$\frac{\pi}{32} d^4 = \frac{47\,740 \times 1000}{84 \times 10^3 \times 0.0044} = 129\,167$$
$$d^4 = \frac{129\,167 \times 32}{\pi} = 1.3 \times 10^6 \implies d = 33.87\text{ mm} \quad \text{say } \mathbf{d = 35\text{ mm}}$$

---

#### 2. Shear stress induced in the spindle
Let $\tau = \text{Shear stress induced in the spindle}$.

We know that torque transmitted by the spindle ($T$):
$$47\,740 = \frac{\pi}{16} \times d^3 \times \tau = \frac{\pi}{16} \times (35)^3 \times \tau = 8420 \tau$$
$$\tau = \frac{47\,740}{8420} = 5.67\text{ N/mm}^2 = \mathbf{5.67\text{ MPa}}$$

---

## Example 14.22

### Problem Statement
Compare the weight, strength and stiffness of a hollow shaft of the same external diameter as that of solid shaft. The inside diameter of the hollow shaft being half the external diameter. Both the shafts have the same material and length.

---

### Solution

#### Given Data
$d_o = d$, $d_i = d_o / 2$ or $k = d_i / d_o = 1 / 2 = 0.5$.

---

#### 1. Comparison of weight
We know that weight of a hollow shaft ($W_H$):
$$W_H = \text{Cross-sectional area} \times \text{Length} \times \text{Density} = \frac{\pi}{4} [(d_o)^2 - (d_i)^2] \times \text{Length} \times \text{Density} \quad \text{--- (i)}$$

and weight of the solid shaft ($W_S$):
$$W_S = \frac{\pi}{4} d^2 \times \text{Length} \times \text{Density} \quad \text{--- (ii)}$$

Since both shafts have the same material and length, dividing equation (i) by equation (ii):
$$\frac{W_H}{W_S} = \frac{(d_o)^2 - (d_i)^2}{d^2} = \frac{(d_o)^2 - (d_i)^2}{(d_o)^2} = 1 - \left(\frac{d_i}{d_o}\right)^2 = 1 - k^2 = 1 - (0.5)^2 = \mathbf{0.75}$$

---

#### 2. Comparison of strength
We know that strength of the hollow shaft ($T_H$):
$$T_H = \frac{\pi}{16} \times \tau \times (d_o)^3 (1 - k^4) \quad \text{--- (iii)}$$

and strength of the solid shaft ($T_S$):
$$T_S = \frac{\pi}{16} \times \tau \times d^3 \quad \text{--- (iv)}$$

Dividing equation (iii) by equation (iv):
$$\frac{T_H}{T_S} = \frac{(d_o)^3 (1 - k^4)}{d^3} = 1 - k^4 = 1 - (0.5)^4 = \mathbf{0.9375}$$

---

#### 3. Comparison of stiffness
We know that stiffness $= \frac{T}{\theta} = \frac{G \cdot J}{L}$.

Stiffness of a hollow shaft ($S_H$):
$$S_H = \frac{G}{L} \times \frac{\pi}{32} [(d_o)^4 - (d_i)^4] \quad \text{--- (v)}$$

and stiffness of a solid shaft ($S_S$):
$$S_S = \frac{G}{L} \times \frac{\pi}{32} d^4 \quad \text{--- (vi)}$$

Dividing equation (v) by equation (vi):
$$\frac{S_H}{S_S} = \frac{(d_o)^4 - (d_i)^4}{d^4} = 1 - \left(\frac{d_i}{d_o}\right)^4 = 1 - k^4 = 1 - (0.5)^4 = \mathbf{0.9375}$$
