<span>schedule</span>

-   20 Feb - Stiffeners (Homework 4 Due)

-   22 Feb - Multiple Site Damage

-   27 Feb - Mixed-mode Fracture (Homework 5 Due)

-   1 Mar - Review (Homework 6 Due?)

-   6 Mar - Exam 1

### outline

\[sections numbered\]

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

-   For displacement continuity at the skin-stiffener interface, we know that
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
            L S \\frac{E\_S}{E} &= S\_{S,max} = \\sigma\_{YS}\\\\
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

severed stiffeners
==================

<span>failure in stiffener</span>

-   Sometimes the stiffeners fail before the panel

-   T. Swift conducted some parametric studies on panels with a severed stiffener

-   When the crack is short (and near the severed stiffener) the residual strength is lower due to the broken stiffener

-   As the crack nears the next stiffener, residual strength is very similar to a panel with all stiffeners intact

<span>failure in stiffener</span>

-   Swift considers the difference in stress at different points in the stiffener

-   Instead of one general load factor (*L*), he uses *S**C**F**O* and *S**C**F**I*

-   We can find the critical value of remote stress at the outer flange as
    $$\\sigma\_C = \\frac{\\sigma\_U}{SCFO}$$

-   And similarly at the inner flange
    $$\\sigma\_C = \\frac{\\sigma\_U}{SCFI}$$

-   Swift’s parametric study did not consider rivet failure

<span>stiffener area</span>

<img src="../Figures/stiffener_area" alt="image" /> \[fig:stiffener\_area\]

<span>stiffener spacing</span>

<img src="../Figures/stiffener_spacing" alt="image" /> \[fig:stiffener\_spacing\]

<span>rivet spacing</span>

<img src="../Figures/rivet_spacing" alt="image" /> \[fig:rivet\_spacing\]

<span>strength and toughness increase</span>

<img src="../Figures/strength_increase" alt="image" /> \[fig:strength\_increase\]

<span>example</span>

-   If we consider the case from Swift’s data most similar to our previous example:
    $$\\begin{aligned}
            P &= 1.0 \\text{ in}\\\\
            A\_{st} &= 0.2538 \\text{ in}^2\\\\
            b &= 10.0 \\text{ in}\\\\
            \\end{aligned}$$

-   So we use the tables for Case 10

crack stoppers
==============

<span>crack stopper</span>

<img src="../Figures/crack_stoppers" alt="image" /> \[fig:crack\_stoppers\]

<span>optimal crack stopper</span>

-   Swift found that the ideal crack stopper has a cross-sectional area approximately equal to 1/4 the stiffener area

-   The ideal material was titanium (as opposed to steel or aluminum).

-   Aluminum did not transfer enough load to the stiffeners, steel transferred too much

<span>example</span>

-   Compare cases 1, 3, and 5


