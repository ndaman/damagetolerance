<span>schedule</span>

-   27 Apr - Damage Tolerance

-   1 May - Finite Element Techniques

-   3 May - Special Topics

-   9 May - Final Projects due by 5:00 pm

### outline

\[sections numbered\]

exam
====

<span>exam</span>

-   Before Curve:

    -   Class average: 82.3

    -   Standard deviation: 11.8

-   After Curve:

    -   Class average: 85.2

    -   Standard deviation: 9.8

<span>exam curve</span>

-   The exam curve is given as

-   (original score) x 0.833 + 16.667

&lt;handout:0&gt;<span>solutions</span>

special topics
==============

<span>special topics</span>

-   Damage tolerance is a very broad field, here are some potential things we can discuss for the last few weeks of class

-   Non-destructive testing (NDT) (some people use “Evaluation” instead of testing, NDE)

-   Finite element techniques and methods for damage and fracture

-   Repairing damaged structures

-   Damage in composite materials

-   Composite certification

-   Other questions?

damage tolerance
================

<span>definitions</span>

-   **Safe Life**

    -   Assume cracks are present

    -   Cracks are not inspectable

    -   Use crack growth or fatigue analysis to establish safe life, in which part will not fail

-   **Damage tolerant**

    -   Assume cracks are present

    -   When cracks grow to a sufficient size, they are inpsectable

    -   Inspection cycles are set such that we can be sure crack will not become critical during regular operation

<span>definitions</span>

-   **Fail safe** multiple load paths, redundancy

-   **Limit load** maximum anticipated load

-   **Design load** limit load multiplied by some factor of safety (static design)

-   **Operating load** stress spectrum (used for crack propagation/fatigue)

<span>structural categories</span>

-   Single load path - safe life

-   Single load path - damage tolerant

-   Multiple load path - externally inspectable

-   Multiple load path - inspectable prior to failure

<span>single load path - safe life</span>

-   In many structures, multiple load paths are not practical

-   It is also possible for the critical crack length to be much smaller than is easily detectable

-   In these cases, safe life design is used to identify a certain number of cycles a part can sustain before it needs to be replaced

-   This often requires replacing parts pre-maturely

<span>single load path - damage tolerant</span>

-   Redundant load paths are not necessary when a part is easily inspectable

-   When the detectable crack size is much less than the critical crack length, we can safely inspect a part so that it is only replaced when damage is detected

-   Many times this damage can be repaired to avoid replacing the part entirely

-   Ideal for large, expensive parts that are easy to access (inspection and repair)

<span>multiple load path - externally inspectable</span>

-   This is a very common scenario in aircraft (skin/stringer)

-   In this case, the primary structure is not inspectable

-   A secondary structure is inspectable

-   The secondary structure can support a certain number of cycles after failure of the primary structure

-   Secondary structure can be inspected to observe damage in primary structure

<span>multiple load path - inspectable prior to failure</span>

-   In this case the primary structure is inspectable

-   Otherwise same as externally inspectable structure

inpsection cycle
================

<span>inspection cycle</span>

-   In many industries, an inspection cycle is pre-determined by some governing agency

-   We have developed all the equations necessary to determine our own

    1.  Determine loading cycle (or equivalent load cycle using Boeing method)

    2.  Determine maximum crack length

    3.  Determine initial assumed crack length (minimum detectable crack)

    4.  Calculate number of cycles/flights until crack grows to maximum allowable size

<span>load cycle</span>

-   Be sure to use a consistent cycle-counting method (rainflow or range-pair)

-   Recall the Boeing method for variable amplitude loads

-   
    ∑<sub>*i*</sub>(*z**σ*<sub>*m**a**x*</sub>)<sub>*i*</sub><sup>*p*</sup>*N*<sub>*i*</sub> = (*S*)<sup>*p*</sup>

<span>crack length</span>

-   We can use the residual strength curve to set a maximum crack length

-   We also want to ensure that the crack propagation is still in Region II at this point

-   Crack growth becomes unstable in Region III

<span>initial crack length</span>

-   What is the smallest crack we can detect?

-   Liquid penetrant (any material)

-   Magnetic particle (ferromagnetic materials)

-   Ultrasonic (any material)

-   Eddy Current (only for conductive materials)

-   Radiographic (X-Ray, nearly any material)

<span>calculate cycles</span>

-   We can integrate (analytically or numerically) to find the number of cycles it will take for a crack to grow to critical length

-   Note that numerical integration is non-conservative, in general

-   *Δ**N* should be small enough to give converged solution

<span>example</span>

finite elements
===============

<span>finite element methods in fracture</span>

-   Direct method (use near-tip stress field)

    -   Requires very fine mesh near the tip to be accurate

    -   Can be made feasible with specialty elements

-   Crack closure method

    -   An energy based method

    -   Calculate energy to close crack one element away from crack tip

    -   Can have a courser mesh than direct method

-   Cohesive elements

    -   Specialty elements act like an adhesive between two materials

    -   Used to model crack propagation when crack path (and material behavior) are known

-   XFEM

    -   eXtended Finite Element Method

    -   Can predict crack growth in any direction

    -   Adds “phantom” cracks in all elements

<span>direct method</span>

-   We already know that the stress field near the crack tip is
    $$\\sigma\_{yy} = \\frac{K\_I}{\\sqrt{2 \\pi x}}$$

-   We can solve this for *K*<sub>*I*</sub> and we should (in theory) be able to calculate *K*<sub>*I*</sub>

-   We will get a unique *K*<sub>*I*</sub> value for every point (*x*) along crack plane

-   For this method to be accurate, we need to capture the singularity at crack tip

-   This requires a very fine mesh (computationally expensive)

-   Alternatively, many FE packages include “singularity” elements which allow coarse(r) mesh

<span>modeling tips</span>

-   Use symmetry in your model to reduce node count

-   Center-crack can be modeled using on 1/4 of the model

-   Use biased node seeding (more nodes near tip)

<span>symmetry</span>

<img src="../Figures/singularity_quarter" alt="" />

<span>symmetry</span>

<img src="../Figures/singularity_mirrored" alt="" />

<span>analyzing results</span>

-   If our results are accurate, we should be able to calculate the same *K*<sub>*I*</sub> at any point

-   To ensure convergence, we plot the calculated *K*<sub>*I*</sub> vs. *x* (distance from crack tip)

-   In the region where this plot is a horizontal line, we consider a converged *K*<sub>*I*</sub>

-   It is also possible to consider the crack opening displacement
    $$u\_y = \\frac{K\_I(\\kappa + 1)}{4 \\nu \\pi}\\sqrt{-2 \\pi x}$$

-   Where *κ* is to easily differentiate between plane stress and plane strain
    $$\\begin{aligned}
            \\kappa &= 3 - 4\\nu & \\text{(plane strain)}\\\\
            \\kappa &= \\frac{3-\\nu}{1+\\nu} & \\text{(plane stress)}
            \\end{aligned}$$

-   The displacement method is generally more accurate in Finite Elements

<span>stress results</span>

table\[x=x,y=s22\] <span>s22.txt</span>;

table\[x=x,y=KI\] <span>s22.txt</span>;

<span>displacement results</span>

table\[x=x,y=u2\] <span>u2.txt</span>;

table\[x=x,y=KI\] <span>u2.txt</span>;

<span>next class</span>

-   crack closure

-   cohesive elements

-   XFEM

-   damage in composites


