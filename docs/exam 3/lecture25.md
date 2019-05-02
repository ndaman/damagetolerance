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
