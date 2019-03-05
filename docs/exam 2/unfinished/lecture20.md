<span>schedule</span>

-   5 Apr - Crack Propagation

-   10 Apr - Crack Retardation, HW8 Due

-   12 Apr - Crack Retardation

-   17 Apr - Damage Tolerance, HW9 Due

-   19 Apr - Exam 2

-   Damage Tolerance, Special Topics, Final Projects

<span>Research Colloquium</span>

-   Friday April 6 @ 3:00 pm, WH 123

-   The Aerodynamics of Commercial Transport Aircraft in Aerial Firefighting

-   By an M.S. student in AE: Daniel Varner

### outline

\[sections numbered\]

<span>errata</span>

-   Error in my Paris Law example (the minus sign I was worried about in class)

-   Note: While da/dN vs. *Δ**K* is linear, *Δ**K* is a function of *a*, so we can get an unstable crack growth when *a* grows quickly, increasing *Δ**K*

-   In my example, this occurs well before 50,000 cycles, so we cannot actually solve for a final crack length

-   Also, in center-cracked panels we generally use crack length = 2*a*, so *a*<sub>0</sub> = 0.5

<span>example</span>

-   A wide center-cracked panel with *C* = 6.75 × 10<sup>−10</sup> and *n* = 3.89 (with units in ksi and inches)

-   If the crack is initially 1 inch long, find the crack length after 50,000 (and 5,000) cycles of 15 ksi loading

-   What if the load cycles varied from 5 ksi to 15 ksi? (*m* = 0.6)

numerical algorithm
===================

<span>numerical algorithm</span>

-   While the Paris Law can be integrated directly (for simple load cases), many of the other formulas cannot

-   A simple numerical algorithm for determining incremental crack growth is

-   
    $$a\_{i+1} = a\_i + \\left(\\frac{da}{dN}\\right)\_i\\left(\\Delta N\\right)\_i$$

-   This method is quite tedious by hand (need many *a*<sub>*i*</sub> values for this to be accurate)

-   But is simple to do in Excel, MATLAB, Python, or many other codes

-   For most accurate results, use *Δ**N* = 1, but this is often unnecessary

-   When trying to use large *Δ**N*, check convergence by using larger and smaller *Δ**N* values

<span>boeing-walker example</span>

-   Use the Boeing-Walker equation to find the crack length after 20000 cycles of 15 ksi load on a large, center-cracked sheet of bare 2024-T3 in dry air, with an initial crack of 0.5"

-   Use the numerical algorithm with *Δ**N* = 1000

<span>convergence example</span>

-   compare the results from the previous example with *Δ**N* = 10, 100, 10000 and direct integration

<span>variable load cases</span>

-   In practice variable loads are often seen

-   The most basic way to handle these is to simply calculate the crack length after each block of loading

-   We will discuss an alternate method, which is more convenient for flight “blocks” next class

-   We will also discuss “retardation” models next class

<span>variable load example</span>

-   For the same material as above (2024-T3, center-cracked, dry air), consider 20000 cycles with 15 ksi load followed by 10000 cycles of 5 - 20 ksi.

boeing method
=============

<span>boeing method for variable amplitude loads</span>

-   Whether integrating numerically or analytically, it is time-consuming to consider multiple repeated loads

-   It is particularly difficult to consider flight loads, which can vary by “mission”

-   For example, an aircraft may fly three different routes, in no particular order, but with a known percentage of time spent in each route

-   Traditional methods would use a random mix of each load spectra

-   The Boeing Method combines each repeatable load spectrum into one single equivalent cycle

-   Note: this is ch. 20 in the text

<span>boeing method</span>

-   The Boeing method is derived by separating the geometry effects from load and material effects in the Boeing-Walker equation.

-   
    $$\\frac{da}{dN} = \\left\[\\frac{1}{n}\\right\]\\frac{dL}{dN} = 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

-   
    $$\\frac{dL}{dN} = n 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

-   
    $$\\frac{dN}{dL} = \\frac{1}{n} 10^{4} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p$$

-   
    $$\\int\_{0}^{N}dN = \\frac{10^{4}}{n}  \\int\_{L\_0}^{L\_f} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p dL$$

-   
    $$N = 10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p  \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$$

<span>boeing method</span>

-   In this form, the term $10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p$ is strictly from the applied load and material, while $\\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$ is from geometry

-   If we now define *G* to account for crack geometry

-   
    $$G = \\left\[ \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p} \\right\] ^{-1/p}$$

-   And define *z**σ*<sub>*m**a**x*</sub> = *S* as the equivalent load spectrum, then we have

-   
    $$\\label{eq:boeing}
            N = 10^4 \\left(\\frac{m\_t/G}{S}\\right)^p$$

-   Using this method, *G* is typically looked up from a chart (such as on p. 369)

<span>boeing method</span>

-   To replace a repeated load spectrum with an equivalent load, we need to invert the relationship

-   Equation \[eq:boeing\] gives cycles per crack growth, inverting gives crack growth per cycle

-   
    $$\\text{crack growth per cycle} = 10^{-4} \\left(\\frac{m\_t/G}{S}\\right)^{-p}$$

-   If we consider a general, repeatable “block”, we have

-   
    $$10^{-4} \\left( m\_t/G \\right)^{-p} \\sum\_i \\left( \\frac{1}{z\\sigma\_{max}} \\right)\_i^{-p} N\_i = 10^{-4} \\left( \\frac{m\_t/G}{S} \\right)^{-p}$$

-   Which simplifies to
    ∑<sub>*i*</sub>(*z**σ*<sub>*m**a**x*</sub>)<sub>*i*</sub><sup>*p*</sup>*N*<sub>*i*</sub> = (*S*)<sup>*p*</sup>

<span>boeing method example</span>

-   (from p. 366), *q* = 0.6, *p* = 3.9

    coordinates <span> (0,2) (0.5,8) (1,2) (1.5,8) (2,2) (2.5,8) (3,2) (3.5,8) (4,2) (4.5,8) (5,2) (5.5,8) (6,2) (6.5,8) (7,2) (7.5,8) (8,2) (8.5,8) (9,2) (9.5,8) (10,2) (10.5,8) (11,2) (11.5,8) (12,2) (12.5,18) (13,0) (13.5, 10) (14, 5) (14.5, 10) (15, 5) (15.5, 10) (16, 5) (16.5, 10) (17, 5) (17.5, 10) (18, 5) (18.5, 10) (19, 5) (19.5, 10) (20, 5) (20.5, 10) (21, 5) (21.5, 10) (22, 5) (22.5, 10) (23, 5) (23.5, 10) (24, 5) (24.5, 10) (25, 5) (25.5, 10) (26, 5) (26.5, 10) (27, 5) (27.5, 10) (28, 2.5) (28.5, 7) (29, 2.5) (29.5, 7) (30, 2.5) (30.5, 7) (31, 2.5) (31.5, 7) (32, 2.5) (32.5, 7) (33, 2.5) (33.5, 7) (34, 2.5) (34.5, 7) (35, 2.5) (35.5, 7) (36, 2.5) (36.5, 7) (37, 2.5) (37.5, 7) (38, 2.5) (38.5, 7) (39, 2.5) (39.5, 7) (40, 2.5) (40.5, 7) (41, 2.5) (41.5, 7) (42, 2.5) (42.5, 7) (43, 2.5) (43.5, 7) (44, 2.5) (44.5, 7) (45, 2.5) (45.5, 7) (46, 2.5) (46.5, 7) (47, 2.5) (47.5, 7) </span>; at (axis cs: 11.5,8.5) <span>(11.5, 8)</span>; at (axis cs: 12,1.5) <span>(12, 2)</span>; at (axis cs: 12.5,18.5) <span>(12.5, 18)</span>; at (axis cs: 13,-0.5) <span>(13, 0)</span>; at (axis cs: 13.5,10.5) <span>(13.5, 10)</span>; at (axis cs: 14,4.5) <span>(14, 5)</span>; at (axis cs: 27,4.5) <span>(27, 5)</span>; at (axis cs: 28,2) <span>(28, 2.5)</span>; at (axis cs: 28.5,7.5) <span>(28.5, 7)</span>; at (axis cs: 47,2) <span>(47, 2.5)</span>;

<span>boeing method example - cont.</span> Count cycles from the right (instead of the left)

cycle counting
==============

<span>cycle counting</span>

-   As illustrated in our previous example, cycle counting method can make a difference for variable amplitude loads

-   Two common methods for cycle counting that give similar results are known as the “rainflow” and “range-pair” methods

-   ASTM E1049-85 “Standard Practices for Cycle Counting in Fatigue Analysis”

<span>rain-flow method</span>

1.  Rearrange the history to start with the highest peak or lowest valley

2.  Imagine rain flowing down the slope until the next reversal, check if the drips over the edge would catch another section of roof

3.  Once you have reached the farthest point, reverse direction and follow the water to the other edge, count this as one cycle

4.  Consider all parts that have touched the path of water “erased” and repeat

<span>rain-flow method</span>

<img src="../Figures/rainflow" alt="image" style="width:40.0%" />

<span>range-pair method</span>

1.  Read next peak or valley. *Y* is the first range, *X* is the second range

2.  If *X* &lt; *Y* advance points

3.  If *X* ≥ *Y*, count *Y* as 1 cycle and discard both points in *Y*, go to 1

4.  Remaining cycles are counted backwards from end of history

<span>range-pair</span>

<img src="../Figures/range-pair" alt="image" style="width:40.0%" />

<span>cycle counting example</span>

-   Use the rain-flow method to count cycles

-   Use the range-pair method to count cycles

    coordinates <span> (0,2) (0.5,8) (1,2) (1.5,8) (2,2) (2.5,8) (3,2) (3.5,8) (4,2) (4.5,8) (5,2) (5.5,8) (6,2) (6.5,8) (7,2) (7.5,8) (8,2) (8.5,8) (9,2) (9.5,8) (10,2) (10.5,8) (11,2) (11.5,8) (12,2) (12.5,18) (13,0) (13.5, 10) (14, 5) (14.5, 10) (15, 5) (15.5, 10) (16, 5) (16.5, 10) (17, 5) (17.5, 10) (18, 5) (18.5, 10) (19, 5) (19.5, 10) (20, 5) (20.5, 10) (21, 5) (21.5, 10) (22, 5) (22.5, 10) (23, 5) (23.5, 10) (24, 5) (24.5, 10) (25, 5) (25.5, 10) (26, 5) (26.5, 10) (27, 5) (27.5, 10) (28, 2.5) (28.5, 7) (29, 2.5) (29.5, 7) (30, 2.5) (30.5, 7) (31, 2.5) (31.5, 7) (32, 2.5) (32.5, 7) (33, 2.5) (33.5, 7) (34, 2.5) (34.5, 7) (35, 2.5) (35.5, 7) (36, 2.5) (36.5, 7) (37, 2.5) (37.5, 7) (38, 2.5) (38.5, 7) (39, 2.5) (39.5, 7) (40, 2.5) (40.5, 7) (41, 2.5) (41.5, 7) (42, 2.5) (42.5, 7) (43, 2.5) (43.5, 7) (44, 2.5) (44.5, 7) (45, 2.5) (45.5, 7) (46, 2.5) (46.5, 7) (47, 2.5) (47.5, 7) (48, 2.5) (48.5, 7) </span>; at (axis cs: 11.5,8.5) <span>(11.5, 8)</span>; at (axis cs: 12,1.5) <span>(12, 2)</span>; at (axis cs: 12.5,18.5) <span>(12.5, 18)</span>; at (axis cs: 13,0) <span>(13, −0.5)</span>; at (axis cs: 13.5,10.5) <span>(13.5, 10)</span>; at (axis cs: 14,4.5) <span>(14, 5)</span>; at (axis cs: 27,4.5) <span>(27, 5)</span>; at (axis cs: 28,2) <span>(28, 2.5)</span>; at (axis cs: 28.5,7.5) <span>(28.5, 7)</span>; at (axis cs: 48,2) <span>(48, 2.5)</span>;

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


