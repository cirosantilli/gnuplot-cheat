#!/usr/bin/env gnuplot

## with points

## w p

# Plot just points of the line instead of lines.

set key outside center right
plot \
    sin(x) with points,\
    cos(x) w p
