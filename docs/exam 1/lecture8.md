## AE 737: Mechanics of Damage Tolerance
Lecture 8 - Fracture Toughness

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

February 24, 2021

----
## schedule

- 24 Feb - Fracture Toughness 
- 26 Feb - HW3 Due, HW 2 Self-grade due
- 1 Mar - Residual Strength
- 3 Mar - Residual Strength 
- 5 Mar - HW4 Due, HW 3 Self-grade due
- 8 Mar - Multiple Site Damage

----
## outline

- fracture toughness
- R-curve
- thickness effects
- fracture toughness review
- residual strength

---
# fracture toughness

----
## fracture toughness

-   The critical load at which a cracked specimen fails produces a critical stress intensity factor
-   The "critical stress intensity factor" is known as *K*<sub>*c*</sub>
-   For Mode I, this is called *K*<sub>*Ic*</sub>
-   The critical stress intensity factor is also known as fracture toughness

`$$K_{IC} = \sigma_c \sqrt{\pi a}\beta$$`

-   Note: "Fracture Toughness" can also refer to *G*<sub>*Ic*</sub>, which is analogous to *K*<sub>*Ic*</sub>, but not the same

----
## fracture toughness

-   Fracture toughness is a material property, but it is only well-defined in certain conditions
-   Brittle materials
-   Plane strain (smaller plastic zone)
-   In these cases ASTM E399-12 is used.

----
## fracture toughness

![Thin panels have a generally higher fracture toughness, as they are in plane stress. As the panel gets thicker it converges to the plane strain fracture toughness.](../images/KIC_thickness.jpg) <!-- .element width="50%" -->

----
## unstable cracks

-   Stable crack growth means the crack extends only with increased load
-   Unstable crack growth means the crack will continue to extend indefinitely under the same load
-   For a perfectly brittle material, there is no stable crack growth, as soon as a critical load is reached, the crack will extend indefinitely

----
## stable cracks

-   For an elastic-plastic material, once the load is large enough to extend the crack, it will extend slightly
-   The load must be continually increased until a critical value causes unstable crack growth

----
## fracture toughness

-   During an experiment, we will record the crack length and applied load (*P*<sub>*i*</sub>, *a*<sub>*i*</sub>) each time we increase the load
-   We can calculate a unique stress intensity factor *K*<sub>*Ii*</sub> at each of these points
-   These are then used to create a "K-curve", plotting *K*<sub>*I*</sub> vs. *a*

----
## K-curve

![A graph showing the fracture toughness of a perfectly brittle material vs. a ductile material. A perfectly brittle material will not have any crack growth until the stress intensity is K_IC, at which point the crack grows indefinitely. A ductile material will have mostly stable crack growth, until reaching a critical value, K_C.](../images/k-curve.PNG) <!-- .element width="60%" -->

----
## K-curve

-   Materials will generally not be as flat as the perfectly brittle example
-   Plane strain conditions and brittle materials will tend towards a "flat" K-curve
-   *K*<sub>*IC*</sub> for brittle/plane strain is very well defined
-   *K*<sub>*C*</sub> for plane stress can refer to two things
-   Either the maximum *K*<sub>*C*</sub> during a test, or tangent point on *K*<sub>*R*</sub>-curve (R-curve)

----
## example

<div class="left">

-  In composites, and adhesives, some work is needed to ensure stable crack growth
-  The Double-Cantilever Beam (DCB) experiment to find *G*<sub>*IC*</sub> illustrates this

</div>

<div class="right">

`$$\begin{aligned}
  C &= \frac{\delta}{P}\\
  C &= \frac{2a^3}{3EI}\\
  G &= \frac{P^2}{2b}\frac{dC}{da}\\
  G &= \frac{P^2a^2}{bEI}
\end{aligned}$$`

</div>

----
## example

-   For crack growth to be stable we need

`$$\frac{dG}{da} \le 0$$`

-   Under fixed-load conditions, we find

`$$\frac{dG}{da} = \frac{2P^2a}{bEI}$$`

-   This is always positive, and thus results in unstable crack growth

----
## example

-   Under fixed-displacement conditions, we substitute for *P*
-   We find

`$$\frac{dG}{da} = -\frac{9\delta^2EI}{ba^3}$$`

-   Which is always stable, so for DCB tests, displacement control is generally used

---
# R-curve

----
## R-curve

-   For materials with some plasticity, the *K*<sub>*R*</sub> Curve, or R Curve, is very important
-   Sometimes called a "resistance curve" it is generally dependent on
    -   Thickness
    -   Temperature
    -   Strain rate

----
## R-curve

-   When done correctly, *K*<sub>*R*</sub> curves are not dependent on initial crack size or the specimen type used
-   ASTM E561 describes a general procedure

----
## *K*<sub>*c*</sub>

-   While we can look up plane stress *K*<sub>*c*</sub> for various materials, it is best if we have a *K*<sub>*R*</sub> curve
-   We may not know if the table uses *K*<sub>*c*</sub> using the tangent intersection method, or maximum stress intensity
-   Even if tangent intersection method is used, *K*<sub>*c*</sub> will different somewhat based on initial crack length

----
## R-curve

-   There are two main methods for plotting the R-curve
-   Crack size is measured directly (possibly with a drawn-on scale and camera)
-   Effective crack size is calculated from the load-displacement data

----
## physical crack

-   When the physical crack size is measured, we need to calculate the effective crack length (and effective stress intensity factor) at each data point
-   The effective crack length calculated from the load-displacement data already has the plastic zone effect built in

----
## plane stress fracture toughness

-   For a plane stress (or any thickness that is not plane strain) we can find *K*<sub>*c*</sub> two ways
-   One way is simply the maximum value of the *K*<sub>*R*</sub> curve, but this does not account for unstable crack growth
-   The more reliable way is to use the tangent intersection method

----
## tangent intersection method

-   Construct curves for *K*<sub>*I*</sub> based on our specimen geometry with constant applied load and varying crack length
-   Plot these curves on the same graph as *K*<sub>*R*</sub>
-   NOTE: *K*<sub>*R*</sub> curve should be plotted vs. *a*<sub>*eff*</sub>, not `$\Delta a$` or `$\Delta a_{eff}$`
-   *K*<sub>*c*</sub> is the point at which one of the *K*<sub>*I*</sub> curves is the tangent intersection with the *K*<sub>*R*</sub> curve

----
## R-Curve examples

-   [example](../examples/Tangent_R-curve.html)
-   Excel Solver

---
# thickness effects

----
## thickness effects

-   We already know there is a difference between plane strain and plane stress fracture toughness
-   As a material gets thicker and thicker, it converges to the plane strain solution
-   Thinner specimens tend towards the plane stress solution
-   When a specimen is thinner than some critical thickness, the material behavior is somewhat unknown

----
## thickness effects

-   There is also a difference in the fracture surface between thin and thick specimens
-   Thin specimens (in plane stress region) fail due to slant fracture
-   This actually indicates some mixed-mode conditions at failure
-   Thick specimens fail due to square fracture (with a small shear tip near the edges)
-   This is more consistent with pure Mode I

----
## slant fracture

![A slant fracture, where the failure plane rotates 45 degrees from the crack plane, considered a shear mode](../images/slant.PNG)

----
## shear lip

![In this shear lip, there is a long crack that near the end rotates away by 45 degrees creating a shear lip near the surface](../images/shear_lip.jpg)

---
# fracture toughness review

----
## group review

-   Group 1 - Sketch *K*<sub>*R*</sub>-curve (for ductile material), explain what it means, how to find *K*<sub>*c*</sub>
-   Group 2 - Sketch *K*<sub>*c*</sub> vs. crack length, explain what’s happening
-   Group 3 - How can we determine whether a panel is in plane strain or plane stress?
-   Group 4 - Sketch *K*<sub>*R*</sub>-curves for ductile and brittle materials, what is the difference?

---
# residual strength

----
## residual strength

-   As the crack grows, the area of the sample decreases, increasing the net section stress
-   The residual strength, `$\sigma_R$` is given in terms of the gross area, so as the crack grows the residual strength due to yield decreases
-   We can relate the net-section stress to `$\sigma_R$` by

`$$\sigma_R = \sigma_{YS} \frac{A_{net}}{A_{gross}}$$`

----
## residual strength

![Effective yield strength plotted vs. crack length. As the crack gets longer, the actual cross-sectional area decreases so that the effective yield strength also goes down.](../images/residual-strength.PNG) <!-- .element width="60%" -->

----
## residual strength

-   For brittle fracture to occur, we need to satisfy the condition

`$$\sigma_R = \sigma_C = \frac{K_C}{\sqrt{\pi a}\beta}$$`

----
## residual strength

![Here the effective K_i is plotted vs. crack length and compared to the net section yield. The lower of the two values will cause failure.](../images/residual-tough.PNG) <!-- .element width="60%" -->

----
## residual strength

-   Within the same family of materials (i.e. Aluminum), there is generally a trade-off between yield stress and fracture toughness
-   As we increase the yield strength, we decrease the fracture toughness (and vice versa)
-   Consider a comparison of the following aluminum alloys
    1.  7178-T6, `$K_C = 43 \text{ ksi} \sqrt{\text{in.}}$`, `$\sigma_{YS} = 74$` ksi
    2.  7075-T6, `$K_C = 68 \text{ ksi} \sqrt{\text{in.}}$`, `$\sigma_{YS} = 63$` ksi
    3.  2024-T3, `$K_C = 144 \text{ ksi} \sqrt{\text{in.}}$`, `$\sigma_{YS} = 42$` ksi

----
## residual strength

-   As an example let us consider an edge-cracked panel with `$W=6$` and `$t=0.1$` inches
-   The net section yield condition will be given by

`$$\sigma_C = \sigma_{YS} \frac{W-a}{W} = \sigma_{YS}\frac{6-a}{6}$$`

-   And the fracture condition by

`$$\sigma_C = \frac{K_C}{\sqrt{\pi a} \beta}$$`

With

`$$\small\{\beta = 1.12 - 0.231\left(\frac{a}{W}\right) + 10.55 \left(\frac{a}{W}\right)^2 - 21.72 \left(\frac{a}{W}\right)^3 + 30.39 \left(\frac{a}{W}\right)^4\}$$`


----
## 7178-T6

<div class="anything" id="7178">
<!--
{
  "initialize": "function(container) {
  function makeArr(startValue, stopValue, numVals) {
      var arr = [];
      var currValue = startValue;
      var step = (stopValue-startValue)/(numVals-1);
      for (var i = 1; i < numVals; i++) {
        arr.push(currValue + step*i);
      }
      return arr;
    }
  function toughness(k,x) {
    var y = [];
    for (var i = 0; i < x.length; i++) {
      y.push(k/(Math.PI*x[i]*6)**.5/(1.12-.231*x[i]+10.55*x[i]**2-21.72*x[i]**3+30.39*x[i]**4));
    }
    return y;
  }
  function netsection(s,x) {
    var y = [];
    for (var i = 0; i < x.length; i++){
      y.push(s*(1-x[i]));
    }
    return y;
  }
  var trace1 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: 'fracture'
  };
  trace1.y = toughness(43,trace1.x);
  var trace2 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: 'yield'
  };
  trace2.y = netsection(74,trace2.x);
  var data = [trace1, trace2];
  layout = {
    xaxis: {
      title: 'a/W'
    },
    yaxis: {
      title: 'residual strength',
      range: [0,80]
    }
  };
  Plotly.newPlot('7178', data, layout);
	}"
}
-->
</div>

----
## 7075-T6

<div class="anything" id="7075">
<!--
{
  "initialize": "function(container) {
  function makeArr(startValue, stopValue, numVals) {
      var arr = [];
      var currValue = startValue;
      var step = (stopValue-startValue)/(numVals-1);
      for (var i = 1; i < numVals; i++) {
        arr.push(currValue + step*i);
      }
      return arr;
    }
  function toughness(k,x) {
    var y = [];
    for (var i = 0; i < x.length; i++) {
      y.push(k/(Math.PI*x[i]*6)**.5/(1.12-.231*x[i]+10.55*x[i]**2-21.72*x[i]**3+30.39*x[i]**4));
    }
    return y;
  }
  function netsection(s,x) {
    var y = [];
    for (var i = 0; i < x.length; i++){
      y.push(s*(1-x[i]));
    }
    return y;
  }
  var trace1 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: 'fracture'
  };
  trace1.y = toughness(68,trace1.x);
  var trace2 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: 'yield'
  };
  trace2.y = netsection(63,trace2.x);
  var data = [trace1, trace2];
  layout = {
    xaxis: {
      title: 'a/W'
    },
    yaxis: {
      title: 'residual strength',
      range: [0, 80]
    }
  };
  Plotly.newPlot('7075', data, layout);
	}"
}
-->
</div>

----
## 2024-T3

<div class="anything" id="2024">
<!--
{
  "initialize": "function(container) {
  function makeArr(startValue, stopValue, numVals) {
      var arr = [];
      var currValue = startValue;
      var step = (stopValue-startValue)/(numVals-1);
      for (var i = 1; i < numVals; i++) {
        arr.push(currValue + step*i);
      }
      return arr;
    }
  function toughness(k,x) {
    var y = [];
    for (var i = 0; i < x.length; i++) {
      y.push(k/(Math.PI*x[i]*6)**.5/(1.12-.231*x[i]+10.55*x[i]**2-21.72*x[i]**3+30.39*x[i]**4));
    }
    return y;
  }
  function netsection(s,x) {
    var y = [];
    for (var i = 0; i < x.length; i++){
      y.push(s*(1-x[i]));
    }
    return y;
  }
  var trace1 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: 'fracture'
  };
  trace1.y = toughness(144,trace1.x);
  var trace2 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: 'yield'
  };
  trace2.y = netsection(42,trace2.x);
  var data = [trace1, trace2];
  layout = {
    xaxis: {
      title: 'a/W'
    },
    yaxis: {
      title: 'residual strength',
      range: [0, 80]
    }
  };
  Plotly.newPlot('2024', data, layout);
	}"
}
-->
</div>

----
## comparison

<div class="anything" id="comparison">
<!--
{
  "initialize": "function(container) {
  function makeArr(startValue, stopValue, numVals) {
      var arr = [];
      var currValue = startValue;
      var step = (stopValue-startValue)/(numVals-1);
      for (var i = 1; i < numVals; i++) {
        arr.push(currValue + step*i);
      }
      return arr;
    }
  function toughness(k,x) {
    var y = [];
    for (var i = 0; i < x.length; i++) {
      y.push(k/(Math.PI*x[i]*6)**.5/(1.12-.231*x[i]+10.55*x[i]**2-21.72*x[i]**3+30.39*x[i]**4));
    }
    return y;
  }
  function netsection(s,x) {
    var y = [];
    for (var i = 0; i < x.length; i++){
      y.push(s*(1-x[i]));
    }
    return y;
  }
  function minval(k,s,x) {
    var y = [];
    for (var i = 0; i < x.length; i++) {
      var tough = toughness(k,[x[i]])[0];
      var net = netsection(s,[x[i]])[0];
      if (net < tough) {
        y.push(net);
      }
      else {
        y.push(tough);
      }
    }
    return y;
  }
  var trace1 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: '7178'
  };
  trace1.y = minval(43,74,trace1.x);
  var trace2 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: '7075'
  };
  trace2.y = minval(68,63,trace2.x);
  var trace3 = {
    x: makeArr(0,1,200),
    y: [],
    mode: 'lines',
    type: 'scatter',
    name: '2024'
  };
  trace3.y = minval(144,42,trace3.x);
  var data = [trace1, trace2, trace3];
  layout = {
    xaxis: {
      title: 'a/W'
    },
    yaxis: {
      title: 'residual strength',
      range: [0,80]
    }
  };
  Plotly.newPlot('comparison', data, layout);
	}"
}
-->
</div>

----
## using MIL-handbook

-   Uses a different grain nomenclature

| *K*<sub>*C*</sub> | `$\sigma_{YS}$` |
|:-----------------:|:---------------:|
|        L-T        |           L     |
|        T-L        |          L-T    |

-   A-Basis vs. B-Basis values are reported (A = 99% of population will meet/exceed value, B = 90% of population)
-   S-Basis - no statistical information available, standard value to be used

----
## using MIL-handbook

-   *F*<sub>*tu*</sub> - ultimate tensile strength
-   *F*<sub>*ty*</sub> - tensile yield strength
-   *F*<sub>*cy*</sub> - compressive yield strength
-   *F*<sub>*su*</sub> - ultimate shear strength
-   *F*<sub>*bru*</sub> - ultimate bearing strength
-   *F*<sub>*bry*</sub> - bearing yield strength
-   *E* - tensile Young's Modulus
-   *E*<sub>*c*</sub> - compressive Young's Modulus
-   *G* - shear modulus
-   `$\mu$`- Poisson's ratio

----
## data

-   Fracture data is on pp. 111-121
-   Tensile data is on pp. 138-143
-   *K*<sub>*c*</sub> charts are also available in interactive versions [here](../examples/Fracture%20Toughness%20Figures.html)
