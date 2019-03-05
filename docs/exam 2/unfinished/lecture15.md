<span>schedule</span>

-   8 Mar - Stress-based fatigue

-   13 Mar - Exam 1

-   15 Mar - Exam Return, Project Discussion

-   No Class 19-23 Mar Spring Break

-   27-29 Mar - Strain-based Fatigue, HW7

-   3-5 Apr - Crack Propagation, HW8

-   10-12 Apr - Crack Retardation, HW9

-   17-19 Apr - Exam 2

-   Damage Tolerance, Special Topics, Final Projects

### outline

\[sections numbered\]

fatigue
=======

<span>fatigue</span>

-   We refer to damage from repeated, or cyclic loads as fatigue damage

-   Some of the earliest work on fatigue began in the 1800’s

-   Chains, railway axles, etc.

-   An estimated 80% of failure expenses are due to fatigue

<span>fatigue</span>

-   There are three main approaches to fatigue analysis

-   Stress based fatigue analysis

-   Strain based fatigue analysis

-   Fracture mechanics fatigue analysis

<span>stress based fatigue</span>

-   One of the simplest assumptions we can make is that a load cycles between a constant maximum and minimum stress value

-   This is a good approximation for many cases (axles, for example) and can also be easily replicated experimentally

-   This is referred to as constant amplitude stressing

<span>constant amplitude stressing</span>

; coordinates <span> (0,4) (20,4)</span>; (axis cs: 3.14159/2,10) – (axis cs: 3.14159/2,3); (axis cs: 3.14159/2,1) – (axis cs: 3.14159/2,-2); node at (axis cs: 3.14159/2,2) <span>*Δ**σ*</span>; (axis cs: 3\*3.14159/2,4) – (axis cs: 3\*3.14159/2,2); (axis cs: 3\*3.14159/2,0) – (axis cs: 3\*3.14159/2,-2); node at (axis cs: 3\*3.14159/2,1) <span>*σ*<sub>*a*</sub></span>; (axis cs: 3\*3.14159/2,10) – (axis cs: 3\*3.14159/2,8); (axis cs: 3\*3.14159/2,6) – (axis cs: 3\*3.14159/2,4); node at (axis cs: 3\*3.14159/2,7) <span>*σ*<sub>*a*</sub></span>;

<span>constant amplitude stressing</span>

-   *Δ**σ* is known as the stress range, and is the difference between max and min stress

-   *σ*<sub>*m*</sub> is the mean stress, and can sometimes be zero, but this is not always the case

-   *σ*<sub>*a*</sub> is the stress amplitude, and is the variation about the mean

-   We can express all of these in terms of the maximum and minimum stress
    $$\\begin{aligned}
            \\Delta \\sigma &= \\sigma\_{max} - \\sigma\_{min}\\\\
            \\sigma\_m &= \\frac{\\sigma\_{max} + \\sigma\_{min}}{2}\\\\
            \\sigma\_a &= \\frac{\\sigma\_{max}- \\sigma\_{min}}{2}
            \\end{aligned}$$

<span>constant amplitude stressing</span>

-   It is also common to describe some ratios

-   The stress ratio, *R* is defined as
    $$R = \\frac{\\sigma\_{min}}{\\sigma\_{max}}$$

-   And the amplitude ratio, *A* is defined as
    $$A = \\frac{\\sigma\_a}{\\sigma\_m}$$

<span>useful relations</span>

-   There are some useful relationships between the above equations

    $$\\begin{aligned}
                \\Delta \\sigma &= 2 \\sigma\_a = \\sigma\_{max}(1-R)\\\\
                \\sigma\_m &= \\frac{\\sigma\_{max}}{2}(1+R)\\\\
                R &= \\frac{1-A}{1+A}\\\\
                A &= \\frac{1-R}{1+R}
                \\end{aligned}$$

nominal and local stress
========================

<span>definition and notation</span>

-   It is important to distinguish between the nominal (global) stress and the local stress at some point of interest

-   We use *σ* for the stress at a point (local stress)

-   We use *S* as the nominal (global) stress

-   In simple tension, *σ* = *S*

-   For many cases (bending, notches), *σ* ≠ *S* in general

-   We must also be careful to note *σ*<sub>*y*</sub>, in some cases *S* &lt; *σ*<sub>*y*</sub> but at some locations *σ* &gt; *σ*<sub>*y*</sub>

<span>simple tension</span>

<img src="../Figures/p232-a" alt="In this case S = \sigma" />

<span>bending</span>

<img src="../Figures/p232-b" alt="As long as \sigma &lt; \sigma_y, \sigma varies linearly. If \sigma &gt; \sigma_y at any location, however, the relationship is non-linear" />

<span>notches</span>

<img src="../Figures/p232-c" alt="As long as \sigma &lt; \sigma_y, \sigma varies linearly. If \sigma &gt; \sigma_y at any location, however, the relationship is non-linear" />

fatigue tests
=============

<span>rotating cantilever beam</span>

<img src="../Figures/rotating_cantilever" alt="Cantilever beam produces non-uniform stress state" />

<span>rotating four-point bend</span>

<img src="../Figures/Rotating_Bending_Machine" alt="Four-point bend gives uniform stress (along top and bottom surfaces)" />

<span>fatigue tests</span>

-   The above rotating methods are very common, but in their current configurations can only be used for zero mean stress

-   a reciprocating bend test can be used for non-zero mean stress

<span>reciprocating bend test</span>

<img src="../Figures/reciprocating_cantilever" alt="A reciprocating cantilever test allows for non-zero mean stress" />

<span>axial fatigue test</span>

<img src="../Figures/servohydraulic" alt="Servohydraulic test fixtures are expensive, but computer controlled and allow for irregular load histories" />

<span>fatigue tests</span>

-   The length of a fatigue test is determined by two factors

    1.  How many cycles it takes for the specified load to cause failure

    2.  The speed of the motor controlling the test

-   Servohydraulic machines generally have a speed of 10 - 100 Hz.

-   At a speed of 100 Hz, it would take 28 hours for 10<sup>7</sup> cycles, 12 days for 10<sup>8</sup> cycles, and nearly 4 months for 10<sup>9</sup> cycles

-   While some machines can test at very high speeds, the inertia of the sample can interfere with results

fatigue life analysis
=====================

<span>stress life curves</span>

-   Stress-life curves, or S-N curves, are generated from test data to predict the number of cycles to failure

-   In general, one set (or family) of S-N curves is generated using the same *σ*<sub>*m*</sub>

-   Usually *S*<sub>*a*</sub> (the nominal stress equivalent of *σ*<sub>*a*</sub>) is plotted versus *N* (the number of cycles)

<span>stress life curves</span>

-   Each individual point on an S-N curve represents one fatigue experiment

-   To find enough data to form statistical significance, as well as to fit a curve across all levels of fatigue is very time-consuming

-   In the following plot, if only one test was performed for each point, the total number of cycles tested would be about 7.3*x*10<sup>7</sup>

-   For a 100 Hz machine, this represents over 200 hours of consecutive testing

-   Each repetition would further increase the test time required

<span>stress life curves</span>

coordinates <span> (50043.42952596336,304.3384885916487) (61810.2778157969,275.4565502529583) (64649.06882505588,262.997448795745) (169586.85224960672,247.7449948831778) (565161.8625105635,233.04313985499925) (761338.8628672551,220.14010003026843) (1579862.092639026,191.8692976260827) (3173264.1073141545,178.55402931722847) (3682937.77739026,205.51896106891124) (9552328.626265539,185.27652459677992) (18242638.367873847,164.96778564118816) (35011737.76351732,165.60774874241474) </span>;

<span>stress life curves</span>

-   On a linear scale, the data appear not to agree well with any standard fit

-   It is also very difficult to differentiate between low-cycle fatigue failure stresses

-   Instead S-N curves are often plotted on a semi-log or log-log scale, so pay attention to the axes

<span>stress life curves</span>

coordinates <span> (50043.42952596336,304.3384885916487) (61810.2778157969,275.4565502529583) (64649.06882505588,262.997448795745) (169586.85224960672,247.7449948831778) (565161.8625105635,233.04313985499925) (761338.8628672551,220.14010003026843) (1579862.092639026,191.8692976260827) (3173264.1073141545,178.55402931722847) (3682937.77739026,205.51896106891124) (9552328.626265539,185.27652459677992) (18242638.367873847,164.96778564118816) (35011737.76351732,165.60774874241474) </span>;

<span>curve fits</span>

-   If the curve is nearly linear on a log-linear plot, we use the following form to fit the data

-   
    *σ*<sub>*a*</sub> = *C* + *D*log*N*<sub>*f*</sub>

-   When the data are instead linear on a log-log scale, the following form is generally used

-   
    *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>

-   *σ*<sub>*f*</sub><sup>′</sup> and *b* are often considered material properties and can often be looked up on a table (p. 235)

<span>curve fit</span>

coordinates <span> (50043.42952596336,304.3384885916487) (61810.2778157969,275.4565502529583) (64649.06882505588,262.997448795745) (169586.85224960672,247.7449948831778) (565161.8625105635,233.04313985499925) (761338.8628672551,220.14010003026843) (1579862.092639026,191.8692976260827) (3173264.1073141545,178.55402931722847) (3682937.77739026,205.51896106891124) (9552328.626265539,185.27652459677992) (18242638.367873847,164.96778564118816) (35011737.76351732,165.60774874241474) </span>; ;

<span>stress life curves</span>

coordinates <span> (50043.42952596336,304.3384885916487) (61810.2778157969,275.4565502529583) (64649.06882505588,262.997448795745) (169586.85224960672,247.7449948831778) (565161.8625105635,233.04313985499925) (761338.8628672551,220.14010003026843) (1579862.092639026,191.8692976260827) (3173264.1073141545,178.55402931722847) (3682937.77739026,205.51896106891124) (9552328.626265539,185.27652459677992) (18242638.367873847,164.96778564118816) (35011737.76351732,165.60774874241474) </span>; ;

fatigue limit
=============

<span>fatigue limit</span>

-   The fatigue limit, or endurance limit, is a feature of some materials where below a certain stress, no fatigue failure is observed

-   Below the fatigue limit, this material is considered to have infinite life

-   This most notably occurs in plain-carbon and low-alloy steels

-   In these materials, *σ*<sub>*e*</sub> is considered to be a material property

-   This phenomenon is not typical of aluminum or copper alloys, but is sometimes arbitrarily assigned using whatever the failure stress is at some large number of cycles (10<sup>7</sup> or 10<sup>8</sup>)

<span>fatigue limit</span>

coordinates <span> (15335.57305076729,755.3980800096908) (17120.563873524803,756.1781896368977) (17030.666340686137,720.548741709821) (22930.156230029723,720.2495381726781) (35394.72596452449,685.9598437358045) (48178.50680065504,650.9057872263105) (60015.34650935311,651.5756639714122) (85619.60323966984,616.4743647981587) (96991.95509887673,615.4580418521547) (111725.20919888247,616.2066563701887) (310167.4766824342,514.5113715514369) (380171.36929461616,514.3066533418128) (465974.9357903219,514.1019351321886) (207329.98874026354,548.7695708791375) (246290.6168802425,548.5963477786863) (517751.44153305655,480.1429393416311) (615045.2363433094,479.96971624117987) (693804.9505813519,445.1046303867236) (905347.6109897072,444.8369219587535) (2075614.3484015197,444.00230156567034) (2545405.291185992,444.68792586535835) (3106869.8968525752,437.3604675812362) (2677489.704626086,424.14705793283065) (6497638.107517564,413.4556797189666) (82022604.86227266,436.74025620059956) (82752208.82434484,425.1500560249538) (80830258.5708036,411.81066593985645) </span>;

<span>high and low cycle fatigue</span>

-   Some other important terms are high cycle fatigue and low cycle fatigue

-   “High cycle fatigue” generally is considered anything above 10<sup>3</sup> cycles, but varies somewhat by material

-   High cycle fatigue occurs when the stress is sufficiently low that yielding effects do not dominate behavior

-   When yielding effects do dominate behavior, the strain-based approach is more appropriate

modeling real loads
===================

<span>real loads</span>

-   Static loads are constant and do not vary. While they are not generally considered “fatigue” loads, they can be present during fatigue loads, which will change the response.

-   Working loads change with time as a function of the normal operation of a component

-   Vibratory loads occur at a higher frequency than working loads and may be caused by the environment or secondary effects of normal operation.

-   Accidental loads can occur at a much lower frequency than working loads

<span>real loads</span>

; ; ; ;

<span>real loads</span>

; ;

&lt;handout:0&gt;<span>simplified load</span> sketch book p 239

<span>effect of variable amplitude</span>

-   We know that variable loads can often occur in real scenarios, but how can we model the effect?

-   Miner’s Rule is often used to approximate the effect of variable amplitude load

-   We consider each load amplitude (and the number of cycles at that amplitude) as having used up a percentage of a part’s life

-   
    $$\\frac{N\_1}{N\_{f1}} + \\frac{N\_2}{N\_{f2}} + \\frac{N\_3}{N\_{f3}} + ... = \\sum \\frac{N\_i}{N\_{fi}} = 1$$

<span>effect of variable amplitude</span>

-   Often there are “blocks” of variable amplitude loads which repeat

-   A typical flight cycle is a good example of this

-   A flight will have working loads, vibrations, as well as storms/turbulence, but each flight should have similar loading

-   If we call the number of “block” *B* then we have

-   
    $$B \\left\[\\sum \\frac{N\_i}{N\_{if}}\\right\]\_{rep} = 1$$

<span>mean stress effects</span>

-   It is possible for each variable load case to have a different mean stress

-   This would mean generating a different S-N curve for each potential mean stress

-   Much work has been done to instead convert a zero-mean stress curve to different mean stress amplitudes

mean stress effects
===================

<span>mean stress</span>

-   Since mean stress has an effect on fatigue life, sometimes a family of S-N curves at varying mean stress values is created

-   S-N curves for these are reported in different ways, but commonly *σ*<sub>*m**a**x*</sub> replaces *σ*<sub>*a*</sub> on the y-axis

-   One useful way of representing these data, instead of many S-N curves, is a constant-life diagram

-   It is created by taking points from the S-N curves and plotting a line through constant *N*<sub>*f*</sub> values

<span>S-N curves at variable *σ*<sub>*m*</sub></span>

<img src="../Figures/meanstress" alt="image" /> \[fig:meanstress\]

<span>constant life diagram</span>

<img src="../Figures/constant-life" alt="image" /> \[fig:constant-life\]

<span>normalizing</span>

-   One very useful way to plot this data is to normalize the amplitude by the zero-mean amplitude

-   We call the zero-mean amplitude as *σ*<sub>*a**r*</sub>

-   Plotting *σ*<sub>*a*</sub>/*σ*<sub>*a**r*</sub> vs. *σ*<sub>*m*</sub> provides a good way to group all the data together on one plot with the potential to fit a curve

<span>normalized amplitude-mean diagram</span>

<img src="../Figures/normalized" alt="image" /> \[fig:normalized\]

<span>Goodman line</span>

-   The first work on this problem was done by Goodman, who proposed the line

-   
    $$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\frac{\\sigma\_m}{\\sigma\_u} = 1$$

-   This equation can also be used for fatigue limits, since they are just a point on the S-N curves

-   
    $$\\frac{\\sigma\_e}{\\sigma\_{er}} + \\frac{\\sigma\_m}{\\sigma\_u} = 1$$

<span>modifications</span>

-   While the Goodman line gives a good approximation to convert non-zero mean stress S-N curves, it is somewhat overly conservative at high mean stresses

-   It is also non-conservative for negative mean stresses

-   An alternative fit is known as the Gerber Parabola

-   
    $$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\left(\\frac{\\sigma\_m}{\\sigma\_u}\\right)^2 = 1$$

-   In general, the Goodman line is a good fit for brittle materials (steels) while the Gerber parabola is a better fit for more ductile materials

<span>modifications</span>

-   The Goodman line can also be improved by replacing *σ*<sub>*u*</sub> with the corrected true fracture strength $\\tilde{\\sigma}\_{fB}$ or the constant *σ*<sub>*f*</sub><sup>′</sup> from the S-N curve fit

-   
    $$\\label{eq:morrow}
            \\frac{\\sigma\_a}{\\sigma\_{ar}} + \\frac{\\sigma\_m}{\\sigma\_f^\\prime} = 1$$

-   This is known as the Morrow Equation

-   For steels, $\\sigma\_f^\\prime \\approx \\tilde{\\sigma}\_{fB}$, but for aluminums these values can be significantly different, and better agreement is found using $\\tilde{\\sigma}\_{fB}$.

<span>modifications</span>

-   One more relationship that has shown particularly good results with aluminum alloys is the Smith, Watson, and Topper equations (SWT)

-   
    $$\\label{eq:swt}
            \\sigma\_{ar} = \\sqrt{\\sigma\_{max}\\sigma\_a}$$

-   In general, it is best to use a form that matches your data

-   If data is lacking, the SWT (\[eq:swt\]) and Morrow (\[eq:morrow\]) equations generally provide the best fit

scatter
=======

<span>fatigue scatter</span>

-   One of the challenges with fatigue is that there is generally considerable scatter in the data

-   Quantifying this scatter requires many repetitions, which makes for time consuming tests

-   In general, the scatter follows a lognormal distribution (or a normal distribution in log(*N*<sub>*f*</sub>))

<span>S-N-P Curve</span>

<img src="../Figures/S-N-P" alt="image" /> \[fig:S-N-P\]

general stress
==============

<span>general stress</span>

-   Often combined loads from different sources introduce stresses which are not uni-axial

-   For ductile materials, good agreement has been found using an effective stress amplitude, similar to the octahedral shear yield criterion

-   
    $$\\bar{\\sigma}\_a = \\frac{1}{\\sqrt{2}}\\sqrt{(\\sigma\_{xa}-\\sigma\_{ya})^2 + (\\sigma\_{ya}-\\sigma\_{za})^2 + (\\sigma\_{za}-\\sigma\_{xa})^2 + 6(\\tau\_{xy}^2 + \\tau\_{yz}^2 + \\tau\_{zx}^2)}$$

-   The effective mean stress is given by

-   
    $$\\bar{\\sigma}\_m = \\bar{\\sigma}\_{xm} + \\bar{\\sigma}\_{ym} + \\bar{\\sigma}\_{zm}$$

<span>effective stress</span>

-   This effective stress can be used in all other relationships, including mean stress relationships

-   Note that mean shear stress has no effect on the effective mean stress

-   This is surprising, but agrees well with experiments

fatigue review
==============

<span>group 1</span>

-   A part from AISI 4340 in a typical “block” undergoes 100,000 cycles with *σ*<sub>*m**i**n*</sub> = 0 ksi and *σ*<sub>*m**a**x*</sub> = 100 ksi and an additional 10 cycles with *σ*<sub>*m**i**n*</sub> = 50 ksi and *σ*<sub>*m**a**x*</sub> = 200 ksi

-   How many “blocks” can this part support before failure?

<span>group 2</span>

-   Use the S-N-P chart on p. 245 for 7075-T6 Aluminum

-   What is the probability of failure for 30 ksi at 10<sup>6</sup> cycles?

-   To ensure that 99% of parts do not fail, after how many cycles should a fully reversed load of 35 ksi be inspected?

-   How many cycles could the same part sustain if only 50% of parts are needed?

<span>group 3</span>

-   The fatigue limit for AISI 4142 steel is 58 ksi for completely reversed fatigue loads.

-   What is the fatigue limit for fatigue loads with *σ*<sub>*m*</sub> = 10, 20, 30 ksi?

<span>group 4</span>

-   A material made of 2024-T4 Aluminum undergoes the following load cycle

    -   *σ*<sub>*x*, *m**i**n*</sub> = 10, *σ*<sub>*x*, *m**a**x*</sub> = 50

    -   *σ*<sub>*y*, *m**i**n*</sub> = −20, *σ*<sub>*y*, *m**a**x*</sub> = 20

    -   *τ*<sub>*x**y*, *m**i**n*</sub> = 0, *τ*<sub>*x**y*, *m**a**x*</sub> = 30

-   How many cycles can it support before failure?

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

<span>peterson notch sensitivity</span>

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


