#!/usr/bin/python3

import numpy as np


for i in range(1,5):
    name = str(i*256) + "_log"
    x    = open(name)
    xl   = x.readlines()

    xll  = [ w.splitlines() for w in xl]
    xlll = [ float(i[0]) for i in xll ]

    a    = np.array(xlll)

    print(i*256, np.mean(a, dtype=np.float64), np.std(a, dtype=np.float64, ddof=0))
