## AE 737: Mechanics of Damage Tolerance
Lecture 15 - Stress based fatigue

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

March 26, 2019

----
## schedule

- 26 Mar - Stress-based fatigue, Project Abstract Due
- 28 Mar - Strain-based fatigue
- 2 Apr - Crack growth, HW6 Due
- 4 Apr - Crack growth


----
## outline

<!-- vim-markdown-toc GFM -->

* fatigue review
* influence of notches
* strain based fatigue
* variable amplitude strains
* general trends

<!-- vim-markdown-toc -->

---
# fatigue review

----
## group 1

-   A part from AISI 4340 in a typical "block" undergoes 100,000 cycles with *&sigma;*<sub>min</sub> = 0 ksi and *&sigma;*<sub>max</sub> = 100 ksi and an additional 10 cycles with *&sigma;*<sub>min</sub> = 50 ksi and *&sigma;*<sub>max</sub> = 200 ksi
-   How many "blocks" can this part support before failure?

----
## group 2

-   Use the S-N-P chart on p. 245 for 7075-T6 Aluminum
-   What is the probability of failure for 30 ksi at 10<sup>6</sup> cycles?
-   To ensure that 99% of parts do not fail, after how many cycles should a fully reversed load of 35 ksi be inspected?
-   How many cycles could the same part sustain if only 50% of parts are needed?

----
## group 3

-   The fatigue limit for AISI 4142 steel is 58 ksi for completely reversed fatigue loads.
-   What is the fatigue limit for fatigue loads with *&sigma;*<sub>*m*</sub> = 10, 20, 30 ksi?

----
## group 4

-   A material made of 2024-T4 Aluminum undergoes the following load cycle
    -   *&sigma;*<sub>*x*, min</sub> = 10, *&sigma;*<sub>*x*, max</sub> = 50
    -   *&sigma;*<sub>*y*, min</sub> = −20, *&sigma;*<sub>*y*, max</sub> = 20
    -   *&tau;*<sub>*x**y*, min</sub> = 0, *τ*<sub>*xy*, max</sub> = 30
-   How many cycles can it support before failure?

---
# influence of notches

----
## notch effects

-   In this discussion, we use "notch" to refer to any geometric feature that increases the local stress (such as holes, fillets, grooves, etc.)
-   We discussed notches and stress concentration factors in terms of stress concentration factors
-   In our fatigue notation, *&sigma;*<sub>max</sub> = *K*<sub>*t*</sub>*S*
-   This relates local stress to the average, nominal stress
-   The stress intensity factor can be used to characterize the "strength" of a notch

----
## notch effects

-   We might expect the fatigue life of a notched specimen to be similar to a pristine specimen with *S*<sub>*a*, pristine</sub> = *&sigma;*<sub>max, notched</sub>
-   If we look at actual test data, however, this estimate would be overly conservative
-   Even when the stress is adjusted for some fatigue notch factor, *k*<sub>*f*</sub>, it is only valid at longer cycles (*N*<sub>*f*</sub> &gt; 10<sup>6</sup>)

----
## notch effects

$$k\_f = \\frac{\\sigma\_{ar}}{S\_{ar}}$$
-   Notches will have different effects, largely depending on their radius.
-   The maximum possible fatigue notch factor is *k*<sub>*f*</sub> = *k*<sub>*t*</sub>

----
## notch effects

![](..\images\notch_effect.jpg) <!-- .element width="50%" -->

----
## notch sensitivity factor

-   To avoid generating fatigue data for every possible notch configuration, some empirical relationships have been developed
-   A useful concept in these methods is the notch sensitivity factor
    $$q = \\frac{k\_f - 1}{k\_t -1}$$
-   When *k*<sub>*f*</sub> = 1, *q* = 0, in which case the notch has no effect
-   When *k*<sub>*f*</sub> = *k*<sub>*t*</sub>, *q* = 1, in which case the notch has its maximum effect

----
## peterson notch sensitivity

-   Peterson developed the following relationship
    $$q = \\frac{1}{1+\\frac{\\alpha}{\\rho}}$$
-   Where *&rho;* is the radius of the notch
-   *&alpha;* is a material property

----
## peterson notch sensitivity

|            Material           | *&alpha;* (mm) | *&alpha;* (in) |
|:-----------------------------:|:--------:|:--------:|
|        Aluminum alloys        |   0.51   |   0.02   |
| Annealed or low-carbon steels |   0.25   |   0.01   |
|  Quenched and tempered steels |   0.064  |  0.0025  |

----
## peterson notch sensitivity

-   For high-strength steels, a more specific *&alpha;* estimate can be found
$$\\begin{aligned}
  \\alpha &= 0.025 \\left(\\frac{2070 }{\\sigma\_u}\\right)^{1.8} & \\text{mm} & \\qquad \\sigma\_u \\ge 550 \\text{ MPa}\\\\
  \\alpha &= 0.001 \\left(\\frac{300 }{\\sigma\_u}\\right)^{1.8} & \\text{in} & \\qquad \\sigma\_u \\ge 80 \\text{ ksi}
\\end{aligned}$$

----
## peterson notch sensitivity

-   *&alpha;* predictions are valid for bending and axial fatigue
-   For torsion fatigue, a good estimate can be found
    *&alpha;*<sub>torsion</sub> = 0.6*&alpha;*

----
## alternative 

-   An alternative formulation for *q* was developed by Neuber
$$q = \\frac{1}{1+\\sqrt{\\frac{\\beta}{\\rho}}}$$
-   Where the material property *&beta;* for steels is given by
$$\\begin{aligned}
  \\log \\beta &= -\\frac{\\sigma\_u - 134}{586} & \\text{mm} & \\qquad \\sigma\_u \\le 1520 \\text{ MPa}\\\\
  \\log \\beta &= -\\frac{\\sigma\_u + 100}{85}& \\text{in} & \\qquad \\sigma\_u \\le 220 \\text{ ksi}
\\end{aligned}$$

----
## alternative 

-   For aluminum use the chart MPa (ksi) and mm (in.)

|                   |          |             |             |
|:-----------------:|:--------:|:-----------:|:-----------:|
| *S*<sub>*u*</sub> | 150 (22) |   300 (43)  |   600 (87)  |
|        *&beta;*        | 2 (0.08) | 0.6 (0.025) | 0.5 (0.015) |

----
## notch sensitivity factors

-   While the above methods are useful, they should be regarded as estimates only
-   Physical complexities are not fully modeled by these methods
-   All of these have been developed for relatively "mild" notches
-   For sharp notches, best results are found by treating the notch as a crack

----
## example

-   Find the notch sensitivity factor for the following scenario
$$\\begin{aligned}
  \\rho &= 0.25 \\text{ in.}\\\\
  \\sigma\_m &= 0 \\text{ ksi}\\\\
  K\_t &= 3.0\\\\
  \\sigma\_u &= 84 \\text{ ksi}
\\end{aligned}$$

---
# strain based fatigue

----
## strain based fatigue

-   The strain based fatigue method uses local stresses and strains (instead of global, nominal values)
-   The strain-based method gives greater detail, and validity at lower cycles
-   It is still valid for high cycle fatigue (but gives same result as stress-based fatigue)
-   Does not include crack growth analysis or fracture mechanics

----
## strain life curve

-   Similar to the S-N curves in stress-based fatigue analysis, we can plot the cyclic strain amplitude vs. number of cycles to failure
-   This is most commonly done using axial test machines (instead of rotating bending tests)
-   The test is run in strain control (not load control)
-   Generally plotted on log-log scale

----
## plastic and elastic strain

-   We can separate the total strain into elastic and plastic components
    *ϵ*<sub>*a*</sub> =ϵ<sub>*ea*</sub> +ϵ<sub>*pa*</sub>

----
## plastic strain

![](../images/plastic_strain.PNG)

----
## hysteresis loops

![](../images/hysteresis_loops.PNG)

----
## cyclic stress strain curve

-   While strain-life data will generally just report *ϵ*<sub>*a*</sub> and *ϵ*<sub>*pa*</sub>, some will also tabulate a form for the cyclic stress-strain curve
    $$\\epsilon\_a = \\frac{\\sigma\_a}{E} + \\left(\\frac{\\sigma\_a}{H^\\prime}\\right)^{\\frac{1}{n^\\prime}}$$

----
## plastic and elastic strain

-   On strain life curves, the strain is often plotted three times per each experiment
-   Once for total strain, once for plastic strain, and once for elastic strain
-   Since plastic strain and elastic strain vary by the number of cycles, a hysteresis loop from half the fatigue life is generally used
-   This is considered representative of stable behavior

----
## experimental data

![](../images/strain-life.jpg) <!-- .element width="40%" -->

----
## trends

![](../images/elastic-plastic.jpg) <!-- .element width="50%" -->

----
## lines

-   We notice that the data for elastic and plastic strains are represented by straight lines, in the log-log scale
-   If we recall the form used for a straight line in log-log plots for S-N curves:
    *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>
-   We can convert this to find the elastic component of strain
    $$\\epsilon\_{ea} = \\frac{\\sigma\_f^\\prime}{E} (2N\_f)^b$$

----
## lines

-   We can use the same form with new constants for the plastic component of strain
    *ϵ*<sub>*pa*</sub> = *ϵ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*c*</sup>
-   We can combine the elastic and plastic portions to find the total strain-life curve
    $$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E} (2N\_f)^b + \\epsilon\_f^\\prime (2 N\_f)^c$$

----
## example

| *ϵ*<sub>*a*</sub> | *σ*<sub>*a*</sub> (MPa) | *ϵ*<sub>*p**a*</sub> |  *N*<sub>*f*</sub>|
|:-----------------:|:-----------------------:|:--------------------:|------------------:|
|       0.0202      |           631           |        0.01695       |                227|
|       0.0100      |           574           |        0.00705       |               1030|
|       0.0045      |           505           |        0.00193       |               6450|
|       0.0030      |           472           |        0.00064       |              22250|
|       0.0023      |           455           |       (0.00010)      |             110000|

----
## transition life

-   With the strain-based fatigue method we are better equipped to discuss the difference between high and low-cycle fatigue
-   Low-cycle fatigue is dominated by plastic effects, while high-cycle fatigue has little plasticity
-   We can find the intersection of the plastic strain and elastic strain lines
-   This point is *N*<sub>*t*</sub>, the transition fatigue life
    $$N\_t = \\frac{1}{2}\\left(\\frac{\\sigma\_f^\\prime}{\\epsilon\_f^\\prime}\\right)^{\\frac{1}{c-b}}$$

----
## inconsistencies in constants

-   If we consider the equation for the cyclic stress train curve
    $$\\epsilon\_a = \\frac{\\sigma\_a}{E} + \\left(\\frac{\\sigma\_a}{H^\\prime}\\right)^{\\frac{1}{n^\\prime}}$$
-   We can consider the plastic portion and solve for *σ*<sub>*a*</sub>
    *σ*<sub>*a*</sub> = *H*<sup>′</sup>*ϵ*<sub>*pa*</sub><sup>*n*<sup>′</sup></sup>

----
## inconsistencies in constants

-   We can eliminate 2*N*<sub>*f*</sub> from the plastic strain equation
    *ϵ*<sub>*pa*</sub> = *ϵ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*c*</sup>
-   By solving the stress-life relationship for 2*N*<sub>*f*</sub>
    *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>
     and substituting that into the plastic strain

----
## inconsistencies in constants

-   We then compare with stress-life equations and find
$$\\begin{aligned}
 H^\\prime &= \\frac{\\sigma\_f^\\prime}{(\\epsilon\_f^\\prime)^{b/c}}\\\\
 n^\\prime &= \\frac{b}{c}
\\end{aligned}$$

----
## inconsistencies in constants

-   However, in practice these constants are fit from different curves
-   In some cases there can be large inconsistencies in these values
-   One cause for this is data that do not lie on a straight line in the log-log domain
-   For ductile materials at short lives, the true stresses and strains may differ significantly from engineering stress and strain

---
# variable amplitude strains

----
## variable amplitdue strains

-   As with stresses, we can apply variable amplitude strains
-   However, when the change is made will affect whether there is a tensile or compressive mean stress

----
## compressive mean

![](../images/compressive_mean.jpg) <!-- .element width="50%" -->

----
## tensile mean

![](../images/tensile_mean.jpg) <!-- .element width="50%" -->

----
## cycle counting

-   In all fatigue methods (stress, strain, and crack propagation) the way we count load cycles can have an effect on our results
-   To avoid being non-conservative, we need to always count the largest amplitudes first
-   We will discuss some specific cycle-counting algorithms during crack propagation

----
## cycle counting

![](../images/cycle_counting.jpg)

---
# general trends

----
## true fracture strength

-   We can consider a tensile test as a fatigue test with *N*<sub>*f*</sub> = 0.5
-   We would then expect the true fracture strength $\\tilde{\\sigma}\_f \\approx \\sigma\_f^\\prime$
-   And similarly for strain $\\tilde{\\epsilon}\_f \\approx \\epsilon\_f^\\prime$

----
## ductile materials

-   Since ductile materials experience large strains before failure, we expect relatively large *ϵ*<sub>*f*</sub><sup>′</sup> and relatively small *σ*<sub>*f*</sub><sup>′</sup>
-   This will cause a less steep slope in the plastic strain line
-   In turn this intersects with the elastic strain line much later, resulting a longer transition life for ductile materials

----
## brittle materials

-   Brittle materials exhibit the opposite effect, with relatively low *ϵ*<sub>*f*</sub><sup>′</sup> and relatively high *σ*<sub>*f*</sub><sup>′</sup>
-   This results in a steeper plastic strain line
-   And shorter transition life

----
## tough materials

-   Tough materials have intermediate values for both *ϵ*<sub>*f*</sub><sup>′</sup> and *σ*<sub>*f*</sub><sup>′</sup>
-   This gives a transition life somewhere between brittle and ductile materials
-   It is also noteworthy that strain-life for many metals pass through the point *ϵ*<sub>*a*</sub> = 0.01 and *N*<sub>*f*</sub> = 1000 cycles
-   Steels also follow a trend with Brinell Hardness, the higher they are on the HB scale, the lower their transition life

----
## typical property ranges

-   Most common engineering materials have −0.8 &lt; *c* &lt; −0.5, with most values being very close to *c* = −0.6
-   The elastic strain slope generally has *b* = −0.085
-   A “steep” elastic slope is around *b* = −0.12, common in soft metals
-   While “shallow” slopes are around *b* = −0.05, common for hardened metals


