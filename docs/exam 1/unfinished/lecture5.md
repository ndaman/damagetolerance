<style>
.reveal section img { background:none; border:none; box-shadow:none; }
.left {
  left:-15%;
  top:-10%;
  text-align: left;
  float: left;
  width:45%;
  height:30vh;
  z-index:-10;
}
.right {
  left:31.25%;
  top: 75px;
  float: right;
  text-align: left;
  z-index:-10;
  width:48%;
}
</style>

## AE 737: Mechanics of Damage Tolerance
Lecture 5 - Curved Boundaries

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 5, 2019

----
## schedule

- 5 Feb - Plastic Zone
- 7 Feb - Plastic Zone, Homework 2 Due
- 12 Feb - Fracture Toughness
- 14 Feb - Fracture Toughness, Homework 3 Due

----
## outline
- curved boundaries
- stress concentration factors
- plastic zone

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

![Two panels are shown, the one on the left has an off-center hole, which we compare to a panel on the right where the hole is in the center. Both have a crack to the left side of the hole.](images\curved-short.svg)<!-- .element width="40%" -->

----
## short cracks on curved boundaries

-   Since *A* is a fictional panel, we set the applied stress, `$\sigma_A$` such that
`$$\sigma_{max,B} = \sigma_{max,A}$$`
-   Substituting stress concentration factors
`$$K_{t,B} \sigma_B = K_{t,A} \sigma_A$$`
-   Solving for `$\sigma_A$`
$$\\sigma\_A = \\frac{K\_{t,B}}{K\_{t,A}}\\sigma\_B$$

----
## short cracks on curved boundaries

-   Since the crack is short and `$\sigma_{max, A} = \sigma_{max, B}$` we can say
$$\\begin{aligned}
  K\_{I,B} &= K\_{I,A}\\\\
  &= \\sigma\_A \\sqrt{\\pi c} \\beta\_A\\\\
  &= \\frac{K\_{t,B}}{K\_{t,A}}\\sigma\_B \\sqrt{\\pi c} \\beta\_A
\\end{aligned}$$

----
## example 6 (p. 86)
![See p. 86, there is a short through crack on the edge of a 0.5" deep notch on a 5 inch wide panel with a remote 12 ksi stress applied. The net section stress concentration factor is 2.8, while the global stress concentration factor for a similar panel with a hole is 3.1](images\example-86-6.jpg)

----
## long cracks on curved boundaries

-   As a crack becomes very large, the effect of the curved boundary diminishes
-   We find expressions for `$\beta_L$` (long crack) and `$\beta_S$` (short crack)
-   We connect `$\beta_S$` to `$\beta_L$` using a straight line from `$\beta_S$` to a tangent intersection with `$\beta_L$`

----
## long cracks on curved boundaries

![An off-centered hole (like before) has a crack that goes through it, such that the crack is becoming long relative to the hole. We label the distance from the left edge of the panel to the right edge of the hole e, while c is the length of the crack beginning at the right edge of the hole.](images\curved-long.svg)<!-- .element width="20%"-->

---
## example

-   Example [here](http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/examples/Long%20Cracks%20on%20Curved%20Boundaries.ipynb)

----
## group one

<div class="left">
![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is 0.1 inches long (on the right side of the hole).](images\curved-group1.svg)<!-- .element width="100%" -->
</div>
<div class="right">
<ul>
  <li>*c* = 0.75, *e* = 2.25, *r* = 0.5</li>
  <li> assume *a* is short and calculate $\beta$ for this case</li>
  <li> calculate in terms of $\beta$ for known state</li>
</ul>
</div>

----
## group two

<div class="left">
![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is considered to be long (on the right side of the hole).](images\curved-group2.svg)<!-- .element width="100%" -->
</div>
<div class="right">
<ul>
  <li>*c* = 0.75, *e* = 2.25, *r* = 0.5</li>
  <li> assume *a* is long and calculate $\beta$ for this case</li>
  <li> calculate in terms of $\beta$ for known state</li>
</ul>
</div>

----
## group three

<div class="left">
![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is 0.1 inches long (on the right side of the hole), but continues all the way to the edge on the left side of the hole.](images\curved-group3.svg)<!-- .element width="100%" -->
</div>
<div class="right">
<ul>
  <li>*c* = 0.75, *e* = 2.25, *r* = 0.5</li>
  <li> assume *a* is short and calculate $\beta$ for this case</li>
  <li> calculate in terms of $\beta$ for known state</li>
</ul>
</div>

----
## group four

<div class="left">
![A 3 inch panel is shown with a hole whose center is offset c from the left edge of the panel. The crack is considered long (on the right side of the hole), and continues all the way to the edge on the left side of the hole.](images\curved-group4.svg)<!-- .element width="100%" -->
</div>
<div class="right">
<ul>
  <li>*c* = 0.75, *e* = 2.25, *r* = 0.5</li>
  <li> assume *a* is long and calculate $\beta$ for this case</li>
  <li> calculate in terms of $\beta$ for known state</li>
</ul>
</div>

----
## discussion
Draw a sketch to show how we could use this method to find cracks of intermediate length near a curved boundary

---
# stress concentration factors

----
## centered hole tension - p. 82

![A plot of stress concentration factors near a hole, see text p. 82 or the interactive plots linked in the last slide.](images\kt-hole.png)

`$K_{tg}$` uses stress for the cross-sectional area if no hole was present, `$K_{tn}$` uses stress at the net section (subtracting hole area). *a* is the hole diameter, *W* is specimen width.

----
## off-center hole tension - p. 83

![A plot of stress concetration factors near an off-centered hole, see text p. 83 or the interactive plots linked in the last slide.](images\Kt-offcenter-hole.png)<!-- .element width="40%" -->

`$K_{tg}$` uses stress for the cross-sectional area if no hole was present, `$K_{tn}$` uses stress at the net section (subtracting hole area). c is the distance from the closest edge to the center of the hole, e is the distance from the farthest edge to the center of the hole, r is hole radius.

----
## bending of a bar with u-shaped notch - p. 84

![A plot of stress concentration factors in a bar with a u-shaped notch, see text p. 84 or the interactive plots linked in the last slide.](images\kt-bending-edge.png)

Nominal stress used for `$K_t$` is given by `$\sigma_{nom} = 6M/hd^2$` where *M* is applied bending moment, *h* is thickness, *d* is the net-section height (height minus notch depth). *D* is the height of the panel without a notch and *r* is the notch radius.

----
## tension of a stepped bar with shoulder fillets - p. 85

![A plot of stress concentration factors in a stepped bar with shoulder fillets, see text p. 85 or the interactive plots linked in the last slide.](images\fillet.png)<!-- .element width="70%" -->

*D* is the larger width (before the step), *d* is the width after the step. Nominal stress is `$\sigma_{nom} = P/hd$`, where *h* is specimen thickness. *r* is the fillet radius.

----
## interactive page

-   An interactive page with these plots can be accessed [here](http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/examples/Stress%20Concentration%20Factors.ipynb)

---
# plastic zone

----
## plastic zone

-   Previous developments assumed perfectly elastic materials
-   Most common materials have some plasticity
-   Any stress above the yield stress will undergo plastic deformation (no stress higher than *σ*<sub>*y*</sub> will be present in the material)

----
## plastic zone

-   Plasticity helps retard crack propagation due to residual stresses
-   After an overload, elastic regions will contract back to their undeformed shape
-   The region which has undergone plastic deformation, however, holds its deformed shape
-   This introduces a region of residual compressive stress near the crack tip
-   Before the crack can propagate, a stress needs to overcome this residual stress

----
## 2D problems

-   We often simplify the full 3D elasticity equations for planar problems
-   For very thin panels, we assume that all out-of-plane stresses are 0
-   This is called plane stress

$$\\begin{aligned}
  \\sigma\_z &= \\tau\_{xz} = \\tau\_{zy} = 0\\\\
  \\epsilon\_x &= \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E}\\\\
  \\epsilon\_y &= -\\nu \\frac{\\sigma\_x}{E} + \\frac{\\sigma\_y}{E}\\\\
  \\epsilon\_z &= -\\nu \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E}\\\\
  \\gamma\_{xy} &= \\frac{\\tau\_{xy}}{G}\\\\
  \\gamma\_{xz} &= \\gamma\_{yz} = 0
\\end{aligned}$$

----
## 2D problems

-   When instead a panel is very thick, we assume that any strains through the thickness are small relative to other strains
-   `$\epsilon_z = \gamma_{xz} = \gamma_{yz} = 0$`
-   This is known as plane strain
$$\\begin{aligned}
  \\epsilon\_x &= \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E} - \\nu \\frac{\\sigma\_z}{E}\\\\
  \\epsilon\_y &= -\\nu \\frac{\\sigma\_x}{E} + \\frac{\\sigma\_y}{E} - \\nu \\frac{\\sigma\_z}{E}\\\\
  0 &= -\\nu \\frac{\\sigma\_x}{E} - \\nu \\frac{\\sigma\_y}{E} + \\frac{\\sigma\_z}{E}\\\\
  \\gamma\_{xy} &= \\frac{\\tau\_{xy}}{G}\\\\
  \\gamma\_{xz} &= \\gamma\_{yz} = 0
\\end{aligned}$$

----
## Irwin's first approximation

-   If we recall the equation for opening stress (`$\sigma_y$`) near the crack tip
$$\\sigma\_y = \\frac{K\_I}{\\sqrt{2\\pi r}} \\cos \\frac{\\theta}{2} \\left(1+\\sin \\frac{\\theta}{2}\\sin \\frac{3\\theta}{2}\\right) \\tag{1.2}$$
-   In the plane of the crack, when `$\theta$` = 0 we find
$$\\sigma\_y = \\frac{K\_I}{\\sqrt{2\\pi r}}$$

----
## Irwin's first approximation

![](images\plastic-zone.svg)
TODO: figure plastic-zone

----
## Irwin's first approximation

-   We use *C* "Plastic Constraint Factor" to convert between Plane Strain and Plane Stress solutions

-   The plastic zone size can now be approximated by solving the equation `$\sigma_{yy}(r=r_p)=C\sigma_{ys}$`

$$\\begin{aligned}
  \\sigma\_{yy}(r=r\_p) &= C\\sigma\_{YS}\\\\
  \\frac{K\_I}{\\sqrt{2\\pi r\_p}} &= C\\sigma\_{YS}\\\\
  r\_p &= \\frac{1}{2\\pi} \\left(\\frac{K\_I}{C\\sigma\_{YS}}\\right)^2
\\end{aligned}$$

----
## Irwin's first approximation

-   For plane stress (thin panels) we let *C* = 1 and find *r*<sub>*p*</sub> as
$$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$
-   And for plane strain (thick panels) we let $C=\\sqrt{3}$ and find
$$r\_p = \\frac{1}{6\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

----
## Intermediate panels

-   For panels which lie between plane strain and plane stress states, we use the following expression to estimate the plastic zone size
$$r\_p = \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   Where *I* is defined as
$$I = 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   And 2 ≤ *I* ≤ 6

----
## Irwin's second approximation

-   If our material is perfectly elastic-plastic, no stresses above $C\sigma_{ys}$ will exist in the material
-   This ignores the strain energy (represented by the area under the curve) in the plastic zone

----
## Irwin's second approximation

![](images\plastic-missing.svg)
TODO: figure plastic-missing

----
## Irwin's second approximation

-   To account for the additional strain energy, Irwin considered a plastic zone size increased by some $\delta$
-   He also needed to adjust the stress function, and considered an equivalent crack tip in these calculations

----
## Irwin's second approximation

![](images\plastic-equivalent.svg)
plastic-equivalent
TODO: figure

----
## Irwin's second approximation

-   We need *A* = *B*, so we set them equivalent and solve for $\delta$.

$$\\begin{aligned}
  A &= \\int\_{0}^{r\_p} \\sigma\_{yy} dr - r\_p \\sigma\_{YS}\\\\
  &= \\int\_{0}^{r\_p} \\frac{K\_I}{\\sqrt{2\\pi r}} dr - r\_p \\sigma\_{YS}\\\\
  &= \\frac{K\_I}{\\sqrt{2\\pi}}\\int\_{0}^{r\_p} r^{-1/2} dr - r\_p \\sigma\_{YS}\\\\
  &= \\frac{2K\_I \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}
\\end{aligned}$$

-   We have already found *r*<sub>*p*</sub> as
$$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

----
## Irwin's second approximation

-   If we solve this for *K*<sub>*I*</sub> we find

$$K\_I = \\sqrt{2\\pi r\_p} \\sigma\_{YS}$$

-   We can now substitute back into the strain energy of A

$$\\begin{aligned}
  A &= \\frac{2\\sqrt{2\\pi r\_p} \\sigma\_{YS} \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}\\\\
  &= 2 \\sigma\_{YS} r\_p- r\_p \\sigma\_{YS}\\\\
  &= r\_p \\sigma\_{YS}
\\end{aligned}$$

----
## Irwin's second approximation

-   B is given simply as `$B=\delta \sigma_{ys}$` so we equate A and B to find $\delta$

$$\\begin{aligned}
  A &= B\\\\
  r\_p \\sigma\_{YS} &= \\delta \\sigma\_{YS}\\\\
  r\_p &= \\delta
\\end{aligned}$$

-   This means the plastic zone size is simply 2*r*<sub>*p*</sub>
-   However, it also means that the effective crack length is *a* + *r*<sub>*p*</sub>
-   Since *r*<sub>*p*</sub> depends on *K*<sub>*I*</sub>, we must iterate a bit to find the "real" *r*<sub>*p*</sub> and *K*<sub>*I*</sub>

----
## Example

![](images\plastic-example.svg)
TODO: figure plastic-example

----
## equations
$$\\begin{aligned}
  \\beta &= \\left\[1.122 - 0.231 \\frac{a}{W} + 10.55 \\left(\\frac{a}{W}\\right)^2 - 21.71 \\left(\\frac{a}{W}\\right)^3 + 30.82 \\left(\\frac{a}{W}\\right)^4\\right\] \\tag{2.4a}\\\\
  I &= 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2 \\tag{4.13}\\\\
  r\_p &= \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2 \\tag{4.12}
\\end{aligned}$$
