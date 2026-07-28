// Design Data Book — Theory Question Answers Compendium
// Compiled from all chapter question-answer files (excluding examples)

#let databook-title = "DESIGN DATA BOOK — THEORY QUESTION ANSWERS"

#set page(
  paper: "a4",
  flipped: true,
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
#show math.equation: set block(spacing: 12pt)
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

#let question-block(question, answer) = {
  v(4pt)
  text(weight: "bold", size: 10.5pt)[#question]
  v(2pt)
  answer
  v(6pt)
}

#section-heading("1", "RIVETED JOINTS")

#question-block(
  "1. What do you understand by the term riveted joint? Explain the necessity of such a joint.",
  [
    A riveted joint is a permanent fastening made by inserting a cylindrical rivet through aligned holes in plates and forming heads at both ends. It is used when welding is not suitable, when dissimilar metals must be joined, and when a joint must resist vibration and fatigue without thermal distortion.
  ]
)

#question-block(
  "2. What are the various permanent and detachable fastenings? Give a complete list with the different types of each category.",
  [
    Permanent fastenings include riveted, welded, brazed, and soldered joints. Detachable fastenings include screwed fastenings such as bolts, nuts, studs, cap screws, and set screws; keys and splines; and cotters and pins.
  ]
)

#question-block(
  "3. Classify the rivet heads according to Indian standard specifications.",
  [
    Rivet heads are classified as snap or button heads, pan heads, mushroom heads, countersunk heads, and flat heads. Their selection depends on strength, clearance, and the need for a flush outer surface.
  ]
)

#question-block(
  "4. What is the material used for rivets?",
  [
    Rivets are commonly made from low-carbon mild steel, wrought iron, aluminum alloys, copper, and brass. The material must possess good ductility, toughness, and cold-forming ability.
  ]
)

#question-block(
  "5. Enumerate the different types of riveted joints and rivets.",
  [
    Riveted joints are broadly classified as lap joints and butt joints; these may be single-riveted, double-riveted, or triple-riveted. Rivets may also be classified by head shape and by service, such as structural, boiler, or pressure-vessel rivets.
  ]
)

#question-block(
  "6. What is an economical joint and where does it find applications?",
  [
    An economical joint, commonly the lozenge or structural butt joint, is arranged so that the outer rows carry fewer rivets and the load is shared progressively. It is used in tie bars, roof trusses, bridges, and crane structures.
  ]
)

#question-block(
  "7. What is the difference between caulking and fullering? Explain with the help of neat sketches.",
  [
    Caulking uses a narrow chisel-like tool to force the plate edge against the rivet head, while fullering uses a wider tool to compress the plate edge more uniformly. Fullering is generally less damaging to the plate and gives a cleaner leak-proof seam.
  ]
)

#question-block(
  "8. Show by neat sketches the various ways in which a riveted joint may fail.",
  [
    A joint may fail by tearing of the plate across the rivet hole, shearing of the rivet, crushing of the rivet or plate, tearing at the margin, shearing at the margin, or splitting at the margin. The governing failure mode is used in design calculations.
  ]
)

#question-block(
  "9. What do you understand by the term efficiency of a riveted joint? According to I.B.R., what is the highest efficiency required of a riveted joint?",
  [
    The efficiency of a riveted joint is the ratio of the strength of the joint to the strength of the solid plate over the same pitch length. For boiler longitudinal seams, the Indian Boiler Regulations allow efficiencies up to about 85% for suitable double-strap butt joints.
  ]
)

#question-block(
  "10. Explain the procedure for designing a longitudinal and circumferential joint for a boiler.",
  [
    The design starts with the plate thickness from cylinder stress, then the rivet diameter from Unwin’s formula, then pitch by equating tearing and shearing strengths. Longitudinal seams are designed for hoop stress, while circumferential seams are designed for end thrust and require suitable overlap and row pitch.
  ]
)

#question-block(
  "11. Describe the procedure for designing a lozenge joint.",
  [
    The design begins by selecting a suitable rivet diameter and estimating the number of rivets from the load and allowable shearing or crushing strength. The rivets are arranged in a diamond pattern so that the outer row weakens the plate least, and the final efficiency is checked against the plate tearing strength.
  ]
)

#question-block(
  "12. What is an eccentric riveted joint? Explain the method adopted for designing such a joint?",
  [
    An eccentric riveted joint is loaded in such a way that the line of action of the load does not pass through the centroid of the rivet group. The design method involves locating the centroid, finding the primary and secondary shear forces, and selecting a rivet diameter that keeps the resultant force within the allowable shear strength.
  ]
)

#section-heading("2", "SCREWED JOINTS")

#question-block(
  "1. What do you understand by single start and double start threads?",
  [
    A single-start thread has one continuous helical groove, so the lead equals the pitch. A double-start thread has two parallel grooves, so the lead is twice the pitch and the screw advances faster for the same rotation.
  ]
)

#question-block(
  "2. Define the following terms: major diameter, minor diameter, pitch, and lead.",
  [
    The major diameter is the largest diameter of the thread, the minor diameter is the smallest, the pitch is the axial distance between adjacent thread forms, and the lead is the axial travel of the nut in one full revolution. For a multi-start thread, lead equals the number of starts times the pitch.
  ]
)

#question-block(
  "3. Write a short note on nut locking devices covering the necessity and various types.",
  [
    Locking devices are used because vibration can let nuts loosen under cyclic loads. Common types are lock nuts, castle nuts with split pins, spring washers, grooved or ring nuts, and safety wire.
  ]
)

#question-block(
  "4. Discuss the significance of the initial tightening load and the applied load so far as bolts are concerned.",
  [
    The initial tightening load creates the pre-load needed to hold the joint together and seal gaskets, while the external applied load tends to separate the members. For a properly designed bolted joint, the pre-load should exceed the opening force and the total bolt load is the sum of the preload and a fraction of the external load.
  ]
)

#question-block(
  "5. Discuss on bolts of uniform strength giving examples of practical applications.",
  [
    A bolt of uniform strength is designed so that the stress is nearly uniform along the length under impact loading. This is achieved by reducing the shank diameter to the core diameter or by drilling a hole through the shank. Such bolts are used in connecting rods, cylinder head studs, and steam hammer fasteners.
  ]
)

#question-block(
  "6. Bolts less than M 16 should normally not be used in pre-loaded joints. Comment.",
  [
    Smaller bolts can be overstressed during manual tightening because the applied tightening force may exceed the yield strength of the bolt material. Hence, for pre-loaded pressure-tight joints, the minimum practical size is usually M16.
  ]
)

#question-block(
  "7. How is the core diameter of the bolt determined when a bracket having a rectangular base is bolted to a wall by four bolts and carries an eccentric load parallel to the axis of the bolt?",
  [
    The core diameter is determined by combining the direct tensile load on each bolt with the secondary tensile load caused by tilting of the bracket. The maximum tensile load on the critical bolt is then equated to the tensile strength of the bolt core area.
  ]
)

#question-block(
  "8. Derive an expression for the maximum load in a bolt when a bracket with circular base is bolted to a wall by means of four bolts.",
  [
    The bracket tilts about a tangent to the circular base and the most heavily loaded bolt experiences both a direct tensile load and a secondary tensile load due to the eccentric moment. The total maximum load is obtained by adding these two components.
  ]
)

#question-block(
  "9. Explain the method of determining the size of the bolt when the bracket carries an eccentric load acting in the plane containing the bolts.",
  [
    The force is resolved into direct shear on each bolt and a secondary tensile force due to the overturning moment. The combined stress in the critical bolt is then checked against the permissible tensile and shear stresses, and the required core diameter is selected.
  ]
)

#section-heading("3", "COTTER AND KNUCKLE JOINTS")

#question-block(
  "1. What is a cotter joint? Explain with the help of a neat sketch how a cotter joint is made.",
  [
    A cotter joint is a temporary or detachable joint used to connect two co-axial rods subjected to axial pull or push. It consists of a spigot fitted into a socket and locked together by a wedge-shaped cotter that is driven into matching slots.
  ]
)

#question-block(
  "2. What are the applications of a cottered joint?",
  [
    Cotter joints are used in piston rod and crosshead connections, slide-valve rod links, sleeve and cotter joints in pump rods, foundation bolts, and connecting rod straps.
  ]
)

#question-block(
  "3. Discuss the design procedure of a spigot and socket cotter joint.",
  [
    The procedure begins with finding the rod diameter from tensile strength, then checks the spigot and socket for tearing, the cotter for double shear, and the collar areas for crushing. The dimensions are adjusted until all failure modes are safe.
  ]
)

#question-block(
  "4. Distinguish between a cotter joint and a knuckle joint.",
  [
    A cotter joint is rigid and transmits axial force without relative motion, whereas a knuckle joint is a pin joint that permits angular motion in one plane. Cotter joints are used for push-pull rods, while knuckle joints are used for tie bars and linkages.
  ]
)

#question-block(
  "5. Sketch two views of a knuckle joint and write the equations showing the strength of the joint for its most probable modes of failure.",
  [
    The likely failure modes are tearing of the rods, shearing of the knuckle pin, crushing of the pin in the eye or fork, and tearing of the eye across the pin hole. Each mode is checked by an equation of the form $P = (pi/4)d^2 sigma_t$ or $P = d_1 t sigma_c$.
  ]
)

#section-heading("4", "SHAFT COUPLINGS AND KEYS")

#question-block(
  "1. What is a key? State its function.",
  [
    A key is a piece of metal inserted between a shaft and a hub to prevent relative rotation and transmit torque. It may also help locate the hub axially in some designs.
  ]
)

#question-block(
  "2. How are keys classified? Draw neat sketches of different types of keys and state their applications.",
  [
    Keys are classified as sunk keys, saddle keys, tangent keys, round keys, and splines. Sunk keys are used for regular power transmission, while splines are preferred for high torque and sliding fits.
  ]
)

#question-block(
  "3. What are the considerations in the design of dimensions of formed and parallel keys having a rectangular cross-section?",
  [
    The key dimensions are selected from shaft diameter, torque, and allowable shear and crushing stresses. The length is checked for shear and crushing, and the larger value is taken to ensure safety.
  ]
)

#question-block(
  "4. Write a short note on the splined shaft covering points of application, different types, and methods of manufacture.",
  [
    A splined shaft has several integral keys or grooves that mesh with a hub, allowing high torque transmission and controlled axial movement. Straight-sided and involute splines are common, and they are manufactured by hobbing, milling, broaching, or rolling.
  ]
)

#question-block(
  "5. What is the effect of a keyway cut into the shaft?",
  [
    A keyway reduces the shaft cross-section and creates stress concentration at the corners, lowering torsional strength and stiffness. The reduction is usually about 14% to 15% for a standard keyway.
  ]
)

#question-block(
  "6. Discuss the function of a coupling. Give at least three practical applications.",
  [
    A coupling connects two shafts to transmit power and torque, permits assembly and disassembly, and sometimes accommodates small misalignment or shock. Typical applications include motor-pump drives, turbine-generator drives, and engine-gearbox connections.
  ]
)

#question-block(
  "7. Describe, with the help of neat sketches, the types of various shaft couplings mentioning the uses of each type.",
  [
    Couplings are broadly rigid or flexible. Rigid couplings such as sleeve, clamp, and flange couplings are used when the shafts are accurately aligned, while flexible couplings are used where slight misalignment or vibration damping is needed.
  ]
)

#question-block(
  "8. How does the working of a clamp coupling differ from that of a muff coupling? Explain.",
  [
    A muff coupling transmits torque mainly through the key and the solid sleeve, while a clamp coupling transmits torque largely through friction created by clamping bolts. The clamp coupling is easier to assemble and does not require much axial movement of the shafts.
  ]
)

#section-heading("5", "POWER SCREWS")

#question-block(
  "1. Differentiate between a differential screw and a compound screw.",
  [
    In a differential screw, the two threaded portions have the same hand and the axial movement per turn is the difference of pitches. In a compound screw, the threads have opposite hands and the movement per turn is the sum of pitches. Differential screws give a high mechanical advantage, while compound screws give fast motion.
  ]
)

#section-heading("6", "SHAFTS")

#question-block(
  "1. Distinguish clearly, giving examples between pin, axle, and shaft.",
  [
    A shaft transmits torque and power, an axle mainly supports members without transmitting much torque, and a pin connects parts and permits rotation or alignment. Examples of shafts are crankshafts and line shafts; examples of axles are railway axles; examples of pins are knuckle pins and cotter pins.
  ]
)

#question-block(
  "2. How are shafts formed?",
  [
    Shafts are formed by hot rolling, cold drawing, and then turning or grinding to the required dimensions and finish. These operations improve strength, accuracy, and surface quality.
  ]
)

#question-block(
  "3. Discuss the various types of shafts and the standard sizes of transmission shafts.",
  [
    Transmission shafts carry power from one machine element to another, while machine shafts form part of the machine itself. Standard shaft sizes increase in steps of 5 mm, 10 mm, 15 mm, or 20 mm depending on the diameter range.
  ]
)

#question-block(
  "4. What type of stresses are induced in shafts?",
  [
    Shafts are subjected to torsional shear stress, bending stress, and axial stress. In most practical problems, combined bending and twisting are the governing loads.
  ]
)

#question-block(
  "5. How is the shaft designed when it is subjected to twisting moment only?",
  [
    The diameter is selected from the torsional strength relation $T = (pi/16) tau d^3$ for a solid shaft. For a hollow shaft the corresponding relation is $T = (pi/16) tau d_o^3 (1 - k^4)$.
  ]
)

#question-block(
  "6. Define equivalent twisting moment and equivalent bending moment. State when these two terms are used in design of shafts.",
  [
    The equivalent twisting moment is the hypothetical twisting moment that would cause the same maximum shear stress as the actual combination of bending and torsion. The equivalent bending moment is the hypothetical bending moment that would cause the same maximum tensile stress. These terms are used for shafts subjected to combined bending and twisting.
  ]
)

#question-block(
  "7. When the shaft is subjected to fluctuating loads, what will be the equivalent twisting moment and equivalent bending moment?",
  [
    The formulas are modified with shock and fatigue factors for bending and torsion. The equivalent moments become $T_e = sqrt((K_m M)^2 + (K_t T)^2)$ and $M_e = 1/2[K_m M + T_e]$.
  ]
)

#question-block(
  "8. A hollow shaft has greater strength and stiffness than a solid shaft of equal weight. Explain.",
  [
    Because material placed farther from the centre contributes more effectively to torsional resistance. The hollow shaft therefore has a larger polar moment of inertia and gives greater torsional strength and stiffness for the same weight.
  ]
)

#question-block(
  "9. Under what circumstances are hollow shafts preferred over solid shafts? Give any two examples where hollow shafts are used. How are they generally manufactured?",
  [
    Hollow shafts are preferred when strength-to-weight ratio, low rotational inertia, or internal passage for other members is important. They are used in marine propeller shafts and automobile propeller shafts and are often manufactured by forging over a mandrel, seamless tube drawing, or deep-hole drilling.
  ]
)

#section-heading("7", "WELDED JOINTS")

#question-block(
  "1. What do you understand by the term welded joint? How does it differ from a riveted joint?",
  [
    A welded joint is a permanent joint produced by fusing the materials together with heat, with or without pressure and filler metal. Compared with a riveted joint, a welded joint is lighter, more efficient, and generally leak-proof, but it introduces heat-affected zones and residual stresses.
  ]
)

#question-block(
  "2. Sketch and discuss the various types of welded joints used in pressure vessels. What are the considerations involved?",
  [
    Pressure vessels commonly use full-penetration double-V butt welds, single-V butt welds with backing strips, and fillet or corner welds for end caps. The design must provide high joint efficiency, minimum stress concentration, and reliable non-destructive inspection.
  ]
)

#question-block(
  "3. State the basic difference between manual welding, semi-automatic welding, and automatic welding.",
  [
    In manual welding the operator controls the process directly; in semi-automatic welding the wire feed is automated but the torch is guided manually; in automatic welding the whole process is machine-controlled.
  ]
)

#question-block(
  "4. What are the assumptions made in the design of a welded joint?",
  [
    The design assumes uniform stress along the weld length, a throat thickness of $0.707s$ for a fillet weld, homogeneous weld metal, negligible reinforcement in butt weld strength calculations, and equal allowable stress in the base and weld metal.
  ]
)

#question-block(
  "5. Explain joint preparation with particular reference to butt welding of plates by arc welding.",
  [
    Joint preparation means beveling the plate edges so that the weld penetrates the full thickness. Square butt joints are used for thin plates, single-V joints for medium thickness, and double-V joints for thick plates.
  ]
)

#question-block(
  "6. Discuss the standard location of elements of a welding symbol.",
  [
    A welding symbol normally includes a reference line, an arrow, a weld symbol, and dimensions for weld size and length. The symbol position shows whether the weld is on the arrow side or the other side of the joint.
  ]
)

#question-block(
  "7. Explain the procedure for designing an axially loaded unsymmetrical welded section.",
  [
    The weld lengths on the two sides are proportioned so that the centroid of the weld group coincides with the gravity axis of the section. The total weld length is derived from the load and allowable shear stress; then the individual lengths are found from moment equilibrium.
  ]
)

#question-block(
  "8. What is an eccentrically loaded welded joint? Discuss the procedure for designing such a joint.",
  [
    An eccentrically loaded welded joint carries a load acting away from the centroid of the weld group, causing both primary and secondary shear. The design uses the vector addition of these stresses and selects the weld size so that the maximum resultant stress does not exceed the allowable stress.
  ]
)

#pagebreak()
#v(1fr)
#align(center)[
  #text(weight: "bold", size: 12pt)[END OF QUESTION BANK]
]
