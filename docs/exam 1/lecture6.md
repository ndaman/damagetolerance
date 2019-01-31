## AE 737: Mechanics of Damage Tolerance
Lecture 6 - Plastic Zone

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 7, 2019

----
## schedule

- 7 Feb - Plastic Zone, Homework 2 Due
- 12 Feb - Fracture Toughness
- 14 Feb - Fracture Toughness, Homework 3 Due
- 19 Feb - Residual Strength

----
## outline
- plastic zone
- plastic stress intensity ratio
- plastic zone shape
- group problems

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

----
## plane stress

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

----
## plane strain

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
-   In the plane of the crack, when `$\theta=0$` we find
$$\\sigma\_y = \\frac{K\_I}{\\sqrt{2\\pi r}}$$

----
## Irwin's first approximation

![A figure showing the opening stress near the crack tip. At some distance, rp away from the tip the stress is equal to the yield stress of the material times some constant C.](images\plastic-zone.svg)<!-- .element width="50%" -->

----
## Irwin's first approximation

<div class="left">
<ul>
<li> We use *C*, the *Plastic Constraint Factor* to convert between Plane Strain and Plane Stress solutions</li>
<li> The plastic zone size can now be approximated</li>
</div>
<div class="right">
$$\\begin{aligned}
  \\sigma\_{yy}(r=r\_p) &= C\\sigma\_{YS}\\\\
  \\frac{K\_I}{\\sqrt{2\\pi r\_p}} &= C\\sigma\_{YS}\\\\
  r\_p &= \\frac{1}{2\\pi} \\left(\\frac{K\_I}{C\\sigma\_{YS}}\\right)^2
\\end{aligned}$$
</div>

----
## Irwin's first approximation

-   For plane stress (thin panels) we let $C=1$ and find *r*<sub>*p*</sub> as
$$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$
-   And for plane strain (thick panels) we let $C=\\sqrt{3}$ and find
$$r\_p = \\frac{1}{6\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

----
## Intermediate panels

-   For panels which lie between plane strain and plane stress states, we use the following expression to estimate the plastic zone size
$$r\_p = \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   Where *I* is defined as
$$I = 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   And `$2 \le I \le 6$`

----
## Irwin's second approximation

-   If our material is perfectly elastic-plastic, no stresses above $C\sigma_{ys}$ will exist in the material
-   This ignores the strain energy (represented by the area under the curve) in the plastic zone

----
## Irwin's second approximation

![The previous drawing of stress near the crack it is repeated, but the area above the yield stress is highlighted, as this strain energy would be missing if we ignored it, creating an imbalance.](images\plastic-missing.svg)<!-- .element width="50%" -->

----
## Irwin's second approximation

-   To account for the additional strain energy, Irwin considered a plastic zone size increased by some $\delta$
-   He also needed to adjust the stress function, and considered an equivalent crack tip in these calculations

----
## Irwin's second approximation

![In this plot of the stress near the crack tip, the stress is shifted by some amount, delta, such that the extra area under the curve by the shifted amount is equal to the area missing from the portion above the yield stress.](images\plastic-equivalent.svg)<!-- .element width="50%" -->

----
## Irwin's second approximation

<div class="left">
We need *A*=*B*, so we set them equivalent and solve for $\delta$.
</div>
<div class="right">
$$\\begin{aligned}
  A &= \\int\_{0}^{r\_p} \\sigma\_{yy} dr - r\_p \\sigma\_{YS}\\\\
  &= \\int\_{0}^{r\_p} \\frac{K\_I}{\\sqrt{2\\pi r}} dr - r\_p \\sigma\_{YS}\\\\
  &= \\frac{K\_I}{\\sqrt{2\\pi}}\\int\_{0}^{r\_p} r^{-1/2} dr - r\_p \\sigma\_{YS}\\\\
  &= \\frac{2K\_I \\sqrt{r\_p}}{\\sqrt{2\\pi}}- r\_p \\sigma\_{YS}
\\end{aligned}$$
</div>

----
## Irwin's second approximation

-   We have already found *r*<sub>*p*</sub> as
$$r\_p = \\frac{1}{2\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2$$

-   If we solve this for *K*<sub>*I*</sub> we find

$$K\_I = \\sqrt{2\\pi r\_p} \\sigma\_{YS}$$

----
## Irwin's second approximation

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

----
## Irwin's second approximation

-   This means the plastic zone size is simply 2*r*<sub>*p*</sub>
-   However, it also means that the effective crack length is *a*+*r*<sub>*p*</sub>
-   Since *r*<sub>*p*</sub> depends on *K*<sub>*I*</sub>, we must iterate a bit to find the "real" *r*<sub>*p*</sub> and *K*<sub>*I*</sub>

----
## Example

![An edge crack of length a in a panel of width W is subjected to a remote load](images\plastic-example.svg)

----
## equations

$$\\begin{aligned}
  \\beta &= \\left\[1.122 - 0.231 \\frac{a}{W} + 10.55 \\left(\\frac{a}{W}\\right)^2 - 21.71 \\left(\\frac{a}{W}\\right)^3 + 30.82 \\left(\\frac{a}{W}\\right)^4\\right\] \\\\
  I &= 6.7 - \\frac{1.5}{t}\\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2 \\\\
  r\_p &= \\frac{1}{I\\pi} \\left(\\frac{K\_I}{\\sigma\_{YS}}\\right)^2
\\end{aligned}$$

---
# plastic stress intensity ratio

----
## plastic stress intensity ratio

-   Engineers often use stress intensity to decide which material to use for a certain application
-   The ratio of plastic stress intensity to elastic stress intensity, as a function of yield stress over applied stress, can help illustrate the effects of plasticity for different materials.

----
## plastic stress intensity ratio

<div class="left">
For an infinitely wide center-cracked panel, we can solve for *K*<sub>*Ie*</sub>/*K*<sub>*I*</sub> symbolically, in plane stress
</div>
<div class="right">
$$\\begin{aligned}
  K\_I &= \\sigma \\sqrt{\\pi a}\\\\
  K\_{Ie} &= \\sigma \\sqrt{\\pi(a+r\_p)}\\\\
  r\_p &= \\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\\\
  K\_{Ie} &= \\sigma \\sqrt{\\pi \\left(a+\\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\right)}
\\end{aligned}$$
</div>

----
## stress intensity ratio

$$\\begin{aligned}
  K\_{Ie}^2 &= \\sigma^2 \\pi \\left(a+\\frac{1}{2\\pi} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\right)\\\\
  K\_{Ie}^2 &= \\sigma^2 \\pi a+\\frac{\\sigma^2}{2} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2\\\\
  K\_{Ie}^2 - \\frac{\\sigma^2}{2} \\left( \\frac{K\_{Ie}}{\\sigma\_{YS}}\\right)^2 &= \\sigma^2 \\pi a\\\\
  K\_{Ie}^2\\left(1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}\\right) &= \\sigma^2 \\pi a
\\end{aligned}$$
Note: square both sides

----
## plastic stress intensity ratio

$$\\begin{aligned}
  K\_{Ie}^2 &= \\frac{\\sigma^2 \\pi a}{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}\\\\
  K\_{Ie} &= \\frac{\\sigma \\sqrt{\\pi a}}{\\sqrt{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}}\\\\
  K\_{Ie} &= \\frac{K\_I}{\\sqrt{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}}\\\\
  \\frac{K\_{Ie}}{K\_I} &= \\frac{1}{\\sqrt{1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}}}
\\end{aligned}$$

Note: We divide both sides by $\\left(1 - \\frac{\\sigma^2}{2 \\sigma\_{YS}^2}\\right)$

----
## plastic stress intensity ratio

-   We can also find the plastic stress intensity ratio numerically for finite width panels
-   Panel thickness, yield stress, panel width, crack length could all be variables in this case
-   Different heat treatments of metal alloys can give a different yield stress, with most other properties remaining the same
-   Typical crack lengths can vary based on inspection cycles

----
## example

<div class="left">
<ul>
<li> You are to design aninspection cycle for a panel </li>
<li> Consider the plastic stress intensity ratio, and the effect of varying crack lengths on it</li>
</ul>
</div>
<div class="right">
![an edge crack of length a in a 5 inch wide panel subjected to a remote stress of 8 ksi.](images\intensity-ratio-example.svg)<!-- .element width="70%"-->
</div>

----
## example
online example [here](http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/examples/Plastic%20stress%20intensity%20ratio.ipynb)

---
# plastic zone shape

----
## plastic zone shape

-   Although we drew a circle to give a rough idea of the plastic zone in Irwin's method, this solution was only 1D
-   We considered `$\theta=0$`.
-   It is advantageous to model the plastic zone shape, we will do so using two different yield theories
-   Von Mises and Tresca

----
## principal stresses

-   Principal stresses are often used in yield theories
-   We can determine the principal stresses near the crack tip as
$$\\begin{aligned}
  \\label{eq:principal}
  \\sigma\_1 &= \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)&\\\\
  \\sigma\_2 &= \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right)&\\\\
  \\sigma\_3 &= 0 &\\qquad \\text{(plane stress)}\\\\
  \\sigma\_3 &= \\frac{2\\nu K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2} &\\qquad \\text{(plane strain)}
\\end{aligned}$$

----
## Von Mises yield theory

-   The Von Mises yield theory is also known as the Distortion Energy Yield Theory
-   In this yield theory, we assume that failure or yielding occurs when the strain energy exceeds some threshold
-   It has been observed that hydrostatic pressure does not generally cause yielding
-   We separate the strain energy into two parts, volumetric and distortional
-   Only the distortional strain energy is used to determine the yield strength

----
## Von Mises yield theory

-   The distortional strain energy is given by
$$\\label{eq:distortion}
  W\_d = \\frac{1}{12}G\\left\[\\left(\\sigma\_1 - \\sigma\_2\\right)^2 + \\left(\\sigma\_2 - \\sigma\_3\\right)^2 +\\left(\\sigma\_3 - \\sigma\_1\\right)^2\\right\]$$
-   Which for a uniaxially loaded point becomes
$$W\_d = \\frac{1}{6}G\\sigma\_{YS}^2$$
-   We can equate the two cases and solve

$$\\begin{aligned}
  \\frac{1}{6}G\\sigma\_{YS}^2 &= \\frac{1}{12}G\\left\[\\left(\\sigma\_1 - \\sigma\_2\\right)^2 + \\left(\\sigma\_2 - \\sigma\_3\\right)^2 + \\left(\\sigma\_3 - \\sigma\_1\\right)^2\\right\]\\\\
  2 \\sigma\_{YS}^2 &= \\left(\\sigma\_1 - \\sigma\_2\\right)^2 + \\left(\\sigma\_2 - \\sigma\_3\\right)^2 + \\left(\\sigma\_3 - \\sigma\_1\\right)^2
\\end{aligned}$$

----
## Von Mises yield theory

-   We can find the plastic zone size, *r*<sub>*p*</sub> by substituting the principal stress relations into the distortional strain energy equation
-   In plane stress we find
$$\\begin{aligned}
  2 \\sigma\_{YS}^2 &= \\left( \\sigma\_1 - \\sigma\_2 \\right)^2 + \\left( \\sigma\_2 - 0 \\right)^2 + \\left(0 - \\sigma\_1\\right)^2
\\end{aligned}$$

----
## Von Mises yield theory
$$\\small{\\begin{aligned}
  2 \\sigma\_{YS}^2 &= \\left(\\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right) -\\right .\\\\
  &\\left .\\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right)\\right)^2 + \\\\
  &\\left(\\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right) - 0\\right)^2 + \\\\
  &\\left(0 - \\frac{K\_I}{\\sqrt{2\\pi r\_p}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)\\right)^2
\\end{aligned}}$$

----
## Von Mises yield theory

-   After solving we find
    $$r\_p = \\frac{K\_I^2}{2\\pi \\sigma^2\_{YS}} \\cos^2 \\frac{\\theta}{2} \\left(1 + 3\\sin^2 \\frac{\\theta}{2}\\right)$$
-   We can similarly solve for *r*<sub>*p*</sub> in plane strain to find
    $$r\_p = \\frac{K\_I^2}{2\\pi \\sigma^2\_{YS}} \\cos^2 \\frac{\\theta}{2} \\left(1 -4\\nu + 4\\nu^2 + 3\\sin^2 \\frac{\\theta}{2}\\right)$$

----
## Tresca yield theory

-   Tresca yield theory assumes that yielding begins when the maximum shear stress reaches a critical value
-   In uniaxial tension this gives
$$\\tau\_0 = \\tau\_{max} = \\frac{1}{2}\\left(\\sigma\_{max} - \\sigma\_{min}\\right) = \\frac{1}{2} \\left(\\sigma\_{YS} - 0\\right) = \\frac{\\sigma\_{YS}}{2}$$

----
## Tresca yield theory

-   Using the results for principal stress we found previously, we see that

$$\\begin{aligned}
  \\sigma\_{max} &= \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)\\\\
  \\sigma\_{min} &= 0
\\end{aligned}$$

-   We can substitute and solve as before to find
$$r\_p = \\frac{K\_I^2}{2 \\pi \\sigma\_{YS}^2}\\cos^2 \\frac{\\theta}{2}\\left(1+\\sin \\frac{\\theta}{2}\\right)^2$$

----
## Tresca yield theory

-   In plane strain, it is not clear whether `$\sigma_2$` or `$\sigma_3$` will be `$\sigma_{min}$`
-   We can solve for when `$\sigma_2$` will be `$\sigma_{min}$`
$$\\begin{aligned}
  \\sigma\_2 &&lt; \\sigma\_3\\\\
  \\frac{K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\left(1-\\sin \\frac{\\theta}{2}\\right) &&lt; \\frac{2\\nu K\_I}{\\sqrt{2\\pi r}}\\cos \\frac{\\theta}{2}\\\\
  1-\\sin \\frac{\\theta}{2} &&lt; 2\\nu\\\\
  \\theta\_t &gt; 2 \\sin^{-1} (1-2\\nu)
\\end{aligned}$$

----
## Tresca yield theory

-   When `$2\pi - \theta_t < \theta < \theta_t$`, `$\sigma_2$` is the minimum, otherwise `$\sigma_3$` is the minimum
-   Note: Error(s) in text p. 101
-   Once we have chosen the appropriate minimum stress (`$\sigma_2$` or `$\sigma_3$`), we can solve for *r*<sub>*p*</sub> as before

----
## Tresca yield theory

$$\\begin{aligned}
  r\_p &= \\frac{2 K\_I^2}{\\pi \\sigma\_{YS}^2} \\cos^2 \\frac{\\theta}{2} \\sin^2 \\frac{\\theta}{2} & \\theta\_t &lt; \\theta &lt; 2\\pi - \\theta\_t\\\\
  r\_p &= \\frac{K\_I^2}{2\\pi \\sigma\_{YS}^2}\\cos^2 \\frac{\\theta}{2}\\left(1 - 2\\nu + \\sin \\frac{\\theta}{2}\\right)^2 & \\theta &lt; \\theta\_t, \\theta &gt; 2\\pi - \\theta\_t
\\end{aligned}$$

----
## 3D plastic zone shape

![An image showing the 3D plastic zone shape, which looks a little bit like a dumbell. The plastic zone is much larger near the surface, where the material behaves as if in plane stress. In the center, where the material behaves more like plane strain, the plastic zone is much smaller.](images\dumbell.png)

----
## example
online example [here](http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/examples/Plastic%20Zone%20Shape.ipynb)

---
# group problems

----
## group one

-   Calculate the plastic zone size for an infinitely wide, center-cracked panel
-   Consider a crack-length of 4 cm, and a yield strength of `$\sigma_{YS}=55 \text{ MPa}$`, with an applied load of `$\sigma = 20 \text{ MPa}$`
-   Assume the panel is very thin

----
## group two

-   Calculate the plastic zone size for an infinitely wide, center-cracked panel
-   Consider a crack-length of 4 cm, and a yield strength of `$\sigma_{YS}=55 \text{ MPa}$`, with an applied load of `$\sigma = 20 \text{ MPa}$`
-   Assume the panel is very thick

----
## group three

-   Calculate the plastic zone size for an infinitely wide, center-cracked panel
-   Consider a crack-length of 4 cm, and a yield strength of `$\sigma_{YS}=55 \text{ MPa}$`, with an applied load of `$\sigma = 20 \text{ MPa}$`
-   The panel thickness is *t* = 0.65 cm

----
## group four

-   Find the plastic stress intensity ratio for an infinitely wide, center-cracked panel
-   What factors will increase or decrease the plastic stress intensity ratio?
