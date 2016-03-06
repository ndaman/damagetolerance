# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import numpy as np
import matplotlib.pyplot as plt

t = np.linspace(0,2*np.pi)
ax = plt.subplot(111,projection='polar')
ax.set_yticklabels([])
ax.plot(t,1/(2*np.pi)*np.cos(t/2)**2*(1-np.sin(t/2)*np.sin(3*t/2))**2, label=r'$\sigma_x$')
ax.plot(t,1/(2*np.pi)*np.cos(t/2)**2*(1+np.sin(t/2)*np.sin(3*t/2))**2, label=r'$\sigma_y$')
ax.plot(t,1/(2*np.pi)*(np.sin(t/2)*np.cos(t/2)*np.cos(3*t/2))**2, label=r'$\tau_{xy}$')
ax.legend(loc='best')

ra = np.linspace(0,0.1)
ax1 = plt.subplot(111)
ax1.plot(ra,1/np.sqrt(2*np.pi*ra))
ax1.set_xlabel('r/a')
ax1.set_ylabel(r'$\sigma_x/\sigma \beta$')