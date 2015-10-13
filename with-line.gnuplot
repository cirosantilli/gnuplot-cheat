#!/usr/bin/env gnuplot

## with line

## w l

# By default, data files plot as points, while functions plot as lines.

# Add a line to plotted data.

plot \
    "square.data" with lines,\
    "line.data" w l
