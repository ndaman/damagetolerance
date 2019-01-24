<span>schedule</span>

-   6 Feb - Plastic Zone (Homework 2 Due)

-   8 Feb - Fracture Toughness

-   13 Feb - Fracture Toughness (Homework 3 Due)

-   15 Feb - Residual Strength

### outline

\[sections numbered\]

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

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (1.25,0) – (2,0); node at (1.85,0.2) <span>*a* = long</span>; (1.25,-2.0) – (0,-2.0); (1.75,-2.0) – (3,-2.0); node at (1.5,-1.5) <span>*W* = 3.0</span>; node at (0.375,-0.8) <span>*c*</span>; node at (1.875,-0.8) <span>*e*</span>; (0.25,-0.8) – (0,-0.8); (0.5,-0.8) – (0.75,-0.8); (1.625,-0.8) – (0.75,-0.8); (2.125,-0.8) – (3.0,-0.8);

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

(0,-2.5) – (0,2.5) – (3,2.5) – (3,-2.5) – (0,-2.5); (1.5,2.5) – (1.5,3) node\[above\] <span>*σ*</span>; (1.5,-2.5) – (1.5,-3) node\[below\] <span>*σ*</span>; (0.75,0) circle (0.5); (1.25,0) – (2,0); (0.25,0) – (0,0); node at (1.85,0.2) <span>*a* = long</span>; (1.25,-2.0) – (0,-2.0); (1.75,-2.0) – (3,-2.0); node at (1.5,-1.5) <span>*W* = 3.0</span>; node at (0.375,-0.8) <span>*c*</span>; node at (1.875,-0.8) <span>*e*</span>; (0.25,-0.8) – (0,-0.8); (0.5,-0.8) – (0.75,-0.8); (1.625,-0.8) – (0.75,-0.8); (2.125,-0.8) – (3.0,-0.8);

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

<img src="../Figures/Kt-offcenter-hole.png" alt="K_{tg} uses stress for the cross-sectional area if no hole was present, K_{tn} uses stress at the net section (subtracting hole area). c is the distance from the closest edge to the center of the hole, e is the distance from the farthest edge to the center of the hole, r is hole radius." style="width:50.0%" />

<span>bending of a bar with u-shaped notch - p. 84</span>

<img src="../Figures/kt-bending-edge.png" alt="Nominal stress used for K_t is given by \sigma_{nom} = 6M/hd^2 where M is applied bending moment, h is thickness, d is the net-section height (height minus notch depth). D is the height of the panel without a notch and r is the notch radius." style="width:85.0%" />

<span>tension of a stepped bar with shoulder fillets - p. 85</span>

<img src="../Figures/fillet.png" alt="D is the larger width (before the step), d is the width after the step. Nominal stress is \sigma_{nom} = P/hd, where h is specimen thickness. r is the fillet radius." style="width:85.0%" />

<span>interactive page</span>

-   An interactive page with these plots can be accessed here: <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Stress%20Concentration%20Factors.ipynb>

plastic zone
============

<span>plastic zone</span>

-   Previous developments assumed perfectly elastic materials

-   Most common materials have some plasticity

-   Any stress above the yield stress will undergo plastic deformation (no stress higher than *σ*<sub>*y*</sub> will be present in the material)

<span>plastic zone</span>

-   Plasticity helps retard crack propagation due to residual stresses

-   After an overload, elastic regions will contract back to their undeformed shape

-   The region which has undergone plastic deformation, however, holds its deformed shape

-   This introduces a region of residual compressive stress near the crack tip

-   Before the crack can propagate, a stress needs to overcome this residual stress

<span>2D problems</span>

-   We often simplify the full 3D elasticity equations for planar problems

-   For very thin panels, we assume that all out-of-plane stresses are 0

-   This is called plane stress

    $$\\begin{aligned}
                \\sigma\_z &= \\tau\_{xz} = \\tau\_{zy} = 0\\\\
                \\epsilon\_x &= \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E}\\\\
                \\epsilon\_y &= -\\nu \\frac{\\sigma\_x}{E} + \\frac{\\sigma\_y}{E}\\\\
                \\epsilon\_z &= -\\nu \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E}\\\\
                \\gamma\_{xy} &= \\frac{\\tau\_{xy}}{G}\\\\
                \\gamma\_{xz} &= \\gamma\_{yz} = 0
                \\end{aligned}$$

<span>2D problems</span>

-   When instead a panel is very thick, we assume that any strains through the thickness are small relative to other strains

-   *ϵ*<sub>*z*</sub> = *γ*<sub>*x**z*</sub> = *γ*<sub>*y**z*</sub> = 0

-   This is known as plane strain

    $$\\begin{aligned}
                \\epsilon\_x &= \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E} - \\nu \\frac{\\sigma\_z}{E}\\\\
                \\epsilon\_y &= -\\nu \\frac{\\sigma\_x}{E} + \\frac{\\sigma\_y}{E} - \\nu \\frac{\\sigma\_z}{E}\\\\
                0 &= -\\nu \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E} + \\frac{\\sigma\_z}{E}\\\\
                \\gamma\_{xy} &= \\frac{\\tau\_{xy}}{G}\\\\
                \\gamma\_{xz} &= \\gamma\_{yz} = 0
                \\end{aligned}$$

<span>Irwin’s first approximation</span>

-   If we recall the equation for opening stress (*σ*<sub>*y*</sub>) near the crack tip
    $$\\sigma\_y = \\frac{K\_I}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1+\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right) \\tag{1.2}$$

-   In the plane of the crack, when *θ* = 0 we find
    $$\\sigma\_y = \\frac{K\_I}{\\sqrt{2\\pi r}}$$

<span>Irwin’s first approximation</span>

(-2,0.5) node at (-2,0) <span>crack</span> – (0,0) – (-2,-0.5);

+\[mark=none,samples=200,unbounded coords=jump, domain=0.01:0.5\] <span>1/sqrt(2\*pi\*x)</span>; (axis cs:0.125,1.128) circle \[radius=1.5pt\] node\[above right\] <span>(*r*<sub>*p*</sub>, *C**σ*<sub>*Y**S*</sub>)</span>;

(0.75,0) circle (0.75); node at (0.75,-1) <span>*r*<sub>*p*</sub></span>; (0.5,-1) – (0,-1); (1,-1) – (1.5,-1);

<span>Irwin’s first approximation</span>

-   We use *C* “Plastic Constraint Factor” to convert between Plane Strain and Plane Stress solutions

-   The plastic zone size can now be approximated by solving the equation *σ*<sub>*y**y*</sub>(*r* = *r*<sub>*p*</sub>)=*C**σ*<sub>*Y**S*</sub>

    $$\\begin{aligned}
            \\sigma\_{yy}(r=r\_p) &= C\\sigma\_{YS}\\\\
            \\frac{K\_I}{\\sqrt{2\\pi r\_p}} &= C\\sigma\_{YS}\\\\
            r\_p &= \\frac{1}{2\\pi} \\left(\\frac{K\_I}{C\\sigma\_{YS}}\\right)^2
            \\end{aligned}$$

<span>Irwin’s first approximation</span>

-   For plane stress (thin panels) we let *C* = 1 and find *r*<sub>*p*</sub> as
    $$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   And for plane strain (thick panels) we let $C=\\sqrt{3}$ and find
    $$r\_p = \\frac{1}{6\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

<span>Intermediate panels</span>

-   For panels which lie between plane strain and plane stress states, we use the following expression to estimate the plastic zone size
    $$\\label{eq:rp}
            r\_p = \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   Where *I* is defined as
    $$\\label{eq:intermediate}
            I = 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   And 2 ≤ *I* ≤ 6

<span>Irwin’s second approximation</span>

-   If our material is perfectly elastic-plastic, no stresses above *C**σ*<sub>*Y**S*</sub> will exist in the material

-   This ignores the strain energy (represented by the area under the curve) in the plastic zone

<span>Irwin’s second approximation</span>

(-2,0.5) node at (-2,0) <span>crack</span> – (0,0) – (-2,-0.5);

; ; ; fill between\[of=a and b\]; (axis cs:0.125,1.128) circle \[radius=1.5pt\] node\[above right\] <span>(*r*<sub>*p*</sub>, *C**σ*<sub>*Y**S*</sub>)</span>;

node at (0.75,-.2) <span>*r*<sub>*p*</sub></span>; (0.5,-.2) – (0,-.2); (1,-.2) – (1.5,-.2); node at (3,3) <span>Missing Strain Energy</span>; (3,2.8) – (0.5,2);

<span>Irwin’s second approximation</span>

-   To account for the additional strain energy, Irwin considered a plastic zone size increased by some *δ*

-   He also needed to adjust the stress function, and considered an equivalent crack tip in these calculations

<span>Irwin’s second approximation</span>

(-2,0.5) node at (-2,0) <span>real crack</span> – (0,0) – (-2,-0.5); (-.5,0.5) node at (.75,.75) <span>eq. crack</span> – (1.5,0) – (-.5,-0.5); (1.5,0) rectangle (2.7,1.5);

; ; ; fill between\[of=a and b\]; ; ;

node at (0.75,-.2) <span>*r*<sub>*p*</sub></span>; (0.5,-.2) – (0,-.2); (1,-.2) – (1.5,-.2); node at (2.1,-.2) <span>*δ*</span>; (2.3,-.2) – (2.7,-.2); (1.9,-.2) – (1.5,-.2); (3,3.5) node\[right\] <span>$\\sigma\_{yy} = \\frac{K\_I}{\\sqrt{2\\pi r}}$</span> – (0.75,2); (4,2.5) node\[right\] <span>$\\tilde{\\sigma}\_{yy} = \\frac{K\_I}{\\sqrt{2\\pi (r-\\delta)}}$</span> – (2.7,1.5); node at (.5,2) <span>A</span>; node at (2.1,0.75) <span>B</span>;

<span>Irwin’s second approximation</span>

-   We need *A* = *B*, so we set them equivalent and solve for *δ*.

    $$\\begin{aligned}
                A &= \\int\_{0}^{r\_p} \\sigma\_{yy} dr - r\_p \\sigma\_{YS}\\\\
                &= \\int\_{0}^{r\_p} \\frac{K\_I}{\\sqrt{2\\pi r}} dr - r\_p \\sigma\_{YS}\\\\
                &= \\frac{K\_I}{\\sqrt{2\\pi}}\\int\_{0}^{r\_p} r^{-1/2} dr - r\_p \\sigma\_{YS}\\\\
                &= \\frac{2K\_I \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}
                \\end{aligned}$$

-   We have already found *r*<sub>*p*</sub> as

    $$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

<span>Irwin’s second approximation</span>

-   If we solve this for *K*<sub>*I*</sub> we find

    $$K\_I = \\sqrt{2\\pi r\_p} \\sigma\_{YS}$$

<span>Irwin’s second approximation</span>

-   We can now substitute back into the strain energy of A

    $$\\begin{aligned}
                A &= \\frac{2\\sqrt{2\\pi r\_p} \\sigma\_{YS} \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}\\\\
                &= 2 \\sigma\_{YS} r\_p- r\_p \\sigma\_{YS}\\\\
                &= r\_p \\sigma\_{YS}
                \\end{aligned}$$

-   B is given simply as *B* = *δ**σ*<sub>*Y**S*</sub>, so we equate A and B to find *δ*

    $$\\begin{aligned}
            A &= B\\\\
            r\_p \\sigma\_{YS} &= \\delta \\sigma\_{YS}\\\\
            r\_p &= \\delta
            \\end{aligned}$$

<span>Irwin’s second approximation</span>

-   This means the plastic zone size is simply 2*r*<sub>*p*</sub>

-   However, it also means that the effective crack length is *a* + *r*<sub>*p*</sub>

-   Since *r*<sub>*p*</sub> depends on *K*<sub>*I*</sub>, we must iterate a bit to find the “real” *r*<sub>*p*</sub> and *K*<sub>*I*</sub>

<span>Example</span>

(0,0) – (0,2) – (4,2) – (4,-2) – (0,-2) – (0,0); (0,0) – (0.5,0); node at (0.75,0.2) <span>a</span>; (2,2) – (2,2.5) node\[above\] <span>*σ*</span>; (2,-2)– (2,-2.5) node\[below\] <span>*σ*</span>; (1.5,-0.5) – (0,-0.5); (2.5,-0.5) – (4,-0.5); node at (2,-0.5) <span>*W*</span>;

<span>equations</span>
$$\\begin{aligned}
    \\beta &= \\left\[1.122 - 0.231 \\frac{a}{W} + 10.55 \\left(\\frac{a}{W}\\right)^2 - 21.71 \\left(\\frac{a}{W}\\right)^3 + 30.82 \\left(\\frac{a}{W}\\right)^4\\right\] \\tag{2.4a}\\\\
    I &= 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2 \\tag{~\\ref{eq:intermediate}}\\\\
    r\_p &= \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2 \\tag{~\\ref{eq:rp}}\\end{aligned}$$
 <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Plastic%20Zone%20Example.ipynb>

plastic stress intensity ratio
==============================

<span>plastic stress intensity ratio</span>

-   Engineers often use stress intensity to decide which material to use for a certain application

-   The ratio of plastic stress intensity to elastic stress intensity, as a function of yield stress over applied stress, can help illustrate the effects of plasticity for different materials.

<span>plastic stress intensity ratio</span>

-   For an infinitely wide center-cracked panel, we can solve for *K*<sub>*I**e*</sub>/*K*<sub>*I*</sub> symbolically

-   For plane stress we have:

    $$\\begin{aligned}
                K\_I &= \\sigma \\sqrt{\\pi a}\\\\
                K\_{Ie} &= \\sigma \\sqrt{\\pi(a+r\_p)}\\\\
                r\_p &= \\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\\\
                K\_{Ie} &= \\sigma \\sqrt{\\pi \\left(a+\\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\right)}
                \\end{aligned}$$

<span>plastic stress intensity ratio</span>

-   We square both sides

    $$\\begin{aligned}
                K\_{Ie}^2 &= \\sigma^2 \\pi \\left(a+\\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\right)\\\\
                K\_{Ie}^2 &= \\sigma^2 \\pi a+\\frac{\\sigma^2}{2} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\\\
                K\_{Ie}^2 - \\frac{\\sigma^2}{2} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2 &= \\sigma^2 \\pi a\\\\
                K\_{Ie}^2\\left(1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}\\right) &= \\sigma^2 \\pi a
                \\end{aligned}$$

<span>plastic stress intensity ratio</span>

-   We divide both sides by $\\left(1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}\\right)$

    $$\\begin{aligned}
                K\_{Ie}^2 &= \\frac{\\sigma^2 \\pi a}{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}\\\\
                K\_{Ie} &= \\frac{\\sigma \\sqrt{\\pi a}}{\\sqrt{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}}\\\\
                K\_{Ie} &= \\frac{K\_I}{\\sqrt{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}}\\\\
                \\frac{K\_{Ie}}{K\_I} &= \\frac{1}{\\sqrt{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}}
                \\end{aligned}$$

<span>plastic stress intensity ratio</span>

-   We can also find the plastic stress intensity ratio numerically for finite width panels

-   Panel thickness, yield stress, panel width, crack length could all be variables in this case

-   Different heat treatments of metal alloys can give a different yield stress, with most other properties remaining the same

-   Typical crack lengths can vary based on inspection cycles

<span>example</span>

-   You are trying to design an appropriate inspection cycle on a panel

-   One item to consider is the plastic stress intensity ratio, consider the effect of varying crack lengths on the plastic stress intensity ratio.

    (0,-3) – (0,3) – (6,3) – (6,-3) – (0,-3); (3,3) – (3,4) node\[above\] <span>8 ksi</span>; (3,-3) – (3,-4) node\[below\] <span>8 ksi</span>; (0,0) – (2,0); node at (1.2,0.5) <span>*a*</span>; (2.5,-2.5) – (0,-2.5); (3.5,-2.5) – (6,-2.5); node at (3,-2.5) <span>5"</span>;

<span>example</span> <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Plastic%20stress%20intensity%20ratio.ipynb>

plastic zone shape
==================

<span>plastic zone shape</span>

-   Although we drew a circle to give a rough idea of the plastic zone in Irwin’s method, this solution was only 1D

-   We considered *θ* = 0.

-   It is advantageous to model the plastic zone shape, we will do so using two different yield theories

-   Von Mises and Tresca

<span>principal stresses</span>

-   Principal stresses are often used in yield theories

-   We can determine the principal stresses near the crack tip as

    $$\\begin{aligned}
                \\label{eq:principal}
                \\sigma\_1 &= \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)&\\\\
                \\sigma\_2 &= \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right)&\\\\
                \\sigma\_3 &= 0 &\\qquad \\text{(plane stress)}\\\\
                \\sigma\_3 &= \\frac{2\\nu K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2} &\\qquad \\text{(plane strain)}
                \\end{aligned}$$

<span>Von Mises yield theory</span>

-   The Von Mises yield theory is also known as the Distortion Energy Yield Theory

-   In this yield theory, we assume that failure or yielding occurs when the strain energy exceeds some threshold

-   It has been observed that hydrostatic pressure does not generally cause yielding

-   We separate the strain energy into two parts, volumetric and distortional

-   Only the distortional strain energy is used to determine the yield strength

<span>Von Mises yield theory</span>

-   The distortional strain energy is given by
    $$\\label{eq:distortion}
            W\_d = \\frac{1}{12}G\\left\[\\left(\\sigma\_1 - \\sigma\_2\\right)^2 + \\left(\\sigma\_2 - \\sigma\_3\\right)^2 + \\left(\\sigma\_3 - \\sigma\_1\\right)^2\\right\]$$

-   Which for a uniaxially loaded point becomes
    $$W\_d = \\frac{1}{6}G\\sigma\_{YS}^2$$

-   We can equate the two cases and solve

    $$\\begin{aligned}
                \\frac{1}{6}G\\sigma\_{YS}^2 &= \\frac{1}{12}G\\left\[\\left(\\sigma\_1 - \\sigma\_2\\right)^2 + \\left(\\sigma\_2 - \\sigma\_3\\right)^2 + \\left(\\sigma\_3 - \\sigma\_1\\right)^2\\right\]\\\\
                2 \\sigma\_{YS}^2 &= \\left(\\sigma\_1 - \\sigma\_2\\right)^2 + \\left(\\sigma\_2 - \\sigma\_3\\right)^2 + \\left(\\sigma\_3 - \\sigma\_1\\right)^2
                \\end{aligned}$$

<span>Von Mises yield theory</span>

-   We can find the plastic zone size, *r*<sub>*p*</sub> by substituting the principal stress relations (\[eq:principal\]) into the distortional strain energy equation (\[eq:distortion\])

-   In plane stress we find

    $$\\begin{aligned}
                2 \\sigma\_{YS}^2 &= \\left( \\sigma\_1 - \\sigma\_2 \\right)^2 + \\left( \\sigma\_2 - 0 \\right)^2 + \\left(0 - \\sigma\_1\\right)^2\\\\
                &\\begin{aligned}
                \\mathllap{2 \\sigma\_{YS}^2} &= \\left(\\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right) - \\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right)\\right)^2 + \\\\
                &\\qquad \\left(\\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right) - 0\\right)^2 + \\\\
                &\\qquad \\left(0 - \\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)\\right)^2
                \\end{aligned}
                \\end{aligned}$$

<span>Von Mises yield theory</span>

-   After solving we find
    $$r\_p = \\frac{K\_I^2}{2\\pi \\sigma^2\_{YS}} \\cos^2 \\frac{\\theta}{2} \\left(1 + 3\\sin^2 \\frac{\\theta}{2}\\right)$$

-   We can similarly solve for *r*<sub>*p*</sub> in plane strain to find
    $$r\_p = \\frac{K\_I^2}{2\\pi \\sigma^2\_{YS}} \\cos^2 \\frac{\\theta}{2} \\left(1 -4\\nu + 4\\nu^2 + 3\\sin^2 \\frac{\\theta}{2}\\right)$$

<span>Tresca yield theory</span>

-   Tresca yield theory assumes that yielding begins when the maximum shear stress reaches a critical value

-   In uniaxial tension this gives
    $$\\tau\_0 = \\tau\_{max} = \\frac{1}{2}\\left(\\sigma\_{max} - \\sigma\_{min}\\right) = \\frac{1}{2} \\left(\\sigma\_{YS} - 0\\right) = \\frac{\\sigma\_{YS}}{2}$$

<span>Tresca yield theory</span>

-   Using (\[eq:principal\]), we see that

    $$\\begin{aligned}
                \\sigma\_{max} &= \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)\\\\
                \\sigma\_{min} &= 0
                \\end{aligned}$$

-   We can substitute and solve as before to find
    $$r\_p = \\frac{K\_I^2}{2 \\pi \\sigma\_{YS}^2}\\cos^2 \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)^2$$

<span>Tresca yield theory</span>

-   In plane strain, it is not clear whether *σ*<sub>2</sub> or *σ*<sub>3</sub> will be *σ*<sub>*m**i**n*</sub>

-   We can solve for when *σ*<sub>2</sub> will be *σ*<sub>*m**i**n*</sub>

    $$\\begin{aligned}
                \\sigma\_2 &&lt; \\sigma\_3\\\\
                \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right) &&lt; \\frac{2\\nu K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\\\
                1-\\sin \\frac{\\theta}{2} &&lt; 2\\nu\\\\
                \\theta\_t &gt; 2 \\sin^{-1} (1-2\\nu)
                \\end{aligned}$$

<span>Tresca yield theory</span>

-   When 2*π* − *θ*<sub>*t*</sub> &lt; *θ* &lt; *θ*<sub>*t*</sub>, *σ*<sub>2</sub> is the minimum, otherwise *σ*<sub>3</sub> is the minimum

-   Note: Error(s) in text p. 101

-   Once we have chosen the appropriate minimum stress (*σ*<sub>2</sub>*o**r**σ*<sub>3</sub>), we can solve for *r*<sub>*p*</sub> as before

<span>Tresca yield theory</span>

$$\\begin{aligned}
        r\_p &= \\frac{2 K\_I^2}{\\pi \\sigma\_{YS}^2} \\cos^2 \\frac{\\theta}{2} \\sin^2 \\frac{\\theta}{2} & \\theta\_t &lt; \\theta &lt; 2\\pi - \\theta\_t\\\\
        r\_p &= \\frac{K\_I^2}{2\\pi \\sigma\_{YS}^2}\\cos^2 \\frac{\\theta}{2}\\left(1 - 2\\nu + \\sin \\frac{\\theta}{2}\\right)^2 & \\theta &lt; \\theta\_t, \\theta &gt; 2\\pi - \\theta\_t
        \\end{aligned}$$

<span>3D plastic zone shape</span>

<img src="../Figures/dumbell" alt="image" /> \[fig:dumbell\]

<span>example</span> <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Plastic%20Zone%20Shape.ipynb>

group problems
==============

<span>group one</span>

-   Calculate the plastic zone size for an infinitely wide, center-cracked panel

-   Consider a crack-length of 4 cm, and a yield strength of *σ*<sub>*Y**S*</sub> = 55 MPa, with an applied load of *σ* = 20 MPa

-   Assume the panel is very thin

<span>group two</span>

-   Calculate the plastic zone size for an infinitely wide, center-cracked panel

-   Consider a crack-length of 4 cm, and a yield strength of *σ*<sub>*Y**S*</sub> = 55 MPa, with an applied load of *σ* = 20 MPa

-   Assume the panel is very thick

<span>group three</span>

-   Calculate the plastic zone size for an infinitely wide, center-cracked panel

-   Consider a crack-length of 4 cm, and a yield strength of *σ*<sub>*Y**S*</sub> = 55 MPa, with an applied load of *σ* = 20 MPa

-   The panel thickness is *t* = 0.65 cm

<span>group four</span>

-   Find the plastic stress intensity ratio for an infinitely wide, center-cracked panel

-   What factors will increase or decrease the plastic stress intensity ratio?


