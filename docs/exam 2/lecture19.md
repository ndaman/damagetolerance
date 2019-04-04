## AE 737: Mechanics of Damage Tolerance
Lecture 19 - Cycle Counting

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 9, 2019

----
## schedule

- 9 Apr - Boeing Method, HW7 Due
- 11 Apr - Crack Retardation
- 16 Apr - Exam Review, HW8 Due 
- 18 Apr - Exam 2

----
## outline

<!-- vim-markdown-toc GFM -->

* cycle counting
* crack growth retardation
* finite element techniques

<!-- vim-markdown-toc -->

---
# cycle counting

----
## cycle counting

-   As illustrated in our previous example, cycle counting method can make a difference for variable amplitude loads
-   Two common methods for cycle counting that give similar results are known as the “rainflow” and “range-pair” methods
-   ASTM E1049-85 “Standard Practices for Cycle Counting in Fatigue Analysis”

----
## rain-flow method

1.  Rearrange the history to start with the highest peak or lowest valley
2.  Imagine rain flowing down the slope until the next reversal, check if the drips over the edge would catch another section of roof
3.  Once you have reached the farthest point, reverse direction and follow the water to the other edge, count this as one cycle
4.  Consider all parts that have touched the path of water “erased” and repeat

----
## rain-flow method

![](..\images/rainflow.png) <!-- .element width="40%" -->

----
## range-pair method

1.  Read next peak or valley. *Y* is the first range, *X* is the second range
2.  If *X* &lt; *Y* advance points
3.  If *X* ≥ *Y*, count *Y* as 1 cycle and discard both points in *Y*, go to 1
4.  Remaining cycles are counted backwards from end of history

----
## range-pair

![](..\images/range-pair.png) <!-- .element width="30%" -->

----
## cycle counting example

-   Use the rain-flow method to count cycles
-   Use the range-pair method to count cycles

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
-   Crack closure method
    -   An energy based method
    -   Calculate energy to close crack one element away from crack tip
    -   Can have a courser mesh than direct method

----
## fea in fracture

-   Cohesive elements
    -   Specialty elements act like an adhesive between two materials
    -   Used to model crack propagation when crack path (and material behavior) are known
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

-   The displacement method is generally more accurate in Finite Elements

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

