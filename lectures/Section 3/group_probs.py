# -*- coding: utf-8 -*-
"""
Created on Thu May 05 11:39:14 2016

@author: A723K873
"""

import numpy as np

a = 1.0
W = 7.0
beta = np.sqrt(1/np.cos(np.pi*a/W))

#7075
Kc = 60.0
sy = 70.0

s = 20.0 

a_crit = (Kc/s/beta)**2/np.pi