// DESIGN DATA BOOK — KEYS

#let databook-title = "DESIGN DATA BOOK — KEYS"

#set page(
  paper: "a4",
  flipped: false,
  margin: (top: 35pt, bottom: 35pt, left: 35pt, right: 35pt),
  header: none,
  footer: none,
  background: context {
    place(
      top + left,
      dx: 14pt,
      dy: 25pt,
      rotate(
        90deg,
        origin: top + left,
        block(width: 750pt)[
          #grid(
            columns: (1fr, auto),
            align: (left + horizon, right + horizon),
            [#text(fill: rgb("#000000"), size: 9.5pt, weight: "bold")[#databook-title]],
            [#text(fill: rgb("#000000"), weight: "bold", size: 9.5pt)[Page #counter(page).display("1 of 1", both: true)]]
          )
          #v(2.5pt)
          #line(length: 100%, stroke: 1.2pt + rgb("#000000"))
        ]
      )
    )
  }
)

#set text(font: ("Times New Roman", "Georgia"), size: 10pt, fill: rgb("#000000"))
#set par(justify: false, leading: 0.85em)
#show math.equation: set block(spacing: 16pt)
#show math.equation.where(block: true): it => align(left, it)
#show image: set image(fit: "contain")
#show table: set table(stroke: 0.4pt + rgb("#aaaaaa"))

#let section-heading(sec-num, title) = {
  if sec-num != "1" { pagebreak() }
  v(4pt)
  text(weight: "bold", size: 13.5pt)[SECTION #sec-num: #title]
  v(2.5pt)
  line(length: 100%, stroke: 1pt + rgb("#000000"))
  v(5pt)
}

#let section-overview(sys-params, design-proto) = {
  v(2pt)
  sys-params
  v(3pt)
  design-proto
  v(4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#000000"))
  v(6pt)
}

#let item-row(left-desc, right-math) = {
  v(3pt)
  grid(
    columns: (1fr, 1fr),
    column-gutter: 16pt,
    stroke: (x, y) => if x == 0 { (right: 0.5pt + rgb("#aaaaaa")) },
    inset: (left: 8pt, right: 8pt),
    align: (left + top, left + top),
    [#left-desc],
    [#right-math]
  )
  v(3pt)
  line(length: 100%, stroke: 0.3pt + rgb("#cccccc"))
}

#let figure-page(sec-num, title, fig-path, caption) = {
  v(4pt)
  block(width: 100%, breakable: false)[
    #align(center)[
      #image(fig-path, width: 70%, height: 200pt, fit: "contain")
      #v(3pt)
      #text(weight: "bold", size: 9.5pt)[#caption]
    ]
  ]
  v(4pt)
}

#section-heading("1", "RECTANGULAR SUNK KEY DESIGN")

#section-overview(
  [*System Parameters:* Shaft diameter $d = 50 "mm"$, Power $P = 25 "kW"$, Speed $N = 250 "rpm"$, allowable key shear stress $tau = 40 "MPa"$, allowable key crushing stress $sigma_c = 80 "MPa"$, standard key proportions from IS: 2048-1962.],
  [*Design Protocol:* Calculate torque, select standard key cross-section from table, evaluate required key length in shear and crushing, and adopt the governing safe length.]
)

#item-row(
  [*1. Torque transmitted by shaft*],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
    &= (60 times 25 times 10^3) / (2 pi times 250) \
    &= 954.93 "N"dot"m" \
    &= 9.5493 times 10^5 "N"dot"mm"
  $]
)

#item-row(
  [*2. Standard key cross-section selection*],
  [$
    d &= 50 "mm" \
    #text(size: 20pt)[$w$] &= #text(size: 20pt)[$16 "mm"$] \
    #text(size: 20pt)[$t$] &= #text(size: 20pt)[$10 "mm"$]
  $]
)

#item-row(
  [*3. Required key length from shear criterion*],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$w dot l dot tau dot d / 2$] \
    9.5493 times 10^5 &= 16 times l times 40 times 25 \
    l &= (9.5493 times 10^5) / 16000 \
    &= 59.7 "mm"
  $]
)

#item-row(
  [*4. Required key length from crushing criterion*],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(t/2) dot l dot sigma_c dot d / 2$] \
    9.5493 times 10^5 &= 5 times l times 80 times 25 \
    l &= (9.5493 times 10^5) / 10000 \
    &= 95.5 "mm"
  $]
)

#item-row(
  [*5. Adopted key length*],
  [$
    l_("shear") &= 59.7 "mm" \
    l_("crushing") &= 95.5 "mm" \
    #text(size: 20pt)[$l$] &= #text(size: 20pt)[$95.5 "mm"$] \
    &=> bold(l = 96 "mm")
  $]
)

#item-row(
  [*6. Design output*],
  [*Rectangular sunk key dimensions: width w = 16 mm, thickness t = 10 mm, adopted length l = 96 mm.*]
)

#section-heading("2", "SQUARE SUNK KEY DESIGN")

#section-overview(
  [*System Parameters:* Shaft diameter $d = 45 "mm"$, Power $P = 20 "kW"$, Speed $N = 200 "rpm"$, allowable key shear stress $tau = 45 "MPa"$, allowable crushing stress $sigma_c = 90 "MPa"$.],
  [*Design Protocol:* Compute torque, select square key size where $w = t$, then size key length from the governing strength relation.]
)

#item-row(
  [*1. Torque transmitted by shaft*],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$(60 P) / (2 pi N)$] \
    &= (60 times 20 times 10^3) / (2 pi times 200) \
    &= 954.93 "N"dot"m" \
    &= 9.5493 times 10^5 "N"dot"mm"
  $]
)

#item-row(
  [*2. Selected square key cross-section*],
  [$
    d &= 45 "mm" \
    #text(size: 20pt)[$w$] &= #text(size: 20pt)[$16 "mm"$] \
    #text(size: 20pt)[$t$] &= #text(size: 20pt)[$16 "mm"$]
  $]
)

#item-row(
  [*3. Required key length*],
  [$
    #text(size: 20pt)[$T$] &= #text(size: 20pt)[$w dot l dot tau dot d / 2$] \
    9.5493 times 10^5 &= 16 times l times 45 times 22.5 \
    l &= (9.5493 times 10^5) / 16200 \
    &= 58.9 "mm" \
    &=> bold(l = 60 "mm")
  $]
)

#item-row(
  [*4. Design output*],
  [*Square sunk key dimensions: width w = 16 mm, thickness t = 16 mm, adopted length l = 60 mm.*]
)

#section-heading("3", "KEYWAY EFFECT ON SHAFT STRENGTH")

#section-overview(
  [*System Parameters:* Shaft diameter $d = 50 "mm"$, keyway width $w = 16 "mm"$, keyway depth $h = 5 "mm"$.],
  [*Design Protocol:* Use empirical keyway reduction factor and compute strength ratio of keyed shaft relative to a solid shaft.]
)

#item-row(
  [*1. Keyway weakening factor*],
  [$
    #text(size: 20pt)[$e$] &= #text(size: 20pt)[$1 - 0.2 (w/d) - 1.1 (h/d)$] \
    &= 1 - 0.2 (16/50) - 1.1 (5/50) \
    &= 1 - 0.064 - 0.11 \
    &= 0.826
  $]
)

#item-row(
  [*2. Strength ratio of keyed shaft to solid shaft*],
  [$
    #text(size: 20pt)[$T_("keyway") / T_("solid")$] &= #text(size: 20pt)[$e$] \
    &= 0.826 \
    &= bold(82.6%)
  $]
)

#item-row(
  [*3. Design output*],
  [*The keyed shaft retains 82.6% of the torsional strength of an equivalent solid shaft.*]
)

#section-heading("REF 1", "TABLE 13.1 — STANDARD PARALLEL, TAPERED, AND GIB HEAD KEY PROPORTIONS")

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  align: (center, center, center, center, center, center),
  table.header(
    [*Shaft d up to (mm)*], [*Key w (mm)*], [*Key t (mm)*], [*Shaft d up to (mm)*], [*Key w (mm)*], [*Key t (mm)*]
  ),
  [6], [2], [2], [85], [25], [14],
  [8], [3], [3], [95], [28], [16],
  [10], [4], [4], [110], [32], [18],
  [12], [5], [5], [130], [36], [20],
  [17], [6], [6], [150], [40], [22],
  [22], [8], [7], [170], [45], [25],
  [30], [10], [8], [200], [50], [28],
  [38], [12], [8], [230], [56], [32],
  [44], [14], [9], [260], [63], [32],
  [50], [16], [10], [290], [70], [36],
  [58], [18], [11], [330], [80], [40],
  [65], [20], [12], [380], [90], [45],
  [75], [22], [14], [440], [100], [50]
)

#v(4pt)
#text(size: 9.5pt, style: "italic")[
  *Reference: IS: 2048-1962 standard key dimensions used for preliminary key cross-section selection.*
]
