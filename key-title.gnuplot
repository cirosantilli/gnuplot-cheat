#!/usr/bin/env gnuplot

## title

set key outside center right
plot \
    sin(x) + 0 title "my sin",\
    sin(x) + 1 title "my sin + 1",\
    sin(x) + 2 notitle
