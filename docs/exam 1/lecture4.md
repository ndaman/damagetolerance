## AE 737: Mechanics of Damage Tolerance
Lecture 4 - Curved Boundaries

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 10, 2021

----
## schedule

- 10 Feb - Curved Boundaries, HW 1 Due
- 15 Feb - Plastic Zone
- 17 Feb - Plastic Zone, HW 2 Due, HW 1 Self-grade due
- 22 Feb - Fracture Toughness

----
## outline

- compounding
- curved boundaries
- stress concentration factors

----
## supplemental material

-   I was unable to find the source for all of Dr. Horn's formulas, but I have made an alternate set of equations (taken from the AFGROW user's manual) available on Blackboard under supplemental material.
-   Can also be found [here](http://ndaman.github.io/damagetolerance/classdocs/Sec11_31.pdf)

---

# compounding

----
## superposition vs. compounding

-   In this course, we use *superposition* to combine loading conditions
-   We use *compounding* to combine edge effects
-   Both are very powerful tools and important concepts

----
## compounding

-   Different types of boundaries create different correction factors to the usual stress intensity factor
-   We often use `$\beta$` to indicate the total correction factor
-   When multiple boundaries are present, we can combine them into one effective correction factor
-   There are two general methods we use to create a compound correction factor

----
## method 1

-   The first method uses linear superposition, and thus is restricted to cases where the effect of each boundary can be assumed to add linearly
-   While in most cases this is not strictly true, it provides a reasonable approximation

`$$K_r = \bar{K} + \sum_{i=1}^{N}(K_i - \bar{K})$$`

----
## method 1

-   Where *N* is the number of boundaries, $\\bar{K}$ is the stress intensity factor with no boundaries present and `$K_i$` is the stress intensity factor associated with the `$i^\text{th}$` boundary.

----
## method 1

-   We can rewrite this equation as

`$$K_r = \sigma \sqrt{\pi a} \beta_r = \sigma \sqrt{\pi a} + \sum_{i=1}^{N}(\sigma \sqrt{\pi a}\beta_i - \sigma \sqrt{\pi a})$$`
-   Which leads to an expression for `$\beta_r$` as

`$$\beta_r = 1+\sum_{i=1}^{N} (\beta_i - 1)$$`

----
## method 2

-   An alternative empirical method approximates the boundary effect as

`$$\beta_r = \beta_1 \beta_2 ... \beta_N$$`

-   If there is no interaction between the boundaries, method 1 and method 2 will give the same result

----
## p. 68 - example 1

-   A crack in a finite-width panel is centered between two stiffeners
-   Assume the $\beta$ correction factor for this stiffener configuration is `$\beta_s$` = 0.9
-   Assume the $\beta$ correction factor for this finite-width panel is `$\beta_w$` = 1.075
-   Use both compounding methods to estimate the stress intensity
-   How accurate do you expect this to be?

----
## p. 69 - example 3

<div class="left">

![An off-center crack 1 inch long is loaded under remote tension in a 2.25 inch wide panel. The center of the crack is 1 inch away from the left side.](../images/example-69-3.svg) <!-- .element width="70%" -->

</div>

<div class="right">

`$b=1$` inch

</div>

----
## group 1
<div class="left">

![An off-center crack 0.25 inches long is loaded under remote tension in a 2 inch wide panel that is 1 inch tall. The center of the crack is 0.4 inches away from the left side.](../images/compounding-group1.svg) <!-- .element width="70%" -->

</div>

<div class="right">

`$b=0.4$` inches

</div>

----
## group 2

<div class="left">

![An off-center crack 0.25 inches long is loaded under remote tension in a 2 inch wide panel. The center of the crack is 0.4 inches away from the left side. There is also a 0.5 inch diameter hole spaced 0.5 inches away from the crack tip.](../images/compounding-group2.svg) <!-- .element width="70%" -->

</div>

<div class="right">

`$b=0.4$` inches <br />

Hole diameter is 0.5 inches and spaced 0.5 inches away from the crack tip

</div>

----
## group 3

<div class="left">

![A center crack 0.25 inches long is on a panel 1 inch tall with the right crack tip 0.5 inches away from a 0.5 inch diameter hole.](../images/compounding-group3.svg) <!-- .element width="70%" -->

</div>

<div class="right">

Hole diameter is 0.5 inches and spaced 0.5 inches away from the crack tip

</div>

----
## group 4

<div class="left">

![A center crack 0.25 inches long is between two holes with the right crack tip 0.5 inches away from a 0.5 inch diameter hole and the left crack tip is 0.25 inches away from a 1 inch diameter hole.](../images/compounding-group4.svg)<!-- .element width="100%" -->

</div>

<div class="right">

The right crack tip is 0.5 inches away from a 0.5 inch diameter hole and the left crack tip is 0.25 inches away from a 1 inch diameter hole.

</div>

---
# errata and supplemental charts

----
## textbook notes

-   on p. 64 there is a + missing between two terms, see Lecture 2 for the fix
-   Also on p. 64, in equation 29 it is not clear, but use the `$f_w$` from a previous equation, on p. 56
-   Some of the black and white figures can be difficult to use, we have scanned and re-created the plots online
-   Interactive versions of compounding figures from p. 50, 71-73 can be found at [here](../examples/Compounding%20Figures.html)

----
## finite height - p. 50

![beta for finite height effects, see text p. 50 or interactive chart linked in previous slide](../images/finite-height.png)

----
## offset crack - p. 71

![beta for offset internal crack, see text p. 71 or interactive chart linked previously](../images/internal-crack.png)

----
## crack near hole - p. 72

![beta for the crack tip farther away from a hole, see text p. 72 or interactive chart linked previously](../images/crack-hole-A.png)

----
## crack near hole - p. 73

![beta for the crack tip closer to a hole, see text p. 73 or interactive chart linked previously](../images/crack-hole-B.png)

---
# curved boundaries

----
## short cracks on curved boundaries

-   For short cracks, we can use the *stress concentration factor* on a curved boundary to determine the stress intensity factor
-   The stress concentration factor only gives the maximum stress at the curved boundary, thus the longer the crack is, the farther away from the curved boundary (and maximum stress) it is.
-   Stress concentration factors can be found: pp. 82-85 in the text
-   Also see supplemental text on Blackboard or [here](classdocs/stress_concentrations.pdf)

----
## short cracks on curved boundaries

-   Suppose we want to determine the stress intensity on a panel, panel B
-   We find a similar panel with a known stress intensity factor, panel A
-   We adjust the applied load on panel A such that *K*<sub>*I*,*A*</sub>=*K*<sub>*I*,*B*</sub>
-   The magnitude of this load adjustment is determined using the *stress concentration factors* in panels B and A
Note: the notation: K_t for stress concentration factor, K_I for stress intensity factor

----
## short cracks on curved boundaries

![Two panels are shown, the one on the left has an off-center hole, which we compare to a panel on the right where the hole is in the center. Both have a crack to the left side of the hole.](../images/curved-short.svg)<!-- .element width="40%" -->

----
## short cracks on curved boundaries

-   Since *A* is a fictional panel, we set the applied stress, `$\sigma_A$` such that

`$$\sigma_{max,B} = \sigma_{max,A}$$`

-   Substituting stress concentration factors

`$$K_{t,B} \sigma_B = K_{t,A} \sigma_A$$`

-   Solving for `$\sigma_A$`

`$$\sigma_A = \frac{K_{t,B}}{K_{t,A}}\sigma_B$$`

----
## short cracks on curved boundaries

-   Since the crack is short and `$\sigma_{max, A} = \sigma_{max, B}$` we can say

`$$\begin{aligned}
  K_{I,B} &= K_{I,A}\\
  &= \sigma_A \sqrt{\pi c} \beta_A\\
  &= \frac{K_{t,B}}{K_{t,A}}\sigma_B \sqrt{\pi c} \beta_A
\end{aligned}$$`

----
## example 6 (p. 86)

![See p. 86, there is a short through crack on the edge of a 0.5" deep notch on a 5 inch wide panel with a remote 12 ksi stress applied. The net section stress concentration factor is 2.8, while the global stress concentration factor for a similar panel with a hole is 3.1](../images/example-86-6.jpg)

----
## long cracks on curved boundaries

-   As a crack becomes very large, the effect of the curved boundary diminishes
-   We find expressions for `$\beta_L$` (long crack) and `$\beta_S$` (short crack)
-   We connect `$\beta_S$` to `$\beta_L$` using a straight line from `$\beta_S$` to a tangent intersection with `$\beta_L$`

----
## long cracks on curved boundaries

![An off-centered hole (like before) has a crack that goes through it, such that the crack is becoming long relative to the hole. We label the distance from the left edge of the panel to the right edge of the hole e, while c is the length of the crack beginning at the right edge of the hole.](../images/curved-long.svg)<!-- .element width="20%"-->

---
## example

-   Example [here](../examples/Long%20Cracks%20on%20Curved%20Boundaries.html)

----
## group one

<div class="left">

![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is 0.1 inches long (on the right side of the hole).](../images/curved-group1.svg) <!-- .element width="70%" -->

</div>

<div class="right">

-  _c_ = 0.75, *e* = 2.25, *r* = 0.5
-  assume *a* is short and calculate $\beta$ for this case
-  calculate in terms of $\beta$ for known state

</div>

----
## group two

<div class="left">

![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is considered to be long (on the right side of the hole).](../images/curved-group2.svg) <!-- .element width="70%" -->

</div>

<div class="right">

-  _c_ = 0.75, *e* = 2.25, *r* = 0.5
-   assume *a* is long and calculate $\beta$ for this case
-   calculate in terms of $\beta$ for known state

</div>

----
## group three

<div class="left">

![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is 0.1 inches long (on the right side of the hole), but continues all the way to the edge on the left side of the hole.](../images/curved-group3.svg) <!-- .element width="70%" -->

</div>

<div class="right">

-  *c* = 0.75, *e* = 2.25, *r* = 0.5
-   assume *a* is short and calculate $\beta$ for this case
-   calculate in terms of $\beta$ for known state

</div>

----
## group four

<div class="left">

![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is considered long (on the right side of the hole), and continues all the way to the edge on the left side of the hole.](../images/curved-group4.svg) <!-- .element width="70%" -->

</div>

<div class="right">

-  _c_ = 0.75, *e* = 2.25, *r* = 0.5
-   assume *a* is long and calculate $\beta$ for this case
-   calculate in terms of $\beta$ for known state

</div>

----
## discussion

Draw a sketch to show how we could use this method to find cracks of intermediate length near a curved boundary

---
# stress concentration factors

----
## centered hole tension - p. 82

![A plot of stress concentration factors near a hole, see text p. 82 or the interactive plots linked in the last slide.](../images/kt-hole.png)

`$K_{tg}$` uses stress for the cross-sectional area if no hole was present, `$K_{tn}$` uses stress at the net section (subtracting hole area). *a* is the hole diameter, *W* is specimen width.

----
## off-center hole tension - p. 83

![A plot of stress concetration factors near an off-centered hole, see text p. 83 or the interactive plots linked in the last slide.](../images/Kt-offcenter-hole.png)<!-- .element width="40%" -->

`$K_{tg}$` uses stress for the cross-sectional area if no hole was present, `$K_{tn}$` uses stress at the net section (subtracting hole area). c is the distance from the closest edge to the center of the hole, e is the distance from the farthest edge to the center of the hole, r is hole radius.

----
## bending of a bar with u-shaped notch - p. 84

![A plot of stress concentration factors in a bar with a u-shaped notch, see text p. 84 or the interactive plots linked in the last slide.](../images/kt-bending-edge.png)

Nominal stress used for `$K_t$` is given by `$\sigma_{nom} = 6M/hd^2$` where *M* is applied bending moment, *h* is thickness, *d* is the net-section height (height minus notch depth). *D* is the height of the panel without a notch and *r* is the notch radius.

----
## tension of a stepped bar with shoulder fillets - p. 85

![A plot of stress concentration factors in a stepped bar with shoulder fillets, see text p. 85 or the interactive plots linked in the last slide.](../images/fillet.png)<!-- .element width="70%" -->

*D* is the larger width (before the step), *d* is the width after the step. Nominal stress is `$\sigma_{nom} = P/hd$`, where *h* is specimen thickness. *r* is the fillet radius.

----
## interactive page

-   An interactive page with these plots can be accessed [here](../examples/Stress%20Concentration%20Factors.html)
