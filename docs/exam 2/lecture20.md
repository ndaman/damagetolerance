## AE 737: Mechanics of Damage Tolerance
Lecture 20 - Crack Retardation

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 16, 2020

----
## schedule

- 16 Apr - Crack Retardation
- 16 Apr - Exam 2 Assigned
- 21 Apr - Recitation, HW8 Due 
- 23 Apr - No Lecture, Exam 2 Due
- 28 Apr - Damage Tolerance

----
## outline

<!-- vim-markdown-toc GFM -->

* crack growth retardation

<!-- vim-markdown-toc -->

---
# crack growth retardation

----
## crack growth retardation

-   When an overload is applied, the plastic zone is larger
-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone

----
## crack growth retardation

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

----
## wheeler example (cont)

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

----
## gallagher and hughes correction

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

----
## closure model

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
## under-loads

-   We might expect a compressive “underload” to accelerate crack growth
-   This effect is not usually modeled for a few reasons
    1.  Compressive underloads are uncommon in airframes
    2.  The acceleration effect is minimal
    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model
    4.  Structures with large compressive loads are not generally subject to crack propagation problems


