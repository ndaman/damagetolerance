<span>schedule</span>

-   10 Apr - Crack Retardation, HW8 Due

-   12 Apr - Crack Retardation

-   17 Apr - Damage Tolerance, HW9 Due

-   19 Apr - Exam 2

-   24 Apr - SPTE, Exam Return

-   Damage Tolerance, Special Topics, Final Projects

crack growth retardation
========================

<span>crack growth retardation</span>

-   When an overload is applied, the plastic zone is larger

-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone

-   We will discuss three retardation models, but no model has been shown to be perfect in all cases

-   The Wheeler method reduces *d**a*/*d**N*, the Willenborg model reduces *Δ**K*, and the Closure model increases *R* (increases *σ*<sub>*m**i**n*</sub>)

<span>wheeler retardation</span>

-   As long as crack is within overload plastic zone, we scale *d**a*/*d**N* by some *ϕ*

-   
    (*a*<sub>*i*</sub> + *r*<sub>*p**i*</sub>)=(*a*<sub>*o**l*</sub> + *r*<sub>*p**o**l*</sub>)

-   And *ϕ* is given by
    $$\\phi\_i = \\left\[\\frac{r\_{pi}}{a\_{ol}+r\_{pol}-a\_i}\\right\]^m$$

-   and the constant, *m* is to be determined experimentally

<span>wheeler example</span>

-   (p. 340), A wide edge-cracked panel (*β* = 1.22) hsa an initial crack length of 0.3 inches. Use *p* = 3.5, *m*<sub>*T*</sub> = 32 and *q* = 0.6 to grow a crack for two load cases. Use the Wheeler retardation model with *m* = 1.43, a plane stress plastic zone, and *σ*<sub>*Y**S*</sub> = 68 ksi.

-   Case 1: *σ*<sub>*m**a**x*</sub> = 18 ksi and *σ*<sub>*m**i**n*</sub> = 3.6 ksi for 12,000 cycles

-   Case 2: *σ*<sub>*m**a**x*</sub> = 18 ksi and *σ*<sub>*m**i**n*</sub> = 3.6 ksi for 6,000 cycles, followed by one cycle of *σ*<sub>*m**a**x*</sub> = 27 ksi and *σ*<sub>*m**i**n*</sub> = 5.4 ksi, followed by another 6,000 cycles of *σ*<sub>*m**a**x*</sub> = 18 ksi and *σ*<sub>*m**i**n*</sub> = 3.6 ksi.

<span>willenborg retardation</span>

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*p**i*</sub>)=(*a*<sub>*o**l*</sub> + *r*<sub>*p**o**l*</sub>)

-   Willenborg assumes that the residual compressive stress in the plastic zone creates an effective, *K*<sub>*m**a**x*, *e**f**f*</sub>, where *K*<sub>*m**a**x*, *e**f**f*</sub> = *K*<sub>*m**a**x*</sub> − *K*<sub>*c**o**m**p*</sub>

-   The effective stress intensity factor is given by
    $$K\_{max,eff} = K\_{max,i} - \\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

<span>gallagher and hughes correction</span>

-   Galagher and Hughes observed that the Willenborg model stops cracks when they still propagate

-   They proposed a correction to the model

-   
    $$K\_{max,eff} = K\_{max,i} - \\phi\_i\\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

-   And the correction factor, *ϕ*<sub>*i*</sub> is given by
    $$\\phi\_i \\frac{1-K\_{TH}/K\_{max,i}}{s\_{ol}-1}$$

<span>willenborg example</span>

-   Consider the Wheeler example problem with Willenborg parameters of *S*<sub>*o**l*</sub> = 2.3 and *K*<sub>*T**H*</sub> = 1 ksi.

<span>closure model</span>

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*p**i*</sub>)=(*a*<sub>*o**l*</sub> + *r*<sub>*p**o**l*</sub>)

-   Within the overloaded plastic zone, the opening stress required can be expressed as
    *σ*<sub>*O**P*</sub> = *σ*<sub>*m**a**x*</sub>(1 − (1 − *C*<sub>*f*0</sub>)(1 + 0.6*R*)(1 − *R*))

-   Commonly this is expressed using the Closure Factor, *C*<sub>*f*</sub>

-   
    $$C\_f = \\frac{\\sigma\_{OP}}{\\sigma\_{max}} = (1-(1-C\_{f0})(1+0.6R)(1-R))$$

-   Where *C*<sub>*f*0</sub> is the value of the Closure Factor at *R* = 0

<span>closure model</span>

-   When using the closure model, we replace *R* with *C*<sub>*f*</sub>

-   If the model we are using is in terms of *Δ**K* we will also need to use *Δ**K* = (1 − *C*<sub>*f*</sub>)*K*<sub>*m**a**x*</sub>

<span>closure example</span>

-   Consider the Wheeler/Willenborg example problem with Closure parameters of *C*<sub>*f*0</sub> = 0.3 and *C*<sub>*f*</sub> = 0.3728

<span>compressive under-loads</span>

-   Just as a tensile “overload” retards crack growth, we might expect a compressive “underload” to accelerate crack growth

-   This effect is not usually modeled for a few reasons

    1.  Compressive underloads are uncommon in airframes

    2.  The acceleration effect is minimal

    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model

    4.  Structures with large compressive loads are not generally subject to crack propagation problems

finite element techniques
=========================

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
