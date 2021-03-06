## AE 737: Mechanics of Damage Tolerance
Lecture 22 - Inspection 

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

April 26, 2021

----
## schedule

- 26 Apr - Inspection
- 28 Apr - Repair
- 3 May - Fracture in Composites
- 5 May - Class Canceled
- 9 May - Final Projects Due

----
## outline

<!-- vim-markdown-toc GFM -->

* special topics
* damage tolerance
* inspection cycle

<!-- vim-markdown-toc -->

---
# special topics

----
## special topics

- FEM
- Repair of damaged structures
- Fatigue of composites
- NDE/NDT
- Damage Mechanics
- My Research
- Other?

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
    -   When cracks grow to a sufficient size, they are inspectable
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
-   This often requires replacing parts prematurely

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
# inspection cycle

----
## inspection cycle

-   In many industries, an inspection cycle is predetermined by some governing agency
-   We have developed all the equations necessary to determine our own
    1.  Determine loading cycle (or equivalent load cycle using Boeing method)
    2.  Determine maximum crack length
    3.  Determine initial assumed crack length (minimum detectable crack)
    4.  Calculate number of cycles/flights until crack grows to maximum allowable size

----
## load cycle

-   Be sure to use a consistent cycle-counting method (rainflow or range-pair)
-   Recall the Boeing method for variable amplitude loads

`$$
\sum_i (z\sigma_{max})_i^p N_i = S^p
$$`

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
-   `$\Delta N$` should be small enough to give converged solution

----
## example


