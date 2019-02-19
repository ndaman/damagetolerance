## AE 737: Mechanics of Damage Tolerance
Lecture 10 - Residual Strength

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 26, 2019

----
## schedule

- 26 Feb - Residual Strength, Homework 4 Due
- 28 Feb - Multiple Site Damage, Mixed-Mode Fracture
- 5 Mar - Exam Review, Homework 5 Due
- 7 Mar - Exam 1

----
## outline
<!-- TOC START min:1 max:1 link:false update:true -->
- stiffeners
- severed stiffeners
- crack stoppers

<!-- TOC END -->

---
# stiffeners

----
## stiffened panels

-   In aircraft the skin/stringer system provides many benefits (resistance to buckling)
-   Stringers also act as stiffeners to resist crack propagation in the skin
-   Panels in these configurations are generally very wide relative to expected crack dimensions
-   Cracks are generally modeled either as centered between stiffeners or centered under a stiffener
-   We need to consider the residual strength of the panel, the stiffener, and the rivets

----
## centered between stiffeners
![A crack centered between two stiffeners. Remote stress is labeled S and the rivet pitch is labeled p, the spacing between stiffeners is b.](images\crack-under.svg) <!-- .element width="80%" -->

----
## centered under stiffener
![A crack centered under a stiffener. Remote stress is labeled S and the rivet pitch is labeled p, the spacing between stiffeners is b.](images\crack-between.svg)<!-- .element width="80%" -->

----
## remote stress

-   For equilibrium to be satisfied, we know that
$$\\left(\\frac{PL}{AE}\\right)\_{Skin} = \\left(\\frac{PL}{AE}\\right)\_{Stiffener}$$
-   Since *L* is the same, we find
$$\\frac{S}{E} = \\frac{S\_S}{E\_S}$$
-   Where the subscript <sub>*S*</sub> indicates stiffener values, we can express the remote stress in the stiffener as
$$S\_S = S \\frac{E\_S}{E}$$

----
## skin

-   The critical stress in the skin is determined the same way as it was in the residual strength chapter
-   The only exception is that the stiffener contributes to $\beta$
$$S\_C = \\frac{K\_C}{\\sqrt{\\pi a} \\beta}$$

----
## stiffener

-   The maximum stress in a stiffener will be increased near a crack
-   We represent the ratio of maximum force in stiffener to remote force with the Stiffener Load Factor, *L*

----
## stiffener

$$\\small{\\begin{aligned}
  L &= \\frac{\\text{max force in stiffener}}{\\text{remote force applied to stiffener}}\\\\
  &= \\frac{S\_{S,max}A\_S}{S\_S A\_S}\\\\
  &= \\frac{S\_{S,max}}{S \\frac{E\_S}{E}}\\\\
  L S \\frac{E\_S}{E} &= S\_{S,max}\\\\
  L S \\frac{E\_S}{E} &= \\sigma\_{YS}\\\\
  S\_C &= \\frac{\\sigma\_{YS} E}{L E\_S}
\\end{aligned}}$$

----
## rivet

-   We can define a similar rivet load factor to relate maximum stress in the rivet to remote stress in the skin

$$\\begin{aligned}
  L\_R &= \\frac{\\tau\_{max} A\_R}{S b t}\\\\
  L\_R &= \\frac{\\tau\_{YS} A\_R}{S b t}\\\\
  S\_c &= \\frac{\\tau\_{YS} A\_R}{L\_R b t}
\\end{aligned}$$

----
## finite element analysis

-   CC Poe found that panels could be related by a parameter he defines as $\mu$
$$\\mu = \\frac{A\_S E\_S}{A\_S E\_S + A E}$$
-   Where *A*<sub>*S*</sub> is the cross-sectional area of a stiffener, *E*<sub>*S*</sub> is stiffener modulus
-   *A* is the skin cross-sectional area (per stiffener) *A*=*bt* and *E* is the modulus of the skin

----
## finite element analysis

-   pp 167 - 178 give $\beta$, *L* and *L*<sub>*R*</sub> for various skin/stiffener configurations
-   These values were determined using a finite element model

----
## examples

-   quantitative example (p. 179-180)
-   qualitative notes on behavior (p. 181-182)
-   [worked](http://nbviewer.jupyter.org/github/ndaman/damagetolerance/blob/master/examples/stiffener%20example.ipynb)

---
# severed stiffeners

----
## failure in stiffener

-   Sometimes the stiffeners fail before the panel
-   T. Swift conducted some parametric studies on panels with a severed stiffener
-   When the crack is short (and near the severed stiffener) the residual strength is lower due to the broken stiffener
-   As the crack nears the next stiffener, residual strength is very similar to a panel with all stiffeners intact

----
## failure in stiffener

-   Swift considers the difference in stress at different points in the stiffener
-   Instead of one general load factor (*L*), he uses *SCFO* and *SCFI*
-   We can find the critical value of remote stress at the outer flange as
$$\\sigma\_C = \\frac{\\sigma\_U}{SCFO}$$
-   And similarly at the inner flange
$$\\sigma\_C = \\frac{\\sigma\_U}{SCFI}$$
-   Swift's parametric study did not consider rivet failure

----
## stiffener area

![](images\stiffener_area.jpg)

----
## stiffener spacing

![](images\stiffener_spacing.jpg)

----
## rivet spacing

![](images\rivet_spacing.jpg)

----
## strength and toughness increase

![](images\strength_increase.jpg)

----
## example

-   If we consider the case from Swift’s data most similar to our previous example:
$$\\begin{aligned}
  P &= 1.0 \\text{ in}\\\\
  A\_{st} &= 0.2538 \\text{ in}^2\\\\
  b &= 10.0 \\text{ in}\\\\
\\end{aligned}$$
-   So we use the tables for Case 10

---
# crack stoppers

----
## crack stopper

![](images\crack_stoppers.jpg)

----
## optimal crack stopper

-   Swift found that the ideal crack stopper has a cross-sectional area approximately equal to 1/4 the stiffener area
-   The ideal material was titanium (as opposed to steel or aluminum).
-   Aluminum did not transfer enough load to the stiffeners, steel transferred too much

----
## example

-   Compare cases 1, 3, and 5
