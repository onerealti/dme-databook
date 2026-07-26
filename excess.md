# Excess Content (Beyond Syllabus)

All examples, exercises, blueprint sections, and questions that fall **outside** the PC402ME 2025–26 syllabus, collected from every folder.

---

## From `shafts/` — Belt/Gear Force Resolution & Rigidity

### Blueprint Sections (from execution_blueprint.md)

**1.3 Belt Drive Loads** — not in syllabus (Chapter 18 content):

> * **IF** Belt drive is mounted on shaft (Pulley radius $R = D/2$):
>   $$T = (T_1 - T_2) R$$
>   * **IF** Tension ratio $r = T_1 / T_2$ is given:
>     $$T_1 = \frac{T}{R(1 - 1/r)}, \quad T_2 = \frac{T_1}{r}$$
>   * **ELSE IF** Friction coefficient $\mu$ and lap angle $\theta$ are given:
>     $$\frac{T_1}{T_2} = e^{\mu \theta} \implies T_1 = \frac{T}{R(1 - e^{-\mu\theta})}, \quad T_2 = T_1 \cdot e^{-\mu\theta}$$
>   * **Transverse Belt Force Resolution:**
>     * **IF** Belt drive is **Vertical**: $W_V = T_1 + T_2 + W_{\text{pulley}}, \quad W_H = 0$
>     * **IF** Belt drive is **Horizontal**: $W_H = T_1 + T_2, \quad W_V = W_{\text{pulley}}$
>     * **IF** Belt drive is **Inclined at angle $\alpha$**:
>       $$W_H = (T_1 + T_2)\cos\alpha, \quad W_V = W_{\text{pulley}} + (T_1 + T_2)\sin\alpha$$

**1.4 Gear Drive Loads** — not in syllabus (Chapter 28 content):

> * **IF** Spur gear is mounted on shaft (Pitch diameter $d_p = m \cdot Z$, pressure angle $\phi$):
>   $$F_t = \frac{2 T}{d_p}, \quad F_r = F_t \tan\phi$$
>   * **IF** Meshing in **Horizontal plane**: $W_H = F_r, \quad W_V = F_t + W_{\text{gear}}$
>   * **IF** Meshing in **Vertical plane**: $W_H = F_t, \quad W_V = F_r + W_{\text{gear}}$

**Rigidity-Based Design** — not in syllabus:

> * **IF** Torsional Rigidity limit $\theta^\circ$ over length $L$ is specified:
>   $$d_{\text{rigidity}} = \sqrt[4]{\frac{584 T L}{G \theta^\circ}}$$
>   $$d_{\text{final}} = \max(d_{\text{strength}}, d_{\text{rigidity}})$$

**Q8 (Rigidity):** Torsional rigidity ($\theta = \frac{584 TL}{Gd^4}$). Lateral rigidity ($y = \frac{WL^3}{48EI}$).

---

## From `couplings/` — Marine, Universal & Oldham

### Blueprint Section 4D — Marine Flange Coupling

> 1. **Empirical Dimensions:** Pitch Circle $D_b = 1.6d$, Flange Thickness $t_f = 0.25d \text{ to } 0.3d$, Outer Dia $D_1 = 2.2d \text{ to } 2.5d$ *(No Key Required)*
> 2. **Fitted Bolt Diameter ($d_b$):** $d_b = \sqrt{\frac{8 T_{\max}}{\pi n D_b \tau_b}}$

### Blueprint Section 4F — Universal (Hooke's) Coupling

> 1. **Shaft Diameter:** $d = \sqrt[3]{\frac{16 T_{\max}}{\pi \tau_s}}$
> 2. **Cross-Pin Diameter ($d_p$):** $d_p = \sqrt{\frac{2 T_{\max}}{\pi \tau_p d}}$

### Example 13.11 — Marine Engine Flange Coupling

The shaft and the flange of a marine engine are to be designed for flange coupling, in which the flange is forged on the end of the shaft. The following particulars are to be considered in the design:
- **Power of the engine:** $3\text{ MW}$
- **Speed of the engine:** $100\text{ rpm}$
- **Permissible shear stress in bolts and shaft:** $60\text{ MPa}$
- **Number of bolts used:** $8$
- **Pitch circle diameter of bolts:** $1.6 \times \text{Diameter of shaft}$

Find: 1. Diameter of shaft, 2. Diameter of bolts, 3. Thickness of flange, 4. Diameter of flange

### Exercise 10 — Marine Flange Coupling

A marine type flange coupling is used to transmit $3.75\text{ MW}$ at $150\text{ rpm}$. The allowable shear stress in the shaft and bolts may be taken as $50\text{ MPa}$. Determine the shaft diameter and the diameter of the bolts.

> **Ans:** Shaft diameter = $300\text{ mm}$, Bolt diameter = $56\text{ mm}$

### Example 13.13 — Universal (Hooke's) Coupling

A universal coupling is used to connect two mild steel shafts transmitting a torque of $5000\text{ N}\cdot\text{m}$. Assuming that the shafts are subjected to torsion only, find the diameter of the shafts and pins. The allowable shear stresses for the shaft and pin may be taken as $60\text{ MPa}$ and $28\text{ MPa}$ respectively.

### Exercise 12 — Universal Coupling

A universal coupling is used to connect two mild steel shafts transmitting a torque of $6000\text{ N}\cdot\text{m}$. Assuming that the shafts are subjected to torsion only, find the diameter of the shaft and the pin. The allowable shear stresses for the shaft and pin may be taken as $55\text{ MPa}$ and $30\text{ MPa}$ respectively.

> **Ans:** $d = 85\text{ mm}$, $d_p = 40\text{ mm}$

---

## From `Cotter and Knuckle Joints/` — Gib & Cotter, Piston Rod, Foundation Bolt, Turnbuckle

### Example 12.4 — Gib and Cotter (Square Rods)

Design a gib and cotter joint as shown in Fig. 12.13, to carry a maximum load of $35\text{ kN}$. Assuming that the gib, cotter, and rod are of the same material and have the following allowable stresses:
- $\sigma_t = 20\text{ MPa}$; $\tau = 15\text{ MPa}$; $\sigma_c = 50\text{ MPa}$

### Exercise 4 — Gib and Cotter

The big end of a connecting rod is subjected to a load of $40\text{ kN}$. The diameter of the circular part adjacent to the strap is $50\text{ mm}$. Design the joint assuming the permissible tensile stress in the strap as $30\text{ MPa}$ and permissible shear stress in the cotter and gib as $20\text{ MPa}$.

> **Ans:** $B_1 = 50\text{ mm}$; $t = 15\text{ mm}$; $t_1 = 15\text{ mm}$; $t_3 = 22\text{ mm}$; $B = 70\text{ mm}$

### Example 12.5 — Piston Rod to Crosshead Joint

Design a cotter joint to connect a piston rod to the crosshead of a double-acting steam engine. The diameter of the cylinder is $300\text{ mm}$ and the steam pressure is $1\text{ N/mm}^2$. The allowable stresses for the material of the cotter and piston rod are as follows:
- $\sigma_t = 50\text{ MPa}$; $\tau = 40\text{ MPa}$; $\sigma_c = 84\text{ MPa}$

### Exercise 5 — Piston Rod to Crosshead

Design a cotter joint to connect a piston rod to the crosshead. The maximum steam pressure on the piston rod is $35\text{ kN}$. Assuming that all the parts are made of the same material having the following permissible stresses: $\sigma_t = 50\text{ MPa}$; $\tau = 60\text{ MPa}$; and $\sigma_c = 90\text{ MPa}$.

> **Ans:** $d_2 = 40\text{ mm}$; $t = 12\text{ mm}$; $d_3 = 75\text{ mm}$; $L = 88\text{ mm}$; $d = 44\text{ mm}$; $d_1 = 38\text{ mm}$

### Example 12.6 — Cotter Foundation Bolt

Design and draw a cottered foundation bolt which is subjected to a maximum pull of $50\text{ kN}$. The allowable stresses are:
- $\sigma_t = 80\text{ MPa}$; $\tau = 50\text{ MPa}$; $\sigma_c = 100\text{ MPa}$

### Exercise 6 — Cotter Foundation Bolt

Design and draw a cotter foundation bolt to take a load of $90\text{ kN}$. Assume the permissible stresses as follows: $\sigma_t = 50\text{ MPa}$, $\tau = 60\text{ MPa}$, and $\sigma_c = 100\text{ MPa}$.

> **Ans:** $d = 50\text{ mm}$; $d_1 = 60\text{ mm}$; $t = 15\text{ mm}$; $b = 60\text{ mm}$

### Example 12.9 — Turnbuckle

The pull in the tie rod of an iron roof truss is $50\text{ kN}$. Design a suitable adjustable screwed joint (turnbuckle). The permissible stresses are:
- **Tension** ($\sigma_t$) = $75\text{ MPa}$; **Shear** ($\tau$) = $37.5\text{ MPa}$; **Crushing** ($\sigma_c$) = $90\text{ MPa}$

### Exercise 9 — Turnbuckle

The pull in the tie rod of a roof truss is $44\text{ kN}$. Design a suitable adjustable screw joint. The permissible tensile and shear stresses are $75\text{ MPa}$ and $37.5\text{ MPa}$ respectively. Draw full size two suitable views of the joint.

> **Ans:** $d = 36\text{ mm}$; $l = 11\text{ mm}$; $D = 45\text{ mm}$; $D_2 = 58\text{ mm}$

### Questions (Excessive)

- **Q4:** Why are gibs used in a cotter joint? Explain with the help of a neat sketch the use of single and double gibs.
- **Q5:** Describe the design procedure of a gib and cotter joint.
- **Q8:** Explain the purpose of a turnbuckle and describe its design procedure.

---

## From `welded joints/` — Fatigue, Circular Weld Torque & Bending

### Example 10.2 — Circular Fillet Weld under Torque

A 50 mm diameter solid shaft is welded to a flat plate by 10 mm fillet weld as shown in **Fig. 10.12**. Find the maximum torque that the welded joint can sustain if the maximum shear stress intensity in the weld material is not to exceed 80 MPa.

### Example 10.3 — Rectangular Plate Weld under Torque

A plate 1 m long, 60 mm thick is welded to another plate at right angles to each other by 15 mm fillet weld, as shown in **Fig. 10.13**. Find the maximum torque that the welded joint can sustain if the permissible shear stress intensity in the weld material is not to exceed 80 MPa.

### Example 10.4 — Parallel Fillet Weld (Static + Fatigue)

A plate 100 mm wide and 12.5 mm thick is to be welded to another plate by means of parallel fillet welds. The plates are subjected to a load of 50 kN. Find the length of the weld so that the maximum stress does not exceed 56 MPa. Consider the joint first under static loading and then under fatigue loading.

### Example 10.5 — Transverse + Parallel Weld (Static + Fatigue)

A plate 75 mm wide and 12.5 mm thick is joined with another plate by a single transverse weld and a double parallel fillet weld as shown in **Fig. 10.15**. The maximum tensile and shear stresses are 70 MPa and 56 MPa respectively. Find the length of each parallel fillet weld, if the joint is subjected to both static and fatigue loading.

### Example 10.6 — Weld Run Length (Variable Loads)

Determine the length of the weld run for a plate of size 120 mm wide and 15 mm thick to be welded to another plate by means of:
1. A single transverse weld; and
2. Double parallel fillet welds when the joint is subjected to variable loads.

### Example 10.7 — Fillet Weld 'T' Shear Plane Analysis

The fillet welds of equal legs are used to fabricate a 'T' as shown in **Fig. 10.17 (a) and (b)**, where $s$ is the leg size and $l$ is the length of weld. Locate the plane of maximum shear stress in each of the following loading patterns:
1. Load parallel to the weld (neglect eccentricity), and
2. Load at right angles to the weld (transverse load).
Find the ratio of these limiting loads.

### Example 10.10 — Shaft Welded to Plate (Torque + Bending)

A 50 mm diameter solid shaft is welded to a flat plate as shown in **Fig. 10.25**. If the size of the weld is 15 mm, find the maximum normal and shear stress in the weld.

### Example 10.11 — Rectangular Bar Welded to Support (Bending)

A rectangular cross-section bar is welded to a support by means of fillet welds as shown in **Fig. 10.26**. Determine the size of the welds, if the permissible shear stress in the weld is limited to 75 MPa.

### Example 10.12 — Arm Welded to Hollow Shaft (Bending)

An arm A is welded to a hollow shaft at section '1'. The hollow shaft is welded to a plate C at section '2'. The arrangement is shown in **Fig. 10.27**, along with dimensions. A force $P = 15\text{ kN}$ acts at arm A perpendicular to the axis of the arm. Calculate the size of weld at section '1' and '2'. The permissible shear stress in the weld is 120 MPa.

### Example 10.14 — Cantilever Plate Weld (Bending)

A rectangular steel plate is welded as a cantilever to a vertical column and supports a single concentrated load $P$, as shown in **Fig. 10.30**. Determine the weld size if shear stress in the same is not to exceed 140 MPa.

### Example 10.15 — Channel Welded to Plate (Eccentric + Bending)

Find the maximum shear stress induced in the weld of 6 mm size when a channel, as shown in **Fig. 10.32**, is welded to a plate and loaded with 20 kN force at a distance of 200 mm.

### Example 10.16 — Bracket Weld (Bending)

The bracket, as shown in **Fig. 10.34**, is designed to carry a dead weight of $P = 15\text{ kN}$. What sizes of the fillet welds are required at the top and bottom of the bracket? Assume the forces act through the points A and B. The welds are produced by shielded arc welding process with a permissible strength of 150 MPa.

### Exercises (Excessive)

**Exercise 4.** A circular steel bar 50 mm diameter and 200 mm long is welded perpendicularly to a steel plate to form a cantilever to be loaded with 5 kN at the free end. Determine the size of the weld, assuming the allowable stress in the weld as 100 MPa.
> **[Ans. 7.2 mm]**

**Exercise 5.** A 65 mm diameter solid shaft is to be welded to a flat plate by a fillet weld around the circumference of the shaft. Determine the size of the weld if the torque on the shaft is $3\text{ kN}\cdot\text{m}$. The allowable shear stress in the weld is 70 MPa.
> **[Ans. 10 mm]**

**Exercise 6.** A solid rectangular shaft of cross-section $80\text{ mm} \times 50\text{ mm}$ is welded by a 5 mm fillet weld on all sides to a flat plate with axis perpendicular to the plate surface. Find the maximum torque that can be applied to the shaft, if the shear stress in the weld is not to exceed 85 MPa.
> **[Ans. 32.07 kN-m]**

### Questions (Excessive)

**Q9.** Show that the normal stress in the case of an annular fillet weld subjected to bending is given by:
$$\sigma_b = \frac{5.66 M}{\pi s d^2}$$

---

## From `power screws/` — Everything Except Screw Jack & Differential/Compound

> The syllabus only requires: *"Introduction, Design of a Screw Jack, Differential and Compound screws"*

### Example 17.1 — Hand Wheel Screw (Torque to Raise)

A vertical screw with single start square threads of 50 mm mean diameter and 12.5 mm pitch is raised against a load of 10 kN by means of a hand wheel, the boss of which is threaded to act as a nut. The axial load is taken up by a thrust collar which supports the wheel boss and has a mean diameter of 60 mm. The coefficient of friction is 0.15 for the screw and 0.18 for the collar. If the tangential force applied by each hand to the wheel is 100 N, find suitable diameter of the hand wheel.

### Example 17.2 — Motor-Driven Power Screw

An electric motor driven power screw moves a nut in a horizontal plane against a force of 75 kN at a speed of 300 mm/min. The screw has a single square thread of 6 mm pitch on a major diameter of 40 mm. The coefficient of friction at screw threads is 0.1. Estimate power of the motor.

### Example 17.3 — Broaching Machine Screw

The cutter of a broaching machine is pulled by square threaded screw of 55 mm external diameter and 10 mm pitch. The operating nut takes the axial load of 400 N on a flat surface of 60 mm and 90 mm internal and external diameters respectively. If the coefficient of friction is 0.15 for all contact surfaces on the nut, determine the power required to rotate the operating nut when the cutting speed is 6 m/min. Also find the efficiency of the screw.

### Example 17.4 — Two-Start Screw (Raise & Lower)

A vertical two start square threaded screw of a 100 mm mean diameter and 20 mm pitch supports a vertical load of 18 kN. The axial thrust on the screw is taken by a collar bearing of 250 mm outside diameter and 100 mm inside diameter. Find the force required at the end of a lever which is 400 mm long in order to lift and lower the load. The coefficient of friction for the vertical screw and nut is 0.15 and that for collar bearing is 0.20.

### Example 17.5 — Work Done & Efficiency

The mean diameter of the square threaded screw having pitch of 10 mm is 50 mm. A load of 20 kN is lifted through a distance of 170 mm. Find the work done in lifting the load and the efficiency of the screw, when:
1. The load rotates with the screw, and
2. The load rests on the loose head which does not rotate with the screw.

The external and internal diameter of the bearing surface of the loose head are 60 mm and 10 mm respectively. The coefficient of friction for the screw and the bearing surface may be taken as 0.08.

### Example 17.6 — Lathe Lead Screw (Acme Threads)

The lead screw of a lathe has Acme threads of 50 mm outside diameter and 8 mm pitch. The screw must exert an axial pressure of 2500 N in order to drive the tool carriage. The thrust is carried on a collar 110 mm outside diameter and 55 mm inside diameter and the lead screw rotates at 30 r.p.m. Determine:
1. The power required to drive the screw; and
2. The efficiency of the lead screw.

Assume a coefficient of friction of 0.15 for the screw and 0.12 for the collar.

### Example 17.7 — Double Start Screw (Stresses & Bearing Pressure)

A power screw having double start square threads of 25 mm nominal diameter and 5 mm pitch is acted upon by an axial load of 10 kN. The outer and inner diameters of screw collar are 50 mm and 20 mm respectively. The coefficient of thread friction and collar friction may be assumed as 0.2 and 0.15 respectively. The screw rotates at 12 r.p.m. Assuming uniform wear condition at the collar and allowable thread bearing pressure of 5.8 N/mm², find:
1. The torque required to rotate the screw;
2. The stress in the screw; and
3. The number of threads of nut in engagement with screw.

### Example 17.8 — Shaft Straightener Screw

The screw of a shaft straightener exerts a load of 30 kN as shown in Fig. 17.7. The screw is square threaded of outside diameter 75 mm and 6 mm pitch. Determine:
1. Force required at the rim of a 300 mm diameter hand wheel, assuming the coefficient of friction for the threads as 0.12;
2. Maximum compressive stress in the screw, bearing pressure on the threads and maximum shear stress in threads; and
3. Efficiency of the straightener.

### Example 17.9 — Sluice Gate Screw

A sluice gate weighing 18 kN is raised and lowered by means of square threaded screws, as shown in Fig. 17.8. The frictional resistance induced by water pressure against the gate when it is in its lowest position is 4000 N.
The outside diameter of the screw is 60 mm and pitch is 10 mm. The outside and inside diameter of washer is 150 mm and 50 mm respectively. The coefficient of friction between the screw and nut is 0.1 and for the washer and seat is 0.12. Find:
1. The maximum force to be exerted at the ends of the lever raising and lowering the gate;
2. Efficiency of the arrangement; and
3. Number of threads and height of nut, for an allowable bearing pressure of 7 N/mm².

### Example 17.10 — Triple Start Trapezoidal Screw (Overhauling)

The screw, as shown in Fig. 17.9 is operated by a torque applied to the lower end. The nut is loaded and prevented from turning by guides. Assume friction in the ball bearing to be negligible. The screw is a triple start trapezoidal thread. The outside diameter of the screw is 48 mm and pitch is 8 mm. The coefficient of friction of the threads is 0.15. Find:
1. Load which can be raised by a torque of 40 N-m;
2. Whether the screw is overhauling; and
3. Average bearing pressure between the screw and nut thread surface.

### Example 17.11 — C-Clamp (Trapezoidal Threads)

A C-clamp, as shown in Fig. 17.10, has trapezoidal threads of 12 mm outside diameter and 2 mm pitch. The coefficient of friction for screw threads is 0.12 and for the collar is 0.25. The mean radius of the collar is 6 mm. If the force exerted by the operator at the end of the handle is 80 N, find:
1. The length of handle;
2. The maximum shear stress in the body of the screw and where does this exist; and
3. The bearing pressure on the threads.

### Example 17.12 — Screw Press (Trapezoidal Threads)

A power transmission screw of a screw press is required to transmit maximum load of 100 kN and rotates at 60 r.p.m. Trapezoidal threads are as under:

| Nominal dia (mm) | 40 | 50 | 60 | 70 |
|---|---|---|---|---|
| Core dia (mm) | 32.5 | 41.5 | 50.5 | 59.5 |
| Mean dia (mm) | 36.5 | 46 | 55.5 | 65 |
| Core area (mm²) | 830 | 1353 | 2003 | 2781 |
| Pitch (mm) | 7 | 8 | 9 | 10 |

The screw thread friction coefficient is 0.12. Torque required for collar friction and journal bearing is about 10% of the torque to drive the load considering screw friction. Determine screw dimensions and its efficiency. Also determine motor power required to drive the screw. Maximum permissible compressive stress in screw is 100 MPa.

### Example 17.13 — Screw with Gear Wheel Drive

A vertical two start square threaded screw of 100 mm mean diameter and 20 mm pitch supports a vertical load of 18 kN. The nut of the screw is fitted in the hub of a gear wheel having 80 teeth which meshes with a pinion of 20 teeth. The mechanical efficiency of the pinion and gear wheel drive is 90 percent. The axial thrust on the screw is taken by a collar bearing 250 mm outside diameter and 100 mm inside diameter.
Assuming uniform pressure conditions, find minimum diameter of pinion shaft and height of nut, when coefficient of friction for the vertical screw and nut is 0.15 and that for the collar bearing is 0.20. The permissible shear stress in the shaft material is 56 MPa and allowable bearing pressure is 1.4 N/mm².

### Example 17.14 — Screw Press (Factor of Safety)

A screw press is to exert a force of 40 kN. The unsupported length of the screw is 400 mm. Nominal diameter of screw is 50 mm. The screw has square threads with pitch equal to 10 mm. The material of the screw and nut are medium carbon steel and cast iron respectively.
For the steel used take ultimate crushing stress as 320 MPa, yield stress in tension or compression as 200 MPa and that in shear as 120 MPa. Allowable shear stress for cast iron is 20 MPa and allowable bearing pressure between screw and nut is 12 N/mm². Young's modulus for steel = 210 kN/mm².
Determine the factor of safety of screw against failure. Find the dimensions of the nut. What is the efficiency of the arrangement? Take coefficient of friction between steel and cast iron as 0.13.

### Example 17.16 — Toggle Jack

A toggle jack as shown in Fig. 17.12, is to be designed for lifting a load of 4 kN. When the jack is in the top position, the distance between the centre lines of nuts is 50 mm and in the bottom position this distance is 210 mm. The eight links of the jack are symmetrical and 110 mm long. The link pins in the base are set 30 mm apart. The links, screw and pins are made from mild steel for which the permissible stresses are 100 MPa in tension and 50 MPa in shear. The bearing pressure on the pins is limited to 20 N/mm².
Assume the pitch of the square threads as 6 mm and the coefficient of friction between threads as 0.20.

### Exercise 1 — Hand Vice Screw

In a hand vice, the screw has double start square threads of 24 mm outside diameter. If the lever is 200 mm long and the maximum force that can be applied at the end of lever is 250 N, find the force with which the job is held in the jaws of the vice. Assume a coefficient of friction of 0.12.
> **[Ans. 17,420 N]**

### Exercise 2 — Bolt with Collar Bearing

A square threaded bolt of mean diameter 24 mm and pitch 5 mm is tightened by screwing a nut whose mean diameter of bearing surface is 50 mm. If the coefficient of friction for the nut and bolt is 0.1 and for the nut and bearing surfaces 0.16, find the force required at the end of a spanner 0.5 m long when the load on the bolt is 10 kN.
> **[Ans. 120 N]**

### Exercise 3 — Screw Jack (Swivel Head)

The spindle of a screw jack has a single start square thread with an outside diameter of 45 mm and a pitch of 10 mm. The spindle moves in a fixed nut. The load is carried on a swivel head but is not free to rotate. The bearing surface of the swivel head has a mean diameter of 60 mm. The coefficient of friction between the nut and screw is 0.12 and that between the swivel head and the spindle is 0.10.
Calculate the load which can be raised by efforts of 100 N each applied at the end of two levers each of effective length of 350 mm. Also determine the efficiency of the lifting arrangement.
> **[Ans. 9945 N ; 22.7%]**

### Exercise 4 — Planer Cross Bar Screw

The cross bar of a planer weighing 12 kN is raised and lowered by means of two square threaded screws of 38 mm outside diameter and 7 mm pitch. The screw is made of steel and a bronze nut of 38 mm thick. A steel collar has 75 mm outside diameter and 38 mm inside diameter. The coefficient of friction at the threads is assumed as 0.11 and at the collar 0.13. Find the force required at a radius of 100 mm to raise and lower the load.
> **[Ans. 402.5 N ; 267 N]**

### Exercise 5 — Lead Screw (Efficiency)

The lead screw of a lathe has square threads of 24 mm outside diameter and 5 mm pitch. In order to drive the tool carriage, the screw exerts an axial pressure of 2.5 kN. Find the efficiency of the screw and the power required to drive the screw, if it is to rotate at 30 r.p.m. Neglect bearing friction. Assume coefficient of friction of screw threads as 0.12.
> **[Ans. 37.76% ; 16.55 W]**

### Exercise 6 — Lead Screw (Acme Threads)

The lead screw of a lathe has Acme threads of 60 mm outside diameter and 8 mm pitch. It supplies drive to a tool carriage which needs an axial force of 2000 N. A collar bearing with inner and outer radius as 30 mm and 60 mm respectively is provided. The coefficient of friction for the screw threads is 0.12 and for the collar it is 0.10. Find the torque required to drive the screw and the efficiency of the screw.
> **[Ans. 18.5 N-m ; 13.6%]**

### Exercise 7 — Planer Screw (Stresses & Bearing Pressure)

A cross bar of a planer weighing 9 kN is raised and lowered by means of two square threaded screws of 40 mm outside diameter and 6 mm pitch. The screw is made of steel and nut of phosphor bronze having 42 mm height. A steel collar bearing with 30 mm mean radius takes the axial thrust. The coefficient of friction at the threads and at the collar may be assumed as 0.14 and 0.10 respectively.
Find the force required at a radius of 120 mm of a handwheel to raise and lower the load. Find also the shear stress in the nut material and the bearing pressure on the threads.
> **[Ans. 495 N, 346 N ; 1.7 MPa ; 1.84 N/mm²]**

### Exercise 8 — Machine Slide (Acme Threads)

A machine slide weighing 3000 N is elevated by a double start Acme threaded screw at the rate of 840 mm/min. If the coefficient of friction be 0.12, calculate the power to drive the slide. The end of the screw is carried on a thrust collar of 32 mm inside diameter and 58 mm outside diameter. The pitch of the screw thread is 6 mm and outside diameter of the screw is 40 mm. If the screw is of steel, is it strong enough to sustain the load? Draw a neat sketch of the system.
> **[Ans. 0.165 kW]**

### Exercise 9 — Sluice Valve Screw

A sluice valve, used in water pipe lines, consists of a gate raised by the spindle, which is rotated by the hand wheel. The spindle has single start square threads. The nominal diameter of the spindle is 36 mm and the pitch is 6 mm. The friction collar has inner and outer diameters of 32 mm and 50 mm respectively. The coefficient of friction at the threads and the collar are 0.12 and 0.18 respectively. The weight of the gate is 7.5 kN and the frictional resistance to open the valve due to water pressure is 2.75 kN.
Using uniform wear theory, determine:
1. Torque required to raise the gate; and
2. Overall efficiency.
> **[Ans. 136.85 N-m ; 7.1%]**

### Exercise 10 — Screw with Gear Drive (Stresses)

A vertical square threads screw of a 70 mm mean diameter and 10 mm pitch supports a vertical load of 50 kN. It passes through the boss of a spur gear wheel of 70 teeth which acts as a nut. In order to raise the load, the spur gear wheel is turned by means of a pinion having 20 teeth. The mechanical efficiency of pinion and gear wheel drive is 90%. The axial thrust on the screw is taken up by a collar bearing having a mean radius of 100 mm. The coefficient of friction for the screw and nut is 0.15 and that for collar bearing is 0.12. Find:
1. Torque to be applied to the pinion shaft;
2. Maximum principal and shear stresses in the screw; and
3. Height of nut, if the bearing pressure is limited to 12 N/mm².
> **[Ans. (a) 299.6 N-m ; (b) 26.6 N/mm², 19 N/mm² ; (c) 40 mm]**

### Exercise 11 — C-Clamp Screw & Nut

A single start square threaded screw is to be designed for a C-clamp. The axial load on the screw may be assumed to be 10 kN. A thrust pad is attached at the end of the screw whose mean diameter may be taken as 30 mm. The coefficient of friction for the screw threads and for the thrust pads is 0.12 and 0.08 respectively. The allowable tensile strength of the screw is 60 MPa and the allowable bearing pressure is 12 N/mm². Design the screw and nut.

| Nominal diameter (mm) | 16 | 18 | 20 | 22 |
|---|---|---|---|---|
| Core diameter (mm) | 13 | 15 | 17 | 19 |
| Pitch (mm) | 3 | 3 | 3 | 3 |

> **[Ans. $d_c = 17\text{ mm}$ ; $n = 10$, $h = 30\text{ mm}$]**

### Exercise 15 — Toggle Jack

Design a toggle jack to lift a load of 5 kN. The jack is to be so designed that the distance between the centre lines of nuts varies from 50 to 220 mm. The eight links are symmetrical and 120 mm long. The link pins in the base are set 30 mm apart. The links, screw and pins are made from mild steel for which the stresses are 90 MPa in tension and 50 MPa in shear. The bearing pressure on the pin is 20 N/mm². Assume the coefficient of friction between screw and nut as 0.15 and pitch of the square threaded screw as 6 mm.
> **[Ans. $d_c = 10\text{ mm}$ ; $d_o = 22\text{ mm}$ ; $d = 19\text{ mm}$ ; $n = 4$ ; $t = 24\text{ mm}$ ; $b = 33\text{ mm}$ ; $d_1 = 10\text{ mm}$ ; $t_1 = 7\text{ mm}$ ; $b_1 = 21\text{ mm}$]**

### Questions (Excessive)

1. Discuss the various types of power threads. Give at least two practical applications for each type. Discuss their relative advantages and disadvantages.
2. Why are square threads preferable to V-threads for power transmission?
3. How does the helix angle influence the efficiency of a square threaded screw?
4. What do you understand by overhauling of a screw?
5. What is the self-locking property of threads and where is it necessary?
6. Show that the efficiency of self-locking screws is less than 50 percent.
7. In the design of power screws, on what factors does the thread bearing pressure depend? Explain.
8. Why is a separate nut preferable to an integral nut with the body of a screw jack?
