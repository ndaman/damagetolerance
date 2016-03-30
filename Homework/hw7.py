# -*- coding: utf-8 -*-
"""
Created on Wed Mar 30 10:56:15 2016

@author: A723K873
"""
import numpy as np
from matplotlib import pyplot as plt

sfp = 213.0
b = -0.143
efp = 0.262
c = -0.688
nf = np.logspace(0,7,20)
E = 10300.0
eps = sfp/E*(2*nf)**b + efp*(2*nf)**c

plt.figure()
plt.loglog(nf,eps)

s1 = np.random.normal(0,0.2,len(eps))
s2 = np.random.normal(0,0.2,len(nf))

eps = eps+eps*s1
nf = nf+nf*s2

plt.loglog(nf,eps,'o')
plt.show()