<span>homework notes</span>

-   Watch units (beam problem, foot-lbs vs. in-lbs)

-   Significant figures

-   My grading philosophy

-   Individual work

<span>schedule</span>

-   30 Jan - Curved Boundaries

-   1 Feb - Plastic Zone

-   6 Feb - Plastic Zone (Homework 2 Due)

-   8 Feb - Fracture Toughness

-   13 Feb - Fracture Toughness (Homework 3 Due)

### outline

\[sections numbered\]

<span>errata</span>

-   I mis-spoke in class, equation 11 in the text is correct (as are the slides from lecture 2), I made an error in the example code

-   The updated example is available at the same address as before <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Cracks%20Around%20a%20Hole.ipynb>

-   I was unable to find the source for Dr. Horn’s equations, but I have made an alternate set of equations (taken from the AFGROW user’s manual) available on Blackboard under supplemental material.

compounding
===========

<span>superposition vs. compounding</span>

-   In this course, we use “superposition” to combine loading conditions

-   We use “compounding” to combine edge effects

-   Both are very powerful tools and important concepts

<span>compounding</span>

-   Different types of boundaries create different correction factors to the usual stress intensity factor

-   We often use *β* to indicate the total correction factor

-   When multiple boundaries are present, we can combine them into one effective correction factor

-   There are two general methods we use to create a compound correction factor

<span>compounding method 1</span>

-   The first method uses linear superposition, and thus is restricted to cases where the effect of each boundary can be assumed to add linearly

-   While in most cases this is not strictly true, it provides a reasonable approximation
    $$K\_r = \\bar{K} + \\sum\_{i=1}^{N}(K\_i - \\bar{K})$$

-   Where *N* is the number of boundaries, $\\bar{K}$ is the stress intensity factor with no boundaries present and *K*<sub>*i*</sub> is the stress intensity factor associated with the *i*<sup>th</sup> boundary.

<span>compounding method 1</span>

-   We can rewrite this equation as
    $$K\_r = \\sigma \\sqrt{\\pi a} \\beta\_r = \\sigma \\sqrt{\\pi a} + \\sum\_{i=1}^{N}(\\sigma \\sqrt{\\pi a}\\beta\_i - \\sigma \\sqrt{\\pi a})$$

-   Which leads to an expression for *β*<sub>*r*</sub> as
    $$\\beta\_r = 1+\\sum\_{i=1}^{N} (\\beta\_i - 1)$$

<span>compounding method 2</span>

-   An alternative empirical method approximates the boundary effect as
    *β*<sub>*r*</sub> = *β*<sub>1</sub>*β*<sub>2</sub>...*β*<sub>*N*</sub>

-   If there is no interaction between the boundaries, method 1 and method 2 will give the same result

<span>p. 68 - example 1</span>

-   A crack in a finite-width panel is centered between two stiffeners

-   Assume the *β* correction factor for this stiffener configuration is *β*<sub>*s*</sub> = 0.9

-   Assume the *β* correction factor for this finite-width panel is *β*<sub>*w*</sub> = 1.075

-   Use both compounding methods to estimate the stress intensity

-   How accurate do you expect this to be?

<span>p. 69 - example 3</span>

(0,0) – (0,1) – (2,1) – (2,-1) – (0,-1) – (0,0); (0.45,0) – (1.45,0); node at (0.45,0.1) <span>A</span> node at (1.45,.1) <span>B</span> node at (.45,.5) <span>*b*</span>; (0.3,.5) – (0,.5); (.6,.5) – (.9,.5); (.9,0) – (.9,.8); node at (0.95,-0.2) <span>2a=1"</span>; (1,1) – (1,1.5) node\[above\] <span>*σ*</span>; (1,-1) – (1,-1.5) node\[below\] <span>*σ*</span>; (0.7,-0.7) – (0,-0.7); (1.3,-0.7) – (2,-0.7); node at (1,-0.7) <span>$2.25"$</span>;

<span>group 1</span>

; ; ; ; (0,0) – (0,1) – (2,1) – (2,-1) – (0,-1) – (0,0); (0.2,0) – (0.8,0); node at (0.15,0.1) <span>A</span> node at (.85,.1) <span>B</span> node at (.25,.5) <span>*b*</span>; node at (0.5,-0.2) <span>2a=0.25"</span>; \[-.5\]\[-.5\]; node at (1,2) <span>*σ*</span>; \[.5\]\[.5\]; node at (1,-2) <span>*σ*</span>; (0.7,-0.7) – (0,-0.7); (1.3,-0.7) – (2,-0.7); node at (1,-0.7) <span>$2"$</span>; (.5,0) – (.5,.8); (0.15,.5) – (0,.5); (.35,.5) – (.5,.5); node at (2.2,0) <span>$1"$</span>; (2.2,0.5) – (2.2,1); (2.2,-0.5) – (2.2,-1);

<span>group 2</span>

; ; ; ; (0,0) – (0,1) – (2,1) – (2,-1) – (0,-1) – (0,0); (0.2,0) – (0.8,0); node at (0.15,0.1) <span>A</span> node at (.85,.1) <span>B</span> node at (.25,.5) <span>*b*</span>; node at (0.5,-0.2) <span>2a=0.25"</span>; \[-.5\]\[-.5\]; node at (1,2) <span>*σ*</span>; \[.5\]\[.5\]; node at (1,-2) <span>*σ*</span>; (0.7,-0.7) – (0,-0.7); (1.3,-0.7) – (2,-0.7); node at (1,-0.7) <span>$2"$</span>; (.5,0) – (.5,.8); (0.15,.5) – (0,.5); (.35,.5) – (.5,.5); (1.5,0) circle (0.25);

<span>group 3</span>

; ; ; ; (0,0) – (0,1) – (4,1) – (4,-1) – (0,-1) – (0,0); (1.5,0) – (2.5,0); node at (2,0.2) <span>2a=0.25"</span>; \[-.5\]\[-.5\]; node at (2,2) <span>*σ*</span>; \[.5\]\[.5\]; node at (2,-2) <span>*σ*</span>; (3,0) circle (0.25); node at (1,0) <span>$1"$</span>; (1,0.5) – (1,1); (1,-0.5) – (1,-1);

<span>group 4</span>

; ; ; ; (0,0) – (0,1) – (4,1) – (4,-1) – (0,-1) – (0,0); (1.5,0) – (2.5,0); node at (2,0.2) <span>2a = 0.25"</span>; \[-.5\]\[-.5\]; node at (2,1.8) <span>*σ*</span>; \[.5\]\[.5\]; node at (2,-1.8) <span>*σ*</span>; (3,0) circle (0.25); (1,0) circle (0.35);

<span>textbook notes</span>

-   on p. 64 there is a + missing between two terms, see Lecture 3 slide \[lecture3-eqn-error\] for the fix

-   Also on p. 64, in equation 29 it is not clear, but use the *f*<sub>*w*</sub> from a previous equation, on p. 56

-   Some of the black and white figures can be difficult to use, we have scanned and re-created the plots online

-   Interactive versions of compounding figures from p. 50, 71-73 can be found at <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Compounding%20Figures.ipynb>

<span>finite height - p. 50</span>

<img src="../Figures/finite-height.png" alt="\beta for finite height effects, see text p. 50" style="width:100.0%" />

<span>offset crack - p. 71</span>

<img src="../Figures/internal-crack.png" alt="\beta for offset internal crack, see text p. 71" style="width:100.0%" />

<span>crack near hole - p. 72</span>

<img src="../Figures/crack-hole-A.png" alt="\beta for the crack tip farther away from a hole, see text p. 72" style="width:100.0%" />

<span>crack near hole - p. 73</span>

<img src="../Figures/crack-hole-B.png" alt="\beta for the crack tip closer to a hole, see text p. 73" style="width:100.0%" />

curved boundaries
=================

<span>short cracks on curved boundaries</span>

-   For short cracks, we can use the *stress concentration factor* on a curved boundary to determine the stress intensity factor

-   The stress concentration factor only gives the maximum stress at the curved boundary, thus the longer the crack is, the farther away from the curved boundary (and maximum stress) it is.

-   Stress concentration factors can be found: pp. 82-85 in the text

-   Also see supplemental text on Blackboard

<span>short cracks on curved boundaries</span>

-   Suppose we want to determine the stress intensity on a panel, panel B

-   We find a similar panel with a known stress intensity factor, panel A

-   We adjust the applied load on panel A such that *K*<sub>*I*, *A*</sub> = *K*<sub>*I*, *B*</sub>

-   The magnitude of this load adjustment is determined using the *stress concentration factors* in panels B and A

-   Note the notation: *K*<sub>*t*</sub> for stress concentration factor, *K*<sub>*I*</sub> for stress intensity factor

<span>short cracks on curved boundaries</span>

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*<sub>*B*</sub></span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*<sub>*B*</sub></span>; (0.75,0) circle (0.5); (.25,0) – (0.15,0); node at (1,-2) <span>*B*</span>; (5,-2.5) – (5,2.5) – (8,2.5) – (8,-2.5) – (5,-2.5); (6.5,2.5) – (6.5,3) node\[above\] <span>*σ*<sub>*A*</sub></span>; (6.5,-2.5) – (6.5,-3) node\[below\] <span>*σ*<sub>*A*</sub></span>; (6.5,0) circle (0.5); (6,0) – (5.9,0); node at (6,-2) <span>*A*</span>;

<span>short cracks on curved boundaries</span>

-   Since *A* is a fictional panel, we set the applied stress, *σ*<sub>*A*</sub> such that
    *σ*<sub>*m**a**x*, *B*</sub> = *σ*<sub>*m**a**x*, *A*</sub>

-   Substituting stress concentration factors
    *K*<sub>*t*, *B*</sub>*σ*<sub>*B*</sub> = *K*<sub>*t*, *A*</sub>*σ*<sub>*A*</sub>

-   Solving for *σ*<sub>*A*</sub>
    $$\\sigma\_A = \\frac{K\_{tB}}{K\_tA}\\sigma\_B$$

<span>short cracks on curved boundaries</span>

-   Since the crack is short and *σ*<sub>*m**a**x*, *A*</sub> = *σ*<sub>*m**a**x*, *B*</sub> we can say
    $$\\begin{aligned}
            K\_{I,B} &= K\_{I,A}\\\\
            &= \\sigma\_A \\sqrt{\\pi c} \\beta\_A\\\\
            &= \\frac{K\_{t,B}}{K\_{t,A}}\\sigma\_B \\sqrt{\\pi c} \\beta\_A
            \\end{aligned}$$

<span>example</span> Example 6 (p. 86)

<span>long cracks on curved boundaries</span>

-   As a crack becomes very large, the effect of the curved boundary diminishes

-   We find expressions for *β*<sub>*L*</sub> (long crack) and *β*<sub>*S*</sub> (short crack)

-   We connect *β*<sub>*S*</sub> to *β*<sub>*L*</sub> using a straight line from *β*<sub>*S*</sub> to a tangent intersection with *β*<sub>*L*</sub>

<span>long cracks on curved boundaries</span>

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (.25,0) – (0.,0); (1.25,0) – (2,0); node at (1.625,0.2) <span>*c*</span>; node at (0.625,-0.8) <span>*e*</span>; (0.425,-0.8) – (0,-0.8); (0.825,-0.8) – (1.25,-0.8);

<span>example</span>

-   Example at this link: <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Long%20Cracks%20on%20Curved%20Boundaries.ipynb>

<span>group one</span>

<span>0.6</span>

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (1.25,0) – (2,0); node at (1.85,0.2) <span>*a* = 0.1</span>; (1.25,-2.0) – (0,-2.0); (1.75,-2.0) – (3,-2.0); node at (1.5,-1.5) <span>*W* = 3.0</span>; node at (0.375,-0.8) <span>*c*</span>; node at (1.875,-0.8) <span>*e*</span>; (0.25,-0.8) – (0,-0.8); (0.5,-0.8) – (0.75,-0.8); (1.625,-0.8) – (0.75,-0.8); (2.125,-0.8) – (3.0,-0.8);

<span>0.4</span>

-   *c* = 0.75, *e* = 2.25, *r* = 0.5

-   assume *a* is short and calculate *β* for this case

-   calculate in terms of *β* for known state

<span>group two</span>

<span>0.6</span>

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (1.25,0) – (2,0); node at (1.85,0.2) <span>$a=\\text{\\small{long}}$</span>; (1.25,-2.0) – (0,-2.0); (1.75,-2.0) – (3,-2.0); node at (1.5,-1.5) <span>*W* = 3.0</span>; node at (0.375,-0.8) <span>*c*</span>; node at (1.875,-0.8) <span>*e*</span>; (0.25,-0.8) – (0,-0.8); (0.5,-0.8) – (0.75,-0.8); (1.625,-0.8) – (0.75,-0.8); (2.125,-0.8) – (3.0,-0.8);

<span>0.4</span>

-   *c* = 0.75, *e* = 2.25, *r* = 0.5

-   assume *a* is long and calculate *β* for this case

-   calculate in terms of *β* for known state

<span>group three</span>

<span>0.6</span>

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (1.25,0) – (2,0); (0.25,0) – (0,0); node at (1.85,0.2) <span>*a* = 0.1</span>; (1.25,-2.0) – (0,-2.0); (1.75,-2.0) – (3,-2.0); node at (1.5,-1.5) <span>*W* = 3.0</span>; node at (0.375,-0.8) <span>*c*</span>; node at (1.875,-0.8) <span>*e*</span>; (0.25,-0.8) – (0,-0.8); (0.5,-0.8) – (0.75,-0.8); (1.625,-0.8) – (0.75,-0.8); (2.125,-0.8) – (3.0,-0.8);

<span>0.4</span>

-   *c* = 0.75, *e* = 2.25, *r* = 0.5

-   assume *a* is short and calculate *β* for this case

-   calculate in terms of *β* for known state

<span>group four</span>

<span>0.6</span>

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (1.25,0) – (2,0); (0.25,0) – (0,0); node at (1.85,0.2) <span>$a=\\text{\\small{long}}$</span>; (1.25,-2.0) – (0,-2.0); (1.75,-2.0) – (3,-2.0); node at (1.5,-1.5) <span>*W* = 3.0</span>; node at (0.375,-0.8) <span>*c*</span>; node at (1.875,-0.8) <span>*e*</span>; (0.25,-0.8) – (0,-0.8); (0.5,-0.8) – (0.75,-0.8); (1.625,-0.8) – (0.75,-0.8); (2.125,-0.8) – (3.0,-0.8);

<span>0.4</span>

-   *c* = 0.75, *e* = 2.25, *r* = 0.5

-   assume *a* is long and calculate *β* for this case

-   calculate in terms of *β* for known state

<span>group five</span> Draw a sketch to show how we could use this method to find cracks of intermediate length near a curved boundary

stress concentration factors
============================

<span>centered hole tension - p. 82</span>

<img src="../Figures/kt-hole.png" alt="K_{tg} uses stress for the cross-sectional area if no hole was present, K_{tn} uses stress at the net section (subtracting hole area). a is the hole diameter, W is specimen width." style="width:85.0%" />

<span>off-center hole tension - p. 83</span>

<img src="../Figures/Kt-offcenter-hole.png" alt="K_{tg} uses stress for the cross-sectional area if no hole was present, K_{tn} uses stress at the net section (subtracting hole area). c is the distance from the closest edge to the center of the hole, e is the distance from the farthest edge to the center of the hole, r is hole radius." style="width:40.0%" />

<span>bending of a bar with u-shaped notch - p. 84</span>

<img src="../Figures/kt-bending-edge.png" alt="Nominal stress used for K_t is given by \sigma_{nom} = 6M/hd^2 where M is applied bending moment, h is thickness, d is the net-section height (height minus notch depth). D is the height of the panel without a notch and r is the notch radius." style="width:85.0%" />

<span>tension of a stepped bar with shoulder fillets - p. 85</span>

<img src="../Figures/fillet.png" alt="D is the larger width (before the step), d is the width after the step. Nominal stress is \sigma_{nom} = P/hd, where h is specimen thickness. r is the fillet radius." style="width:85.0%" />

<span>interactive page</span>

-   An interactive page with these plots can be accessed here: <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Stress%20Concentration%20Factors.ipynb>


