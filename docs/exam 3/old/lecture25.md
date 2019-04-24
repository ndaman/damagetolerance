<span>schedule</span>

-   2 May - Repair

-   4 May - NDT/More Finite Elements

-   9 May - Final Projects due by 5:00 pm

### outline

\[sections numbered\]

repairing cracked structures
============================

<span>repair</span>

-   Depending on the location and severity of damage, there are a few options for repair

-   Replacement

-   Stop drilling

-   Welding

-   Patching

-   Oversize fasteners

-   Load Reduction/improved analysis

-   Residual stresses

<span>stop drilling</span>

-   If a crack is not of dangerous length, full repair/replacement is not necessary

-   Stop drilling refers to a hole drilled at the crack tip

-   This hole removes the crack tip, crack will re-initiate at edge of hole

-   Still susceptible to MSD in future

-   Some new techniques attempt to change direction of crack growth

<span>welding</span>

-   Crack material is machined away

-   Empty space is filled with weld

-   Can cause distortion

-   Sometimes heat treatment is needed

<span>patching</span>

-   A patch placed over the crack provides an alternate load path

-   Patches can be attached mechanically, with fasteners

-   Or bonded with adhesives

-   Fasteners introduce new holes, new sites for damage

-   Additional fasteners add weight

-   Adhesives add less weight, do not introduce new damage, but it can be difficult to ensure the integrity of the bond in-service

<span>oversize fastener</span>

-   When crack forms around a fastener hole, the hole can be drilled larger

-   The larger hole removes the crack tip

-   Fastener is replaced with a larger fastener, appropriate to the drilled hole

<span>load reduction</span>

-   When damaged parts are difficult or expensive to repair, load can be reduced instead

-   (e.g. assign a plane to a less rigorous flight path)

-   Initial designs are often conservative

-   After years of life, more advanced analysis is usually available

-   Sometimes repair and load reduction are not necessary if initial design is found to be overly conservative

<span>residual stress</span>

-   Some repair methods introduce beneficial residual stresses instead of directly addressing the crack

-   Surface treatments can introduce compressive residual stresses at the crack tip, which can slow or stop crack growth

-   Some common methods used are

-   Shot peening

-   Low plasticity burnishing

-   Laser shock peening

-   Hole cold-working

<span>shot peening</span>

<img src="../Figures/shot-peening" alt="image" />

<span>hole cold working</span>

<img src="../Figures/hole-cold-working" alt="image" />

<span>hole cold working</span>

<img src="../Figures/hole-SN" alt="image" />

<span>which repair method</span>

-   Which repair method is best?

-   Factors that affect decision

-   Cost

-   Is multiple site damage a concern?

-   Fracture vs. net section yield

-   Can we reduce *K*<sub>*m**a**x*</sub> below *K*<sub>*t**h*</sub> with residual stresses?

group problems
==============

<span>group 1</span>

<span>0.48</span>

-   Compare the effectiveness of stop drilling in 2024 and 7075 for the following panel.

-   For 2024 use $K\_c = 125 \\text{ ksi}\\sqrt{\\text{in}}$ and *σ*<sub>*Y**S*</sub> = 50 ksi

-   For 7075 use $K\_c = 60 \\text{ ksi}\\sqrt{\\text{in}}$ and *σ*<sub>*Y**S*</sub> = 70 ksi

-   Recall $\\beta = \\sqrt{\\sec(\\pi a/W)}$

<span>0.48</span>

(0,0) – (0,1) – (2,1) – (2,-1) – (0,-1) – (0,0); (0.8,0) – (1.2,0); node at (1,0.2) <span>2</span>; (1,1) – (1,1.5) node\[above\] <span>*σ*</span>; (1,-1) – (1,-1.5) node\[below\] <span>*σ*</span>; (0.7,-0.7) – (0,-0.7); (1.3,-0.7) – (2,-0.7); node at (1,-0.7) <span>6</span>;

<span>group 2</span>

-   Due to MSD concerns, we would like to alter a crack path by 15<sup>∘</sup>.

-   What stresses would need to be added to a 15 ksi tensile load to accomplish this?

-   Note: Assume for this problem that *β*<sup>′</sup> = *β*

-   Recall
    $$\\begin{aligned}
            K\_{II} &= \\tau \\sqrt{\\pi a}\\beta^\\prime\\\\
            K\_I \\sin \\theta\_p + K\_{II}\\left(3\\cos \\theta\_p -1 \\right) &= 0
            \\end{aligned}$$

<span>group 3</span>

<span>0.48</span>

-   Compare the amount of residual compressive stress needed stop crack growth for Al 2024 and Al 7075 in the following panel.

-   Assume $K\_{th} = 4 \\text{ ksi}\\sqrt{\\text{in}}$ for Al 2024

-   And $K\_{th} = 7 \\text{ ksi}\\sqrt{\\text{in}}$ for Al 7075

<span>0.48</span>

(0,0) – (0,1) – (2,1) – (2,-1) – (0,-1) – (0,0); (0.8,0) – (1.2,0); node at (1,0.2) <span>0.5</span>; (1,1) – (1,1.5) node\[above\] <span>20</span>; (1,-1) – (1,-1.5) node\[below\] <span>20</span>; (0.7,-0.7) – (0,-0.7); (1.3,-0.7) – (2,-0.7); node at (1,-0.7) <span>5</span>;

<span>group 4</span>

<span>0.48</span>

-   Due to damage, an airline decides to move an aircraft to a less strenuous flight cycle.

-   Find the effective load for a flight cycle that will last at least 1000 flights for the following cracked panel.

-   Note: use *p* = 4 and *M*<sub>*t*</sub> = 25.8

-   Assume $K\_c = 60 \\text{ ksi}\\sqrt{\\text{in}}$ and *σ*<sub>*Y**S*</sub> = 70 ksi

-   The largest load of 20 ksi occurs during takeoff and will not change with flight cycle.

<span>0.48</span>

(0,0) – (0,1) – (2,1) – (2,-1) – (0,-1) – (0,0); (0.8,0) – (1.2,0); node at (1,0.2) <span>1.5</span>; (1,1) – (1,1.5) node\[above\] <span>*σ*</span>; (1,-1) – (1,-1.5) node\[below\] <span>*σ*</span>; (0.7,-0.7) – (0,-0.7); (1.3,-0.7) – (2,-0.7); node at (1,-0.7) <span>7</span>;
