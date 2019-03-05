<span>schedule</span>

-   17 Apr - Exam Review, HW9 Due

-   19 Apr - Exam 2

-   24 Apr - SPTE, Exam Return

-   Damage Tolerance, Special Topics, Final Projects

### outline

\[sections numbered\]

exam format
===========

<span>exam 2</span>

-   5 questions

-   Bring calculator

-   Closed note/closed book

-   Make sure you can integrate the Paris Law equation (see Homework 8 problems 1 and 2)

-   No table look-ups (stress intensity factors, paris/walker law constants will be given in problem)

-   See last year’s exam and equation sheet on Blackboard

stress-based fatigue
====================

<span>stress based fatigue</span>

-   Has the simplest analysis of any fatigue analysis

-   Very good for high cycle fatigue (i.e. low stress fatigue)

-   High cycle fatigue means there is less plasticity

-   Typically starts between 10<sup>2</sup> − 10<sup>4</sup> cycles

-   This point varies by material, but can be found using strain-based fatigue analysis

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

<span>practical considerations</span>

-   High cycle fatigue requires a lot of testing

-   Usually for very high cycle fatigue some form of rotating beam test machine is used

-   Rotating 4-point bend is one of the most common modern methods

-   Tensile test machines can be used, but require much more time

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

<span>stress life curves</span>

coordinates <span> (50043.42952596336,304.3384885916487) (61810.2778157969,275.4565502529583) (64649.06882505588,262.997448795745) (169586.85224960672,247.7449948831778) (565161.8625105635,233.04313985499925) (761338.8628672551,220.14010003026843) (1579862.092639026,191.8692976260827) (3173264.1073141545,178.55402931722847) (3682937.77739026,205.51896106891124) (9552328.626265539,185.27652459677992) (18242638.367873847,164.96778564118816) (35011737.76351732,165.60774874241474) </span>; ;

<span>fatigue limit</span>

-   The fatigue limit, or endurance limit, is a feature of some materials where below a certain stress, no fatigue failure is observed

-   Below the fatigue limit, this material is considered to have infinite life

-   This most notably occurs in plain-carbon and low-alloy steels

-   In these materials, *σ*<sub>*e*</sub> is considered to be a material property

-   This phenomenon is not typical of aluminum or copper alloys, but is sometimes arbitrarily assigned using whatever the failure stress is at some large number of cycles (10<sup>7</sup> or 10<sup>8</sup>)

<span>fatigue limit</span>

coordinates <span> (15335.57305076729,755.3980800096908) (17120.563873524803,756.1781896368977) (17030.666340686137,720.548741709821) (22930.156230029723,720.2495381726781) (35394.72596452449,685.9598437358045) (48178.50680065504,650.9057872263105) (60015.34650935311,651.5756639714122) (85619.60323966984,616.4743647981587) (96991.95509887673,615.4580418521547) (111725.20919888247,616.2066563701887) (310167.4766824342,514.5113715514369) (380171.36929461616,514.3066533418128) (465974.9357903219,514.1019351321886) (207329.98874026354,548.7695708791375) (246290.6168802425,548.5963477786863) (517751.44153305655,480.1429393416311) (615045.2363433094,479.96971624117987) (693804.9505813519,445.1046303867236) (905347.6109897072,444.8369219587535) (2075614.3484015197,444.00230156567034) (2545405.291185992,444.68792586535835) (3106869.8968525752,437.3604675812362) (2677489.704626086,424.14705793283065) (6497638.107517564,413.4556797189666) (82022604.86227266,436.74025620059956) (82752208.82434484,425.1500560249538) (80830258.5708036,411.81066593985645) </span>;

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

<span>mean stress</span>

-   Since mean stress has an effect on fatigue life, sometimes a family of S-N curves at varying mean stress values is created

-   S-N curves for these are reported in different ways, but commonly *σ*<sub>*m**a**x*</sub> replaces *σ*<sub>*a*</sub> on the y-axis

-   One useful way of representing these data, instead of many S-N curves, is a constant-life diagram

-   It is created by taking points from the S-N curves and plotting a line through constant *N*<sub>*f*</sub> values

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

<span>general stress</span>

-   Often combined loads from different sources introduce stresses which are not uni-axial

-   For ductile materials, good agreement has been found using an effective stress amplitude, similar to the octahedral shear yield criterion

-   
    $$\\bar{\\sigma}\_a = \\frac{1}{\\sqrt{2}}\\sqrt{(\\sigma\_{xa}-\\sigma\_{ya})^2 + (\\sigma\_{ya}-\\sigma\_{za})^2 + (\\sigma\_{za}-\\sigma\_{xa})^2 + 6(\\tau\_{xy}^2 + \\tau\_{yz}^2 + \\tau\_{zx}^2)}$$

-   The effective mean stress is given by

-   
    $$\\bar{\\sigma}\_m = \\bar{\\sigma}\_{xm} + \\bar{\\sigma}\_{ym} + \\bar{\\sigma}\_{zm}$$

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

strain-based fatigue
====================

<span>strain based fatigue</span>

-   The strain based fatigue method uses local stresses and strains (instead of global, nominal values)

-   The strain-based method gives greater detail, and validity at lower cycles

-   It is still valid for high cycle fatigue

-   Does not include crack growth analysis or fracture mechanics

<span>lines</span>

-   If we separate elastic and plastic strains, we notice that the data for elastic and plastic strains are represented by straight lines, in the log-log scale

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
    $$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E}\\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)(2N\_f)^b + \\epsilon\_f^\\prime (2N\_f)^c$$

-   There is no convenient solution method for this form, and it generally must be solved numerically, or plotted with many families of *σ*<sub>*m*</sub>

<span>smith watson topper</span>

-   The Smith, Watson, and Topper approach assumes that the life for any given state is dependent on the product *σ*<sub>*m*</sub>*a**x**ϵ*<sub>*a*</sub>

-   After some manipulation, this gives

-   
    $$\\sigma\_{max} \\epsilon\_a = \\frac{\\left(\\sigma\_f^\\prime\\right)^2}{E}(2N\_f)^{2b} + \\sigma\_f^\\prime \\epsilon\_f^\\prime (2N\_f)^{b+c}$$

-   This method can also be solved graphically if a plot of *σ*<sub>*m**a**x*</sub>*ϵ*<sub>*a*</sub> is made using zero-mean data. All we need to do is find the new *σ*<sub>*m**a**x*</sub>*ϵ*<sub>*a*</sub> point to find a new *N*<sub>*f*</sub>

<span>comparison</span>

-   All three methods discussed are in general use

-   The Morrow method is very good for steel

-   The modified Morrow method gives improved results in many materials

-   The SWT approach is very good for general use, but is non-conservative with a compressive mean stress

crack propagation
=================

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

-   The point at which the da/dN curve intersects the x-axis is often called the fatigue threshold

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

<span>boeing method for variable amplitude loads</span>

-   Whether integrating numerically or analytically, it is time-consuming to consider multiple repeated loads

-   It is particularly difficult to consider flight loads, which can vary by “mission”

-   For example, an aircraft may fly three different routes, in no particular order, but with a known percentage of time spent in each route

-   Traditional methods would use a random mix of each load spectra

-   The Boeing Method combines each repeatable load spectrum into one single equivalent cycle

<span>boeing method</span>

-   The Boeing method is derived by separating the geometry effects from load and material effects in the Boeing-Walker equation.

-   
    $$\\frac{da}{dN} = \\left\[\\frac{1}{n}\\right\]\\frac{dL}{dN} = 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

-   
    $$\\frac{dL}{dN} = n 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

-   
    $$\\frac{dN}{dL} = \\frac{1}{n} 10^{4} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p$$

-   
    $$\\int\_{0}^{N}dN = \\frac{10^{4}}{n}  \\int\_{L\_0}^{L\_f} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p dL$$

-   
    $$N = 10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p  \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$$

<span>boeing method</span>

-   In this form, the term $10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p$ is strictly from the applied load and material, while $\\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$ is from geometry

-   If we now define *G* to account for crack geometry

-   
    $$G = \\left\[ \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p} \\right\] ^{-1/p}$$

-   And define *z**σ*<sub>*m**a**x*</sub> = *S* as the equivalent load spectrum, then we have

-   
    $$\\label{eq:boeing}
            N = 10^4 \\left(\\frac{m\_t/G}{S}\\right)^p$$

-   Using this method, *G* is typically looked up from a chart (such as on p. 369)

<span>boeing method</span>

-   To replace a repeated load spectrum with an equivalent load, we need to invert the relationship

-   Equation \[eq:boeing\] gives cycles per crack growth, inverting gives crack growth per cycle

-   
    $$\\text{crack growth per cycle} = 10^{-4} \\left(\\frac{m\_t/G}{S}\\right)^{-p}$$

-   If we consider a general, repeatable “block”, we have

-   
    $$10^{-4} \\left( m\_t/G \\right)^{-p} \\sum\_i \\left( \\frac{1}{z\\sigma\_{max}} \\right)\_i^{-p} N\_i = 10^{-4} \\left( \\frac{m\_t/G}{S} \\right)^{-p}$$

-   Which simplifies to
    ∑<sub>*i*</sub>(*z**σ*<sub>*m**a**x*</sub>)<sub>*i*</sub><sup>*p*</sup>*N*<sub>*i*</sub> = (*S*)<sup>*p*</sup>

<span>cycle counting</span>

-   As illustrated in previous examples, cycle counting method can make a difference for variable amplitude loads

-   Two common methods for cycle counting that give similar results are known as the “rainflow” and “range-pair” methods

-   ASTM E1049-85 “Standard Practices for Cycle Counting in Fatigue Analysis”

-   You should be aware of cycle counting effects for the exam, but you do not need to memorize any particular algorithms

crack retardation
=================

<span>crack growth retardation</span>

-   When an overload is applied, the plastic zone is larger

-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone

-   We will discuss three retardation models, but no model has been shown to be perfect in all cases

-   The Wheeler method reduces *d**a*/*d**N*, the Willenborg model reduces *Δ**K*, and the Closure model increases *R* (increases *σ*<sub>*m**i**n*</sub>)

<span>wheeler retardation</span>

-   As long as crack is within overload plastic zone, we scale *d**a*/*d**N* by some *ϕ*

-   
    (*a*<sub>*i*</sub> + *r*<sub>*p**i*</sub>)=(*a*<sub>*o**l*</sub> + *r*<sub>*p**o**l*</sub>)

-   And *ϕ* is given by
    $$\\phi\_i = \\left\[\\frac{r\_{pi}}{a\_{ol}+r\_{pol}-a\_i}\\right\]^m$$

-   and the constant, *m* is to be determined experimentally

<span>willenborg retardation</span>

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*p**i*</sub>)=(*a*<sub>*o**l*</sub> + *r*<sub>*p**o**l*</sub>)

-   Willenborg assumes that the residual compressive stress in the plastic zone creates an effective, *K*<sub>*m**a**x*, *e**f**f*</sub>, where *K*<sub>*m**a**x*, *e**f**f*</sub> = *K*<sub>*m**a**x*</sub> − *K*<sub>*c**o**m**p*</sub>

-   The effective stress intensity factor is given by
    $$K\_{max,eff} = K\_{max,i} - \\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

<span>gallagher and hughes correction</span>

-   Galagher and Hughes observed that the Willenborg model stops cracks when they still propagate

-   They proposed a correction to the model

-   
    $$K\_{max,eff} = K\_{max,i} - \\phi\_i\\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

-   And the correction factor, *ϕ*<sub>*i*</sub> is given by
    $$\\phi\_i \\frac{1-K\_{TH}/K\_{max,i}}{s\_{ol}-1}$$

<span>closure model</span>

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*p**i*</sub>)=(*a*<sub>*o**l*</sub> + *r*<sub>*p**o**l*</sub>)

-   Within the overloaded plastic zone, the opening stress required can be expressed as
    *σ*<sub>*O**P*</sub> = *σ*<sub>*m**a**x*</sub>(1 − (1 − *C*<sub>*f*0</sub>)(1 + 0.6*R*)(1 − *R*))

-   Commonly this is expressed using the Closure Factor, *C*<sub>*f*</sub>

-   
    $$C\_f = \\frac{\\sigma\_{OP}}{\\sigma\_{max}} = (1-(1-C\_{f0})(1+0.6R)(1-R))$$

-   Where *C*<sub>*f*0</sub> is the value of the Closure Factor at *R* = 0

<span>closure model</span>

-   When using the closure model, we replace *R* with *C*<sub>*f*</sub>

-   If the model we are using is in terms of *Δ**K* we will also need to use *Δ**K* = (1 − *C*<sub>*f*</sub>)*K*<sub>*m**a**x*</sub>

<span>compressive under-loads</span>

-   Just as a tensile “overload” retards crack growth, we might expect a compressive “underload” to accelerate crack growth

-   This effect is not usually modeled for a few reasons

    1.  Compressive underloads are uncommon in airframes

    2.  The acceleration effect is minimal

    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model

    4.  Structures with large compressive loads are not generally subject to crack propagation problems


