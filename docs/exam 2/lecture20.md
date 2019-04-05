## AE 737: Mechanics of Damage Tolerance
Lecture 20 - Inspection 

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

* finite element techniques
* damage tolerance
* inpsection cycle

<!-- vim-markdown-toc -->

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

-   Cohesive elements
    -   Specialty elements act like an adhesive between two materials
    -   Used to model crack propagation when crack path (and material behavior) are known

----
## fem in fracture

-   XFEM
    -   eXtended Finite Element Method
    -   Can predict crack growth in any direction
    -   Adds “phantom” cracks in all elements

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
-   Alternatively, many FE packages include “singularity” elements which allow coarse(r) mesh

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

$$u\_y = \\frac{K\_I(\\kappa + 1)}{4 \\nu \\pi}\\sqrt{-2 \\pi x}$$

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


