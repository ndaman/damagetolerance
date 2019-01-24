<span>schedule</span>

-   6 Mar - Review (Homework 6 Due)

-   8 Mar - Stress-based fatigue

-   13 Mar - Exam 1

-   15 Mar - Exam Return, Project Discussion

### outline

\[sections numbered\]

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

-   The equation sheet for this exam will be the same as the 2016 equation sheet posted to Blackboard

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

<span>topics</span>

-   Stress intensity

-   Compounding

-   Superposition

-   Cracks near curved boundaries

plastic zone
============

<span>Irwin’s first approximation</span>

(-2,0.5) node at (-2,0) <span>crack</span> – (0,0) – (-2,-0.5);

+\[mark=none,samples=200,unbounded coords=jump, domain=0.01:0.5\] <span>1/sqrt(2\*pi\*x)</span>; (axis cs:0.125,1.128) circle \[radius=1.5pt\] node\[above right\] <span>(*r*<sub>*p*</sub>, *C**σ*<sub>*Y**S*</sub>)</span>;

(0.75,0) circle (0.75); node at (0.75,-1) <span>*r*<sub>*p*</sub></span>; (0.5,-1) – (0,-1); (1,-1) – (1.5,-1);

<span>Irwin’s second approximation</span>

(-2,0.5) node at (-2,0) <span>real crack</span> – (0,0) – (-2,-0.5); (-.5,0.5) node at (.75,.75) <span>eq. crack</span> – (1.5,0) – (-.5,-0.5); (1.5,0) rectangle (2.7,1.5);

; ; ; fill between\[of=a and b\]; ; ;

node at (0.75,-.2) <span>*r*<sub>*p*</sub></span>; (0.5,-.2) – (0,-.2); (1,-.2) – (1.5,-.2); node at (2.1,-.2) <span>*δ*</span>; (2.3,-.2) – (2.7,-.2); (1.9,-.2) – (1.5,-.2); (3,3.5) node\[right\] <span>$\\sigma\_{yy} = \\frac{K\_I}{\\sqrt{2\\pi r}}$</span> – (0.75,2); (4,2.5) node\[right\] <span>$\\tilde{\\sigma}\_{yy} = \\frac{K\_I}{\\sqrt{2\\pi (r-\\delta)}}$</span> – (2.7,1.5); node at (.5,2) <span>A</span>; node at (2.1,0.75) <span>B</span>;

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

multiple site damage
====================

mixed-mode fracture
===================

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


