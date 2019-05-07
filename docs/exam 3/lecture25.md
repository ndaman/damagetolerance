##  AE 737: Mechanics of Damage Tolerance
Lecture 25 - Non-destructive Testing

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

May 2, 2019

----
##  schedule

- 2 May - SPTE, NDT/NDE
- 7 May - My Research
- 9 May - Damage Mechanics, Final Projects Due

----
## outline

<!-- vim-markdown-toc GFM -->

* NDT
* structural health monitoring
* composites
* corrosion
* aging

<!-- vim-markdown-toc -->

---
# NDT

----
## non-destructive testing methods

-   Visual Methods
-   Radiographic Inspection
-   Ultrasonic Inspection
-   Eddy Current Inspection
-   Magnetic Particle
-   Other Methods

----
## visual inspection

-   Accounts for about 80% of all cracks detected in industry
-   Visual inspection can be assisted with borescopes or liquid penetrant
-   In practice many cracks can be missed during visual inspection

----
## Japanese study

![](..\images\japan.jpg)

----
## microscope study

![](..\images\faa-micro.PNG)

----
## faa study

![](..\images\faa-b737.jpg)

----
## faa study

![](..\images\faa-b7372.jpg)

----
## faa study

![](..\images\faa-737.PNG)

----
## liquid penetrants

-   Can be visual dye or fluorescent dye (viewed under black light)
-   Penetrant is applied to surface
-   Developer then enhances visibility of penetrant (blooming effect)
-   Can detect cracks as small as 0.05 inches

----
## disadvantages of liquid penetrants

-   Can only detect surface anomalies
-   Surface must be fairly smooth
-   Chemical compatibility of penetrant and structure
-   relatively slow (surface prep, application, inspection)

----
## borescopes

![](..\images\borescope.jpeg)

----
## radiographic inspection

-   X-rays (most common), Gamma rays can also be used
-   Easist to detect when major flaw dimension is parallel to X-ray beam

----
## radiographic 

-   Three main types
    1.  Film radiography - image stored on film for later viewing
    2.  Real time radiography - image viewed and manipulated in real time
    3.  Computed Tomography (CT) - 3D X-rays computed from multiple sections

----
## radiographic inspection

-   Size of crack that can be detected depends on scan resolution
-   Trade-off betwen total image size and resolution
-   Can detect internal flaws
-   However, the exact location of an internal flaw is difficult to obtain
-   Need access to both sides of structure

----
## ct scan

![](..\images\ct-scan.PNG)

----
## ultrasonic inspection

-   High frequency sound waves
-   Can determine presence of flaw and its location through thickness
-   Best detects flaws with major axis perpendicular to sound beam
-   Immersion testing is often used to facilitate ultrasonic inspection

----
## ultrasonic inspection

- Difficult to use with large parts
- Need access to place probe on one surface
- Need couplant with rough surfaces
- Will not detect "tight" cracks

----
## eddy current inspection

-   Generates small electrical currents using an electromagnet
-   Can only be used in materials that are electrical conductors
-   Otherwise more broadly applicable than Radiography and ultrasonic
-   More sensitive to flaws perpendicular to current flow direction (similar to ultrasonic)

----
## magnetic particle

-   limited to ferromagnetic materials
-   better for small parts (need to generate large electric current for large materials)
-   some objects will need to be demagnetized after test
-   surface/near surface defects

----
## acoustic emissions

-   accelerometers at multiple sources can measure response to acoustic emission
-   response will vary between pristine and un-damaged material
-   cannot always detect location of damage

----
## thermal inspection

-   flaws will also alter thermal conductivity
-   thermal source with infrared camera can detect flaws

---
# structural health monitoring

----
## continuous monitoring

-   Inspections for damage are often performed at regular intervals
-   What if there was damage caused by an unexpected overload between inspection intervals?
-   A lot of research is being done to efficiently and continuously monitor critical structure’s health

----
## structural health monitoring

-   Structural health monitoring often uses accelerometers, strain gauges, together with data processing
-   Detailed record of load history can also be used to infer damage and trigger an inspection

----
## active research

- Much active research is ongoing in this field
- Some highlights from the Journal *Structural Health Monitoring* include
	- crack identification using consumer-grade images and neural networks
	- wave excitation and damping in composites
	- wireless fatigue crack sensor (gets energy from vibration)
	- optimization of sensor placement

---
# composites

----
## failure modes

-   Because composite materials are heterogeneous there are several failure modes to consider
	-   Fiber breakage
	-   Matrix cracking
	-   Fiber-matrix de-bonding
	-   Ply delamination

----
## fatigue in composites

-   In metals, cracks are most likely to form near the surface or a stress concentration (hole, notch, etc.)
-   In composites, internal variability and voids can give rise to sub-surface cracks
-   The ideal combination for fatigue performance is a very stiff fiber (reduces strain in the matrix) and a very tough matrix

----
## cracks in a composite

![]( ..\images\composite-cracks.PNG)

----
## effect of matrix

![](..\images\matrix.PNG) <!-- .element width="60%" -->

Various matrix materials’ fatigue performance with E-Glass

----
## fiber orientation

-   It is intuitive that in tensile fatigue, a composite with fibers aligned in the direction of tension will have the best performance
-   At high-cycle fatigue, however, a slight mis-orientation can improve fatigue performance
-   Straight roving also has better fatigue performance than woven roving

----
## orientation

![Effect of fiber orientation and roving on fatigue life](..\images\fiber-orientation.PNG)

----
## free edge effects

-   In practice, composites are often over-designed for in-plane loading
-   Problems occur during un-expected out-of-plane loading
-   This can occur near the free edge of a laminate

----
## free edge effects

-   Composite laminate theory was developed under an assumption of plane stress
-   This is fairly accurate sufficiently far away from geometric discontinuities, such as free edges
-   At a free edge, in-plane shear stresses must be zero
-   To satisfy equilibrium the out-of-plane shear stress increases to match
    *σ*<sub>11, 1</sub> + *σ*<sub>12, 2</sub> + *σ*<sub>13, 3</sub> = 0

----
## free edge effects

![](..\images\free-edge.jpg) <!-- .element width="40%" -->

----
## stacking sequence

-   The free edge effect is proportional to the effective lamina thickness
-   It can be minimized by not stacking layers of the same orientation directly on top of each other
-   There is also a normal stress in *σ*<sub>*z*</sub> that develops
-   This normal stress can be either tensile or compressive depending on the stacking sequence

----
## interlaminar strengthening

-   There are several techniques to improve the inter-laminar performance of composites near the free edge
-   Stitching
-   Braiding
-   Z-Pinning
-   Edge Cap
-   Toughened inter-laminar adhesive sheet

----
## open hole compression

-   One of the first tests of a composite’s damage tolerance is known as open hole compression
-   A specimen is drilled with a hole and then put in a fixture which prevents buckling under compression
-   [open hole test](https://www.youtube.com/watch?v=u1gHxCt-qv0)
-   Meant to give a measure of a composite after being “damaged” by a hole
-   While a hole is a very repeatable form of damage, it is not representative of all damage

----
## compression after impact

-   Another test was developed to measure the strength of a composite after undergoing impact damage
-   Various levels of impact damage can be applied, but most commonly “barely visible impact damage” is used
-   After impacting the specimen, it is tested in a compression fixture to prevent buckling
-   [impact](https://www.youtube.com/watch?v=ygjtNMbmqAM)

----
## ceramic matrix composites

-   Ceramics are very strong and stiff, with very good performance at elevated temperature
-   They are very weak in tension, however, and are very susceptible to damage
-   Adding ceramic fibers helps to
    -   Reduce stress in the matrix, increase the stress required to propagate crack
    -   When cracks do form, the cracks bridge without fracture

---
# corrosion

----
## corrosion

-   Corrosion can be difficult to accelerate in a lab (like fatigue), and so is not as well-understood
-   There are several general categories of corrosion
-   General corrosion - occurs equally and globally
-   Localized corrosion - occurs at specific locations
-   Metallurgically influenced corrosion - grain boundaries, dealloying
-   Mechanically assisted degradation
-   Environmentally induced cracking

----
## general corrosion

-   Atmospheric corrosion
-   Galvanic corrosion (dissimilar metals in contact)

----
## localized corrosion

-   Similar to general corrosion, but localized
-   Can accelerate the development of fatigue cracks
-   Pitting

----
## metallurgical corrosion

-   Different concentrations of alloy constituents at grain boundaries
-   Galvanic corrosion at a grain boundary could be possible
-   Exfoliation is a form of this that can occur in aluminum alloys with elongated grains parallel to the surface
-   Fasteners with dissimilar materials can also cause metallurgical corrosion

----
## mechanically assisted degradation

-   Chemical effects combined with mechanical stress
-   Fretting corrosion (abrasive corrosion particles, like oxides, trapped can lead to more corrosion)
-   Corrosion fatigue

----
## environmentally induced cracking

-   stress corrosion cracking
-   hydrogen damage, embrittlement

---
# aging

----
## aging

-   Aging is a term often used to describe the degradation of polymers
-   Most polymers are not “pure” but contain some fraction of additives to modify the properties
-   Commonly they will have a “plasticizer” which lowers the glass transition temperature
-   As these plasticizers degrade, the polymer becomes more brittle


