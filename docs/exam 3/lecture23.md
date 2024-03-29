##  AE 737: Mechanics of Damage Tolerance
Lecture 23 - Repair 

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

3 May 2022

----
##  schedule

- 3 May - NDE, Repair, My Research
- 5 May - J-Integral
- 6 May - Final Projects Due

----
##  outline


<!-- vim-markdown-toc GFM -->

* repairing cracked structures
* group problems
* full scale fatigue testing

<!-- vim-markdown-toc -->


---
# repairing cracked structures

----
## repair

-   Depending on the location and severity of damage, there are a few options for repair
-   Replacement
-   Stop drilling
-   Welding
-   Patching
-   Oversize fasteners
-   Load Reduction/improved analysis
-   Residual stresses

----
## stop drilling

-   If a crack is not of dangerous length, full repair/replacement is not necessary
-   Stop drilling refers to a hole drilled at the crack tip
-   This hole removes the crack tip, crack will re-initiate at edge of hole
-   Still susceptible to MSD in future
-   Some new techniques attempt to change direction of crack growth

----
## welding

-   Crack material is machined away
-   Empty space is filled with weld
-   Can cause distortion
-   Sometimes heat treatment is needed

----
## patching

-   A patch placed over the crack provides an alternate load path
-   Patches can be attached mechanically, with fasteners
-   Or bonded with adhesives
-   Fasteners introduce new holes, new sites for damage
-   Additional fasteners add weight
-   Adhesives add less weight, do not introduce new damage, but it can be difficult to ensure the integrity of the bond in-service

----
## oversize fastener

-   When crack forms around a fastener hole, the hole can be drilled larger
-   The larger hole removes the crack tip
-   Fastener is replaced with a larger fastener, appropriate to the drilled hole

----
## load reduction

-   When damaged parts are difficult or expensive to repair, load can be reduced instead
-   (e.g. assign a plane to a less rigorous flight path)
-   Initial designs are often conservative
-   After years of life, more advanced analysis is usually available
-   Sometimes repair and load reduction are not necessary if initial design is found to be overly conservative

----
## residual stress

-   Some repair methods introduce beneficial residual stresses instead of directly addressing the crack
-   Surface treatments can introduce compressive residual stresses at the crack tip, which can slow or stop crack growth
-   Some common methods used are
-   Shot peening
-   Low plasticity burnishing
-   Laser shock peening
-   Hole cold-working

----
## shot peening

![](../images/shot-peening.jpg)

----
## hole cold working

![](../images/hole-cold-working.jpg)

----
## hole cold working

![](../images/hole-SN.jpg)

----
## which repair method

-   Which repair method is best?
-   Factors that affect decision
-   Cost
-   Is multiple site damage a concern?
-   Fracture vs. net section yield
-   Can we reduce `$K_{max}$` below `$K_{th}$` with residual stresses?

---
# group problems

----
## group 1

-   Compare the effectiveness of stop drilling in 2024 and 7075 for the following panel.
-   For 2024 use `$K_c = 125 \text{ ksi}\sqrt{\text{in}}$` and `$\sigma_{YS}$` = 50 ksi
-   For 7075 use `$K_c = 60 \text{ ksi}\sqrt{\text{in}}$` and `$\sigma_{YS}$` = 70 ksi
-   Recall `$\beta = \sqrt{\sec(\pi a/W)}$`

----
## group 1

![](../images/group-23-1.PNG) <!-- .element width="30%" -->

----
## group 2

-   Due to MSD concerns, we would like to alter a crack path by `$15^\circ$`
-   What stresses would need to be added to a 15 ksi tensile load to accomplish this?
-   Note: Assume for this problem that `$\beta^\prime = \beta$`
-   Recall

`$$\begin{aligned}
  K_{II} &= \tau \sqrt{\pi a}\beta^\prime\\
  K_I \sin \theta_p + K_{II}\left(3\cos \theta_p -1 \right) &= 0
\end{aligned}$$`

----
## group 3

-   Compare the amount of residual compressive stress needed stop crack growth for Al 2024 and Al 7075 in the following panel.
-   Assume `$K_{th} = 4 \text{ ksi}\sqrt{\text{in}}$` for Al 2024
-   And `$K_{th} = 7 \text{ ksi}\sqrt{\text{in}}$` for Al 7075

----
## group 3

![](../images/group-23-3.PNG) <!-- .element width="30%" -->

----
## group 4

-   Due to damage, an airline decides to move an aircraft to a less strenuous flight cycle.
-   Find the effective load for a flight cycle that will last at least 1000 flights for the following cracked panel.
-   Note: use *p* = 4 and `$M_t = 25.8$`
-   Assume `$K_c = 60 \text{ ksi}\sqrt{\text{in}}$` and `$\sigma_{YS}$` = 70 ksi
-   The largest load of 20 ksi occurs during takeoff and will not change with flight cycle.

----
## group 4

![](../images/group-23-4.PNG) <!-- .element width="30%" -->

---
# full scale fatigue testing

----
##  Beoing 787

[video](https://www.youtube.com/watch?v=TH9k9fWaFrs)

----
##  challenges

- Design load cycle
- Apply loading consistent with real-life application
- Frame needs to be rigid relative to test specimen
- Loading needs to be accelerated to be able to use product in reasonable timeframe
