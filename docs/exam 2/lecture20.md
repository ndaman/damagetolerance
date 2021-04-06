## AE 737: Mechanics of Damage Tolerance
Lecture 20 - Crack Retardation

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

7 April, 2021

----
## schedule

- 7 Apr - Crack retardation
- 12 Apr - Finite Elements in Fracture
- 14 Apr - Finite Elements in Fracture
- 16 Apr - Homework 7 Self-grade, Homework 8 Due
- 19 Apr - Exam Review
- 21 Apr - Exam 2


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
-   The Wheeler method reduces *da*/*dN*, the Willenborg model reduces `$\Delta K$`, and the Closure model increases *R* (increases `$\sigma_{min}$`)

----
## wheeler retardation

-   As long as crack is within overload plastic zone, we scale *da*/*dN* by some `$\phi$`

`$$ (a_i + r_{pi}) \le (a_{aol} + r_{pol})$$`

-   And `$\phi$` is given by

`$$\phi_i = \left[\frac{r_{pi}}{a_{ol}+r_{pol}-a_i}\right]^m$$`

-   and the constant, *m* is to be determined experimentally

----
## wheeler example

-   (p. 340), A wide edge-cracked panel (`$\beta = 1.22$`) has an initial crack length of 0.3 inches. Use `$p=3.5$` `$m_T=32$` and `$q=0.6$` to grow a crack for two load cases. 
-   Use the Wheeler retardation model with `$m=1.43$`, a plane stress plastic zone, and `$\sigma_{YS}$` = 68 ksi.
-   Case 1: `$\sigma_{max} = 18$` ksi and `$\sigma_{min}$` = 3.6 ksi for 12,000 cycles

----
## wheeler example (cont)

-   Case 2: `$\sigma_{max}$` = 18 ksi and `$\sigma_{min}$` = 3.6 ksi for 6,000 cycles, followed by one cycle of `$\sigma_{max}$` = 27 ksi and `$\sigma_{min}$` = 5.4 ksi, followed by another 6,000 cycles of `$\sigma_{max}$` = 18 ksi and `$\sigma_{min}$` = 3.6 ksi.

----
## willenborg retardation

-   Once again, we consider that retardation occurs when (`$a_i + r_{pi} = a_{ol} + r_{pol}$`)
-   Willenborg assumes that the residual compressive stress in the plastic zone creates an effective, `$K_{max,eff}$` where `$K_{max,eff} = K_{max} - K_{comp}$`
-   The effective stress intensity factor is given by

`$$K_{max,eff} = K_{max,i} - \left[K_{max,OL}\sqrt{1-\frac{\Delta a_i}{r_{pol}}} - K_{max,i} \right]$$`

----
## gallagher and hughes correction

-   Galagher and Hughes observed that the Willenborg model stops cracks when they still propagate
-   They proposed a correction to the model

`$$K_{max,eff} = K_{max,i} - \phi_i\left[K_{max,OL}\sqrt{1-\frac{\Delta a_i}{r_{pol}}} - K_{max,i} \right]$$`

----
## gallagher and hughes correction

-   And the correction factor, `$\phi_i$` is given by

`$$\phi_i = \frac{1-K_{TH}/K_{max,i}}{s_{ol}-1}$$`

----
## willenborg example

-   Consider the Wheeler example problem with Willenborg parameters of `$S_{ol}$` = 2.3 and `$K_{th} = 1$` ksi.

----
## closure model

-   Once again, we consider that retardation occurs when `$(a_i + r_{pi}) = (a_{ol} + r_{pol})$`
-   Within the overloaded plastic zone, the opening stress required can be expressed as

`$$\sigma_{OP} = \sigma_{max}(1 - (1 - C_{f0})(1 + 0.6R)(1 - R))$$`

----
## closure model

-   Commonly this is expressed using the Closure Factor, `$C_f$`

`$$C_f = \frac{\sigma_{OP}}{\sigma_{max}} = (1-(1-C_{f0})(1+0.6R)(1-R))$$`

-   Where `$C_{f0}$` is the value of the Closure Factor at *R* = 0

----
## closure model

-   When using the closure model, we replace *R* with `$C_f$`
-   If the model we are using is in terms of `$\Delta K$` we will also need to use `$\Delta K = (1 - C_f)K_{max}$`

----
## closure example

-   Consider the Wheeler/Willenborg example problem with Closure parameters of `$C_f0 = 0.3$` and `$C_f = 0.3728$`

----
## under-loads

-   We might expect a compressive “underload” to accelerate crack growth
-   This effect is not usually modeled for a few reasons
    1.  Compressive underloads are uncommon in airframes
    2.  The acceleration effect is minimal
    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model
    4.  Structures with large compressive loads are not generally subject to crack propagation problems


