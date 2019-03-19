## AE 737: Mechanics of Damage Tolerance
Lecture 13 - Project Discussion

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

March 19, 2019

----
## schedule

- 19 Mar - Exam return, Project Discussion
- 21 Mar - Stress-based fatigue
- 26 Mar - Stress-based fatigue, Project Abstract Due
- 28 Mar - Strain-based fatigue
- 2 Apr - Crack growth, HW6 Due

----
## outline
<!-- TOC START min:1 max:1 link:false update:true -->
- exam
- final project
- fatigue
- nominal and local stress
- fatigue tests
<!-- TOC END -->

---
# exam

----
## curve

-   Precurve: 79 % avg, 9 % std dev
-   Post-curve: 84.8 % avg, 8.5 % std dev
-   High Score: 96
-   Curve formula: (old score) x 0.91 + 12.7

---
# final project

----
## general description

-   This is in place of a final exam
-   Should demonstrate your understanding of the course as a whole
-   Choose any real object
-   Needs to undergo some cyclic loading (for fatigue)
-   Materials, loads, and any other "given" data can be made up

----
## overview

-   Estimate stress intensity factor at some critical location
-   Estimate residual strength (use a "typical" crack length)
-   Estimate fatigue life
-   Estimate crack propagation
-   Suggest reasonable inspection cycle for safe use
-   Suggest an improvement to make part more damage tolerant

----
## grade breakdown

-   Per course syllabus, project will be worth 25% of final grade
-   5% Project abstract submission and approval
-   15% for each major component
    -   stress intensity factor
    -   residual strength
    -   fatigue
    -   crack propagation
    -   inspection cycle

----
## grade breakdown
-   10% for damage tolerant improvement
-   10% general presentation, organization, and grammar

----
## project abstract

-   Main purpose of abstract is for you to make sure your idea fits with project purpose
-   I will give you feedback on how to tweak your proposed idea to better meet project purpose
-   Abstract submission should be 1-2 pages
-   Briefly describe your chosen part, how it undergoes cyclic loading, what location you intend to consider for the stress intensity factor.
-   This is like a proposal: convince me that your idea has what it takes to be a great final project

----
## justify assumptions

-   You will need to make many assumptions in order to complete this project
-   Clearly state your assumptions and justify them (i.e. if you assume plane strain conditions, justify that by showing how thick your part is)
-   Although will not have experimental or FE analysis specific to your part, use concepts from other data in the text (stiffeners, multiple site damage) in a qualitative manner

----
## figures

-   Figures can greatly enhance your project report, if you use them well
-   Many readers will jump to figures in a report, include sufficient information in caption and axis labels so a reader with general damage tolerance understanding can understand your figure
-   This will interest them in the rest of your paper

----
## examples

-   Last year I did not curve final project grades
-   Some examples of a couple of good project reports have been posted to blackboard (and [here](https://ndaman.github.io/damagetolerance/#/2/2))
-   You should not use their projects, but they have very good use of figures, as well as an appropriate balance of both depth and breadth in the their analysis

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

![A reciprocating cantilever test allows for non-zero mean stress](..\images\reciprocating_cantilever.PNG)

----
## axial fatigue test

![Servohydraulic test fixtures are expensive, but computer controlled and allow for irregular load histories](..\images\servohydraulic.jpg)

----
## fatigue tests

-   The length of a fatigue test is determined by two factors
    1.  How many cycles it takes for the specified load to cause failure
    2.  The speed of the motor controlling the test
-   Servohydraulic machines generally have a speed of 10 - 100 Hz.
-   At a speed of 100 Hz, it would take 28 hours for 10<sup>7</sup> cycles, 12 days for 10<sup>8</sup> cycles, and nearly 4 months for 10<sup>9</sup> cycles
-   While some machines can test at very high speeds, the inertia of the sample can interfere with results
