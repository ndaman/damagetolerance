<span>schedule</span>

-   15 Feb - Residual Strength

-   20 Feb - Residual Strength (Homework 4 Due)

-   22 Feb - Multiple Site Damage

-   27 Feb - Mixed-mode Fracture (Homework 5 Due)

-   1 Mar - Review (Homework 6 Due?)

-   6 Mar - Exam 1

### outline

\[sections numbered\]

<span>homework thoughts</span>

-   It can be useful to do some sanity checks in your solutions

-   *K*<sub>*I**e*</sub> &gt; *K*<sub>*I*</sub>, *r*<sub>*p*</sub> cannot be negative

-   Be careful using “smooth” scatter-plots in Excel, it does odd things with sharp changes in slope

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

fedderson approach
==================

<span>Fedderson approach</span>

-   Unfortunately, the method we described above does not quite match experimental results

-   Fedderson proposed an alternative, where we connect the net-section yield and brittle fracture curves with a tangent line

-   This approach agrees very well with experimental data

-   Note: We could do something similar when the crack is very long, but we are generally less concerned with this region (failure will have already occurred)

<span>Fedderson example</span> <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Fedderson%20Approach.ipynb>

proof testing
=============

<span>proof testing</span>

-   Proof testing is a way to use the concept of residual strength to check the size of a defect from manufacturing

-   Due to the fatigue life of a certain panel, and/or an inspection cycle that we have prescribed for that part, we determine an “acceptable” initial flaw size, *a*<sub>0</sub>

-   We then determine a load which would cause failure at this crack length

-   This is the “proof load”

-   If the part does not fail in the proof test, we can assume that the largest flaw in the material is *a*<sub>0</sub>

<span>example</span>

-   Suppose we are concerned about edge cracks in a panel with *σ*<sub>*Y**S*</sub> = 65ksi, $W=5"$

-   We have determined that the largest allowable crack is 0.4"

-   The fracture toughness of this panel is $K\_c = 140 \\text{ ksi} \\sqrt{\\text{in.}}$

-   We can find the proof load
    $$\\begin{aligned}
            \\sigma\_c &= \\frac{K\_c}{\\sqrt{\\pi a\_0} \\beta}\\\\
            &= \\frac{140}{\\sqrt{\\pi 0.4} (1.161)}\\\\
            &= 107.6
            \\end{aligned}$$

-   So the proof load would need to induce a gross section stress of 107.6 ksi.

residual strength review
========================

<span>residual strength review</span>

-   Group 1 - Sketch a residual strength curve for a single material (include fracture and net-section yield)

-   Group 2 - Sketch and describe the difference in residual strength between stiff/brittle materials and ductile/tough materials

-   Group 3 - Find the proof load needed to ensure no center-cracks less than 0.01" are present in a material with $K\_C = 120 \\text{ ksi}\\sqrt{\\text{in.}}$

-   Group 4 - Sketch the Fedderson approach to residual strength. How is this different from the traditional approach? Why is it beneficial?

stiffeners
==========

<span>stiffened panels</span>

-   In aircraft the skin/stringer system provides many benefits (resistance to buckling)

-   Stringers also act as stiffeners to resist crack propagation in the skin

-   Panels in these configurations are generally very wide relative to expected crack dimensions

-   Cracks are generally modeled either as centered between stiffeners or centered under a stiffener

-   We need to consider the residual strength of the panel, the stiffener, and the rivets

<span>centered between stiffeners</span>

; ; ; ; (0,3) – (40,3) – (40,-3) – (0,-3) – (0,3); (2,3) – (3,3) – (3,-3) – (2,-3) – (2,3); (14,3) – (15,3) – (15,-3) – (14,-3) – (14,3); (26,3) – (27,3) – (27,-3) – (26,-3) – (26,3); (38,3) – (39,3) – (39,-3) – (38,-3) – (38,3); (3,-2) – (7,-2); (10,-2) – (14,-2); node at (8.5,-2) <span>*b*</span>; (3.5,2) – (3.5,1); node at (9,1.5) <span>*p*= rivet pitch</span>; \[-2\]\[-2\]; node at (20,8) <span>*σ* = *S*</span>; \[2\]\[2\]; node at (20,-8) <span>*σ* = *S*</span>; (16,0) – (25,0); node at (20.5,1) <span>2*a*</span>; (2.5,0) circle (0.15) (2.5,1)circle (0.15) (2.5,2)circle (0.15) (2.5,-2)circle (0.15) (2.5,-1)circle (0.15); (14.5,0) circle (0.15) (14.5,1)circle (0.15) (14.5,2)circle (0.15) (14.5,-2)circle (0.15) (14.5,-1)circle (0.15); (26.5,0) circle (0.15) (26.5,1)circle (0.15) (26.5,2)circle (0.15) (26.5,-2)circle (0.15) (26.5,-1)circle (0.15); (38.5,0) circle (0.15) (38.5,1)circle (0.15) (38.5,2)circle (0.15) (38.5,-2)circle (0.15) (38.5,-1)circle (0.15);

<span>centered under stiffener</span>

; ; ; ; (22,0) – (31,0); node at (29,1) <span>*a*</span>; node at (24,1) <span>*a*</span>; (0,3) – (40,3) – (40,-3) – (0,-3) – (0,3); (2,3) – (3,3) – (3,-3) – (2,-3) – (2,3); (14,3) – (15,3) – (15,-3) – (14,-3) – (14,3); (26,3) – (27,3) – (27,-3) – (26,-3) – (26,3); (38,3) – (39,3) – (39,-3) – (38,-3) – (38,3); (3,-2) – (7,-2); (10,-2) – (14,-2); node at (8.5,-2) <span>*b*</span>; (3.5,2) – (3.5,1); node at (9,1.5) <span>*p*= rivet pitch</span>; \[-2\]\[-2\]; node at (20,8) <span>*σ* = *S*</span>; \[2\]\[2\]; node at (20,-8) <span>*σ* = *S*</span>; (2.5,0) circle (0.15) (2.5,1)circle (0.15) (2.5,2)circle (0.15) (2.5,-2)circle (0.15) (2.5,-1)circle (0.15); (14.5,0) circle (0.15) (14.5,1)circle (0.15) (14.5,2)circle (0.15) (14.5,-2)circle (0.15) (14.5,-1)circle (0.15); (26.5,0) circle (0.15) (26.5,1)circle (0.15) (26.5,2)circle (0.15) (26.5,-2)circle (0.15) (26.5,-1)circle (0.15); (38.5,0) circle (0.15) (38.5,1)circle (0.15) (38.5,2)circle (0.15) (38.5,-2)circle (0.15) (38.5,-1)circle (0.15);

<span>remote stress in stiffener</span>

-   For equilibrium to be satisfied, we know that
    $$\\left(\\frac{PL}{AE}\\right)\_{Skin} = \\left(\\frac{PL}{AE}\\right)\_{Stiffener}$$

-   Since *L* is the same, we find
    $$\\frac{S}{E} = \\frac{S\_S}{E\_S}$$

-   Where the subscript **<sub>*S*</sub> indicates stiffener values, we can express the remote stress in the stiffener as
    $$\\label{eq:stiff}
            S\_S = S \\frac{E\_S}{E}$$

<span>skin</span>

-   The critical stress in the skin is determined the same way as it was in the residual strength chapter

-   The only exception is that the stiffener contributes to *β*
    $$S\_C = \\frac{K\_C}{\\sqrt{\\pi a} \\beta}$$

<span>stiffener</span>

-   The maximum stress in a stiffener will be increased near a crack

-   We represent the ratio of maximum force in stiffener to remote force with the Stiffener Load Factor, *L*

    $$\\begin{aligned}
            L &= \\frac{\\text{max force in stiffener}}{\\text{remote force applied to stiffener}}\\\\
            &= \\frac{S\_{S,max}A\_S}{S\_S A\_S}\\\\
            &= \\frac{S\_{S,max}}{S \\frac{E\_S}{E}}\\\\
            L S \\frac{E\_S}{E} &= S\_{S,max}\\\\
            L S \\frac{E\_S}{E} &= \\sigma\_{YS}\\\\
            S\_C &= \\frac{\\sigma\_{YS} E}{L E\_S}
            \\end{aligned}$$

<span>rivet</span>

-   We can define a similar rivet load factor to relate maximum stress in the rivet to remote stress in the skin

    $$\\begin{aligned}
                L\_R &= \\frac{\\tau\_{max} A\_R}{S b t}\\\\
                L\_R &= \\frac{\\tau\_{YS} A\_R}{S b t}\\\\
                S\_c &= \\frac{\\tau\_{YS} A\_R}{L\_R b t}
                \\end{aligned}$$

<span>finite element analysis</span>

-   CC Poe found that panels could be related by a parameter he defines as *μ*
    $$\\mu = \\frac{A\_S E\_S}{A\_S E\_S + A E}$$

-   Where *A*<sub>*S*</sub> is the cross-sectional area of a stiffener, *E*<sub>*S*</sub> is stiffener modulus

-   *A* is the skin cross-sectional area (per stiffener) *A* = *b**t* and *E* is the modulus of the skin

-   pp 167 - 178 give *β*, *L* and *L*<sub>*R*</sub> for various skin/stiffener configurations

-   These values were determined using a finite element model

<span>examples</span>

-   quantitative example (p. 179-180)

-   qualitative notes on behavior (p. 181-182)

-   <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/stiffener%20example.ipynb>


