# Table 10.1: Polar Moment of Inertia & Section Modulus for Weld Profiles (Unit Throat Thickness)

Properties of weld groups treating the weld as a line of unit throat thickness ($t_t = 1\text{ mm}$). To find actual $J$ or $Z$, multiply the unit value $J_u$ or $Z_w$ by throat thickness $0.707 \cdot s$.

---

### Weld Group Geometry Table

| Weld Profile / Group Type | Weld Layout Sketch | Unit Polar Moment of Inertia $J_u$ ($\text{mm}^3$) | Unit Section Modulus $Z_w$ ($\text{mm}^2$) | Location of Weld C.G. |
| :--- | :---: | :---: | :---: | :---: |
| **Circular Fillet Weld** *(Shaft of dia $d$)* | Circle of dia $d$ | $J_u = \frac{\pi \cdot d^3}{4}$ | $Z_w = \frac{\pi \cdot d^2}{4}$ | Center of circle |
| **Single Vertical Line Weld** *(Length $d$)* | Single line $d$ | $J_u = \frac{d^3}{12}$ | $Z_w = \frac{d^2}{6}$ | $x = 0, y = d/2$ |
| **Two Parallel Vertical Welds** *(Height $d$, distance $b$)* | Two parallel lines $d$ | $J_u = \frac{d (3 b^2 + d^2)}{6}$ | $Z_w = \frac{d^2}{3}$ | Center of rectangle |
| **Two Parallel Horizontal Welds** *(Width $b$, distance $d$)* | Two parallel lines $b$ | $J_u = \frac{b (3 d^2 + b^2)}{6}$ | $Z_w = b \cdot d$ | Center of rectangle |
| **Rectangular Weld (4 Sides)** *(Width $b$, height $d$)* | Box $b \times d$ | $J_u = \frac{(b + d)^3}{6}$ | $Z_w = b \cdot d + \frac{d^2}{3}$ | Center of rectangle |
| **Top & Bottom Welds with One Side** *(C-Shape)* | 3 sides ($b, d, b$) | $J_u = \frac{(2b + d)^3}{12} - \frac{b^2 (b + d)^2}{2b + d}$ | $Z_w = b \cdot d + \frac{d^2}{3}$ | $\bar{x} = \frac{b^2}{2b + d}, \bar{y} = \frac{d}{2}$ |

---

### Table 10.2: Fatigue Stress Concentration Factors ($K_f$) for Welds

| Type of Welded Joint | Stress Concentration Factor $K_f$ |
| :--- | :---: |
| **Reinforced Butt Weld** | $1.2$ |
| **Toe of Transverse Fillet Weld** | $1.5$ |
| **End of Parallel Fillet Weld** | $2.7$ |
| **T-Butt Joint with Sharp Corners** | $2.0$ |
