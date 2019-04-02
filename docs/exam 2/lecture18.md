## AE 737: Mechanics of Damage Tolerance
Lecture 18 - Crack Propagation

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 4, 2019

----
## schedule

- 2 Apr - Crack growth, HW6 Due
- 4 Apr - Crack growth
- 9 Apr - Crack growth, HW7 Due
- 11 Apr - 


----
## outline

---
# numerical algorithm

----
## numerical algorith

-   While the Paris Law can be integrated directly (for simple load cases), many of the other formulas cannot
-   A simple numerical algorithm for determining incremental crack growth is

$$a\_{i+1} = a\_i + \\left(\\frac{da}{dN}\\right)\_i\\left(\\Delta N\\right)\_i$$

-   This method is quite tedious by hand (need many *a*<sub>*i*</sub> values for this to be accurate)
-   But is simple to do in Excel, MATLAB, Python, or many other codes
-   For most accurate results, use *ΔN* = 1, but this is often unnecessary
-   When trying to use large *ΔN*, check convergence by using larger and smaller *Δ**N* values

----
## boeing-walker example

-   Use the Boeing-Walker equation to find the crack length after 20000 cycles of 15 ksi load on a large, center-cracked sheet of bare 2024-T3 in dry air, with an initial crack of 0.5"
-   Use the numerical algorithm with *ΔN* = 1000

----
## convergence example

-   compare the results from the previous example with *ΔN* = 10, 100, 10000 and direct integration

----
## variable load cases

-   In practice variable loads are often seen
-   The most basic way to handle these is to simply calculate the crack length after each block of loading
-   We will discuss an alternate method, which is more convenient for flight “blocks” next class
-   We will also discuss “retardation” models next class

----
## variable load example

-   For the same material as above (2024-T3, center-cracked, dry air), consider 20000 cycles with 15 ksi load followed by 10000 cycles of 5 - 20 ksi.

---
# boeing method

----
## boeing method for variable amplitude loads

-   Whether integrating numerically or analytically, it is time-consuming to consider multiple repeated loads
-   It is particularly difficult to consider flight loads, which can vary by “mission”
-   For example, an aircraft may fly three different routes, in no particular order, but with a known percentage of time spent in each route
-   Traditional methods would use a random mix of each load spectra
-   The Boeing Method combines each repeatable load spectrum into one single equivalent cycle
-   Note: this is ch. 20 in the text

----
## boeing method

-   The Boeing method is derived by separating the geometry effects from load and material effects in the Boeing-Walker equation.

$$\\frac{da}{dN} = \\left\[\\frac{1}{n}\\right\]\\frac{dL}{dN} = 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

$$\\frac{dL}{dN} = n 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

$$\\frac{dN}{dL} = \\frac{1}{n} 10^{4} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p$$

$$\\int\_{0}^{N}dN = \\frac{10^{4}}{n}  \\int\_{L\_0}^{L\_f} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p dL$$

$$N = 10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p  \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$$

----
## boeing method

-   In this form, the term $10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p$ is strictly from the applied load and material, while $\\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$ is from geometry
-   If we now define *G* to account for crack geometry

$$G = \\left\[ \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p} \\right\] ^{-1/p}$$

-   And define *zσ*<sub>*max*</sub> = *S* as the equivalent load spectrum, then we have

$$N = 10^4 \\left(\\frac{m\_t/G}{S}\\right)^p$$

-   Using this method, *G* is typically looked up from a chart (such as on p. 369)

----
## boeing method

-   To replace a repeated load spectrum with an equivalent load, we need to invert the relationship
-   The previous equation gives cycles per crack growth, inverting gives crack growth per cycle

$$\\text{crack growth per cycle} = 10^{-4} \\left(\\frac{m\_t/G}{S}\\right)^{-p}$$

-   If we consider a general, repeatable “block”, we have

$$10^{-4} \\left( m\_t/G \\right)^{-p} \\sum\_i \\left( \\frac{1}{z\\sigma\_{max}} \\right)\_i^{-p} N\_i = 10^{-4} \\left( \\frac{m\_t/G}{S} \\right)^{-p}$$

-   Which simplifies to
∑<sub>*i*</sub>(*zσ*<sub>*max*</sub>)<sub>*i*</sub><sup>*p*</sup>*N*<sub>*i*</sub> = (*S*)<sup>*p*</sup>

----
## boeing method example

-   (from p. 366), *q* = 0.6, *p* = 3.9

----
## boeing method example - cont. Count cycles from the right (instead of the left)

---
# cycle counting

----
## cycle counting

-   As illustrated in our previous example, cycle counting method can make a difference for variable amplitude loads
-   Two common methods for cycle counting that give similar results are known as the “rainflow” and “range-pair” methods
-   ASTM E1049-85 “Standard Practices for Cycle Counting in Fatigue Analysis”

----
## rain-flow method

1.  Rearrange the history to start with the highest peak or lowest valley
2.  Imagine rain flowing down the slope until the next reversal, check if the drips over the edge would catch another section of roof
3.  Once you have reached the farthest point, reverse direction and follow the water to the other edge, count this as one cycle
4.  Consider all parts that have touched the path of water “erased” and repeat

----
## rain-flow method

![](..\images/rainflow.png)

----
## range-pair method

1.  Read next peak or valley. *Y* is the first range, *X* is the second range
2.  If *X* &lt; *Y* advance points
3.  If *X* ≥ *Y*, count *Y* as 1 cycle and discard both points in *Y*, go to 1
4.  Remaining cycles are counted backwards from end of history

----
## range-pair

![](..\images/range-pair.png)

----
## cycle counting example

-   Use the rain-flow method to count cycles
-   Use the range-pair method to count cycles

---
# crack growth retardation

----
## crack growth retardation

-   When an overload is applied, the plastic zone is larger
-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone
-   We will discuss three retardation models, but no model has been shown to be perfect in all cases
-   The Wheeler method reduces *da*/*dN*, the Willenborg model reduces *ΔK*, and the Closure model increases *R* (increases *σ*<sub>*min*</sub>)

----
## wheeler retardation

-   As long as crack is within overload plastic zone, we scale *da*/*dN* by some *ϕ*
(*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   And *ϕ* is given by

$$\\phi\_i = \\left\[\\frac{r\_{pi}}{a\_{ol}+r\_{pol}-a\_i}\\right\]^m$$

-   and the constant, *m* is to be determined experimentally

----
## wheeler example

-   (p. 340), A wide edge-cracked panel (*β* = 1.22) has an initial crack length of 0.3 inches. Use *p* = 3.5, *m*<sub>*T*</sub> = 32 and *q* = 0.6 to grow a crack for two load cases. Use the Wheeler retardation model with *m* = 1.43, a plane stress plastic zone, and *σ*<sub>*YS*</sub> = 68 ksi.
-   Case 1: *σ*<sub>*max*</sub> = 18 ksi and *σ*<sub>*min*</sub> = 3.6 ksi for 12,000 cycles
-   Case 2: *σ*<sub>*max*</sub> = 18 ksi and *σ*<sub>*min*</sub> = 3.6 ksi for 6,000 cycles, followed by one cycle of *σ*<sub>*max*</sub> = 27 ksi and *σ*<sub>*min*</sub> = 5.4 ksi, followed by another 6,000 cycles of *σ*<sub>*max*</sub> = 18 ksi and *σ*<sub>*min*</sub> = 3.6 ksi.

----
## willenborg retardation

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   Willenborg assumes that the residual compressive stress in the plastic zone creates an effective, *K*<sub>*max*, *eff*</sub>, where *K*<sub>*max*, *eff*</sub> = *K*<sub>*max*</sub> − *K*<sub>*comp*</sub>
-   The effective stress intensity factor is given by

$$K\_{max,eff} = K\_{max,i} - \\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

----
## gallagher and hughes correction

-   Galagher and Hughes observed that the Willenborg model stops cracks when they still propagate
-   They proposed a correction to the model

$$K\_{max,eff} = K\_{max,i} - \\phi\_i\\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

-   And the correction factor, *ϕ*<sub>*i*</sub> is given by

$$\\phi\_i \\frac{1-K\_{TH}/K\_{max,i}}{s\_{ol}-1}$$

----
## willenborg example

-   Consider the Wheeler example problem with Willenborg parameters of *S*<sub>*ol*</sub> = 2.3 and *K*<sub>*TH*</sub> = 1 ksi.

----
## closure model

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   Within the overloaded plastic zone, the opening stress required can be expressed as
    *σ*<sub>*OP*</sub> = *σ*<sub>*max*</sub>(1 − (1 − *C*<sub>*f*0</sub>)(1 + 0.6*R*)(1 − *R*))

-   Commonly this is expressed using the Closure Factor, *C*<sub>*f*</sub>

$$C\_f = \\frac{\\sigma\_{OP}}{\\sigma\_{max}} = (1-(1-C\_{f0})(1+0.6R)(1-R))$$

-   Where *C*<sub>*f*0</sub> is the value of the Closure Factor at *R* = 0

----
## closure model

-   When using the closure model, we replace *R* with *C*<sub>*f*</sub>
-   If the model we are using is in terms of *ΔK* we will also need to use *ΔK* = (1 − *C*<sub>*f*</sub>)*K*<sub>*max*</sub>

----
## closure example

-   Consider the Wheeler/Willenborg example problem with Closure parameters of *C*<sub>*f*0</sub> = 0.3 and *C*<sub>*f*</sub> = 0.3728

----
## compressive under-loads

-   Just as a tensile “overload” retards crack growth, we might expect a compressive “underload” to accelerate crack growth
-   This effect is not usually modeled for a few reasons
    1.  Compressive underloads are uncommon in airframes
    2.  The acceleration effect is minimal
    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model
    4.  Structures with large compressive loads are not generally subject to crack propagation problems


