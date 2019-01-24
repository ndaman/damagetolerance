<span>schedule</span>

-   1 Mar - Mixed-mode Fracture (Homework 5 Due)

-   6 Mar - Review (Homework 6 Due)

-   8 Mar - Stress-based fatigue

-   13 Mar - Exam 1

-   15 Mar - Exam Return, Project Discussion

### outline

\[sections numbered\]

mixed mode fracture
===================

<span>mixed-mode fracture</span>

-   Most cracks are primarily Mode I, but sometimes Mode II can also have an effect

-   We can look at the combined stress field for Mode I and Mode II

-   Recall the stress field near the crack tip

    $$\\begin{aligned}
            \\sigma\_x &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1-\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right)\\\\
            \\sigma\_y &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1+\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right)\\\\
            \\tau\_{xy} &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\sin \\frac{\\theta}{2} \\cos \\frac{\\theta}{2}\\cos \\frac{3\\theta}{2}
            \\end{aligned}$$

<span>mixed-mode fracture</span>

-   For Mode II we have

-   
    $$\\begin{aligned}
                \\sigma\_x &= \\frac{-K\_{II}}{\\sqrt{2\\pi r}} \\sin \\frac{\\theta}{2} \\left(2+\\cos \\frac{\\theta}{2}\\cos \\frac{3\\theta}{2}\\right)\\\\
                \\sigma\_y &= \\frac{K\_{II}}{\\sqrt{2\\pi r}} \\sin \\frac{\\theta}{2} \\cos \\frac{\\theta}{2}\\cos \\frac{3\\theta}{2}\\\\
                \\tau\_{xy} &= \\frac{K\_{II}}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1-\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right)
                \\end{aligned}$$

<span>polar coordinates</span>

-   In mixed-mode fracture problems, the crack will generally propagate in a different direction from the initial crack plane

-   It is more convenient to handle this scenario in Polar Coordinates

-   We can convert stress from Cartesian coordinates to Polar Coordinates using the stress transformation equations

-   
    $$\\begin{aligned}
            \\sigma\_r &= \\sigma\_x \\cos^2 \\theta + \\sigma\_y \\sin^2 \\theta + 2\\tau\_{xy} \\sin \\theta \\cos \\theta\\\\
            \\sigma\_\\theta &= \\sigma\_x \\sin^2 \\theta + \\sigma\_y \\cos^2 \\theta - 2\\tau\_{xy} \\sin \\theta \\cos \\theta\\\\
            \\tau\_{r\\theta} &= -\\sigma\_x \\sin \\theta \\cos \\theta + \\sigma\_y \\sin \\theta \\cos \\theta + \\tau\_{xy} (\\cos^\\theta - \\sin^2 \\theta)
            \\end{aligned}$$

<span>combined stress field</span>

-   When we convert the stress fields from Mode I and Mode II into polar coordinates and combine them, we find

-   
    $$\\begin{aligned}
                \\sigma\_r &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\left(\\frac{5}{4}\\cos \\frac{\\theta}{2} - \\frac{1}{4}\\cos \\frac{3\\theta}{2}\\right) + \\frac{K\_{II}}{\\sqrt{2\\pi r}}\\left(-\\frac{5}{4}\\sin \\frac{\\theta}{2} + \\frac{3}{4}\\sin \\frac{3\\theta}{2}\\right)\\\\
                \\label{eq:mixed-theta}
                \\sigma\_\\theta &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\left(\\frac{3}{4}\\cos \\frac{\\theta}{2} + \\frac{1}{4}\\cos \\frac{3\\theta}{2}\\right) + \\frac{K\_{II}}{\\sqrt{2\\pi r}}\\left(-\\frac{3}{4}\\sin \\frac{\\theta}{2} - \\frac{3}{4}\\sin \\frac{3\\theta}{2}\\right)\\\\
                \\label{eq:mixed-tau}
                \\tau\_{r\\theta} &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\left(\\frac{1}{4}\\sin \\frac{\\theta}{2} + \\frac{1}{4}\\sin \\frac{3\\theta}{2}\\right) + \\frac{K\_{II}}{\\sqrt{2\\pi r}}\\left(\\frac{1}{4}\\cos \\frac{\\theta}{2} + \\frac{3}{4}\\cos \\frac{3\\theta}{2}\\right)
                \\end{aligned}$$

<span>maximum circumferential stress criterion</span>

-   The Maximum Circumferential Stress Criterion assumes that a crack will propagate in the principal direction

-   In this direction, the shear stress is 0

-   The fracture toughness is determined by the Mode I fracture toughness of the material

-   **Note:** In this discussion, we will use *K*<sub>*I**C*</sub> to differentiate Mode I fracture toughness from Mode II fracture toughness. This does NOT necessarily mean we are referring to plane strain fracture toughness

-   Thus fracture begins when
    $$\\sigma\_{\\theta}(\\theta\_P) = \\sigma\_\\theta(\\theta=0, K\_{II}=0, K\_I = K\_{Ic}) = \\frac{K\_{IC}}{\\sqrt{2\\pi r}}$$

<span>maximum circumferential stress criterion</span>

-   Following the above assumptions, we can solve Equations \[eq:mixed-tau\] and \[eq:mixed-theta\] to find *θ*<sub>*P*</sub>

-   Note: This assumes that we know both *K*<sub>*I*</sub> and *K*<sub>*I**I*</sub>, in this class we have not discussed any Mode II stress intensity factors, so they will be given.

-   Equation \[eq:mixed-tau\] in this case simplifies to
    *K*<sub>*I*</sub>sin*θ*<sub>*p*</sub> + *K*<sub>*I**I*</sub>(3cos*θ*<sub>*P*</sub> − 1)=0

-   and Equation \[eq:mixed-theta\] simplifies to
    $$4K\_{IC} = K\_I\\left(3\\cos \\frac{\\theta}{2} + \\cos \\frac{3\\theta}{2}\\right) - 3K\_{II}\\left(\\sin \\frac{\\theta}{2} + \\sin \\frac{3\\theta}{2}\\right)$$

-   The general form for a Mode II stress intensity factor is

-   
    $$K\_{II} = \\tau \\sqrt{\\pi a} \\beta^\\prime$$

<span>example</span>

Assuming |*σ*|=4|*τ*|, $K\_{IC} = 60 \\text{ ksi} \\sqrt{\\text{in}}$, and 2*a* = 1.5 in.

**Note:** Assume *β* = *β*<sup>′</sup> = 1

(0,-2) – (0,2) – (4,2) – (4,-2) – (0,-2); (1.5,0) – (2.5,0); (2,2.5) – (2,3) node\[above\] <span>*σ*</span>; (2,-2.5) – (2,-3) node\[below\] <span>*σ*</span>; (1,2.2) – (3,2.2); (3,-2.2) – (1,-2.2); (4.2,-1) – (4.2,1); (-0.2,1) – (-0.2,-1); node at (4.2,2.2) <span>*τ*</span>; node at (-0.2,-2.2) <span>*τ*</span>; node at (2,0.2) <span>2*a*</span>;

<span>principal stress criterion</span>

-   In the maximum circumferential stress criterion, we found the principal direction in polar coordinates

-   We can also find the principal direction in Cartesian coordinates

-   If we make a free body cut along some angle *θ* we find, from equilibrium

-   
    $$\\begin{aligned}
                0 &= \\sigma\_\\theta dA - \\sigma\_x dA \\sin^2 \\theta - \\sigma\_y dA \\cos^2 \\theta + 2\\tau\_{xy} dA \\cos \\theta \\sin \\theta\\\\
                \\sigma\_\\theta &= \\sigma\_x \\sin^2 \\theta + \\sigma\_y \\cos^2 \\theta - 2 \\tau\_{xy} \\sin \\theta \\cos \\theta\\\\
                \\frac{\\partial \\sigma\_\\theta}{\\partial \\theta} &= (\\sigma\_x - \\sigma\_y) \\sin 2\\theta\_p - 2\\tau\_{xy} \\cos 2\\theta\_P\\\\
                \\tan 2\\theta\_P &= \\frac{2 \\tau\_{xy}}{\\sigma\_x - \\sigma\_y}
                \\end{aligned}$$

<span>principal stress criterion</span>

-   As before, we consider crack propagation purely due to Mode I

-   In the principal stress criterion, we find the maximum Mode I stress as a function of the remote applied stress
    *σ*<sub>*P*1</sub> = *C**σ*

-   We then find the remote failure stress by
    $$\\sigma\_c = \\frac{K\_{IC}}{C\\sqrt{\\pi a}\\beta}$$

<span>example</span>

Assuming |*σ*|=4|*τ*|, $K\_{IC} = 60 \\text{ ksi} \\sqrt{\\text{in}}$, and 2*a* = 1.5 in.

**Note:** Assume *β* = *β*<sup>′</sup> = 1

(0,-2) – (0,2) – (4,2) – (4,-2) – (0,-2); (1.5,0) – (2.5,0); (2,2.5) – (2,3) node\[above\] <span>*σ*</span>; (2,-2.5) – (2,-3) node\[below\] <span>*σ*</span>; (1,2.2) – (3,2.2); (3,-2.2) – (1,-2.2); (4.2,-1) – (4.2,1); (-0.2,1) – (-0.2,-1); node at (4.2,2.2) <span>*τ*</span>; node at (-0.2,-2.2) <span>*τ*</span>; node at (2,0.2) <span>2*a*</span>;

<span>example</span> <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Mixed%20Mode%20Fracture.ipynb>

<span>mixed-mode summary</span>

-   While there are many mixed-mode fracture theories, they all are very close to the Maximum Circumferential Stress Theory

-   The maximum principal stress is much less rigorous, but allows you to approximate mixed-mode failure without looking up a formula

-   The effective stress at the crack can be found simply by finding the principal values of the current stress state

-   This may be called “eigenvalues” on your calculator

exam
====

<span>exam format</span>

-   Look at the exam and equation sheet posted on Blackboard

-   Expect a mixture of quantitative and qualitative questions (some short answer justifications)

-   4 questions

-   I curve all my exams linearly

-   Pay attention to what the question is asking for and be sure to answer all parts of the question

-   There will be no T/F section, but those questions in the text can still be useful for review

<span>equation sheet</span>

-   The equation sheet for this exam is posted to Blackboard

-   Other specific information and formulas (mixed-mode fracture, stiffener data, etc.) will be given in the problem

<span>topics</span>

-   Stress Intensity

-   Fracture Toughness

-   Residual Strength

-   Stiffeners

-   Multiple Site Damage

-   Mixed Mode Fracture

-   Review Problems

stress intensity
================

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

<span>short cracks on curved boundaries</span>

-   For short cracks, we can use the *stress concentraction factor* on a curved boundary to determine the stress intensity factor

-   The stress intensity factor only gives the maximum stress at the curved boundary, thus the longer the crack is, the farther away from the curved boundary (and maximum stress) it is.

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

&lt;handout:0&gt;<span>on-board example</span>

plastic zone
============

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
    $$r\_p = \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   Where *I* is defined as
    $$I = 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

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

We need *A* = *B*, so we set them equivalent and solve for *δ*.

$$\\begin{aligned}
            A &= \\int\_{0}^{r\_p} \\sigma\_{yy} dr - r\_p \\sigma\_{YS}\\\\
            &= \\int\_{0}^{r\_p} \\frac{K\_I}{\\sqrt{2\\pi r}} dr - r\_p \\sigma\_{YS}\\\\
            &= \\frac{K\_I}{\\sqrt{2\\pi}}\\int\_{0}^{r\_p} r^{-1/2} dr - r\_p \\sigma\_{YS}\\\\
            &= \\frac{2K\_I \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}
            \\end{aligned}$$

We have already found *r*<sub>*p*</sub> as
$$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

If we solve this for *K*<sub>*I*</sub> we find
$$K\_I = \\sqrt{2\\pi r\_p} \\sigma\_{YS}$$

<span>Irwin’s second approximation</span>

We can now substitute back into the strain energy of A

$$\\begin{aligned}
            A &= \\frac{2\\sqrt{2\\pi r\_p} \\sigma\_{YS} \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}\\\\
            &= 2 \\sigma\_{YS} r\_p- r\_p \\sigma\_{YS}\\\\
            &= r\_p \\sigma\_{YS}
            \\end{aligned}$$

B is given simply as *B* = *δ**σ*<sub>*Y**S*</sub>, so we equate A and B to find *δ*
$$\\begin{aligned}
            A &= B\\\\
            r\_p \\sigma\_{YS} &= \\delta \\sigma\_{YS}\\\\
            r\_p &= \\delta
            \\end{aligned}$$

<span>Irwin’s second approximation</span>

-   This means the plastic zone size is simply 2*r*<sub>*p*</sub>

-   However, it also means that the effective crack length is *a* + *r*<sub>*p*</sub>

-   Since *r*<sub>*p*</sub> depends on *K*<sub>*I*</sub>, we must iterate a bit to find the “real” *r*<sub>*p*</sub> and *K*<sub>*I*</sub>

fracture toughness
==================

<span>fracture toughness</span>

-   The critical load at which a cracked specimen fails produces a critical stress intensity factor

-   The “critical stress intensity factor” is known as *K*<sub>*c*</sub>

-   For Mode I, this is called *K*<sub>*I**c*</sub>

-   The critical stress intensity factor is also known as fracture toughness
    $$K\_{IC} = \\sigma\_c \\sqrt{\\pi a}\\beta$$

-   NOTE: “Fracture Toughness” can also refer to *G*<sub>*I**c*</sub>, which is analogous to *K*<sub>*I**c*</sub>, but not the same

<span>fracture toughness</span>

-   Fracture toughness is a material property, but it is only well-defined in certain conditions

-   Brittle materials

-   Plane strain (smaller plastic zone)

-   In these cases ASTM E399-12 is used.

<span>fracture toughness</span>

<img src="../Figures/KIC_thickness" alt="image" /> \[fig:KIC\_thickness\]

<span>fracture toughness</span>

-   “Stable” vs. “unstable” crack growth

-   Stable crack growth means the crack extends only with increased load

-   Unstable crack growth means the crack will continue to extend indefinitely under the same load

-   For a perfectly brittle material, there is no stable crack growth, as soon as a critical load is reached, the crack will extend indefinitely

-   For an elastic-plastic material, once the load is large enough to extend the crack, it will extend slightly

-   The load must be continually increased until a critical value causes unstable crack growth

<span>fracture toughness</span>

-   During an experiment, we will record the crack length and applied load (*P*<sub>*i*</sub>, *a*<sub>*i*</sub>) each time we increase the load

-   We can calculate a unique stress intensity factor *K*<sub>*I**i*</sub> at each of these points

-   These are then used to create a “K-curve”, plotting *K*<sub>*I*</sub> vs. *a*

<span>K-curve</span>

+\[smooth\] coordinates <span>(1,0) (1.1,0.5) (1.3,1) (2,1.35) (3,1.5)</span>; +\[const plot\] coordinates <span>(1,0) (1,1) (3,1)</span>;

<span>*K*<sub>*R*</sub> Curve</span>

<img src="../Figures/KR_curve" alt="image" /> \[fig:KR\_curve\]

residual strength
=================

<span>residual strength</span>

-   In the last chapter we performed some basic residual strength analysis by checking for net section yield

-   As the crack grows, the area of the sample decreases, increasing the net section stress

-   The residual strength, *σ*<sub>*R*</sub> is given in terms of the gross area, so as the crack grows the residual strength due to yield decreases

-   We can relate the net-section stress to *σ*<sub>*R*</sub> by
    $$\\sigma\_R = \\sigma\_{YS} \\frac{A\_{net}}{A\_{gross}}$$

<span>residual strength</span>

;

<span>residual strength</span>

-   For brittle fracture to occur, we need to satisfy the condition

-   
    $$\\sigma\_R = \\sigma\_C = \\frac{K\_C}{\\sqrt{\\pi a}\\beta}$$

<span>residual strength</span>

; ;

<span>residual strength</span>

-   Within the same family of materials (i.e. Aluminum), there is generally a trade-off between yield stress and fracture toughness

-   As we increase the yield strength, we decrease the fracture toughness (and vice versa)

-   Consider a comparison of the following aluminum alloys

    1.  7178-T6, $K\_C = 43 \\text{ ksi} \\sqrt{\\text{in.}}$, *σ*<sub>*Y**S*</sub> = 74ksi

    2.  7075-T6, $K\_C = 68 \\text{ ksi} \\sqrt{\\text{in.}}$, *σ*<sub>*Y**S*</sub> = 63ksi

    3.  2024-T3, $K\_C = 144 \\text{ ksi} \\sqrt{\\text{in.}}$, *σ*<sub>*Y**S*</sub> = 42ksi

<span>residual strength</span>

-   As an example let us consider an edge-cracked panel with $W=6"$ and $t=0.1"$

-   The net section yield condition will be given by

-   
    $$\\sigma\_C = \\sigma\_{YS} \\frac{W-a}{W} = \\sigma\_{YS}\\frac{6-a}{6}$$

-   And the fracture condition by
    $$\\sigma\_C = \\frac{K\_C}{\\sqrt{\\pi a} \\beta}$$
     With
    $$\\beta = 1.12 - 0.231\\left(\\frac{a}{W}\\right) + 10.55 \\left(\\frac{a}{W}\\right)^2 - 21.72 \\left(\\frac{a}{W}\\right)^3 + 30.39 \\left(\\frac{a}{W}\\right)^4$$

<span>7178-T6</span>

; ;

<span>7075-T6</span>

; ;

<span>2024-T3</span>

; ;

<span>comparison</span>

+\[mark=none\] <span>min(42\*(1-x),144/sqrt(3.14\*x\*6)/(1.12-.231\*x+10.55\*x^2-21.72\*x^3+30.39\*x^4))</span>; +\[mark=none\] <span>min(63\*(1-x),68/sqrt(3.14\*x\*6)/(1.12-.231\*x+10.55\*x^2-21.72\*x^3+30.39\*x^4))</span>; +\[mark=none\] <span>min(74\*(1-x),43/sqrt(3.14\*x\*6)/(1.12-.231\*x+10.55\*x^2-21.72\*x^3+30.39\*x^4))</span>;

stiffeners
==========

<span>crack growth</span>

-   In general, residual strength curves do NOT give any information about crack growth

-   When *σ*<sub>*R*</sub> is exceeded, the panel fails due to unstable crack growth

-   Stiffeners reverse this trend to some extent, but causing some sections of residual strength curve to have positive slope

-   When the slope of the residual strength curve is positive, crack growth is stable

-   Thus in some cases, we can predict some amount of crack growth

&lt;handout:0&gt;<span>critical crack length</span> sketch

&lt;handout:0&gt;<span>residual strength</span> sketch

review problems
===============

<span>review problems</span>

<span>0.4</span>

-   p. 415 problem 6

-   p. 418 problem 9

-   p. 419 problem 10-11

-   p. 421 problem 13

-   p. 423 problem 17

-   p. 424 problem 3

-   p. 425 problem 5

<span>0.4</span>

-   p. 426 problem 1

-   p. 427 problem 3

-   p. 429 problem 6

-   p. 432 problem 9

-   p. 433 problem 14

-   p. 434 problem 3

-   p. 437 problem 8


