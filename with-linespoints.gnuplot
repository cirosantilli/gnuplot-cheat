#!/usr/bin/env gnuplot

## with linespoints

## w lp

# Both lines and points.

plot \
    sin(x) with linespoints,\
    cos(x) w lp
