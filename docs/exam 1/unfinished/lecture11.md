<span>schedule</span>

-   27 Feb - Multiple Site Damage

-   1 Mar - Mixed-mode Fracture (Homework 5 Due)

-   6 Mar - Review (Homework 6 Due)

-   8 Mar - Exam 1

-   13 Mar - Exam Return, Project Discussion

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

<span>strength and toughness increase</span>

<img src="../Figures/strength_increase" alt="image" /> \[fig:strength\_increase\]

<span>crack stopper</span>

<img src="../Figures/crack_stoppers" alt="image" /> \[fig:crack\_stoppers\]

<span>optimal crack stopper</span>

-   Swift found that the ideal crack stopper has a cross-sectional area approximately equal to 1/4 the stiffener area

-   The ideal material was titanium (as opposed to steel or aluminum).

-   Aluminum did not transfer enough load to the stiffeners, steel transferred too much

<span>stiffeners</span>

-   Stiffener charts were made using physical crack length (not effective crack length)

-   As cracks get long, the relative difference between *a* and *a*<sub>*e**f**f*</sub> is minor

-   An active field of research is to integrate failsafes and crack stoppers in one part

-   Manufacturing methods for composites are very different than for metals and damage tolerant designs need to adjust

multiple site damage
====================

<span>multiple site damage</span>

-   Often damage can accumulate among multiple sources

-   This is very common when there are a series of holes, each can develop cracks with a potential to link up

-   “link up” occurs when the plastic zones between two adjacent cracks touch

<span>linkup</span>

<img src="../Figures/msd" alt="image" /> \[fig:msd\]

<span>linkup equation</span>

-   We know that
    $$R\_p = \\frac{1}{2\\pi}\\left(\\frac{K\_{Ia}}{\\sigma\_{YS}}\\right)^2$$
    $$r\_p = \\frac{1}{2\\pi}\\left(\\frac{K\_{Il}}{\\sigma\_{YS}}\\right)^2$$

-   Where we define the stress intensity factors at a and L as
    $$K\_{Ia} = \\sigma \\sqrt{\\pi a} \\beta\_a$$
    $$K\_{Il} = \\sigma \\sqrt{\\pi l} \\beta\_l$$

<span>linkup equation</span>

-   Since fast cracking occurs when *R*<sub>*p*</sub> + *r*<sub>*p*</sub> = *L*, we solve for the condition where *R*<sub>*p*</sub> + *r*<sub>*p*</sub> &lt; *L*

    $$\\begin{aligned}
            \\frac{1}{2\\pi}\\left(\\frac{K\_{Ia}}{\\sigma\_{YS}}\\right)^2 + \\frac{1}{2\\pi}\\left(\\frac{K\_{Il}}{\\sigma\_{YS}}\\right)^2 &&lt; L\\\\
            \\frac{1}{2\\pi\\sigma\_{YS}^2} \\left\[K\_{Ia}^2 + K\_{Il}^2\\right\] &&lt; L \\\\
            \\frac{1}{2\\pi\\sigma\_{YS}^2} \\left\[\\sigma^2 \\pi a \\beta\_a^2 + \\sigma^2 \\pi l \\beta\_l^2\\right\] &&lt; L \\\\
            \\frac{\\sigma^2}{2\\sigma\_{YS}^2} \\left\[a \\beta\_a^2 + l \\beta\_l^2\\right\] &&lt; L \\\\
                    \\sigma\_c &= \\sigma\_{YS}\\sqrt{\\frac{2L}{a \\beta\_a^2 + l \\beta\_l^2}}
            \\label{eq:msd}
            \\end{aligned}$$

<span>example</span> <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Link-Up.ipynb>

<span>modfied linkup equations</span>

-   We see that for a brittle material (with a small plastic zone) we predict no effect of “link-up”

-   This does not agree with test data

-   Even the 2024 predictions don’t agree well with test data

-   WSU used some empirical parameters to modify the linkup equations and better predict residual strength when multiple site damage is present

<span>modified 2024 equation</span>

-   For 2024-T3 we use the following procedure

-   First find *σ*<sub>*c*</sub> from ( \[eq:msd\])

-   
    $$\\sigma\_{c,mod} = \\frac{\\sigma\_c}{A\_1 \\ln (L) + A\_2}$$

-   Where *A*<sub>1</sub> = 0.3065 and *A*<sub>2</sub> = 1.3123 for A-basis yield strength and *A*<sub>1</sub> = 0.3054 and *A*<sub>2</sub> = 1.3502 for B-basis yield strength

-   The same equation can also be used for 2524 with *A*<sub>1</sub> = 0.1905, *A*<sub>2</sub> = 0.9683 for A-basis yield and *A*<sub>1</sub> = 0.2024, *A*<sub>2</sub> = 1.0719 for B-basis yield

<span>modified 7075 equations</span>

-   A similar modification was made for 7075

-   
    $$\\sigma\_{c,mod} = \\frac{\\sigma\_c}{B\_1 + B\_2 L}$$

-   Where *B*<sub>1</sub> = 1.377, *B*<sub>2</sub> = 1.042 for A-basis yield strength and *B*<sub>1</sub> = 1.417, *B*<sub>2</sub> = 1.073 for B-basis yield strength

-   However, since general fracture had a closer prediction to real failure than the linkup equation, it may make more sense to modify the brittle fracture equation

-   
    $$\\sigma\_{c,mod} = \\frac{K\_c}{\\sqrt{\\pi a} (0.856 - 0.496 \\ln(L))}$$

mixed mode fracture
===================

<span>mixed-mode fracture</span>

-   Most cracks are primarily Mode I, but sometimes Mode II can also have an effect

-   We can look at the combined stress field for Mode I and Mode II

-   Recall the stress field near the crack tip

    <span>
    $$\\begin{aligned}
            \\sigma\_x &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1-\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right)\\\\
            \\sigma\_y &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1+\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right)\\\\
            \\tau\_{xy} &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\sin \\frac{\\theta}{2} \\cos \\frac{\\theta}{2}\\cos \\frac{3\\theta}{2}
            \\end{aligned}$$
    </span>

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

-   <span>
    $$\\begin{aligned}
                \\sigma\_r &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\left(\\frac{5}{4}\\cos \\frac{\\theta}{2} - \\frac{1}{4}\\cos \\frac{3\\theta}{2}\\right) + \\frac{K\_{II}}{\\sqrt{2\\pi r}}\\left(-\\frac{5}{4}\\sin \\frac{\\theta}{2} + \\frac{3}{4}\\sin \\frac{3\\theta}{2}\\right)\\\\
                \\label{eq:mixed-theta}
                \\sigma\_\\theta &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\left(\\frac{3}{4}\\cos \\frac{\\theta}{2} + \\frac{1}{4}\\cos \\frac{3\\theta}{2}\\right) + \\frac{K\_{II}}{\\sqrt{2\\pi r}}\\left(-\\frac{3}{4}\\sin \\frac{\\theta}{2} - \\frac{3}{4}\\sin \\frac{3\\theta}{2}\\right)\\\\
                \\label{eq:mixed-tau}
                \\tau\_{r\\theta} &= \\frac{K\_I}{\\sqrt{2\\pi r}} \\left(\\frac{1}{4}\\sin \\frac{\\theta}{2} + \\frac{1}{4}\\sin \\frac{3\\theta}{2}\\right) + \\frac{K\_{II}}{\\sqrt{2\\pi r}}\\left(\\frac{1}{4}\\cos \\frac{\\theta}{2} + \\frac{3}{4}\\cos \\frac{3\\theta}{2}\\right)
            \\end{aligned}$$
    </span>

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

<span>maximum circumferential stress criterion</span>

-   The general form for a Mode II stress intensity factor is

-   
    $$K\_{II} = \\tau \\sqrt{\\pi a} \\beta^\\prime$$

<span>example</span>

Assuming |*σ*|=4|*τ*|, $K\_{IC} = 60 \\text{ ksi} \\sqrt{\\text{in}}$, and 2*a* = 1.5 in.

**Note:** Assume *β* = *β*<sup>′</sup> = 1

<span>principal stress criterion</span>

-   In the maximum circumferential stress criterion, we found the principal direction in polar coordinates

-   We can also find the principal direction in Cartesian coordinates

-   If we make a free body cut along some angle *θ* we find, from equilibrium

-   <span>
    $$\\begin{aligned}
                    \\begin{split}
                0 &= \\sigma\_\\theta dA - \\sigma\_x dA \\sin^2 \\theta - \\sigma\_y dA \\cos^2 \\theta + 2\\tau\_{xy} dA \\cos \\theta \\sin \\theta\\\\
                \\sigma\_\\theta &= \\sigma\_x \\sin^2 \\theta + \\sigma\_y \\cos^2 \\theta - 2 \\tau\_{xy} \\sin \\theta \\cos \\theta\\\\
                \\frac{\\partial \\sigma\_\\theta}{\\partial \\theta} &= (\\sigma\_x - \\sigma\_y) \\sin 2\\theta\_p - 2\\tau\_{xy} \\cos 2\\theta\_P\\\\
                \\tan 2\\theta\_P &= \\frac{2 \\tau\_{xy}}{\\sigma\_x - \\sigma\_y}
                \\end{split}
            \\end{aligned}$$
    </span>

<span>principal stress criterion</span>

-   As before, we consider crack propagation purely due to Mode I

-   In the principal stress criterion, we find the maximum Mode I stress as a function of the remote applied stress
    *σ*<sub>*P*1</sub> = *C**σ*

-   We then find the remote failure stress by
    $$\\sigma\_c = \\frac{K\_{IC}}{C\\sqrt{\\pi a}\\beta}$$

<span>example</span>

Assuming |*σ*|=4|*τ*|, $K\_{IC} = 60 \\text{ ksi} \\sqrt{\\text{in}}$, and 2*a* = 1.5 in.

**Note:** Assume *β* = *β*<sup>′</sup> = 1

<span>example</span> <http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/Mixed%20Mode%20Fracture.ipynb>
