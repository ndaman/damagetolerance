<span>schedule</span>

-   26 April - Dr. Smith’s Research

-   1 May - Composites, Corrosion, Aging, and NDT

-   3 May - Finite Elements Lab

-   9 May - Final Projects due by 5:00 (may be submitted via e-mail)

### outline

\[sections numbered\]

short fiber composites
======================

<span>composites</span>

-   Composite materials are used to increase strength and stiffness (and decrease weight)

-   While the material itself comes at an increased cost, manufacturing accounts for the greatest cost increase

-   Short fiber composites can be injection or compression molded to significantly lower the cost, with the goal of maintaining most of the performance

<span>short fiber composites</span>

-   There are challenges and advantages to different manufacturing methods

-   Injection molding

-   Compression molding

-   3D printing

<span>injection molding</span>

<img src="../Figures/injection-molding" alt="image" style="width:80.0%" />

<span>compression molding</span>

<img src="../Figures/Compression_molding" alt="image" style="width:80.0%" />

<span>3D printing</span>

<img src="../Figures/3d-printing2" alt="image" style="width:70.0%" />

<span>challenges</span>

-   Fiber orientation

-   Fiber length distribution

-   Fiber volume fraction distribution

-   Strength modeling

<span>microscopy</span>

<img src="../Figures/spacing" alt="image" style="width:70.0%" />

<span>microscopy</span>

<img src="../Figures/plies" alt="image" style="width:70.0%" />

micromechanics
==============

<span>micromechanics</span>

-   In general, we would like to have a multi-scale model

-   Model at the micro-scale to account for various issues before homogenizing

-   Use homogenized properties for a full-scale part

-   In critical areas use stress states from the full-scale model to recover stresses in fiber/matrix at the micro level

<span>objectives</span>

-   Use FEA to model individual short fibers

-   Examine effects of end-to-end fiber spacing and fiber orientation

-   This scale allows sufficient detail while reducing the number of variables

<span>RVE</span>

<img src="../Figures/rve" alt="image" style="width:50.0%" />

<span>fiber orientation</span>

-   While a laminate analogy works well for some cases, in general short fibers are not aligned in laminates

-   It is not practical to model each possible fiber orientation as a separate inclusion

-   Advani-Tucker introduced a tensorial representation of fiber orientation

<span>fiber in spherical coordinates</span>

\[fig:single\_fiber\]

<span>fiber direction components</span>

<span>c c</span> Component & Definition
*p*<sub>1</sub> & sin*θ*cos*ϕ*
*p*<sub>2</sub> & sin*θ*sin*ϕ*
*p*<sub>3</sub> & cos*θ*

<span>orientation tensor</span>

-   Within a given volume, a distribution of fibers can be defined by some orientation distribution function, *ψ*(*θ*, *ϕ*).

-   Advani and Tucker introduced tensor representations of fiber orientation distribution functions
    *a*<sub>*i**j*</sub> = ∮*p*<sub>*i*</sub>*p*<sub>*j*</sub>*ψ*(*p*)*d**p*

-   And
    *a*<sub>*i**j**k**l*</sub> = ∮*p*<sub>*i*</sub>*p*<sub>*j*</sub>*p*<sub>*k*</sub>*p*<sub>*l*</sub>*ψ*(*p*)*d**p*

-   Note: any order tensor may be defined in this manner, the orientation distribution function must be even, due to fiber symmetry, and thus any odd-ordered tensor will be zero.

<span>orientation tensor</span>

-   It can be noted that some symmetries must exist due to the way the tensors are defined.

-   In the second order tensor we have
    *a*<sub>*i**j*</sub> = *a*<sub>*j**i*</sub>

-   and in the fourth order tensor
    *a*<sub>*i**j**k**l*</sub> = *a*<sub>*j**i**k**l*</sub> = *a*<sub>*k**i**j**l*</sub>
     and so on for any permutation of *i*, *j*, *k* and *l*.

<span>orientation tensor</span>

-   The orientation tensor is also normalized such that:
    *a*<sub>*i**i*</sub> = 1

-   And any lower-order tensor can be expressed in terms of the next higher-order tensor, for example
    *a*<sub>*i**j**k**k*</sub> = *a*<sub>*i**j*</sub>
    *a*<sub>*i**j**k**l**m**m*</sub> = *a*<sub>*i**j**k**l*</sub>

<span>example - 2D random</span>

<img src="../Figures/random2D" alt="A visualization of a 2D random orientation distribution. This is expressed with the second-order tensor a_{11} = a_{22} = \frac{1}{2}, with all other a_{ij} = 0." style="width:60.0%" />

<span>example - 3D random</span>

<img src="../Figures/random3D" alt="A visualization of a 3D random orientation distribution. This is expressed with the second-order tensor a_{11} = a_{22} = a_{33} = \frac{1}{3}, with all other a_{ij} = 0." style="width:60.0%" />

<span>example - aligned 45</span>

<img src="../Figures/aligned45" alt="A visualization of a perfectly aligned, off-axis orientation distribution. This is expressed by rotating the tensor with a_{11} = 1 and all other a_{ij} = 0." style="width:60.0%" />

<span>void study</span>

<img src="../Figures/voids" alt="image" style="width:60.0%" />

nozzle design
=============

<span>3d printing uses</span>

-   One of the most practical uses for 3D printed composites is tooling

-   Near net shape printing, complex shapes with little/no wasted material, short turnaround time for manufacture

-   A challenge, however, is that the printed part exhibits a high degree of anisotropy

-   This can cause challenges with different coefficient of thermal expansion

path optimization
=================

<span>print path</span>

<img src="../Figures/print-path" alt="image" style="width:70.0%" />

<span>optimization</span>

<img src="../Figures/optimized-print" alt="image" style="width:70.0%" />

<span>specimens</span>

<img src="../Figures/printed-specimen" alt="image" style="width:70.0%" />
