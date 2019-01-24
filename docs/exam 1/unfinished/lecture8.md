<span>schedule</span>

-   13 Feb - Fracture Toughness (Homework 3 Due)

-   15 Feb - Residual Strength

-   20 Feb - Residual Strength (Homework 4 Due)

-   22 Feb - Multiple Site Damage

### outline

\[sections numbered\]

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

-   For crack growth to be stable we need
    $$\\frac{dG}{da} \\le 0$$

<span>example - stable crack growth</span>

-   Under fixed-load conditions, we find
    $$\\frac{dG}{da} = \\frac{2P^2a}{bEI}$$

-   This is always positive, and thus results in unstable crack growth

-   Under fixed-displacement conditions, we substitute for *P* using (\[eq:compliance\])

-   We find
    $$\\frac{dG}{da} = -\\frac{9\\delta^2EI}{ba^3}$$

-   Which is always stable, so for DCB tests, displacement control is generally used

R-curve
=======

<span>R-curve</span>

-   For materials with some plasticity, the *K*<sub>*R*</sub> Curve, or R Curve, is very important

-   Sometimes called a “resistance curve” it is generally dependent on

    -   Thickness

    -   Temperature

    -   Strain rate

-   When done correctly, *K*<sub>*R*</sub> curves are not dependent on initial crack size or the specimen type used

-   ASTM E561

<span>*K*<sub>*c*</sub></span>

-   While we can look up plane stress *K*<sub>*c*</sub> for various materials, it is best if we have a *K*<sub>*R*</sub> curve

-   We may not know if the table uses *K*<sub>*c*</sub> using the tangent intersection method, or maximum stress intensity

-   Even if tangent intersection method is used, *K*<sub>*c*</sub> will different somewhat based on initial crack length

<span>R-curve</span>

-   There are two main methods for plotting the R-curve

-   Crack size is measured directly (possibly with a drawn-on scale and camera)

-   Effective crack size is calculated from the load-displacement data

<span>physical crack</span>

-   When the physical crack size is measured, we need to calculate the effective crack length (and effective stress intensity factor) at each data point

-   The effective crack length calculated from the load-displacement data already has the plastic zone effect built in

<span>plane stress fracture toughness</span>

-   For a plane stress (or any thickness that is not plane strain) we can find *K*<sub>*c*</sub> two ways

-   One way is simply the maximum value of the *K*<sub>*R*</sub> curve, but this does not account for unstable crack growth

-   The more reliable way is to use the tangent intersection method

<span>tangent intersection method</span>

-   Construct curves for *K*<sub>*I*</sub> based on our specimen geometry with constant applied load and varying crack length

-   Plot these curves on the same graph as *K*<sub>*R*</sub>

-   NOTE: *K*<sub>*R*</sub> curve should be plotted vs. *a*<sub>*e**f**f*</sub>, not *Δ**a* or *Δ**a*<sub>*e**f**f*</sub>

-   *K*<sub>*c*</sub> is the point at which one of the *K*<sub>*I*</sub> curves is the tangent intersection with the *K*<sub>*R*</sub> curve

<span>R-Curve examples</span>

-   <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Tangent_R-curve.ipynb>

-   Excel Solver

thickness effects
=================

<span>thickness effects</span>

-   We already know there is a difference between plane strain and plane stress fracture toughness

-   As a material gets thicker and thicker, it converges to the plane strain solution

-   Thinner specimens tend towards the plane stress solution

-   When a specimen is thinner than some critical thickness, the material behavior is somewhat unknown

-   Some materials retain the constant plane stress fracture toughness

-   Others exhibit an unpredictable decrease in fracture toughness

-   The phenomenon is not well-understood

<span>thickness effects</span>

-   There is also a difference in the fracture surface between thin and thick specimens

-   Thin specimens (in plane stress region) fail due to slant fracture

-   This actually indicates some mixed-mode conditions at failure

-   Thick specimens fail due to square fracture (with a small shear tip near the edges)

-   This is more consistent with pure Mode I

<span>slant fracture</span>

<img src="../Figures/slant" alt="image" /> \[fig:slant\]

<span>shear lip</span>

<img src="../Figures/shear_lip" alt="image" /> \[fig:shear\_lip\]

fracture toughness review
=========================

<span>group review</span>

-   Group 1 - Sketch *K*<sub>*R*</sub>-curve (for ductile material), explain what it means, how to find *K*<sub>*c*</sub>

-   Group 2 - Sketch *K*<sub>*c*</sub> vs. crack length, explain what’s happening

-   Group 3 - How can we determine whether a panel is in plane strain or plane stress?

-   Group 4 - Sketch *K*<sub>*R*</sub>-curves for ductile and brittle materials, what is the difference?

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

<span>using MIL-handbook</span>

-   Uses a different grain nomenclature

-   | *K*<sub>*C*</sub> | *σ*<sub>*Y**S*</sub> |
    |:-----------------:|:--------------------:|
    |        L-T        |           L          |
    |        T-L        |          L-T         |

-   A-Basis vs. B-Basis values are reported (A = 99% of population will meet/exceed value, B = 90% of population)

-   S-Basis - no statistical information available, standard value to be used

<span>using MIL-handbook</span>

-   *F*<sub>*t**u*</sub> - ultimate tensile strength

-   *F*<sub>*t**y*</sub> - tensile yield strength

-   *F*<sub>*c**y*</sub> - compressive yield strength

-   *F*<sub>*s**u*</sub> - ultimate shear strength

-   *F*<sub>*b**r**u*</sub> - ultimate bearing strength

-   *F*<sub>*b**r**y*</sub> - bearing yield strength

-   *E* - tensile Young’s Modulus

-   *E*<sub>*c*</sub> - compressive Young’s Modulus

-   *G* - shear modulus

-   *μ* - Poisson’s ratio

<span>data</span>

-   Fracture data is on pp. 111-121

-   Tensile data is on pp. 138-143

-   *K*<sub>*c*</sub> charts are also available in interactive versions here: <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Fracture%20Toughness%20Figures.ipynb>


