## AE 737: Mechanics of Damage Tolerance
Lecture 21 - Exam 2 Review

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 16, 2019

----
## schedule

- 16 Apr - Exam Review, HW8 Due 
- 18 Apr - Exam 2
- 23 Apr - Damage Tolerance

----
## outline

<!-- vim-markdown-toc GFM -->

* exam format
* stress-based fatigue
* strain-based fatigue
* crack propagation
* crack retardation

<!-- vim-markdown-toc -->

---
# exam format

----
## exam 2

-   5 questions
-   Bring calculator
-   Closed note/closed book
-   Make sure you can integrate the Paris Law equation (see Homework 7 problems 1 and 2)
-   No table look-ups (stress intensity factors, paris/walker law constants will be given in problem)
-   See last year’s exam and equation sheet on Blackboard

---
# stress-based fatigue

----
## stress based fatigue

-   Has the simplest analysis of any fatigue analysis
-   Very good for high cycle fatigue (i.e. low stress fatigue)
-   High cycle fatigue means there is less plasticity
-   Typically starts between 10<sup>2</sup> − 10<sup>4</sup> cycles
-   This point varies by material, but can be found using strain-based fatigue analysis

----
## constant amplitude stressing

-   *Δσ* is known as the stress range, and is the difference between max and min stress
-   *σ*<sub>*m*</sub> is the mean stress, and can sometimes be zero, but this is not always the case
-   *σ*<sub>*a*</sub> is the stress amplitude, and is the variation about the mean
-   We can express all of these in terms of the maximum and minimum stress

$$\\begin{aligned}
  \\Delta \\sigma &= \\sigma\_{max} - \\sigma\_{min}\\\\
  \\sigma\_m &= \\frac{\\sigma\_{max} + \\sigma\_{min}}{2}\\\\
  \\sigma\_a &= \\frac{\\sigma\_{max}- \\sigma\_{min}}{2}
\\end{aligned}$$

----
## constant amplitude stressing

-   It is also common to describe some ratios
-   The stress ratio, *R* is defined as

$$R = \\frac{\\sigma\_{min}}{\\sigma\_{max}}$$

-   And the amplitude ratio, *A* is defined as

$$A = \\frac{\\sigma\_a}{\\sigma\_m}$$

----
## useful relations

-   There are some useful relationships between the above equations

$$\\begin{aligned}
  \\Delta \\sigma &= 2 \\sigma\_a = \\sigma\_{max}(1-R)\\\\
  \\sigma\_m &= \\frac{\\sigma\_{max}}{2}(1+R)\\\\
  R &= \\frac{1-A}{1+A}\\\\
  A &= \\frac{1-R}{1+R}
\\end{aligned}$$

----
## practical considerations

-   High cycle fatigue requires a lot of testing
-   Usually for very high cycle fatigue some form of rotating beam test machine is used
-   Rotating 4-point bend is one of the most common modern methods
-   Tensile test machines can be used, but require much more time

----
## stress life curves

-   Stress-life curves, or S-N curves, are generated from test data to predict the number of cycles to failure
-   In general, one set (or family) of S-N curves is generated using the same *σ*<sub>*m*</sub>
-   Usually *S*<sub>*a*</sub> (the nominal stress equivalent of *σ*<sub>*a*</sub>) is plotted versus *N* (the number of cycles)

----
## stress life curves

-   Each individual point on an S-N curve represents one fatigue experiment
-   To find enough data to form statistical significance, as well as to fit a curve across all levels of fatigue is very time-consuming
-   In the following plot, if only one test was performed for each point, the total number of cycles tested would be about 7.3*x*10<sup>7</sup>
-   For a 100 Hz machine, this represents over 200 hours of consecutive testing
-   Each repetition would further increase the test time required

----
## stress life curves

----
## stress life curves

-   On a linear scale, the data appear not to agree well with any standard fit

-   It is also very difficult to differentiate between low-cycle fatigue failure stresses

-   Instead S-N curves are often plotted on a semi-log or log-log scale, so pay attention to the axes

----
## stress life curves

----
## curve fits

-   If the curve is nearly linear on a log-linear plot, we use the following form to fit the data
-   *σ*<sub>*a*</sub> = *C* + *D*log*N*<sub>*f*</sub>
-   When the data are instead linear on a log-log scale, the following form is generally used
-   *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>
-   *σ*<sub>*f*</sub><sup>′</sup> and *b* are often considered material properties and can often be looked up on a table (p. 235)

----
## stress life curves

----
## fatigue limit

-   The fatigue limit, or endurance limit, is a feature of some materials where below a certain stress, no fatigue failure is observed
-   Below the fatigue limit, this material is considered to have infinite life
-   This most notably occurs in plain-carbon and low-alloy steels
-   In these materials, *σ*<sub>*e*</sub> is considered to be a material property
-   This phenomenon is not typical of aluminum or copper alloys, but is sometimes arbitrarily assigned using whatever the failure stress is at some large number of cycles (10<sup>7</sup> or 10<sup>8</sup>)

----
## fatigue limit

----
## effect of variable amplitude

-   We know that variable loads can often occur in real scenarios, but how can we model the effect?
-   Miner’s Rule is often used to approximate the effect of variable amplitude load
-   We consider each load amplitude (and the number of cycles at that amplitude) as having used up a percentage of a part’s life

$$\\frac{N\_1}{N\_{f1}} + \\frac{N\_2}{N\_{f2}} + \\frac{N\_3}{N\_{f3}} + ... = \\sum \\frac{N\_i}{N\_{fi}} = 1$$

----
## effect of variable amplitude

-   Often there are “blocks” of variable amplitude loads which repeat
-   A typical flight cycle is a good example of this
-   A flight will have working loads, vibrations, as well as storms/turbulence, but each flight should have similar loading
-   If we call the number of “block” *B* then we have

$$B \\left\[\\sum \\frac{N\_i}{N\_{if}}\\right\]\_{rep} = 1$$

----
## mean stress

-   Since mean stress has an effect on fatigue life, sometimes a family of S-N curves at varying mean stress values is created
-   S-N curves for these are reported in different ways, but commonly *σ*<sub>*m**a**x*</sub> replaces *σ*<sub>*a*</sub> on the y-axis
-   One useful way of representing these data, instead of many S-N curves, is a constant-life diagram
-   It is created by taking points from the S-N curves and plotting a line through constant *N*<sub>*f*</sub> values

----
## Goodman line

-   The first work on this problem was done by Goodman, who proposed the line

$$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\frac{\\sigma\_m}{\\sigma\_u} = 1$$

-   This equation can also be used for fatigue limits, since they are just a point on the S-N curves

$$\\frac{\\sigma\_e}{\\sigma\_{er}} + \\frac{\\sigma\_m}{\\sigma\_u} = 1$$

----
## modifications

-   While the Goodman line gives a good approximation to convert non-zero mean stress S-N curves, it is somewhat overly conservative at high mean stresses
-   It is also non-conservative for negative mean stresses
-   An alternative fit is known as the Gerber Parabola

$$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\left(\\frac{\\sigma\_m}{\\sigma\_u}\\right)^2 = 1$$

-   In general, the Goodman line is a good fit for brittle materials (steels) while the Gerber parabola is a better fit for more ductile materials

----
## modifications

-   The Goodman line can also be improved by replacing *σ*<sub>*u*</sub> with the corrected true fracture strength $\\tilde{\\sigma}\_{fB}$ or the constant *σ*<sub>*f*</sub><sup>′</sup> from the S-N curve fit

$$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\frac{\\sigma\_m}{\\sigma\_f^\\prime} = 1$$

-   This is known as the Morrow Equation
-   For steels, $\\sigma\_f^\\prime \\approx \\tilde{\\sigma}\_{fB}$, but for aluminums these values can be significantly different, and better agreement is found using $\\tilde{\\sigma}\_{fB}$.

----
## modifications

-   One more relationship that has shown particularly good results with aluminum alloys is the Smith, Watson, and Topper equations (SWT)

$$\\sigma\_{ar} = \\sqrt{\\sigma\_{max}\\sigma\_a}$$

-   In general, it is best to use a form that matches your data
-   If data is lacking, the SWT and Morrow equations generally provide the best fit

----
## general stress

-   Often combined loads from different sources introduce stresses which are not uni-axial
-   For ductile materials, good agreement has been found using an effective stress amplitude, similar to the octahedral shear yield criterion

$$\\bar{\\sigma}\_a = \\frac{1}{\\sqrt{2}}\\sqrt{(\\sigma\_{xa}-\\sigma\_{ya})^2 + (\\sigma\_{ya}-\\sigma\_{za})^2 + (\\sigma\_{za}-\\sigma\_{xa})^2 + 6(\\tau\_{xy}^2 + \\tau\_{yz}^2 + \\tau\_{zx}^2)}$$

-   The effective mean stress is given by

$$\\bar{\\sigma}\_m = \\bar{\\sigma}\_{xm} + \\bar{\\sigma}\_{ym} + \\bar{\\sigma}\_{zm}$$

----
## notch effects

-   In this discussion, we use “notch” to refer to any geometric feature that increases the local stress (such as holes, fillets, grooves, etc.)
-   We discussed notches and stress concentration factors in terms of stress concentration factors
-   In our fatigue notation, *σ*<sub>*max*</sub> = *K*<sub>*t*</sub>*S*
-   This relates local stress to the average, nominal stress
-   The stress intensity factor can be used to characterize the “strength” of a notch

----
## notch effects

-   We might expect the fatigue life of a notched specimen to be similar to a pristine specimen with *S*<sub>*a*, *pristine*</sub> = *σ*<sub>*max*, *notched*</sub>
-   If we look at actual test data, however, this estimate would be overly conservative
-   Even when the stress is adjusted for some fatigue notch factor, *k*<sub>*f*</sub>, it is only valid at longer cycles (*N*<sub>*f*</sub> &gt; 10<sup>6</sup>)

$$k\_f = \\frac{\\sigma\_{ar}}{S\_{ar}}$$

-   Notches will have different effects, largely depending on their radius.
-   The maximum possible fatigue notch factor is *k*<sub>*f*</sub> = *k*<sub>*t*</sub>

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

-   Where *ρ* is the radius of the notch
-   *α* is a material property
    |            Material           | *α* (mm) | *α* (in) |
    |:-----------------------------:|:--------:|:--------:|
    |        Aluminum alloys        |   0.51   |   0.02   |
    | Annealed or low-carbon steels |   0.25   |   0.01   |
    |  Quenched and tempered steels |   0.064  |  0.0025  |

----
## peterson notch sensitivy

-   For high-strength steels, a more specific *α* estimate can be found

$$\\begin{aligned}
  \\alpha &= 0.025 \\left(\\frac{2070 }{\\sigma\_u}\\right)^{1.8} & \\text{mm} & \\qquad \\sigma\_u \\ge 550 \\text{ MPa}\\\\
  \\alpha &= 0.001 \\left(\\frac{300 }{\\sigma\_u}\\right)^{1.8} & \\text{in} & \\qquad \\sigma\_u \\ge 80 \\text{ ksi}
\\end{aligned}$$

-   *α* predictions are valid for bending and axial fatigue
-   For torsion fatigue, a good estimate can be found
    *α*<sub>*torsion*</sub> = 0.6*α*

---
# strain-based fatigue

----
## strain based fatigue

-   The strain based fatigue method uses local stresses and strains (instead of global, nominal values)
-   The strain-based method gives greater detail, and validity at lower cycles
-   It is still valid for high cycle fatigue
-   Does not include crack growth analysis or fracture mechanics

----
## lines

-   If we separate elastic and plastic strains, we notice that the data for elastic and plastic strains are represented by straight lines, in the log-log scale
-   If we recall the form used for a straight line in log-log plots for S-N curves:
    *σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>
-   We can convert this to find the elastic component of strain

$$\\epsilon\_{ea} = \\frac{\\sigma\_f^\\prime}{E} (2N\_f)^b$$

----
## lines

-   We can use the same form with new constants for the plastic component of strain
    *ϵ*<sub>*p**a*</sub> = *ϵ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*c*</sup>
-   We can combine the elastic portion with the plastic to find the total strain-life curve

$$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E} (2N\_f)^b + \\epsilon\_f^\\prime (2 N\_f)^c$$

----
## mean stress in strain-based fatigue

-   In regions where plastic strain is significant, some applied mean stress is likely to be relaxed through cyclic plastic strain
-   When the plastic strain is not significant, mean stress will exist
-   Mean strain does not generally affect fatigue life

----
## morrow approach

-   Recall the Morrow approach for mean stress effects from the stress-based method

$$\\frac{\\sigma\_a}{\\sigma\_{ar}} + \\frac{\\sigma\_m}{\\sigma\_f^\\prime} = 1$$

-   We can rearrange the equation such that

$$\\sigma\_a = \\sigma\_f^\\prime\\left\[\\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)^\\frac{1}{b}(2N\_f)\\right\]^b$$

----
## morrow approach

-   If we compare to the stress-life equation (*σ*<sub>*a*</sub> = *σ*<sub>*f*</sub><sup>′</sup>(2*N*<sub>*f*</sub>)<sup>*b*</sup>), we see that we can replace *N*<sub>*f*</sub> with

$$N^\* = N\_f \\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)^\\frac{1}{b}$$

-   We can now substitute *N*<sup>\*</sup> for *N*<sub>*f*</sub> in the strain-life equation to find

$$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E} \\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)(2N\_f)^b + \\epsilon\_f^\\prime\\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)^\\frac{c}{b} (2 N\_f)^c$$

----
## morrow approach

-   Graphically, we can use the Morrow approach very easily using only the zero-mean stress graph
-   From the zero-mean stress graph, find the point corresponding to your applied strain
-   For a non zero mean stress, this point represents (*ϵ*<sub>*a*</sub>, *N*<sup>\*</sup>), we can now solve for *N*<sub>*f*</sub> 

----
## modified morrow

-   While the Morrow equation agrees very well with many data, some are better fit with a modification
-   In the modified version, it is assumed that the mean stress has no effect on the plastic term

$$\\epsilon\_a = \\frac{\\sigma\_f^\\prime}{E}\\left(1-\\frac{\\sigma\_m}{\\sigma\_f^\\prime}\\right)(2N\_f)^b + \\epsilon\_f^\\prime (2N\_f)^c$$

-   There is no convenient solution method for this form, and it generally must be solved numerically, or plotted with many families of *σ*<sub>*m*</sub>

----
## smith watson topper

-   The Smith, Watson, and Topper approach assumes that the life for any given state is dependent on the product *σ*<sub>*m*</sub>*a**x**ϵ*<sub>*a*</sub>
-   After some manipulation, this gives

$$\\sigma\_{max} \\epsilon\_a = \\frac{\\left(\\sigma\_f^\\prime\\right)^2}{E}(2N\_f)^{2b} + \\sigma\_f^\\prime \\epsilon\_f^\\prime (2N\_f)^{b+c}$$

-   This method can also be solved graphically if a plot of *σ*<sub>*max*</sub>*ϵ*<sub>*a*</sub> is made using zero-mean data. All we need to do is find the new *σ*<sub>*max*</sub>*ϵ*<sub>*a*</sub> point to find a new *N*<sub>*f*</sub>

----
## comparison

-   All three methods discussed are in general use
-   The Morrow method is very good for steel
-   The modified Morrow method gives improved results in many materials
-   The SWT approach is very good for general use, but is non-conservative with a compressive mean stress

---
# crack propagation

----
## crack growth rate

-   We can observe that fatigue damage occurs through crack propagation
-   “cracks” and fracture mechanics have been omitted from all our fatigue discussion thus far
-   It would be beneficial to predict at what rate a crack will extend

----
## crack growth rate

-   Crack growth rate can be measured experimentally
-   Using a center-crack specimen, a fatigue load is applied
-   The crack length is measured and plotted vs. the number of cycles
-   The slope of this curve ($\\frac{da}{dN}$) is then plotted vs. either *K*<sub>*I*, *max*</sub> or *ΔK*<sub>*I*</sub> on a log-log scale
-   This chart is then commonly divided into three regions

----
## da-dN vs K

![](..\images\da-dn.png)

----
## region I

-   In Region I crack growth is very slow and/or difficult to measure
-   In many cases, da/dN corresponds to the spacing between atoms!
-   The point at which the da/dN curve intersects the x-axis is often called the fatigue threshold
-   Typically 3-15 $\\text{ ksi} \\sqrt{\\text{in}}$ for steel
-   3-6 $\\text{ ksi} \\sqrt{\\text{in}}$ for aluminum

----
## region II

-   Most important region for general engineering analysis
-   Once a crack is present, most of the growth and life occurs in Region II
-   Generally linear in the log-log scale

----
## region III

-   Unstable crack growth
-   Usually neglected (we expect failure before Region III fully develops in actual parts)
-   Can be significant for parts where we expect high stress and relatively short life

----
## crack growth rate curve

-   The crack growth rate curve is considered a material property
-   The same considerations for thickness apply as with fracture toughness (*K*<sub>*c*</sub> vs. *K*<sub>*Ic*</sub>)
-   Is also a function of the load ratio, *R* = *σ*<sub>*min*</sub>/*σ*<sub>*max*</sub>

----
## R effects

-   While the x-axis can be either *ΔK* or *K*<sub>*max*</sub>, the shape of the data is the same
-   When we look at the effects of load ratio, *R*, the axis causes some differences on the plot
-   With *ΔK* on the x-axis, increasing *R* will shift the curve up and to the left, shifting the fatigue threshold and fracture toughness on the graph as well
-   With *K*<sub>*max*</sub> on the x-axis, increasing *R* shifts the curve down and to the right, but fatigue threshold and fracture toughness keep same values
-   In general, *R* dependence vanishes for *R* &gt; 0.8 or *R* &lt; −0.3. This effect is known as the band width

----
## boeing method for variable amplitude loads

-   Whether integrating numerically or analytically, it is time-consuming to consider multiple repeated loads
-   It is particularly difficult to consider flight loads, which can vary by “mission”
-   For example, an aircraft may fly three different routes, in no particular order, but with a known percentage of time spent in each route
-   Traditional methods would use a random mix of each load spectra
-   The Boeing Method combines each repeatable load spectrum into one single equivalent cycle

----
## boeing method

-   The Boeing method is derived by separating the geometry effects from load and material effects in the Boeing-Walker equation.
    
$$\\frac{da}{dN} = \\left\[\\frac{1}{n}\\right\]\\frac{dL}{dN} = 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

$$\\frac{dL}{dN} = n 10^{-4} \\left\[\\frac{k\_{max}Z}{m\_T}\\right\]^p$$

$$\\frac{dN}{dL} = \\frac{1}{n} 10^{4} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p$$

$$\\int\_{0}^{N}dN = \\frac{10^{4}}{n}  \\int\_{L\_0}^{L\_f} \\left\[\\frac{m\_T}{k\_{max}Z}\\right\]^p dL$$

$$N = 10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p  \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$$

----
## boeing method

-   In this form, the term $10^{4} \\left(\\frac{m\_t}{z\\sigma\_{max}}\\right)^p$ is strictly from the applied load and material, while $\\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p}$ is from geometry
-   If we now define *G* to account for crack geometry
    
$$G = \\left\[ \\int\_{L\_0}^{L\_f} \\frac{dL}{\\left( n\\sqrt{\\pi L/n}\\beta\\right)^p} \\right\] ^{-1/p}$$

-   And define *zσ*<sub>*max*</sub> = *S* as the equivalent load spectrum, then we have

$$N = 10^4 \\left(\\frac{m\_t/G}{S}\\right)^p$$

-   Using this method, *G* is typically looked up from a chart (such as on p. 369)

----
## boeing method

-   To replace a repeated load spectrum with an equivalent load, we need to invert the relationship
-   We currently have cycles per crack growth, inverting gives crack growth per cycle

$$\\text{crack growth per cycle} = 10^{-4} \\left(\\frac{m\_t/G}{S}\\right)^{-p}$$

-   If we consider a general, repeatable “block”, we have

$$10^{-4} \\left( m\_t/G \\right)^{-p} \\sum\_i \\left( \\frac{1}{z\\sigma\_{max}} \\right)\_i^{-p} N\_i = 10^{-4} \\left( \\frac{m\_t/G}{S} \\right)^{-p}$$

-   Which simplifies to
    ∑<sub>*i*</sub>(*zσ*<sub>*max*</sub>)<sub>*i*</sub><sup>*p*</sup>*N*<sub>*i*</sub> = (*S*)<sup>*p*</sup>

----
## cycle counting

-   As illustrated in previous examples, cycle counting method can make a difference for variable amplitude loads
-   Two common methods for cycle counting that give similar results are known as the “rainflow” and “range-pair” methods
-   ASTM E1049-85 “Standard Practices for Cycle Counting in Fatigue Analysis”
-   You should be aware of cycle counting effects for the exam, but you do not need to memorize any particular algorithms

---
# crack retardation

----
## crack growth retardation

-   When an overload is applied, the plastic zone is larger
-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone
-   We will discuss three retardation models, but no model has been shown to be perfect in all cases
-   The Wheeler method reduces *da*/*dN*, the Willenborg model reduces *ΔK*, and the Closure model increases *R* (increases *σ*<sub>*min*</sub>)

----
## wheeler retardation

-   As long as crack is within overload plastic zone, we scale *da*/*dN* by some *ϕ*
    (*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   And *ϕ* is given by

$$\\phi\_i = \\left\[\\frac{r\_{pi}}{a\_{ol}+r\_{pol}-a\_i}\\right\]^m$$

-   and the constant, *m* is to be determined experimentally

----
## willenborg retardation

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   Willenborg assumes that the residual compressive stress in the plastic zone creates an effective, *K*<sub>*max*, *eff*</sub>, where *K*<sub>*max*, *eff*</sub> = *K*<sub>*max*</sub> − *K*<sub>*comp*</sub>
-   The effective stress intensity factor is given by

$$K\_{max,eff} = K\_{max,i} - \\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

----
## gallagher and hughes correction

-   Galagher and Hughes observed that the Willenborg model stops cracks when they still propagate
-   They proposed a correction to the model

$$K\_{max,eff} = K\_{max,i} - \\phi\_i\\left\[K\_{max,OL}\\sqrt{1-\\frac{\\Delta a\_i}{r\_{pol}}} - K\_{max,i} \\right\]$$

-   And the correction factor, *ϕ*<sub>*i*</sub> is given by

$$\\phi\_i \\frac{1-K\_{TH}/K\_{max,i}}{s\_{ol}-1}$$

----
## closure model

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   Within the overloaded plastic zone, the opening stress required can be expressed as
    *σ*<sub>*OP*</sub> = *σ*<sub>*max*</sub>(1 − (1 − *C*<sub>*f*0</sub>)(1 + 0.6*R*)(1 − *R*))
-   Commonly this is expressed using the Closure Factor, *C*<sub>*f*</sub>

$$C\_f = \\frac{\\sigma\_{OP}}{\\sigma\_{max}} = (1-(1-C\_{f0})(1+0.6R)(1-R))$$

-   Where *C*<sub>*f*0</sub> is the value of the Closure Factor at *R* = 0

----
## closure model

-   When using the closure model, we replace *R* with *C*<sub>*f*</sub>
-   If the model we are using is in terms of *ΔK* we will also need to use *ΔK* = (1 − *C*<sub>*f*</sub>)*K*<sub>*max*</sub>

----
## compressive under-loads

-   Just as a tensile “overload” retards crack growth, we might expect a compressive “underload” to accelerate crack growth
-   This effect is not usually modeled for a few reasons
    1.  Compressive underloads are uncommon in airframes
    2.  The acceleration effect is minimal
    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model
    4.  Structures with large compressive loads are not generally subject to crack propagation problems

