## AE 737: Mechanics of Damage Tolerance
Lecture 20 - Crack Retardation

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 11, 2019

----
## schedule

- 11 Apr - Crack Retardation
- 16 Apr - Exam Review, HW8 Due 
- 18 Apr - Exam 2
- 23 Apr - Damage Tolerance

----
## outline


<!-- vim-markdown-toc GFM -->

* crack growth retardation
* finite element techniques
* damage tolerance
* inpsection cycle

<!-- vim-markdown-toc -->

---
# crack growth retardation

----
## crack growth retardation

-   When an overload is applied, the plastic zone is larger
-   This zone has residual compressive stresses, which slow crack growth until the crack grows beyond this over-sized plastic zone

----
## crack growth retardation

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
## wheeler example

-   (p. 340), A wide edge-cracked panel (*β* = 1.22) has an initial crack length of 0.3 inches. Use *p* = 3.5, *m*<sub>*T*</sub> = 32 and *q* = 0.6 to grow a crack for two load cases. Use the Wheeler retardation model with *m* = 1.43, a plane stress plastic zone, and *σ*<sub>*YS*</sub> = 68 ksi.
-   Case 1: *σ*<sub>*max*</sub> = 18 ksi and *σ*<sub>*min*</sub> = 3.6 ksi for 12,000 cycles

----
## wheeler example (cont)

-   Case 2: *σ*<sub>*max*</sub> = 18 ksi and *σ*<sub>*min*</sub> = 3.6 ksi for 6,000 cycles, followed by one cycle of *σ*<sub>*max*</sub> = 27 ksi and *σ*<sub>*min*</sub> = 5.4 ksi, followed by another 6,000 cycles of *σ*<sub>*max*</sub> = 18 ksi and *σ*<sub>*min*</sub> = 3.6 ksi.

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

----
## gallagher and hughes correction

-   And the correction factor, *ϕ*<sub>*i*</sub> is given by

$$\\phi\_i \\frac{1-K\_{TH}/K\_{max,i}}{s\_{ol}-1}$$

----
## willenborg example

-   Consider the Wheeler example problem with Willenborg parameters of *S*<sub>*ol*</sub> = 2.3 and *K*<sub>*TH*</sub> = 1 ksi.

----
## closure model

-   Once again, we consider that retardation occurs when (*a*<sub>*i*</sub> + *r*<sub>*pi*</sub>)=(*a*<sub>*ol*</sub> + *r*<sub>*pol*</sub>)
-   Within the overloaded plastic zone, the opening stress required can be expressed as
    *σ*<sub>*OP*</sub> = *σ*<sub>*max*</sub>(1 − (1 − *C*<sub>*f*0</sub>)(1 + 0.6*R*)(1 − *R*))

----
## closure model

-   Commonly this is expressed using the Closure Factor, *C*<sub>*f*</sub>

$$C\_f = \\frac{\\sigma\_{OP}}{\\sigma\_{max}} = (1-(1-C\_{f0})(1+0.6R)(1-R))$$

-   Where *C*<sub>*f*0</sub> is the value of the Closure Factor at *R* = 0

----
## closure model

-   When using the closure model, we replace *R* with *C*<sub>*f*</sub>
-   If the model we are using is in terms of *ΔK* we will also need to use *ΔK* = (1 − *C*<sub>*f*</sub>)*K*<sub>*max*</sub>

----
## closure example

-   Consider the Wheeler/Willenborg example problem with Closure parameters of *C*<sub>*f*0</sub> = 0.3 and *C*<sub>*f*</sub> = 0.3728

----
## under-loads

-   We might expect a compressive “underload” to accelerate crack growth
-   This effect is not usually modeled for a few reasons
    1.  Compressive underloads are uncommon in airframes
    2.  The acceleration effect is minimal
    3.  Analysis is generally adjusted with experimental data, so acceleration can be built in to current model
    4.  Structures with large compressive loads are not generally subject to crack propagation problems


---
# finite element techniques

----
## finite element methods in fracture

-   Direct method (use near-tip stress field)
    -   Requires very fine mesh near the tip to be accurate
    -   Can be made feasible with specialty elements

----
## fem in fracture

-   Crack closure method
    -   An energy based method
    -   Calculate energy to close crack one element away from crack tip
    -   Can have a courser mesh than direct method

----
## fem in fracture

- J-integral method
    - Many FE codes give a convenient method to calculate the J-integral
    - Learn about this in 837, but gives a mesh-independent way to calculate stress intensity

----
## fem in fracture

-   Cohesive elements
    -   Specialty elements act like an adhesive between two materials
    -   Used to model crack propagation when crack path (and material behavior) are known

----
## fem in fracture

-   XFEM
    -   eXtended Finite Element Method
    -   Can predict crack growth in any direction
    -   Adds extra physics model inside an element (fine mesh not necessarily required)

----
## direct method

-   We already know that the stress field near the crack tip is
    
$$\\sigma\_{yy} = \\frac{K\_I}{\\sqrt{2 \\pi x}}$$

-   We can solve this for *K*<sub>*I*</sub> and we should (in theory) be able to calculate *K*<sub>*I*</sub>
-   We will get a unique *K*<sub>*I*</sub> value for every point (*x*) along crack plane

----
## direct method

-   For this method to be accurate, we need to capture the singularity at crack tip
-   This requires a very fine mesh (computationally expensive)
-   Alternatively, many FE packages include “singularity” elements which allow a coarse(r) mesh

----
## modeling tips

-   Use symmetry in your model to reduce node count
-   Center-crack can be modeled using on 1/4 of the model
-   Use biased node seeding (more nodes near tip)

----
## symmetry

![](..\images\singularity_quarter.png) <!-- .element width="60%" -->

----
## symmetry

![](..\images\singularity_mirrored.png) <!-- .element width="60%" -->

----
## analyzing results

-   If our results are accurate, we should be able to calculate the same *K*<sub>*I*</sub> at any point
-   To ensure convergence, we plot the calculated *K*<sub>*I*</sub> vs. *x* (distance from crack tip)
-   In the region where this plot is a horizontal line, we consider a converged *K*<sub>*I*</sub>

----
## analyzing results

-   It is also possible to consider the crack opening displacement

$$u\_y = \\frac{K\_I(\\kappa + 1)}{4 G \\pi}\\sqrt{-2 \\pi x}$$

-   Where *κ* is to easily differentiate between plane stress and plane strain
    
$$\\begin{aligned}
  \\kappa &= 3 - 4\\nu & \\text{(plane strain)}\\\\
  \\kappa &= \\frac{3-\\nu}{1+\\nu} & \\text{(plane stress)}
\\end{aligned}$$

----
## stress results 

<div class="anything" id="stress">
<!--
{
  "initialize": "function(container) {
  var trace1 = {
    x: [5.45E-02, 1.13E-01, 1.79E-01, 2.54E-01, 3.39E-01, 4.35E-01, 5.44E-01, 6.69E-01, 8.10E-01, 9.70E-01, 1.15195],	
    y: [995.851, 638.229, 524.483, 437.773, 382.712, 337.833, 303.788, 275.233, 251.72 , 231.981, 215.293],
    mode: 'lines',
    type: 'scatter',
    name: 'stress'
  };
  var trace2 = {
    x: [5.45E-02, 1.13E-01, 1.79E-01, 2.54E-01, 3.39E-01, 4.35E-01, 5.44E-01, 6.69E-01, 8.10E-01, 9.70E-01, 1.15195],
    y: [582.6797823, 537.8621906, 556.3459015, 553.0662241, 558.461596, 558.5840646, 561.8763421, 564.1008252, 567.7205204, 572.6588527, 579.2108094],
    mode: 'lines',
    type: 'scatter',
    yaxis: 'y2',
    name: 'stress intensity'
  };
  var data = [trace1, trace2];
  layout = {
    xaxis: {
      title: 'x'
    },
    yaxis: {
      title: 'stress'
    },
    yaxis2: {
      title: 'stress intensity',
      titlefont: {color: 'rgb(148, 103, 189)'},
      tickfont: {color: 'rgb(148, 103, 189)'},
      overlaying: 'y',
      side: 'right'
    }
  };
  Plotly.newPlot('stress', data, layout);
	}"
}
-->
</div>

----
## displacement results

<div class="anything" id="disp">
<!--
{
  "initialize": "function(container) {
  var trace1 = {
    x: [5.56E-02, 1.10E-01, 1.76E-01, 2.48E-01, 3.32E-01, 4.26E-01, 5.33E-01, 6.55E-01, 7.94E-01, 9.51E-01, 1.13091],
    y: [2.09E-02, 2.44E-02, 3.42E-02, 3.84E-02, 4.63E-02, 5.10E-02, 5.80E-02, 6.32E-02, 6.99E-02, 7.56E-02, 8.22E-02],
    mode: 'lines',
    type: 'scatter',
    name: 'displacement'
  };
  var trace2 = {
    x: [5.56E-02, 1.10E-01, 1.76E-01, 2.48E-01, 3.32E-01, 4.26E-01, 5.33E-01, 6.55E-01, 7.94E-01, 9.51E-01, 1.13091],
    y: [5.48E+02, 4.53E+02, 5.04E+02, 4.76E+02, 4.96E+02, 4.83E+02, 4.90E+02, 4.82E+02, 4.84E+02, 4.78E+02, 4.77E+02],
    mode: 'lines',
    yaxis: 'y2',
    type: 'scatter',
    name: 'stress intensity'
  };
  var data = [trace1, trace2];
  layout = {
    xaxis: {
      title: 'x'
    },
    yaxis: {
      title: 'displacement'
    },
    yaxis2: {
      title: 'stress intensity',
      titlefont: {color: 'rgb(148, 103, 189)'},
      tickfont: {color: 'rgb(148, 103, 189)'},
      overlaying: 'y',
      side: 'right'
    }
  };
  Plotly.newPlot('disp', data, layout);
	}"
}
-->
</div>

---
# damage tolerance

----
## definitions

-   **Safe Life**
    -   Assume cracks are present
    -   Cracks are not inspectable
    -   Use crack growth or fatigue analysis to establish safe life, in which part will not fail

----
## definitions

-   **Damage tolerant**
    -   Assume cracks are present
    -   When cracks grow to a sufficient size, they are inpsectable
    -   Inspection cycles are set such that we can be sure crack will not become critical during regular operation

----
## definitions

-   **Fail safe** multiple load paths, redundancy
-   **Limit load** maximum anticipated load
-   **Design load** limit load multiplied by some factor of safety (static design)
-   **Operating load** stress spectrum (used for crack propagation/fatigue)

----
## structural categories

-   Single load path - safe life
-   Single load path - damage tolerant
-   Multiple load path - externally inspectable
-   Multiple load path - inspectable prior to failure

----
## single load path - safe life

-   In many structures, multiple load paths are not practical
-   It is also possible for the critical crack length to be much smaller than is easily detectable
-   In these cases, safe life design is used to identify a certain number of cycles a part can sustain before it needs to be replaced
-   This often requires replacing parts pre-maturely

----
## single load path - damage tolerant

-   Redundant load paths are not necessary when a part is easily inspectable
-   When detectable crack is much less than critical crack, we can safely inspect a part so that it is only replaced when damaged
-   Many times this damage can be repaired to avoid replacing the part entirely
-   Ideal for large, expensive parts that are easy to access (inspection and repair)

----
## multiple load path - externally inspectable

-   This is a very common scenario in aircraft (skin/stringer)
-   In this case, the primary structure is not inspectable
-   A secondary structure is inspectable
-   The secondary structure can support a certain number of cycles after failure of the primary structure
-   Secondary structure can be inspected to observe damage in primary structure

----
## multiple load path - inspectable prior to failure

-   In this case the primary structure is inspectable
-   Otherwise same as externally inspectable structure

---
# inpsection cycle

----
## inspection cycle

-   In many industries, an inspection cycle is pre-determined by some governing agency
-   We have developed all the equations necessary to determine our own
    1.  Determine loading cycle (or equivalent load cycle using Boeing method)
    2.  Determine maximum crack length
    3.  Determine initial assumed crack length (minimum detectable crack)
    4.  Calculate number of cycles/flights until crack grows to maximum allowable size

----
## load cycle

-   Be sure to use a consistent cycle-counting method (rainflow or range-pair)
-   Recall the Boeing method for variable amplitude loads
    ∑<sub>*i*</sub>(*zσ*<sub>*max*</sub>)<sub>*i*</sub><sup>*p*</sup>*N*<sub>*i*</sub> = (*S*)<sup>*p*</sup>

----
## crack length

-   We can use the residual strength curve to set a maximum crack length
-   We also want to ensure that the crack propagation is still in Region II at this point
-   Crack growth becomes unstable in Region III

----
## initial crack length

-   What is the smallest crack we can detect?
	-   Liquid penetrant (any material)
	-   Magnetic particle (ferromagnetic materials)
	-   Ultrasonic (any material)
	-   Eddy Current (only for conductive materials)
	-   Radiographic (X-Ray, nearly any material)

----
## calculate cycles

-   We can integrate (analytically or numerically) to find the number of cycles it will take for a crack to grow to critical length
-   Note that numerical integration is non-conservative, in general
-   *ΔN* should be small enough to give converged solution

----
## example


