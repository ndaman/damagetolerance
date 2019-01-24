<span>schedule</span>

-   8 Feb - Fracture Toughness

-   13 Feb - Fracture Toughness (Homework 3 Due)

-   15 Feb - Residual Strength

-   20 Feb - Residual Strength (Homework 4 Due)

### outline

\[sections numbered\]

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
    $$\\label{eq:rp}
            r\_p = \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   Where *I* is defined as
    $$\\label{eq:intermediate}
            I = 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   And 2 ≤ *I* ≤ 6

<span>Irwin’s second approximation</span>

(-2,0.5) node at (-2,0) <span>real crack</span> – (0,0) – (-2,-0.5); (-.5,0.5) node at (.75,.75) <span>eq. crack</span> – (1.5,0) – (-.5,-0.5); (1.5,0) rectangle (2.7,1.5);

; ; ; fill between\[of=a and b\]; ; ;

node at (0.75,-.2) <span>*r*<sub>*p*</sub></span>; (0.5,-.2) – (0,-.2); (1,-.2) – (1.5,-.2); node at (2.1,-.2) <span>*δ*</span>; (2.3,-.2) – (2.7,-.2); (1.9,-.2) – (1.5,-.2); (3,3.5) node\[right\] <span>$\\sigma\_{yy} = \\frac{K\_I}{\\sqrt{2\\pi r}}$</span> – (0.75,2); (4,2.5) node\[right\] <span>$\\tilde{\\sigma}\_{yy} = \\frac{K\_I}{\\sqrt{2\\pi (r-\\delta)}}$</span> – (2.7,1.5); node at (.5,2) <span>A</span>; node at (2.1,0.75) <span>B</span>;

<span>Irwin’s second approximation</span>

-   This means the plastic zone size is simply 2*r*<sub>*p*</sub>

-   However, it also means that the effective crack length is *a* + *r*<sub>*p*</sub>

-   Since *r*<sub>*p*</sub> depends on *K*<sub>*I*</sub>, we must iterate a bit to find the “real” *r*<sub>*p*</sub> and *K*<sub>*I*</sub>

<span>plastic stress intensity ratio</span>

-   For an infinitely wide center-cracked panel, we can solve for *K*<sub>*I**e*</sub>/*K*<sub>*I*</sub> symbolically

-   For plane stress we have:

    $$\\begin{aligned}
                K\_I &= \\sigma \\sqrt{\\pi a}\\\\
                K\_{Ie} &= \\sigma \\sqrt{\\pi(a+r\_p)}\\\\
                r\_p &= \\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\\\
                K\_{Ie} &= \\sigma \\sqrt{\\pi \\left(a+\\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\right)}
                \\end{aligned}$$

<span>3D plastic zone shape</span>

<img src="../Figures/dumbell" alt="image" /> \[fig:dumbell\]

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

<span>K-curve</span>

-   Materials will generally not be as flat as the perfectly brittle example

-   Plane strain conditions and brittle materials will tend towards a “flat” K-curve

-   *K*<sub>*I**C*</sub> for brittle/plane strain is very well defined

-   *K*<sub>*C*</sub> for plane stress can refer to two things

-   Either the maximum *K*<sub>*C*</sub> during a test, or tangent point on *K*<sub>*R*</sub>-curve (R-curve)

<span>example - stable crack growth</span>

-   In composites, and adhesives, some work is needed to ensure stable crack growth

-   The Double-Cantilever Beam (DCB) experiment to find *G*<sub>*I**C*</sub> illustrates this

    $$\\begin{aligned}
                \\label{eq:compliance}
                C &= \\frac{\\delta}{P}\\\\
                C &= \\frac{2a^3}{3EI}\\\\
                G &= \\frac{P^2}{2b}\\frac{dC}{da}\\\\
                G &= \\frac{P^2a^2}{bEI}
                \\end{aligned}$$

<span>example - stable crack growth</span>

-   For crack growth to be stable we need
    $$\\frac{dG}{da} \\le 0$$

-   Under fixed-load conditions, we find
    $$\\frac{dG}{da} = \\frac{2P^2a}{bEI}$$

-   This is always positive, and thus results in unstable crack growth

<span>example - stable crack growth</span>

-   Under fixed-displacement conditions, we substitute for *P* using (\[eq:compliance\])

-   We find
    $$\\frac{dG}{da} = -\\frac{9\\delta^2EI}{ba^3}$$

-   Which is always stable, so for DCB tests, displacement control is generally used

plane strain, brittle
=====================

<span>plane strain, brittle</span>

-   For relatively brittle materials, we don’t need to worry about the R-curve

-   Specimens are made according to these specifications

    \[eq:specimen\]
    $$\\begin{aligned}
            a \\ge 2.5 \\left(\\frac{K\_{IC}}{\\sigma\_{YS}}\\right)^2\\\\
            b \\ge 2.5 \\left(\\frac{K\_{IC}}{\\sigma\_{YS}}\\right)^2\\\\
            W \\ge 5 \\left(\\frac{K\_{IC}}{\\sigma\_{YS}}\\right)^2
            \\end{aligned}$$

<span>ASTM E399</span>

1.  Select specimen size (see (\[eq:specimen\]))

2.  Select specimen type (Compact Tension or Single Edge Notched Bend)

<span>ASTM E399</span>

<img src="../Figures/CT" alt="image" /> \[fig:CT\]

<span>ASTM E399</span>

<img src="../Figures/SENB" alt="image" /> \[fig:SENB\]

<span>ASTM E399</span>

<img src="../Figures/chevron" alt="image" /> \[fig:chevron\]

<span>ASTM E399</span>

1.  Machine specimen

2.  Fatigue crack specimen *K*<sub>*f*</sub> &lt; 0.6*K*<sub>*I**C*</sub>

    -   This is to ensure that the plastic zone size during fatigue is smaller than the plastic zone size during testing

    -   If *K*<sub>*I**C*</sub> has not yet been determined, you may have to guess the first time

<span>ASTM E399</span>

1.  Mount specimen, attach gage

2.  Load rate should ensure “static” load conditions. (30 - 150 ksi$\\sqrt{\\text{in.}}$/min.)

3.  Determine the “provisional” value of *K*<sub>*I**C*</sub> (known as *K*<sub>*Q*</sub>)

<span>ASTM E399</span>

+\[smooth\] coordinates <span>(0,0) (1,4) (2,5)</span>; + coordinates <span>(0,0) (1.5,5)</span>;

+\[smooth\] coordinates <span>(0,0) (1,4) (2,3.5) (3,4.8) (3.5,5)</span>;

+\[smooth\] coordinates <span>(0,0) (1,4)</span>;

<span>ASTM E399</span>

1.  1.  If the load-displacement curve is like the first figure, with some non-linearity, we let *P*<sub>*Q*</sub> be the point of intersection between the load-displacement curve and a line whose slope is 5% lower than the slope in the elastic region

    2.  “Pop-in” occurs when there is stable crack extension before the plasticity begins. We let *P*<sub>*Q*</sub> bet the point where stable crack extension begins.

    3.  For a perfectly linear material, *P*<sub>*Q*</sub> = *P*<sub>*m**a**x*</sub>.

    4.  
        $$\\begin{aligned}
                    K\_Q &= \\frac{P\_Q}{BW^{1/2}}f\\left(\\frac{a}{W}\\right) & \\text{Compact Tension}\\\\
                    K\_Q &= \\frac{P\_Q}{BW^{3/2}}g\\left(\\frac{a}{W}\\right) & \\text{SENB}
                    \\end{aligned}$$

<span>ASTM E399</span>

1.  Ensure that your specimen is still valid
    $$\\begin{aligned}
            a & \\ge 2.5 \\left(\\frac{K\_Q}{\\sigma\_{YS}}\\right)^2\\\\
            b & \\ge 2.5 \\left(\\frac{K\_Q}{\\sigma\_{YS}}\\right)^2\\\\
            W & \\ge 5 \\left(\\frac{K\_Q}{\\sigma\_{YS}}\\right)^2
            \\end{aligned}$$

<span>ASTM E399</span>

1.  -   For stable crack extension, check the *P*<sub>*m**a**x*</sub>
        $$\\frac{P\_{max}}{P\_Q} \\le 1.10$$

    -   Check for symmetric crack front, *a*<sub>1</sub>, *a*<sub>2</sub>, and *a*<sub>3</sub> must be within 5% of *a*. *a*<sub>*s*</sub> must be within 10% of *a*.
        $$\\frac{a\_1 + a\_2 + a\_3}{3} = a$$

    -   Load-displacement should have an initial slope between 0.7 and 1.5

plane stress, ductile
=====================

<span>R-curve</span>

-   For materials with some plasticity, the *K*<sub>*R*</sub> Curve, or R Curve, is very important

-   Sometimes called a “resistance curve” it is generally dependent on

    -   Thickness

    -   Temperature

    -   Strain rate

-   When done correctly, *K*<sub>*R*</sub> curves are not dependent on initial crack size or the specimen type used

-   ASTM E561

<span>ASTM E561</span>

-   Compact Tension (CT or C(T)) specimens may be used for plane stress *K*<sub>*R*</sub> curves

-   The other specimen which is permitted is a middle-cracked tension specimen (M(T))

-   M(T) specimens are preferred in many cases due to a more uniform stress distribution (particularly important for anisotropic materials)

<span>ASTM E561</span>

<img src="../Figures/MT-envelope" alt="image" /> \[fig:MT-envelope\]

<img src="../Figures/MT-notch" alt="image" /> \[fig:MT-notch\]

<span>minimum sample dimensions</span>

<img src="../Figures/MT-minimum" alt="M(T) minimum recommended dimensions" />

<img src="../Figures/CT-minimum" alt="C(T) minimum recommended dimensions" />

<span>effective crack length</span>

-   ASTM E561 describes three ways to obtain the effective crack length during testing

    1.  Measure the crack length visually and calculate *r*<sub>*p*</sub>

    2.  Measure crack length using “unloading compliance” and adding plastic zone size

    3.  Measure the effective crack size directly using “secant compliance”

<span>secant compliance</span>

<img src="../Figures/secant" alt="image" /> \[fig:secant\]

<span>secant compliance M(T)</span>

-   Using the slope data from our load-displacement curve, we can calculate the effective crack length using
    $$\\begin{gathered}
            EB\\left(\\frac{\\Delta v}{\\Delta P}\\right) = \\frac{2 Y}{W} \\sqrt{\\frac{\\pi a / W}{\\sin (\\pi a / W)}} \\\\
            \\qquad \\left\[\\frac{2W}{\\pi Y} \\cosh^{-1} \\left(\\frac{\\cosh(\\pi Y/W)}{\\cos (\\pi a / W)}\\right) - \\frac{1+\\nu}{\\sqrt{1 + \\left(\\frac{\\sin(\\pi a/W)}{\\sinh (\\pi Y/W)}\\right)^2}}+\\nu\\right\]
            \\end{gathered}$$

<span>secant compliance M(T)</span>

-   This equation is difficult to solve directly for *a* (for M(T) specimens)

-   Instead it is generally solved iteratively

-   The following equations are used to give a good initial guess to use in iterations
    $$\\begin{aligned}
            X &= 1 - \\exp \\left\[\\frac{-\\sqrt{\[EB(\\Delta v/ \\Delta P)\]^2 - (2Y/W)^2}}{2.141}\\right\]\\\\
            &\\begin{aligned}
            \\mathllap{\\frac{2a}{W}} &= 1.2235X - 0.699032X^2 + 3.25584X^3 - 6.65042X^4 + \\\\
            &\\qquad5.54X^5 - 1.66989X^6
            \\end{aligned}
            \\end{aligned}$$

<span>secant compliance M(T)</span>

-   In the above equations, the following are the definitions of parameters used
    $$\\begin{aligned}
            E &= \\qquad \\text{Young's Modulus}\\\\
            \\Delta v / \\Delta P &= \\qquad \\text{specimen compliance}\\\\
            B &= \\qquad \\text{specimen thickness}\\\\
            W &= \\qquad \\text{specimen width}\\\\
            Y &= \\qquad \\text{half span of the displacement measurement points}\\\\
            a &= \\qquad \\text{effective crack length}\\\\
            \\nu &= \\qquad \\text{Poisson's ratio}
            \\end{aligned}$$

<span>secant compliance C(T)</span>

-   For C(T) specimens, we use the following equations

-   
    $$EB\\frac{\\Delta v}{\\Delta P} = A\_0 + A\_1\\left(\\frac{a}{W}\\right) + A\_2\\left(\\frac{a}{W}\\right)^2 + A\_3\\left(\\frac{a}{W}\\right)^3 + A\_4\\left(\\frac{a}{W}\\right)^4$$

-   The coefficients will differ based on where the displacement is measured from

<span>secant compliance C(T)</span>

<img src="../Figures/CT-KR" alt="image" /> \[fig:CT-KR\]

<span>secant compliance C(T)</span>

|         location|  *A*<sub>0</sub>|  *A*<sub>1</sub>|  *A*<sub>2</sub>|  *A*<sub>3</sub>|  *A*<sub>4</sub>|
|----------------:|----------------:|----------------:|----------------:|----------------:|----------------:|
|  *V*<sub>0</sub>|            120.7|          -1065.3|           4098.0|          -6688.0|           4450.5|
|  *V*<sub>1</sub>|            103.8|           -930.4|           3610.0|          -5930.5|           3979.0|

|         location|  *C*<sub>0</sub>|  *C*<sub>1</sub>|  *C*<sub>2</sub>|  *C*<sub>3</sub>|  *C*<sub>4</sub>|  *C*<sub>5</sub>|
|----------------:|----------------:|----------------:|----------------:|----------------:|----------------:|----------------:|
|  *V*<sub>0</sub>|           1.0010|          -4.6695|           18.460|          -236.82|          1214.90|          -2143.6|
|  *V*<sub>1</sub>|           1.0008|          -4.4473|           15.400|          -180.55|           870.92|          -1411.3|

<span>secant compliance C(T)</span>

-   Where the initial guess for *a* is provided by
    $$\\frac{a}{W} = C\_0 + C\_1 U + C\_2 U^2 + C\_3 U^3 + C\_4 U^4 + C\_5 U^5$$

-   and *U* is given by
    $$U = \\frac{1}{1 + \\sqrt{EB\\frac{\\Delta v}{\\Delta P}}}$$

<span>buckling</span>

-   If the test is stopped and re-started frequently (to measure crack length by hand or to use the compliance method of crack measurement) buckling can interfere with results

    <img src="../Figures/buckling" alt="image" /> \[fig:buckling\]

<span>buckling</span>

-   If buckling is shown to be present in the test, supports can be used to prevent buckling

-   These supports can introduce friction

-   They should be well-lubricated for accurate test results

<span>net section stress</span>

-   One final consideration when dealing with plane stress fracture mechanics is the net section stress

-   For the test to be valid, failure must occur due to fracture, not general static failure

-   Static failure will occur when *σ*<sub>*N*</sub> = *σ*<sub>*Y**S*</sub>

<span>generate *K*<sub>*R*</sub> curve</span>

-   Once the effective crack length and *K*<sub>*I**e*</sub> has been determined for the test, we can generate the *K*<sub>*R*</sub> curve

-   The *K*<sub>*R*</sub> curve is quite simply a plot of *K*<sub>*I**e*</sub> vs. *a* for the test performed (i.e. with varying stress and increasing crack length)

-   When the test is performed correctly, the *K*<sub>*R*</sub> curve is not a function of the initial crack length

-   For this reason, we often plot *K*<sub>*I**e*</sub> vs. *Δ**a*, to subtract the initial crack length

-   We can superpose constant-stress *K*-curves on this graph, the curve which intersects at a tangent point creates the most “standard” definition for *K*<sub>*C*</sub>

<span>example</span>

<img src="../Figures/KR_C188T3_aluminum" alt="K_R Curve for C188-T3 aluminum for varying sample thickness (Boeing and Alcoa)" />

<span>example</span>

<img src="../Figures/KR_C188T3_physical" alt="K_R curve for the same specimens, but without adjusting for the plastic zone size." />
