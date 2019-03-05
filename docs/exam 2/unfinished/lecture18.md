<span>schedule</span>

-   29 Mar - Strain-based Fatigue, Project Abstract Due

-   3 Apr - Crack Propagation, HW7 Due

-   5 Apr - Crack Propagation

-   10-12 Apr - Crack Retardation, HW8 Due

-   17-19 Apr - Damage Tolerance, HW9 Due

-   Damage Tolerance, Special Topics, Final Projects

### outline

\[sections numbered\]

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

<span>transition life</span>

-   With the strain-based fatigue method we are better equipped to discuss the difference between high and low-cycle fatigue

-   Low-cycle fatigue is dominated by plastic effects, while high-cycle fatigue has little plasticity

-   We can find the intersection of the plastic strain and elastic strain lines

-   This point is *N*<sub>*t*</sub>, the transition fatigue life

-   
    $$N\_t = \\frac{1}{2}\\left(\\frac{\\sigma\_f^\\prime}{E \\epsilon\_f^\\prime}\\right)^{\\frac{1}{c-b}}$$

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

mean stress effects
===================

<span>mean stress in strain-based fatigue</span>

-   In regions where plastic strain is significant, some applied mean stress is likely to be relaxed through cyclic plastic strain

-   When the plastic strain is not significant, mean stress will exist

-   Mean strain does not generally affect fatigue life

<span>morrow approach</span>

-   Recall the Morrow approach for mean stress effects from the stress-based method

-   
    $$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\frac{\\sigma\_m}{\\sigma\_f^\\prime} = 1$$

-   We can rearrange the equation such that

-   
    $$\\sigma\_a = \\sigma\_f^\\prime\\left\[\\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)^\\frac{1}{b}(2N\_f)\\right\]^b$$

<span>morrow approach</span>

-   If we compare to the stress-life equation (*σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>), we see that we can replace *N*<sub>*f*</sub> with

-   
    $$\\label{eq:nstar}
            N^\* = N\_f \\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)^\\frac{1}{b}$$

-   We can now substitute *N*<sup>\*</sup> for *N*<sub>*f*</sub> in the strain-life equation to find

-   
    $$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E} \\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)(2N\_f)^b + \\epsilon\_f^\\prime\\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)^\\frac{c}{b} (2 N\_f)^c$$

<span>morrow approach</span>

-   Graphically, we can use the Morrow approach very easily using only the zero-mean stress graph

-   From the zero-mean stress graph, find the point corresponding to your applied strain

-   For a non zero mean stress, this point represents (*ϵ*<sub>*a*</sub>, *N*<sup>\*</sup>), we can now solve for *N*<sub>*f*</sub> using \[eq:nstar\]

<span>modified morrow</span>

-   While the Morrow equation agrees very well with many data, some are better fit with a modification

-   In the modified version, it is assumed that the mean stress has no effect on the plastic term

-   
    $$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E}\\left(1-\\frac{\\sigma\_f}{\\sigma\_f^\\prime}\\right)(2N\_f)^b + \\epsilon\_f^\\prime (2N\_f)^c$$

-   There is no convenient solution method for this form, and it generally must be solved numerically, or plotted with many families of *σ*<sub>*m*</sub>

<span>smith watson topper</span>

-   The Smith, Watson, and Topper approach assumes that the life for any given state is dependent on the product *σ*<sub>*m**a**x*</sub>*ϵ*<sub>*a*</sub>

-   After some manipulation, this gives

-   
    $$\\sigma\_{max} \\epsilon\_a = \\frac{\\left(\\sigma\_f^\\prime\\right)^2}{E}(2N\_f)^{2b} + \\sigma\_f^\\prime \\epsilon\_f^\\prime (2N\_f)^{b+c}$$

-   This method can also be solved graphically if a plot of *σ*<sub>*m**a**x*</sub>*ϵ*<sub>*a*</sub> is made using zero-mean data. All we need to do is find the new *σ*<sub>*m**a**x*</sub>*ϵ*<sub>*a*</sub> point to find a new *N*<sub>*f*</sub>

<span>comparison</span>

-   All three methods discussed are in general use

-   The Morrow method is very good for steel

-   The modified Morrow method gives improved results in many materials

-   The SWT approach is very good for general use, but is non-conservative with a compressive mean stress

<span>example</span> p. 285

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

notches
=======

<span>fatigue notch factor</span>

-   We previously found expressions for stress-based fatigue analysis when notches are present

-   Due to yielding, the notch sensitivity is not the same for stress and strain controlled fatigue analysis

-   One simple approach to find the strain fatigue notch factor is to use
    $$K\_t = \\sqrt{K\_f^\\sigma K\_f^\\epsilon}$$

multiaxial loading
==================

<span>multiaxial loading</span>

-   Multi-axial loading in strain-based fatigue analysis is still an active field of research

-   We are currently only capable of handling proportional loads that are in-phase (i.e. have the same frequency)

-   If we consider the principal directions where *σ*<sub>2*a*</sub> = *λ**σ*<sub>1*a*</sub>, we find an expression for the strain-life as

-   
    $$\\epsilon\_{1a} = \\frac{\\frac{\\sigma\_f^\\prime}{E}(1-\\nu \\lambda)(2N\_f)^b + \\epsilon\_f^\\prime(1-0.5\\lambda)(2N\_f)^c}{\\sqrt{1-\\lambda+\\lambda^2}}$$

<span>stress triaxiality factor</span>

-   Another approach is to consider the stress triaxiality factor

-   
    $$T = \\frac{1+\\lambda}{\\sqrt{1-\\lambda+\\lambda^2}}$$

-   Three notable cases of this are

    1.  Pure planar shear: *λ* = −1, *T* = 0

    2.  Uniaxial stress: *λ* = 0, *T* = 1

    3.  Equal biaxial stress: *λ* = 1, *T* = 2

-   Marloff suggests the following inclusion of stress triaxiality

-   
    $$\\bar{\\epsilon\_a} = \\frac{\\sigma\_f^\\prime}{E}(2 N\_f)^b + 2^{1-T}\\epsilon\_f^\\prime(2N\_f)^c$$

other factors affecting fatigue
===============================

<span>factors affecting fatigue life</span>

-   Factors other than the stress/strain can effect fatigue life

-   At temperatures above one-half the melting temperature (absolute scale), creep-relaxation is significant

-   This will cause the strain/stress-life curves to become rate dependent

-   Occurs at room temperature for many materials (lead, tin, many polymers)

-   At a sufficiently elevated temperature for any material

<span>surface finish</span>

-   S-N curves (stress-based method) are highly sensitive to surface finish, samples are generally polished

-   Strain life curves are not very sensitive to surface finish or residual strength at short lives

-   The plastic deformation tends to remove residual stresses

-   In high-cycle fatigue, crack initiation is important (poor surface finish allows cracks to form earlier)

-   When plastic deformation is present (low-cycle fatigue), cracks form relatively quickly regardless of surface finish

<span>surface finish</span>

-   Since low-cycle fatigue has little effect from surface finish, we could modify the strain life curve by altering only the elastic portion

-   If we define the surface effect factor, *m*<sub>*s*</sub>, we can find a new *b*<sub>*s*</sub> to replace *b* in the strain-life equation

-   
    $$b\_s = \\frac{\\log\\left(m\_s (2N\_e)^b\\right)}{\\log(2N\_e)}$$

<span>surface treatments</span>

-   Surfaces are often treated for cosmetic or corrosion purposes, these treatments can affect fatigue life

-   Treatments which decrease fatigue life:

    -   Electro-plating (chrome, +corrosion resistance, -fatigue life)

    -   Grinding improves surface finish, but introduces surface tension, and heat generated can temper quench

    -   Stamping introduces discontinuities and irregularities

    -   Forging is generally good for refining grain structure and improving physical properties, but can cause decarburization in steels, which is harmful to fatigue life

    -   Hot rolling can also cause decarburization

<span>surface treatments</span>

-   Some treatments improve fatigue life:

    -   Cold rolling improves surface finish, introduces residual compressive stress on surface (slows crack initiation on surface)

    -   Shot peeing introduces many small divots on surface, which can be detrimental in corrosion, but it does cause a residual compressive stress on the surface

<span>size</span>

-   Size can also have effects on fatigue life

-   Larger parts are more susceptible to damage/imperfections at the same stress level

-   This is why composites are often made from very small fibers (glass fiber, carbon fiber, ceramic-matrix composites)

-   The exact effect of size will depend on material, one study for low carbon steels found

-   
    $$m\_d = \\left(\\frac{d}{25.4 \\text{mm}}\\right)^{-0.093}$$

-   Which is then used to re-calculate material constants
    *σ*<sub>*f**d*</sub><sup>′</sup> = *m*<sub>*d*</sub>*σ*<sub>*f*</sub><sup>′</sup>,   *ϵ*<sub>*f**d*</sub><sup>′</sup> = *m*<sub>*d*</sub>*ϵ*<sub>*f*</sub><sup>′</sup>

<span>thermal fatigue</span>

-   Thermal loading can be introduced when two dissimilar parts are attached together, the coefficient of thermal expansion causes them to expand differently, introducing extra stresses due to the temperature change

-   If the temperature is significantly different between two sides of a part thermal stresses can also be introduced

-   Low temperatures generally cause a material to behave in a more brittle fashion, which alters the fatigue life

-   High temperatures cause problems with creep-relaxation and can also affect the crystalline structure

crack growth rate
=================

<span>fracture surface</span>

<img src="../Figures/fracture_surface" alt="image" /> \[fig:fracture\_surface\]

<span>fracture surface</span>

<img src="../Figures/Fatigue-Fracture-with-Beachmarks" alt="image" /> \[fig:Fatigue-Fracture-with-Beachmarks\]

<span>crack growth rate</span>

-   We can observe that fatigue damage occurs through crack propagation

-   “cracks” and fracture mechanics have been omitted from all our fatigue discussion thus far

-   It would be beneficial to predict at what rate a crack will extend

<span>crack growth rate</span>

-   Crack growth rate can be measured experimentally

-   Using a center-crack specimen, a fatigue load is applied

-   The crack length is measured and plotted vs. the number of cycles

-   The slope of this curve ($\\frac{da}{dN}$) is then plotted vs. either *K*<sub>*I*, *m**a**x*</sub> or *Δ**K*<sub>*I*</sub> on a log-log scale

-   This chart is then commonly divided into three regions

<span>da-dN vs K</span>

<img src="../Figures/da-dn" alt="image" /> \[fig:da-dn\]

<span>region I</span>

-   In Region I crack growth is very slow and/or difficult to measure

-   In many cases, da/dN corresponds to the spacing between atoms!

-   The point at which the da/dN curve intersects the boundary between Region I and Region II is often called the fatigue threshold

-   Typically 3-15 $\\text{ ksi} \\sqrt{\\text{in}}$ for steel

-   3-6 $\\text{ ksi} \\sqrt{\\text{in}}$ for aluminum

<span>region II</span>

-   Most important region for general engineering analysis

-   Once a crack is present, most of the growth and life occurs in Region II

-   Generally linear in the log-log scale

<span>region III</span>

-   Unstable crack growth

-   Usually neglected (we expect failure before Region III fully develops in actual parts)

-   Can be significant for parts where we expect high stress and relatively short life

<span>crack growth rate curve</span>

-   The crack growth rate curve is considered a material property

-   The same considerations for thickness apply as with fracture toughness (*K*<sub>*c*</sub> vs. *K*<sub>*I**c*</sub>)

-   Is also a function of the load ratio, *R* = *σ*<sub>*m**i**n*</sub>/*σ*<sub>*m**a**x*</sub>

<span>R effects</span>

-   While the x-axis can be either *Δ**K* or *K*<sub>*m**a**x*</sub>, the shape of the data is the same

-   When we look at the effects of load ratio, *R*, the axis causes some differences on the plot

-   With *Δ**K* on the x-axis, increasing *R* will shift the curve up and to the left, shifting the fatigue threshold and fracture toughness on the graph as well

-   With *K*<sub>*m**a**x*</sub> on the x-axis, increasing *R* shifts the curve down and to the right, but fatigue threshold and fracture toughness keep same values

-   In general, *R* dependence vanishes for *R* &gt; 0.8 or *R* &lt; −0.3. This effect is known as the band width

crack growth rate equations
===========================

<span>crack growth rate equations</span>

-   There are many crack growth rate equations of varying complexity

-   The “best” form to use will depend on design needs

-   The important features in curve-fit equations are

    1.  Region II curve fit (linear on log-log scale)

    2.  Region I curve fit (fatigue threshold)

    3.  Region III curve fit (critical stress intensity)

    4.  Stress ratio effects

    5.  Band width of R-curves

<span>paris law</span>

-   The original

-   Fits the linear portion (Region II)

-   Does not fit Region I, Region III, or have R-dependence

-   
    $$\\frac{da}{dN} = C (\\Delta K)^n$$

-   Note: this assumes the x-axis is *Δ**K*, but *Δ**K* = (1 − *R*)*K*<sub>*m**a**x*</sub>, so we can easily convert

<span>paris law</span>

;

<span>walker</span>

-   Region II is usually all that is needed for engineering, but R-dependence is often an important effect to capture

-   Walker modified the Paris law to account for R-dependence

-   
    $$\\frac{da}{dN} = C\\left\[(1-R)^mK\_{max}\\right\]^n$$

-   Gives a good fit for Region II with R-dependence and band width

<span>walker</span>

; ; ; ;

<span>forman</span>

-   The Forman equation was developed to capture the effects of Region II and Region III

-   Also includes the effects of *R*, but does not control the band width of R effects

-   
    $$\\frac{da}{dN} = \\frac{C \\left\[(1-R)K\_{max}\\right\]^n}{(1-R)K\_c-(1-R)K\_{max}}$$

<span>modified forman</span>

-   The Forman equation can be modified to include the effect of band width

-   
    $$\\frac{da}{dN} = \\frac{C \\left\[(1-R)^m K\_{max}\\right\]^n}{\\left\[(1-R)^mK\_c-(1-R)^m K\_{max}\\right\]^L}$$

<span>collipriest</span>

-   The Collipriest equation fits Regions I, II and III, but has no R-dependence

-   
    $$\\frac{da}{dN} = C\_1 + C\_2 \\tanh^{-1} \\left\[\\frac{\\log \\left(\\frac{K\_{max}^2}{K\_oK\_c}\\right)}{\\log (K\_c/K\_o)}\\right\]$$

<span>modified collipriest</span>

-   Following the same methods as before, we can modify the Collipriest equation for R-dependence and band width control

-   
    $$\\frac{da}{dN} = C\_1 + C\_2 \\tanh^{-1} \\left\[\\frac{\\log \\left(\\frac{(1-R)^mK\_{max}^2}{K\_oK\_c}\\right)}{\\log (K\_c/K\_o)}\\right\]$$

-   For a cleaner graph, experimental data at different R-values is sometimes plotted vs. *K*<sub>*e**f**f*</sub>

-   
    *K*<sub>*e**f**f*</sub> = (1 − *R*)<sup>*m*</sup>*K*<sub>*m**a**x*</sub>

<span>nasgrow growth rate equation</span>

-   A very complicated curve fit is provided in the NASGROW growth rate equation

-   
    $$\\frac{da}{dN} = C \\left\[\\frac{1-f}{1-R}\\Delta K\\right\]^n\\frac{\\left\[1-\\frac{\\Delta K\_{th}}{\\Delta K}\\right\]}{\\left\[1-\\frac{K\_{max}}{K\_{crit}}\\right\]}$$

-   The curve fit parameters can be found in p. 307 of your text (or the NASGROLW/AFGROW documentation)

<span>boeing-walker growth rate equation</span>

-   The Boeing-Walker growth equation is given as (for *R* ≥ 0 )

-   
    $$\\frac{da}{dN} = 10^{-4}\\left(\\frac{1}{mT}\\right)^p\\left\[K\_{max}(1-R)^q\\right\]^p$$

<span>conversion of constants</span>

-   Much of the data available to us is from Boeing, and given in terms of the Boeing-Walker equation

-   We can re-write some other equations to more easily convert parameters between the various equations

-   Walker-Boeing:
    $$\\frac{da}{dN} = 10^{-4}\\left(\\frac{1}{mT}\\right)^p\\left\[\\Delta K(1-R)^{q-1}\\right\]^p$$

-   Walker-AFGROW:
    $$\\frac{da}{dN} = C\_w\\left\[\\Delta K(1-R)^{m-1}\\right\]^{n\_w}$$

-   Forman:
    $$\\frac{da}{dN} = \\frac{C\_F}{(1-R)K\_c - \\Delta K} (\\Delta K)^{n\_f}$$

<span>conversion of constants</span>

|              Walker-Boeing              |                  Walker-AFGROW                 |                         Forman                         |
|:---------------------------------------:|:----------------------------------------------:|:------------------------------------------------------:|
| $10^{-4}\\left(\\frac{1}{mT}\\right)^p$ | $C\_w = 10^{-4}\\left(\\frac{1}{mT}\\right)^p$ | $C\_F = (K\_c-1)10^{-4}\\left(\\frac{1}{mT}\\right)^p$ |
|                    q                    |                    *m* = *q*                   |                                                        |
|                    p                    |             *n*<sub>*w*</sub> = *p*            |                 *n*<sub>*f*</sub> = *p*                |


