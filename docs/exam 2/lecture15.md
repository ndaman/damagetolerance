## AE 737: Mechanics of Damage Tolerance
Lecture 14 - Stress based fatigue

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

March 21, 2019

----
## schedule

- 21 Mar - Stress-based fatigue
- 26 Mar - Stress-based fatigue, Project Abstract Due
- 28 Mar - Strain-based fatigue
- 2 Apr - Crack growth, HW6 Due


----
## outline
<!-- TOC START min:1 max:1 link:false update:true -->
- fatigue
- nominal and local stress
- fatigue tests
- fatigue life analysis

<!-- TOC END -->

---
# fatigue

----
## fatigue

-   We refer to damage from repeated, or cyclic loads as fatigue damage
-   Some of the earliest work on fatigue began in the 1800's
-   Chains, railway axles, etc.
-   An estimated 80% of failure expenses are due to fatigue

----
## fatigue

-   There are three main approaches to fatigue analysis
	-   Stress based fatigue analysis
	-   Strain based fatigue analysis
	-   Fracture mechanics fatigue analysis

----
## stress based fatigue

-   One of the simplest assumptions we can make is that a load cycles between a constant maximum and minimum stress value
-   This is a good approximation for many cases (axles, for example) and can also be easily replicated experimentally
-   This is referred to as constant amplitude stressing

----
## constant amplitude stressing

![](..\images\fatigue-constant-amplitude.PNG) <!-- .element width="50%" -->

----
## constant amplitude stressing

-   `$\Delta \sigma$` is known as the stress range, and is the difference between max and min stress
-   `$\sigma_m$` is the mean stress, and can sometimes be zero, but this is not always the case
-   `$\sigma_a$` is the stress amplitude, and is the variation about the mean

----
## constant amplitude stressing

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

---
# nominal and local stress

----
## definition and notation

-   It is important to distinguish between the nominal (global) stress and the local stress at some point of interest
-   We use $\sigma$ for the stress at a point (local stress)
-   We use *S* as the nominal (global) stress
-   In simple tension, $\sigma=S$

----
## notation

-   For many cases (bending, notches), $\sigma \ne S$ in general
-   We must also be careful to note `$\sigma_y$`, in some cases `$S < \sigma_y$` but at some locations `$\sigma > \sigma_y$`

----
## simple tension

![todo alt text ](../images/p232-a.jpg) <!-- .element width="50%" -->

----
## bending

![ As long as `$\sigma < \sigma_y$`, `$\sigma$` varies linearly. If `$\sigma > \sigma_y$` at any location, however, the relationship is non-linear](../images/p232-b.jpg) <!-- .element width="50%" -->

----
## notches

![As long as $\sigma < \sigma_y$, $\sigma$ varies linearly. If $\sigma > \sigma_y$ at any location, however, the relationship is non-linear](../images/p232-c.jpg) <!-- .element width="50%" -->

---
# fatigue tests

----
## rotating cantilever beam

![Stress variation through a cantilever beam](..\images\rotating_cantilever.png)

----
## rotating four-point bend

![Four-point bend test gives uniform stress along the top and bottom surfaces](..\images\Rotating_Bending_Machine.jpg)

----
## fatigue tests

-   The above rotating methods are very common, but in their current configurations can only be used for zero mean stress
-   a reciprocating bend test can be used for non-zero mean stress

----
## reciprocating bend test

![A reciprocating cantilever test allows for non-zero mean stress](..\images\reciprocating_cantilever.PNG) <!-- .element width="50%" -->

----
## axial fatigue test

![Servohydraulic test fixtures are expensive, but computer controlled and allow for irregular load histories](..\images\servohydraulic.jpg) <!-- .element width="30%" -->

----
## fatigue tests

-   The length of a fatigue test is determined by two factors
    1.  How many cycles it takes for the specified load to cause failure
    2.  The speed of the motor controlling the test

----
## fatigue tests

-   Servohydraulic machines generally have a speed of 10 - 100 Hz.
-   At a speed of 100 Hz, it would take 28 hours for 10<sup>7</sup> cycles, 12 days for 10<sup>8</sup> cycles, and nearly 4 months for 10<sup>9</sup> cycles
-   While some machines can test at very high speeds, the inertia of the sample can interfere with results

---
# fatigue life analysis

----
## stress life curves

-   Stress-life curves, or S-N curves, are generated from test data to predict the number of cycles to failure
-   In general, one set (or family) of S-N curves is generated using the same `$\sigma_m$`
-   Usually *S*<sub>*a*</sub> (the nominal stress equivalent of `$\sigma_a$`) is plotted versus *N* (the number of cycles)

----
## stress life curves

-   Each individual point on an S-N curve represents one fatigue experiment
-   To find enough data to form statistical significance, as well as to fit a curve across all levels of fatigue is very time-consuming
-   In the following plot, if only one test was performed for each point, the total number of cycles tested would be about 7.3*x*10<sup>7</sup>
-   For a 100 Hz machine, this represents over 200 hours of consecutive testing

----
## stress life curves

![](..\images\stress-life.PNG) <!-- .element width="50%" -->

----
## stress life curves

-   On a linear scale, the data appear not to agree well with any standard fit
-   It is also very difficult to differentiate between low-cycle fatigue failure stresses
-   Instead S-N curves are often plotted on a semi-log or log-log scale, so pay attention to the axes

----
## stress life curves

![](..\images\stress-life-log.PNG)<!-- .element width="50%" -->

----
## curve fits

-   If the curve is nearly linear on a log-linear plot, we use the following form to fit the data
`$$\sigma_a = C + D \log N_f$$`
-   When the data are instead linear on a log-log scale, the following form is generally used
`$$\sigma_a = \sigma^\prime_f(2N_f)^b$$`
-   `$\sigma^\prime_f$` and *b* are often considered material properties and can often be looked up on a table (p. 235)

----
## curve fit

![](..\images\stress-life-fit.PNG)<!-- .element width="50%" -->

----
## stress life curves

![](..\images\stress-life-fit-log.PNG)<!-- .element width="50%" -->

---
# fatigue limit

----
## fatigue limit

-   The fatigue limit, or endurance limit, is a feature of some materials where below a certain stress, no fatigue failure is observed
-   Below the fatigue limit, this material is considered to have infinite life
-   This most notably occurs in plain-carbon and low-alloy steels
-   In these materials, `$\sigma_e$` is considered to be a material property

----
## fatigue limit

-   This phenomenon is not typical of aluminum or copper alloys
-   It is sometimes arbitrarily assigned using whatever the failure stress is at some large number of cycles (10<sup>7</sup> or 10<sup>8</sup>)

----
## fatigue limit

![](..\images\fatigue-limit.PNG)<!-- .element width="50%" -->

----
## high and low cycle fatigue

-   Some other important terms are high cycle fatigue and low cycle fatigue
-   "High cycle fatigue" generally is considered anything above 10<sup>3</sup> cycles, but varies somewhat by material
-   High cycle fatigue occurs when the stress is sufficiently low that yielding effects do not dominate behavior
-   When yielding effects do dominate behavior, the strain-based approach is more appropriate