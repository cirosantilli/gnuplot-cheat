#!/usr/bin/env gnuplot

## title

set key outside center right
plot \
    sin(x) title "my sin",\
    cos(x) title "my cos"
