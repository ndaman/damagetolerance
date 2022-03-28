## AE 737: Mechanics of Damage Tolerance
Lecture 18 - The Boeing Method 

Dr. Nicholas Smith

Wichita State University, Department of Aerospace Engineering

31 March 2022

----
## schedule

- 31 Mar - Boeing Method, HW 6 Due
- 5 Apr - Cycle counting
- 7 Apr - Crack Retardation, HW 7 Due, HW 6 Self-grade Due
- 12 Apr - Crack retardation
- 14 Apr - Finite Elements in Fracture, HW 8 Due, HW 7 Self-grade Due
- 19 Apr - Exam Review
- 21 Apr - Exam 2


----
## outline

<!-- vim-markdown-toc GFM -->

* boeing method

<!-- vim-markdown-toc -->

---
# boeing method

----
## boeing method

-   Whether integrating numerically or analytically, it is time-consuming to consider multiple repeated loads
-   It is particularly difficult to consider flight loads, which can vary by “mission”
-   For example, an aircraft may fly three different routes, in no particular order, but with a known percentage of time spent in each route
-   Traditional methods would use a random mix of each load spectra

----
## boeing method

-   The Boeing Method combines each repeatable load spectrum into one single equivalent cycle
-   Note: this is ch. 20 in the text

----
## boeing method

-   The Boeing method is derived by separating the geometry effects from load and material effects in the Boeing-Walker equation.

`$$\frac{da}{dN} = \left[\frac{1}{n}\right]\frac{dL}{dN} = 10^{-4} \left[\frac{k_{max}Z}{m_T}\right]^p$$`

`$$\frac{dL}{dN} = n 10^{-4} \left[\frac{k_{max}Z}{m_T}\right]^p$$`

`$$\frac{dN}{dL} = \frac{1}{n} 10^{4} \left[\frac{m_T}{k_{max}Z}\right]^p$$`

----
## boeing method

`$$\int_{0}^{N}dN = \frac{10^{4}}{n}  \int_{L_0}^{L_f} \left[\frac{m_T}{k_{max}Z}\right]^p dL$$`

`$$N = 10^{4} \left(\frac{m_t}{z\sigma_{max}}\right)^p  \int_{L_0}^{L_f} \frac{dL}{\left( n\sqrt{\pi L/n}\beta\right)^p}$$`

----
## boeing method

-   In this form, the term `$10^{4} \left(\frac{m_t}{z\sigma_{max}}\right)^p$` is strictly from the applied load and material, while `$\int_{L_0}^{L_f} \frac{dL}{\left( n\sqrt{\pi L/n}\beta\right)^p}$` is from geometry
-   If we now define *G* to account for crack geometry

`$$G = \left[ \int_{L_0}^{L_f} \frac{dL}{\left( n\sqrt{\pi L/n}\beta\right)^p} \right] ^{-1/p}$$`

----
## boeing method

-   And define `$z\sigma_{max} = S$` as the equivalent load spectrum, then we have

`$$N = 10^4 \left(\frac{m_t/G}{S}\right)^p$$`

-   Using this method, *G* is typically looked up from a chart (such as on p. 369)

----
## boeing method

-   To replace a repeated load spectrum with an equivalent load, we need to invert the relationship
-   The previous equation gives cycles per crack growth, inverting gives crack growth per cycle

`$$\text{crack growth per cycle} = 10^{-4} \left(\frac{m_t/G}{S}\right)^{-p}$$`

----
## boeing method

-   If we consider a general, repeatable “block”, we have

`$$10^{-4} \left( m_t/G \right)^{-p} \sum_i \left( \frac{1}{z\sigma_{max}} \right)_i^{-p} N_i = 10^{-4} \left( \frac{m_t/G}{S} \right)^{-p}$$`

-   Which simplifies to

`$$ \sum_i (z \sigma_{max}) = S^p $$`

----
## boeing method example

-   (from p. 366), *q* = 0.6, *p* = 3.9

----
## boeing method example - cont. 

Count cycles from the right (instead of the left)


