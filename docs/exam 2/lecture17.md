## AE 737: Mechanics of Damage Tolerance
Lecture 17 - Crack Growth 

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

31 March, 2021

----
## schedule

- 31 Mar - Crack Growth
- 2 Apr - Homework 6 Due
- 5 Apr - Boeing Method
- 7 Apr - Cycle counting
- 9 Apr - Homework 6 Self-grade, Homework 7 Due


----
## outline

<!-- vim-markdown-toc GFM -->

* crack growth rate
* crack growth rate equations
* factors affecting crack propagation
* numerical algorithm

<!-- vim-markdown-toc -->

---
# crack growth rate

----
## fracture surface

![](../images/fracture_surface.jpg) <!-- .element width="50%" -->

----
## fracture surface

![](../images/Fatigue-Fracture-with-Beachmarks.jpg)

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
-   The slope of this curve (`$\frac{da}{dN}$`) is then plotted vs. either `$K_{Imax}$` or `$\Delta K_{I}$` on a log-log scale
-   This chart is then commonly divided into three regions

----
## da-dN vs K

![](../images/da-dn.png) <!-- .element width="50%" -->

----
## region I

-   In Region I crack growth is very slow and/or difficult to measure
-   In many cases, da/dN corresponds to the spacing between atoms!
-   The point at which the da/dN curve intersects the x-axis (usually with a relatively vertical slope) is called the fatigue threshold
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
-   The same considerations for thickness apply as with fracture toughness (`$K_c$` vs. `$K_{Ic}$`)
-   Is also a function of the load ratio, `$R = \sigma_{min}/\sigma_{max}$`

----
## R effects

-   While the x-axis can be either `$\Delta K$` or `$K_{max}$`, the shape of the data is the same
-   When we look at the effects of load ratio, *R*, the axis causes some differences on the plot
-   With `$\Delta K$` on the x-axis, increasing *R* will shift the curve up and to the left, shifting the fatigue threshold and fracture toughness on the graph as well

----
## R effects

-   With `$K_{max}$` on the x-axis, increasing *R* shifts the curve down and to the right, but fatigue threshold and fracture toughness keep same values
-   In general, *R* dependence vanishes for `$R> 0.8$` or `$R< -0.3$`. This effect is known as the band width

---
# crack growth rate equations

----
## crack growth rate equations

-   There are many crack growth rate equations of varying complexity
-   The “best” form to use will depend on design needs

----
## growth equations

-   The important features in curve-fit equations are
    1.  Region II curve fit (linear on log-log scale)
    2.  Region I curve fit (fatigue threshold)
    3.  Region III curve fit (critical stress intensity)
    4.  Stress ratio effects
    5.  Band width of R-curves

----
## paris law

-   The original
-   Fits the linear portion (Region II)
-   Does not fit Region I, Region III, or have R-dependence

`$$\frac{da}{dN} = C (\Delta K)^n$$`

-   Note: this assumes the x-axis is `$\Delta K$`, but `$\Delta K = (1-R)K_{max}$`, so we can easily convert

----
## walker

-   Region II is usually all that is needed for engineering, but R-dependence is often an important effect to capture
-   Walker modified the Paris law to account for R-dependence

`$$\frac{da}{dN} = C\left[(1-R)^mK_{max}\right]^n$$`

-   Gives a good fit for Region II with R-dependence and band width

----
## forman

-   The Forman equation was developed to capture the effects of Region II and Region III
-   Also includes the effects of *R*, but does not control the band width of R effects

`$$\frac{da}{dN} = \frac{C \left[(1-R)K_{max}\right]^n}{(1-R)K_c-(1-R)K_{max}}$$`

----
## modified forman

-   The Forman equation can be modified to include the effect of band width

`$$\frac{da}{dN} = \frac{C \left[(1-R)^m K_{max}\right]^n}{\left[(1-R)^mK_c-(1-R)^m K_{max}\right]^L}$$`

----
## collipriest

-   The Collipriest equation fits Regions I, II and III, but has no R-dependence

`$$\frac{da}{dN} = C_1 + C_2 \tanh^{-1} \left[\frac{\log \left(\frac{K_{max}^2}{K_oK_c}\right)}{\log (K_c/K_o)}\right]$$`

----
## modified collipriest

-   Following the same methods as before, we can modify the Collipriest equation for R-dependence and band width control

`$$\frac{da}{dN} = C_1 + C_2 \tanh^{-1} \left[\frac{\log \left(\frac{(1-R)^mK_{max}^2}{K_oK_c}\right)}{\log (K_c/K_o)}\right]$$`

-   For a cleaner graph, experimental data at different R-values is sometimes plotted vs. `$K_{eff}$`

`$$ K_{eff} = (1-R)^m K_{max}$$`

----
## nasgrow growth rate equation

-   A very complicated curve fit is provided in the NASGROW growth rate equation

`$$\frac{da}{dN} = C \left[\frac{1-f}{1-R}\Delta K\right]^n\frac{\left[1-\frac{\Delta K_{th}}{\Delta K}\right]}{\left[1-\frac{K_{max}}{K_{crit}}\right]}$$`

-   The curve fit parameters can be found in p. 307 of your text (or the NASGROLW/AFGROW documentation)

----
## boeing-walker growth rate equation

-   The Boeing-Walker growth equation is given as (for `$R \ge 0$`)

`$$\frac{da}{dN} = 10^{-4}\left(\frac{1}{mT}\right)^p\left[K_{max}(1-R)^q\right]^p$$`

----
## conversion of constants

-   Much of the data available to us is from Boeing, and given in terms of the Boeing-Walker equation
-   We can re-write some other equations to more easily convert parameters between the various equations
-   Walker-Boeing:

`$$\frac{da}{dN} = 10^{-4}\left(\frac{1}{mT}\right)^p\left[\Delta K(1-R)^{q-1}\right]^p$$`

----
## conversion of constants

-   Walker-AFGROW:

`$$\frac{da}{dN} = C_w\left[\Delta K(1-R)^{m-1}\right]^{n_w}$$`

-   Forman:

`$$\frac{da}{dN} = \frac{C_F}{(1-R)K_c - \Delta K} (\Delta K)^{n_f}$$`

----
## conversion of constants

|              Walker-Boeing              |                Walker-AFGROW                 |                       Forman                        |
|:---------------------------------------:|:--------------------------------------------:|:---------------------------------------------------:|
| `$10^{-4}\left(\frac{1}{mT}\right)^p$`  | `$C_w = 10^{-4}\left(\frac{1}{mT}\right)^p$` | `$C_F = (K_c-1)10^{-4}\left(\frac{1}{mT}\right)^p$` |
|                    q                    |                  `$m = q$`                   |                                                     |
|                    p                    |                 `$n_w = p$`                  |                     `$n_f = p$`                     |


----
## paris example

-   A wide center-cracked panel with `$C = 6.75\times10^{-10}$` and *n* = 3.89 (with units in ksi and inches)
-   If the crack is initially 1 inch long, find the crack length after 5,000 cycles of 15 ksi loading
-   What if the load cycles varied from 5 ksi to 15 ksi? (*m* = 0.6)

---
# factors affecting crack propagation

----
## factors affecting crack propagation

<div class="left">

- thickness
- stress ratio
- temperature
- environment
  
</div>

<div class="right">

-  frequency 
-  crack orientation 
-  manufacturer 
-  heat treatment 
  
</div>

----
## thickness

-   We already discussed the effects of thickness on fracture toughness
-   The same effects are important in crack propagation
-   In thin (plane stress) plates, cracks can be treated as through cracks
-   In thick plates (plain strain), we generally need to consider the crack shape

----
## thickness

-   Cyclic life is primarily a function of `$K_i/K_c$` where `$K_i$` is the stress intensity factor in the first cycle
-   Other experiments indicate a relationship between `$\frac{d(a/Q)}{dN}$` and `$K_{max}$`
-   *Q* is a shape parameter for elliptical flaws

----
## temperature

-   In general (for most aluminum alloys) cracks propagate more slowly with a decrease in temperature
-   This trend is exactly opposite the trend for `$K_c$`
-   The effect varies in different materials
-   Most materials benefit from slightly lower temperatures, but as temperatures are further decreased the crack growth rate increases again

----
## temperature

![](../images/temperature_growth.PNG) <!-- .element width="30%" -->

----
## temperature

-   In general, temperature effects can not be predicted well
-   Instead, materials should be tested at a range of temperatures to establish a range of operating temperatures with corresponding crack growth data

----
## environment

-   There are many conditions in the environment that can affect crack growth
-   Moisture greatly increases the crack growth rate
-   Salt water increases crack growth rate even further
-   These effects have varying strength depending on the material used

----
## environment

<div class="left">

![](../images/environment_7075.jpg)

</div>

<div class="right">

![](../images/environment_2024.jpg) <!-- .element width="90%" -->

</div>

----
## environment

-   Further, the shape of the applied load curve has a significant effect when combined with adverse environments
-   Crack growth is faster when the load increases slowly and decreases rapidly
-   Crack growth is slower when the load increases rapidly and decreases slowly

----
## environment

-   When the environment is corrosive, the test frequency is of particular importance
-   At low frequencies, a corrosive environment increases the threshold, *K*<sup>*th*</sup>
-   However in Region II, crack growth is faster
-   This effect can be explained by the corrosive environment blunting the crack tip

----
## frequency

-   There is conflicting information about the effect of frequency in the absence of a corrosive environment
-   Some experiments have found a frequency dependence, while others have not
-   Many claim that the frequency dependence is due to small amounts of water in air during frequency dependence experiment

----
## crack orientation

-   For rolled plates, a crack will generally propagate faster parallel to the rolling direction
-   In many materials, however, the difference between orientations is not significant when compared to scatter, and it is often neglected
-   Some materials behave very differently with different crack orientations (i.e. the slope of the paris law curve is different), so care should be taken based on the material used

----
## manufacturer

-   Different manufacturers of the same material can produce different crack growth rates
-   Some reasons for this may be
	-   Slight variation in composition
	-   Site cleanliness (inclusions)
	-   Heat treatment/cold rolling variations

----
## heat and surface treatments

-   Different heat and surface treatments are often applied
-   They provide various benefits (corrosion resistance, residual stress, residual stress relief)
-   But they will also affect the crack growth rate

---
# numerical algorithm

----
## numerical algorithm

-   While the Paris Law can be integrated directly (for simple load cases), many of the other formulas cannot
-   A simple numerical algorithm for determining incremental crack growth is

`$$a_{i+1} = a_i + \left(\frac{da}{dN}\right)_i\left(\Delta N\right)_i$$`

----
## numerical algorithm

-   This method is quite tedious by hand (need many *a*<sub>*i*</sub> values for this to be accurate)
-   But is simple to do in Excel, MATLAB, Python, or many other codes
-   For most accurate results, use `$\Delta N = 1$`, but this is often unnecessary
-   When trying to use large `$\Delta N$`, check convergence by using larger and smaller `$\Delta N$` values

----
## boeing-walker example

-   Use the Boeing-Walker equation to find the crack length after 20000 cycles of 15 ksi load on a large, center-cracked sheet of bare 2024-T3 in dry air, with an initial crack of 0.5"
-   Use the numerical algorithm with `$\Delta N = 1000$`

----
## convergence example

-   compare the results from the previous example with `$\Delta N = 10, 100, 1000$` and direct integration

----
## variable load cases

-   In practice variable loads are often seen
-   The most basic way to handle these is to simply calculate the crack length after each block of loading
-   We will discuss an alternate method, which is more convenient for flight “blocks” next class
-   We will also discuss “retardation” models next class

----
## variable load example

-   For the same material as above (2024-T3, center-cracked, dry air), consider 20000 cycles with 15 ksi load followed by 10000 cycles of 5 - 20 ksi.


