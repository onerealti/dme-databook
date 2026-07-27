# Table 11.2: Values of $K$ for Various Types of Joints

When bolts are tightened to compress a gasket and seal a joint against external fluid pressure (e.g., steam engine cylinder heads, pressure vessel covers), the resultant axial load on each bolt is given by:

$$P = P_1 + K \cdot P_2$$

where:
* $P_1$ = Initial tension due to tightening of bolt ($P_1 = 2840 \cdot d \quad [\text{N}]$ for fluid-tight joints)
* $P_2$ = External load acting on the joint per bolt
* $K$ = Joint stiffness ratio / gasket factor ($K = \frac{a}{1 + a}$ where $a = \frac{\text{stiffness of bolt}}{\text{stiffness of connected parts}}$)

---

### Table 11.2 — Values of $K$ for Various Types of Joints

| Type of Joint | Value of $K$ ($\frac{a}{1+a}$) |
| :--- | :---: |
| **Metal to metal joint with through bolts** | $0.00 \text{ to } 0.10$ |
| **Hard copper gasket with long through bolts** | $0.25 \text{ to } 0.50$ |
| **Soft copper gasket with long through bolts** | $0.50 \text{ to } 0.75$ |
| **Soft packing with through bolts** | $0.75 \text{ to } 1.00$ |
| **Soft packing with studs** | $1.00$ |

---

### Reference Notes for Solved Problems:

1. **Soft Copper Gasket with Long Through Bolts (Examples 11.8 & 11.9):**
   * Minimum value of $K = 0.50$ is standard for Design of Machine Elements numericals.
2. **Resultant Axial Load Formula:**
   $$P_{\text{total}} = 2840 \cdot d + K \cdot P_2$$
