# -*- coding: utf-8 -*-
"""
Created on Tue Mar 22 14:30:08 2016

@author: A723K873
"""

import numpy as np
from matplotlib import pyplot as plt

sigma_f = 255 #ksi
b = -0.0977

N = np.logspace(3,8,30)
S_a = sigma_f*(2*N)**b

noise = np.random.normal(1,0.1,30)
Nr = int(N*noise)
Sr = S_a*noise

plt.figure()
plt.loglog(N,S_a)
plt.loglog(Nr,Sr,'o')

plt.figure()
plt.plot(Nr,Sr)

plt.figure()
plt.semilogx(Nr,Sr)