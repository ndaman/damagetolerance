## AE 737: Mechanics of Damage Tolerance
Lecture 21 - Exam 2 Review

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 21, 2022

----
## schedule

- 21 Apr - Exam Review
- 26 Apr - Exam 2
- 28 Apr - Damage Tolerance
- 3 May - Special Topics

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
-   Make sure you can integrate the Paris Law equation 
-   No table look-ups (stress intensity factors, paris/walker law constants will be given in problem)
-   See previous exams and equation sheet on Blackboard/course web site

---
# stress-based fatigue

----
## stress based fatigue

-   Has the simplest analysis of any fatigue analysis
-   Very good for high cycle fatigue (i.e. low stress fatigue)
-   High cycle fatigue means there is less plasticity
-   Typically starts between `$10^2 - 10^4$` cycles
-   This point varies by material, but can be found using strain-based fatigue analysis

----
## constant amplitude stressing

-   `$\Delta \sigma$` is known as the stress range, and is the difference between max and min stress
-   `$\sigma_m$` is the mean stress, and can sometimes be zero, but this is not always the case
-   `$\sigma_a$` is the stress amplitude, and is the variation about the mean
-   We can express all of these in terms of the maximum and minimum stress

`$$\begin{aligned}
  \Delta \sigma &= \sigma_{max} - \sigma_{min}\\
  \sigma_m &= \frac{\sigma_{max} + \sigma_{min}}{2}\\
  \sigma_a &= \frac{\sigma_{max}- \sigma_{min}}{2}
\end{aligned}$$`

----
## constant amplitude stressing

-   It is also common to describe some ratios
-   The stress ratio, *R* is defined as

`$$R = \frac{\sigma_{min}}{\sigma_{max}}$$`

-   And the amplitude ratio, *A* is defined as

`$$A = \frac{\sigma_a}{\sigma_m}$$`

----
## useful relations

-   There are some useful relationships between the above equations

`$$\begin{aligned}
  \Delta \sigma &= 2 \sigma_a = \sigma_{max}(1-R)\\
  \sigma_m &= \frac{\sigma_{max}}{2}(1+R)\\
  R &= \frac{1-A}{1+A}\\
  A &= \frac{1-R}{1+R}
\end{aligned}$$`

----
## practical considerations

-   High cycle fatigue requires a lot of testing
-   Usually for very high cycle fatigue some form of rotating beam test machine is used
-   Rotating 4-point bend is one of the most common modern methods
-   Tensile test machines can be used, but require much more time

----
## stress life curves

-   Stress-life curves, or S-N curves, are generated from test data to predict the number of cycles to failure
-   In general, one set (or family) of S-N curves is generated using the same `$\sigma_m$`
-   Usually `$S_a$` (the nominal stress equivalent of `$\sigma_a$`) is plotted versus *N* (the number of cycles)

----
## stress life curves

-   Each individual point on an S-N curve represents one fatigue experiment
-   To find enough data to form statistical significance, as well as to fit a curve across all levels of fatigue is very time-consuming
-   In the following plot, if only one test was performed for each point, the total number of cycles tested would be about `$7.3\times 10^7$`
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
-   `$\sigma_a = C + D \log N_f$`
-   When the data are instead linear on a log-log scale, the following form is generally used
-   `$\sigma_a = \sigma_f^\prime(2N_f)^b$`
-   `$\sigma_f^\prime$` and `$b$` are often considered material properties and can often be looked up on a table (p. 235)

----
## stress life curves

----
## fatigue limit

-   The fatigue limit, or endurance limit, is a feature of some materials where below a certain stress, no fatigue failure is observed
-   Below the fatigue limit, this material is considered to have infinite life
-   This most notably occurs in plain-carbon and low-alloy steels
-   In these materials, `$\sigma_e$` is considered to be a material property
-   This phenomenon is not typical of aluminum or copper alloys, but is sometimes arbitrarily assigned using whatever the failure stress is at some large number of cycles (`$10^7$` or `$10^8$`)

----
## fatigue limit

----
## effect of variable amplitude

-   We know that variable loads can often occur in real scenarios, but how can we model the effect?
-   Miner’s Rule is often used to approximate the effect of variable amplitude load
-   We consider each load amplitude (and the number of cycles at that amplitude) as having used up a percentage of a part’s life

`$$\frac{N_1}{N_{f1}} + \frac{N_2}{N_{f2}} + \frac{N_3}{N_{f3}} + ... = \sum \frac{N_i}{N_{fi}} = 1$$`

----
## effect of variable amplitude

-   Often there are “blocks” of variable amplitude loads which repeat
-   A typical flight cycle is a good example of this
-   A flight will have working loads, vibrations, as well as storms/turbulence, but each flight should have similar loading
-   If we call the number of “block” *B* then we have

`$$B \left\[\sum \frac{N_i}{N_{if}}\right\]_{rep} = 1$$`

----
## mean stress

-   Since mean stress has an effect on fatigue life, sometimes a family of S-N curves at varying mean stress values is created
-   S-N curves for these are reported in different ways, but commonly `$\sigma_{max}$` replaces `$\sigma_a$` on the y-axis
-   One useful way of representing these data, instead of many S-N curves, is a constant-life diagram
-   It is created by taking points from the S-N curves and plotting a line through constant `$N_f$` values

----
## Goodman line

-   The first work on this problem was done by Goodman, who proposed the line

`$$\frac{\sigma_a}{\sigma_{ar}} + \frac{\sigma_m}{\sigma_u} = 1$$`

-   This equation can also be used for fatigue limits, since they are just a point on the S-N curves

`$$\frac{\sigma_e}{\sigma_{er}} + \frac{\sigma_m}{\sigma_u} = 1$$`

----
## modifications

-   While the Goodman line gives a good approximation to convert non-zero mean stress S-N curves, it is somewhat overly conservative at high mean stresses
-   It is also non-conservative for negative mean stresses
-   An alternative fit is known as the Gerber Parabola

`$$\frac{\sigma_a}{\sigma_{ar}} + \left(\frac{\sigma_m}{\sigma_u}\right)^2 = 1$$`

-   In general, the Goodman line is a good fit for brittle materials (steels) while the Gerber parabola is a better fit for more ductile materials

----
## modifications

-   The Goodman line can also be improved by replacing `$\sigma_u$` with the corrected true fracture strength `$\tilde{\sigma}_{fB}$` or the constant `$\sigma_f^\prime$` from the S-N curve fit

`$$\frac{\sigma_a}{\sigma_{ar}} + \frac{\sigma_m}{\sigma_f^\prime} = 1$$`

-   This is known as the Morrow Equation
-   For steels, `$\sigma_f^\prime \approx \tilde{\sigma}_{fB}$`, but for aluminums these values can be significantly different, and better agreement is found using `$\tilde{\sigma}_{fB}$`.

----
## modifications

-   One more relationship that has shown particularly good results with aluminum alloys is the Smith, Watson, and Topper equations (SWT)

`$$\sigma_{ar} = \sqrt{\sigma_{max}\sigma_a}$$`

-   In general, it is best to use a form that matches your data
-   If data is lacking, the SWT and Morrow equations generally provide the best fit

----
## general stress

-   Often combined loads from different sources introduce stresses which are not uni-axial
-   For ductile materials, good agreement has been found using an effective stress amplitude, similar to the octahedral shear yield criterion

`$$\bar{\sigma}_a = \frac{1}{\sqrt{2}}\sqrt{(\sigma_{xa}-\sigma_{ya})^2 + (\sigma_{ya}-\sigma_{za})^2 + (\sigma_{za}-\sigma_{xa})^2 + 6(\tau_{xy}^2 + \tau_{yz}^2 + \tau_{zx}^2)}$$`

-   The effective mean stress is given by

`$$\bar{\sigma}_m = \bar{\sigma}_{xm} + \bar{\sigma}_{ym} + \bar{\sigma}_{zm}$$`

----
## notch effects

-   In this discussion, we use “notch” to refer to any geometric feature that increases the local stress (such as holes, fillets, grooves, etc.)
-   We discussed notches and stress concentration factors in terms of stress concentration factors
-   In our fatigue notation, `$\sigma_{max} = K_t S$`
-   This relates local stress to the average, nominal stress
-   The stress intensity factor can be used to characterize the “strength” of a notch

----
## notch effects

-   We might expect the fatigue life of a notched specimen to be similar to a pristine specimen with `$S_{a,pristine} = \sigma_{max, notched}$`
-   If we look at actual test data, however, this estimate would be overly conservative
-   Even when the stress is adjusted for some fatigue notch factor, `$k_f$`, it is only valid at longer cycles (`$N_f > 10^6$`)

`$$k_f = \frac{\sigma_{ar}}{S_{ar}}$$`

-   Notches will have different effects, largely depending on their radius.
-   The maximum possible fatigue notch factor is `$k_f = K_t$`

----
## notch sensitivity factor

-   To avoid generating fatigue data for every possible notch configuration, some empirical relationships have been developed
-   A useful concept in these methods is the notch sensitivity factor

`$$q = \frac{k_f - 1}{k_t -1}$$`

-   When `$k_f = 1$`, `$q=0$`, in which case the notch has no effect
-   When `$k_f = k_t$`, `$q=1$`, in which case the notch has its maximum effect

----
## peterson notch sensitivity

-   Peterson developed the following relationship

`$$q = \frac{1}{1+\frac{\alpha}{\rho}}$$`

-   Where `$\rho$` is the radius of the notch
-   `$alpha$` is a material property

|            Material           | `$\alpha$` (mm) | `$\alpha$` (in) |
|:-----------------------------:|:--------:|:--------:|
|        Aluminum alloys        |   0.51   |   0.02   |
| Annealed or low-carbon steels |   0.25   |   0.01   |
|  Quenched and tempered steels |   0.064  |  0.0025  |

----
## peterson notch sensitivy

-   For high-strength steels, a more specific *α* estimate can be found

`$$\begin{aligned}
  \alpha &= 0.025 \left(\frac{2070 }{\sigma_u}\right)^{1.8} & \text{mm} & \qquad \sigma_u \ge 550 \text{ MPa}\\
  \alpha &= 0.001 \left(\frac{300 }{\sigma_u}\right)^{1.8} & \text{in} & \qquad \sigma_u \ge 80 \text{ ksi}
\end{aligned}$$`

-   `$\alpha$` predictions are valid for bending and axial fatigue
-   For torsion fatigue, a good estimate can be found

`$\alpha_{torsion}$ = 0.6 \alpha$`

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

`$$\sigma_a = \sigma_f^\rpime (2N_f)^b$$`

-   We can convert this to find the elastic component of strain

`$$\epsilon_{ea} = \frac{\sigma_f^\prime}{E} (2N_f)^b$$`

----
## lines

-   We can use the same form with new constants for the plastic component of strain

`$$\epsilon_{pa} = \epsilon_f^\prime (2N_f)^c$$`

-   We can combine the elastic portion with the plastic to find the total strain-life curve

`$$\epsilon_a = \frac{\sigma_f^\prime}{E} (2N_f)^b + \epsilon_f^\prime (2 N_f)^c$$`

----
## mean stress in strain-based fatigue

-   In regions where plastic strain is significant, some applied mean stress is likely to be relaxed through cyclic plastic strain
-   When the plastic strain is not significant, mean stress will exist
-   Mean strain does not generally affect fatigue life

----
## morrow approach

-   Recall the Morrow approach for mean stress effects from the stress-based method

`$$\frac{\sigma_a}{\sigma_{ar}} + \frac{\sigma_m}{\sigma_f^\prime} = 1$$`

-   We can rearrange the equation such that

`$$\sigma_a = \sigma_f^\prime\left\[\left(1-\frac{\sigma_m}{\sigma_f^\prime}\right)^\frac{1}{b}(2N_f)\right\]^b$$`

----
## morrow approach

-   If we compare to the stress-life equation (`$\sigma_a = \sigma_f^\prime (2N_f)^b$`), we see that we can replace `$N_f$` with

`$$N^\* = N_f \left(1-\frac{\sigma_m}{\sigma_f^\prime}\right)^\frac{1}{b}$$`

-   We can now substitute `$N^*$` for `$N_f$` in the strain-life equation to find

`$$\epsilon_a = \frac{\sigma_f^\prime}{E} \left(1-\frac{\sigma_m}{\sigma_f^\prime}\right)(2N_f)^b + \epsilon_f^\prime\left(1-\frac{\sigma_m}{\sigma_f^\prime}\right)^\frac{c}{b} (2 N_f)^c$$`

----
## morrow approach

-   Graphically, we can use the Morrow approach very easily using only the zero-mean stress graph
-   From the zero-mean stress graph, find the point corresponding to your applied strain
-   For a non zero mean stress, this point represents (`$\epsilon_a$`, `$N^*$`), we can now solve for `$N_f$`

----
## modified morrow

-   While the Morrow equation agrees very well with many data, some are better fit with a modification
-   In the modified version, it is assumed that the mean stress has no effect on the plastic term

`$$\epsilon_a = \frac{\sigma_f^\prime}{E}\left(1-\frac{\sigma_m}{\sigma_f^\prime}\right)(2N_f)^b + \epsilon_f^\prime (2N_f)^c$$`

-   There is no convenient solution method for this form, and it generally must be solved numerically, or plotted with many families of `$\sigma_m$`

----
## smith watson topper

-   The Smith, Watson, and Topper approach assumes that the life for any given state is dependent on the product `$\sigma_{max} \epsilon_a$`
-   After some manipulation, this gives

`$$\sigma_{max} \epsilon_a = \frac{\left(\sigma_f^\prime\right)^2}{E}(2N_f)^{2b} + \sigma_f^\prime \epsilon_f^\prime (2N_f)^{b+c}$$`

-   This method can also be solved graphically if a plot of `$\sigma_{max} \epsilon_a$` is made using zero-mean data. All we need to do is find the new `$\sigma_{max} \epsilon_a$` point to find a new `$N_f$`

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
-   The slope of this curve (`$\frac{da}{dN}$`) is then plotted vs. either `$K_{I,max}$`, or `$\Delta K_I$` on a log-log scale
-   This chart is then commonly divided into three regions

----
## da-dN vs K

![](..\images\da-dn.png) <!-- .element width="50%" -->

----
## region I

-   In Region I crack growth is very slow and/or difficult to measure
-   In many cases, da/dN corresponds to the spacing between atoms!
-   The point at which the da/dN curve intersects the x-axis is often called the fatigue threshold
-   Typically 3-15 `$\text{ ksi} \sqrt{\text{in}}$` for steel
-   3-6 `$\text{ ksi} \sqrt{\text{in}}$` for aluminum

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

-   While the x-axis can be either `$\Delta K$` or `$K_{max}$`, the shape of the data is the same
-   When we look at the effects of load ratio, *R*, the axis causes some differences on the plot
-   With `$\Delta K$` on the x-axis, increasing *R* will shift the curve up and to the left, shifting the fatigue threshold and fracture toughness on the graph as well
-   With `$K_{max}$` on the x-axis, increasing *R* shifts the curve down and to the right, but fatigue threshold and fracture toughness keep same values
-   In general, *R* dependence vanishes for `$R > 0.8$` or `$R < -0.3$`. This effect is known as the band width

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
    
`$$\frac{da}{dN} = \left\[\frac{1}{n}\right\]\frac{dL}{dN} = 10^{-4} \left\[\frac{k_{max}Z}{m_T}\right\]^p$$`

`$$\frac{dL}{dN} = n 10^{-4} \left\[\frac{k_{max}Z}{m_T}\right\]^p$$`

`$$\frac{dN}{dL} = \frac{1}{n} 10^{4} \left\[\frac{m_T}{k_{max}Z}\right\]^p$$`

`$$\int_{0}^{N}dN = \frac{10^{4}}{n}  \int_{L_0}^{L_f} \left\[\frac{m_T}{k_{max}Z}\right\]^p dL$$`

`$$N = 10^{4} \left(\frac{m_t}{z\sigma_{max}}\right)^p  \int_{L_0}^{L_f} \frac{dL}{\left( n\sqrt{\pi L/n}\beta\right)^p}$$`

----
## boeing method

-   In this form, the term `$10^{4} \left(\frac{m_t}{z\sigma_{max}}\right)^p$` is strictly from the applied load and material, while `$\int_{L_0}^{L_f} \frac{dL}{\left( n\sqrt{\pi L/n}\beta\right)^p}$` is from geometry
-   If we now define *G* to account for crack geometry
    
`$$G = \left\[ \int_{L_0}^{L_f} \frac{dL}{\left( n\sqrt{\pi L/n}\beta\right)^p} \right\] ^{-1/p}$$`

-   And define `$z\sigma_{max} = S$` as the equivalent load spectrum, then we have

`$$N = 10^4 \left(\frac{m_t/G}{S}\right)^p$$`

-   Using this method, *G* is typically looked up from a chart (such as on p. 369)

----
## boeing method

-   To replace a repeated load spectrum with an equivalent load, we need to invert the relationship
-   We currently have cycles per crack growth, inverting gives crack growth per cycle

`$$\text{crack growth per cycle} = 10^{-4} \left(\frac{m_t/G}{S}\right)^{-p}$$`

-   If we consider a general, repeatable “block”, we have

`$$10^{-4} \left( m_t/G \right)^{-p} \sum_i \left( \frac{1}{z\sigma_{max}} \right)_i^{-p} N_i = 10^{-4} \left( \frac{m_t/G}{S} \right)^{-p}$$`

-   Which simplifies to

`$$ \sum_i (z \sigma_{max})_i^p N_i = S^p $$`

----
## cycle counting

-   As illustrated in previous examples, cycle counting method can make a difference for variable amplitude loads
-   Two common methods for cycle counting that give similar results are known as the “rainflow” and “range-pair” methods
-   ASTM E1049-85 “Standard Practices for Cycle Counting in Fatigue Analysis”

---
# crack retardation

----
## crack growth retardation

-   When an overload is applied, the plastic zone is larger
-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone
-   We will discuss three retardation models, but no model has been shown to be perfect in all cases
-   The Wheeler method reduces `$da/dN$`, the Willenborg model reduces `$\Delta K$`, and the Closure model increases *R* (increases `$\sigma_{min}$`)

----
## wheeler retardation

-   As long as crack is within overload plastic zone, we scale `$da/dN$` by some `$\phi$`

`$$ (a_i + r_{pi}) \lte (a_{aol} + r_{pol})$$`

-   And `$\phi$` is given by

`$$\phi_i = \left[\frac{r_{pi}}{a_{ol}+r_{pol}-a_i}\right]^m$$`

-   and the constant, *m* is to be determined experimentally

----
## willenborg retardation

-   Once again, we consider that retardation occurs when 

`$$ (a_i + r_{pi}) \lte (a_{aol} + r_{pol})$$`

-   Willenborg assumes that the residual compressive stress in the plastic zone creates an effective, `$K_{max, eff}$`, where `$K_{max, eff} = K_{max} - K_{comp}$`
-   The effective stress intensity factor is given by

`$$K_{max,eff} = K_{max,i} - \left[K_{max,OL}\sqrt{1-\frac{\Delta a_i}{r_{pol}}} - K_{max,i} \right]$$`

----
## gallagher and hughes correction

-   Galagher and Hughes observed that the Willenborg model stops cracks when they still propagate
-   They proposed a correction to the model

`$$K_{max,eff} = K_{max,i} - \phi_i\left[K_{max,OL}\sqrt{1-\frac{\Delta a_i}{r_{pol}}} - K_{max,i} \right]$$`

-   And the correction factor, `$\phi_i$` is given by

`$$\phi_i \frac{1-K_{TH}/K_{max,i}}{s_{ol}-1}$$`

----
## closure model

-   Once again, we consider that retardation occurs when 

`$$ (a_i + r_{pi}) \lte (a_{aol} + r_{pol})$$`

-   Within the overloaded plastic zone, the opening stress required can be expressed as

`$$\sigma_{OP} = \sigma_{max} (1 - (1 - C_{f0})(1 + 0.6R)(1 - R))$$`

-   Commonly this is expressed using the Closure Factor, `$C_f$`

`$$C_f = \frac{\sigma_{OP}}{\sigma_{max}} = (1-(1-C_{f0})(1+0.6R)(1-R))$$`

-   Where `$C_{f0}$` is the value of the Closure Factor at `$R = 0$`

----
## closure model

-   When using the closure model, we replace *R* with `$C_f$`
-   If the model we are using is in terms of `$\Delta K$` we will also need to use `$\Delta K = (1 - C_f) K_{max}$`

----
## compressive under-loads

-   Just as a tensile “overload” retards crack growth, we might expect a compressive “underload” to accelerate crack growth
-   This effect is not usually modeled for a few reasons
    1.  Compressive underloads are uncommon in airframes
    2.  The acceleration effect is minimal
    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model
    4.  Structures with large compressive loads are not generally subject to crack propagation problems

