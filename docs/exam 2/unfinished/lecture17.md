<span>schedule</span>

-   27 Mar - Strain-based Fatigue

-   29 Mar - Strain-based Fatigue, Project Abstract Due

-   3 Apr - Crack Propagation, HW7 Due

-   5 Apr - Crack Propagation

-   10-12 Apr - Crack Retardation, HW8 Due

-   17-19 Apr - Damage Tolerance, HW9 Due

-   Damage Tolerance, Special Topics, Final Projects

### outline

\[sections numbered\]

influence of notches
====================

<span>notch effects</span>

-   In this discussion, we use “notch” to refer to any geometric feature that increases the local stress (such as holes, fillets, grooves, etc.)

-   We discussed notches and stress concentration factors in terms of stress concentration factors

-   In our fatigue notation, *σ*<sub>*m**a**x*</sub> = *K*<sub>*t*</sub>*S*

-   This relates local stress to the average, nominal stress

-   The stress intensity factor can be used to characterize the “strength” of a notch

<span>notch effects</span>

-   We might expect the fatigue life of a notched specimen to be similar to a pristine specimen with *S*<sub>*a*, *p**r**i**s**t**i**n**e*</sub> = *σ*<sub>*m**a**x*, *n**o**t**c**h**e**d*</sub>

-   If we look at actual test data, however, this estimate would be overly conservative

-   Even when the stress is adjusted for some fatigue notch factor, *k*<sub>*f*</sub>, it is only valid at longer cycles (*N*<sub>*f*</sub> &gt; 10<sup>6</sup>)

-   
    $$k\_f = \\frac{\\sigma\_{ar}}{S\_{ar}}$$

-   Notches will have different effects, largely depending on their radius.

-   The maximum possible fatigue notch factor is *k*<sub>*f*</sub> = *k*<sub>*t*</sub>

<span>notch effects</span>

<img src="../Figures/notch_effect" alt="image" /> \[fig:notch\_effect\]

<span>notch sensitivity factor</span>

-   To avoid generating fatigue data for every possible notch configuration, some empirical relationships have been developed

-   A useful concept in these methods is the notch sensitivity factor

-   
    $$q = \\frac{k\_f - 1}{k\_t -1}$$

-   When *k*<sub>*f*</sub> = 1, *q* = 0, in which case the notch has no effect

-   When *k*<sub>*f*</sub> = *k*<sub>*t*</sub>, *q* = 1, in which case the notch has its maximum effect

<span>peterson notch sensitivity</span>

-   Peterson developed the following relationship

-   
    $$q = \\frac{1}{1+\\frac{\\alpha}{\\rho}}$$

-   Where *ρ* is the radius of the notch

-   *α* is a material property

-   |            Material           | *α* (mm) | *α* (in) |
    |:-----------------------------:|:--------:|:--------:|
    |        Aluminum alloys        |   0.51   |   0.02   |
    | Annealed or low-carbon steels |   0.25   |   0.01   |
    |  Quenched and tempered steels |   0.064  |  0.0025  |

<span>peterson notch sensitivy</span>

-   For high-strength steels, a more specific *α* estimate can be found
    $$\\begin{aligned}
            \\alpha &= 0.025 \\left(\\frac{2070 }{\\sigma\_u}\\right)^{1.8} & \\text{mm} & \\qquad \\sigma\_u \\ge 550 \\text{ MPa}\\\\
            \\alpha &= 0.001 \\left(\\frac{300 }{\\sigma\_u}\\right)^{1.8} & \\text{in} & \\qquad \\sigma\_u \\ge 80 \\text{ ksi}
            \\end{aligned}$$

-   *α* predictions are valid for bending and axial fatigue

-   For torsion fatigue, a good estimate can be found

-   
    *α*<sub>*t**o**r**s**i**o**n*</sub> = 0.6*α*

<span>alternative notch sensitivity formulation</span>

-   An alternative formulation for *q* was developed by Neuber

-   
    $$q = \\frac{1}{1+\\sqrt{\\frac{\\beta}{\\rho}}}$$

-   Where the material property *β* for steels is given by
    $$\\begin{aligned}
            \\log \\beta &= -\\frac{\\sigma\_u - 134}{586} & \\text{mm} & \\qquad \\sigma\_u \\le 1520 \\text{ MPa}\\\\
            \\log \\beta &= -\\frac{\\sigma\_u + 100}{85}& \\text{in} & \\qquad \\sigma\_u \\le 220 \\text{ ksi}
            \\end{aligned}$$

-   For aluminum use the chart MPa (ksi) and mm (in.)

    |                   |          |             |             |
    |:-----------------:|:--------:|:-----------:|:-----------:|
    | *S*<sub>*u*</sub> | 150 (22) |   300 (43)  |   600 (87)  |
    |        *β*        | 2 (0.08) | 0.6 (0.025) | 0.5 (0.015) |

<span>notch sensitivity factors</span>

-   While the above methods are useful, they should be regarded as estimates only

-   Physical complexities are not fully modeled by these methods

-   All of these have been developed for relatively “mild” notches

-   For sharp notches, best results are found by treating the notch as a crack

<span>example</span>

-   Find the notch sensitivity factor for the following scenario
    $$\\begin{aligned}
            \\rho &= 0.25 \\text{ in.}\\\\
            \\sigma\_m &= 0 \\text{ ksi}\\\\
            K\_t &= 3.0\\\\
            \\sigma\_u &= 84 \\text{ ksi}
            \\end{aligned}$$

strain based fatigue
====================

<span>strain based fatigue</span>

-   The strain based fatigue method uses local stresses and strains (instead of global, nominal values)

-   The strain-based method gives greater detail, and validity at lower cycles

-   It is still valid for high cycle fatigue (but gives same result as stress-based fatigue)

-   Does not include crack growth analysis or fracture mechanics

<span>strain life curve</span>

-   Similar to the S-N curves in stress-based fatigue analysis, we can plot the cyclic strain amplitude vs. number of cycles to failure

-   This is most commonly done using axial test machines (instead of rotating bending tests)

-   The test is run in strain control (not load control)

-   Generally plotted on log-log scale

<span>plastic and elastic strain</span>

-   We can separate the total strain into elastic and plastic components

-   
    *ϵ*<sub>*a*</sub> = *ϵ*<sub>*e**a*</sub> + *ϵ*<sub>*p**a*</sub>

<span>plastic strain</span>

<img src="../Figures/plastic_strain" alt="image" /> \[fig:plasticstrain\]

<span>hysteresis loops</span>

<img src="../Figures/hysteresis_loops" alt="image" /> \[fig:hysteresisloops\]

<span>cyclic stress strain curve</span>

-   While strain-life data will generally just report *ϵ*<sub>*a*</sub> and *ϵ*<sub>*p**a*</sub>, some will also tabulate a form for the cyclic stress-strain curve

-   
    $$\\epsilon\_a = \\frac{\\sigma\_a}{E} + \\left(\\frac{\\sigma\_a}{H^\\prime}\\right)^{\\frac{1}{n^\\prime}}$$

<span>plastic and elastic strain</span>

-   On strain life curves, the strain is often plotted three times per each experiment

-   Once for total strain, once for plastic strain, and once for elastic strain

-   Since plastic strain and elastic strain vary by the number of cycles, a hysteresis loop from half the fatigue life is generally used

-   This is considered representative of stable behavior

<span>experimental data</span>

<img src="../Figures/strain-life" alt="image" /> \[fig:strain-life\]

<span>trends</span>

<img src="../Figures/elastic-plastic" alt="image" /> \[fig:elastic-plastic\]

<span>lines</span>

-   We notice that the data for elastic and plastic strains are represented by straight lines, in the log-log scale

-   If we recall the form used for a straight line in log-log plots for S-N curves:

-   
    *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>

-   We can convert this to find the elastic component of strain

-   
    $$\\label{eq:elastic}
            \\epsilon\_{ea} = \\frac{\\sigma\_f^\\prime}{E} (2N\_f)^b$$

<span>lines</span>

-   We can use the same form with new constants for the plastic component of strain

-   
    *ϵ*<sub>*p**a*</sub> = *ϵ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*c*</sup>

-   We can combine \[eq:elastic\] with \[eq:plastic\] to find the total strain-life curve

-   
    $$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E} (2N\_f)^b + \\epsilon\_f^\\prime (2 N\_f)^c$$

<span>example</span>

| *ϵ*<sub>*a*</sub> | *σ*<sub>*a*</sub> (MPa) | *ϵ*<sub>*p**a*</sub> |  *N*<sub>*f*</sub>|
|:-----------------:|:-----------------------:|:--------------------:|------------------:|
|       0.0202      |           631           |        0.01695       |                227|
|       0.0100      |           574           |        0.00705       |               1030|
|       0.0045      |           505           |        0.00193       |               6450|
|       0.0030      |           472           |        0.00064       |              22250|
|       0.0023      |           455           |       (0.00010)      |             110000|

<span>transition life</span>

-   With the strain-based fatigue method we are better equipped to discuss the difference between high and low-cycle fatigue

-   Low-cycle fatigue is dominated by plastic effects, while high-cycle fatigue has little plasticity

-   We can find the intersection of the plastic strain and elastic strain lines

-   This point is *N*<sub>*t*</sub>, the transition fatigue life

-   
    $$N\_t = \\frac{1}{2}\\left(\\frac{\\sigma\_f^\\prime}{\\epsilon\_f^\\prime}\\right)^{\\frac{1}{c-b}}$$

<span>inconsistencies in constants</span>

-   If we consider the equation for the cyclic stress train curve
    $$\\epsilon\_a = \\frac{\\sigma\_a}{E} + \\left(\\frac{\\sigma\_a}{H^\\prime}\\right)^{\\frac{1}{n^\\prime}}$$

-   We can consider the plastic portion and solve for *σ*<sub>*a*</sub>
    *σ*<sub>*a*</sub> = *H*<sup>′</sup>*ϵ*<sub>*p**a*</sub><sup>*n*<sup>′</sup></sup>

<span>inconsistencies in constants</span>

-   We can eliminate 2*N*<sub>*f*</sub> from the plastic strain equation
    *ϵ*<sub>*p**a*</sub> = *ϵ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*c*</sup>

-   By solving the stress-life relationship for 2*N*<sub>*f*</sub>
    *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>
     and substituting that into the plastic strain

-   We then compare with  \[eq:stress-life\] and find

    $$\\begin{aligned}
                H^\\prime &= \\frac{\\sigma\_f^\\prime}{(\\epsilon\_f^\\prime)^{b/c}}\\\\
                n^\\prime &= \\frac{b}{c}
                \\end{aligned}$$

<span>inconsistencies in constants</span>

-   However, in practice these constants are fit from different curves

-   In some cases there can be large inconsistencies in these values

-   One cause for this is data that do not lie on a straight line in the log-log domain

-   For ductile materials at short lives, the true stresses and strains may differ significantly from engineering stress and strain

variable amplitude strains
==========================

<span>variable amplitdue strains</span>

-   As with stresses, we can apply variable amplitude strains

-   However, when the change is made will affect whether there is a tensile or compressive mean stress

<span>compressive mean</span>

<img src="../Figures/compressive_mean" alt="image" style="width:80.0%" />

<span>tensile mean</span>

<img src="../Figures/tensile_mean" alt="image" style="width:80.0%" />

<span>cycle counting</span>

-   In all fatigue methods (stress, strain, and crack propagation) the way we count load cycles can have an effect on our results

-   To avoid being non-conservative, we need to always count the largest amplitudes first

-   We will discuss some specific cycle-counting algorithms during crack propagation

<span>cycle counting</span>

<img src="../Figures/cycle_counting" alt="image" style="width:80.0%" />

general trends
==============

<span>true fracture strength</span>

-   We can consider a tensile test as a fatigue test with *N*<sub>*f*</sub> = 0.5

-   We would then expect the true fracture strength $\\tilde{\\sigma}\_f \\approx \\sigma\_f^\\prime$

-   And similarly for strain $\\tilde{\\epsilon}\_f \\approx \\epsilon\_f^\\prime$

<span>ductile materials</span>

-   Since ductile materials experience large strains before failure, we expect relatively large *ϵ*<sub>*f*</sub><sup>′</sup> and relatively small *σ*<sub>*f*</sub><sup>′</sup>

-   This will cause a less steep slope in the plastic strain line

-   In turn this intersects with the elastic strain line much later, resulting a longer transition life for ductile materials

<span>brittle materials</span>

-   Brittle materials exhibit the opposite effect, with relatively low *ϵ*<sub>*f*</sub><sup>′</sup> and relatively high *σ*<sub>*f*</sub><sup>′</sup>

-   This results in a steeper plastic strain line

-   And shorter transition life

<span>tough materials</span>

-   Tough materials have intermediate values for both *ϵ*<sub>*f*</sub><sup>′</sup> and *σ*<sub>*f*</sub><sup>′</sup>

-   This gives a transition life somewhere between brittle and ductile materials

-   It is also noteworthy that strain-life for many metals pass through the point *ϵ*<sub>*a*</sub> = 0.01 and *N*<sub>*f*</sub> = 1000 cycles

-   Steels also follow a trend with Brinell Hardness, the higher they are on the HB scale, the lower their transition life

<span>typical property ranges</span>

-   Most common engineering materials have −0.8 &lt; *c* &lt; −0.5, with most values being very close to *c* = −0.6

-   The elastic strain slope generally has *b* = −0.085

-   A “steep” elastic slope is around *b* = −0.12, common in soft metals

-   While “shallow” slopes are around *b* = −0.05, common for hardened metals


