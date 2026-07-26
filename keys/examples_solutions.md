# Keys — Solved Examples Solutions

Fully worked solutions for all examples in [examples.md](examples.md). Standard key proportions are referenced from [Table 13.1](table_13_1_standard_key_proportions.md).

---

## Example 13.1 (Rectangular Sunk Key Design)

### Problem Statement
Design the rectangular key for a shaft of $50\text{ mm}$ diameter transmitting $25\text{ kW}$ at $250\text{ rpm}$. The allowable shear and crushing stresses for the key material are $40\text{ MPa}$ and $80\text{ MPa}$ respectively.

---

### Solution

#### 1. Torque Calculation ($T$)
$$T = \frac{60 P}{2 \pi N} = \frac{60 \times 25 \times 10^3}{2 \pi \times 250} = 954.93\text{ N}\cdot\text{m} = 9.5493 \times 10^5\text{ N}\cdot\text{mm}$$

#### 2. Key Cross-Section ($w, t$)
From standard [Table 13.1](table_13_1_standard_key_proportions.md) for shaft diameter $d = 50\text{ mm}$:
* Width of key: $w = \mathbf{16\text{ mm}}$
* Thickness of key: $t = \mathbf{10\text{ mm}}$

#### 3. Length of key in shear ($l_{\text{shear}}$)
$$T = w \cdot l \cdot \tau \cdot \frac{d}{2} \implies 9.5493 \times 10^5 = 16 \times l \times 40 \times 25$$
$$l_{\text{shear}} = \frac{9.5493 \times 10^5}{16000} = 59.7\text{ mm}$$

#### 4. Length of key in crushing ($l_{\text{crushing}}$)
$$T = \frac{t}{2} \cdot l \cdot \sigma_c \cdot \frac{d}{2} \implies 9.5493 \times 10^5 = 5 \times l \times 80 \times 25$$
$$l_{\text{crushing}} = \frac{9.5493 \times 10^5}{10000} = 95.5\text{ mm}$$

#### 5. Selection of final key length ($l$)
Take the larger value to ensure safety against crushing:
$$\mathbf{l = 96\text{ mm}}$$

---

## Example 13.2 (Square Sunk Key Design)

### Problem Statement
A $45\text{ mm}$ diameter shaft transmits $20\text{ kW}$ at $200\text{ rpm}$. Design a square key if allowable shear stress is $45\text{ MPa}$ and crushing stress is $90\text{ MPa}$.

---

### Solution

#### 1. Torque Calculation ($T$)
$$T = \frac{60 \times 20 \times 10^3}{2 \pi \times 200} = 954.93\text{ N}\cdot\text{m} = 9.5493 \times 10^5\text{ N}\cdot\text{mm}$$

#### 2. Key Cross-Section ($w = t$)
From [Table 13.1](table_13_1_standard_key_proportions.md) for shaft $d = 45\text{ mm}$: $w = 16\text{ mm}$.
For square key: $w = t = \mathbf{16\text{ mm}}$ (or $14\text{ mm}$ based on empirical $d/4$).

#### 3. Length of key ($l$)
Since $\sigma_c = 2 \tau$, a square key has equal strength in shear and crushing:
$$T = w \cdot l \cdot \tau \cdot \frac{d}{2} \implies 9.5493 \times 10^5 = 16 \times l \times 45 \times 22.5 \implies \mathbf{l = 58.9\text{ mm} \approx 60\text{ mm}}$$

---

## Example 13.3 (Keyway Effect on Shaft Strength)

### Problem Statement
A $50\text{ mm}$ shaft has a keyway of width $16\text{ mm}$ and depth $5\text{ mm}$. Find the ratio of the strength of the keyway shaft to that of a solid shaft.

---

### Solution

#### 1. Keyway Effect Factor ($e$)
$$e = 1 - 0.2 \left(\frac{w}{d}\right) - 1.1 \left(\frac{h}{d}\right) = 1 - 0.2\left(\frac{16}{50}\right) - 1.1\left(\frac{5}{50}\right)$$
$$e = 1 - 0.064 - 0.11 = \mathbf{0.826}$$

#### 2. Strength Ratio
$$\text{Ratio} = \frac{T_{\text{keyway}}}{T_{\text{solid}}} = e = \mathbf{82.6\%}$$
