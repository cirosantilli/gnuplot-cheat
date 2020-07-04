#!/usr/bin/env gnuplot

## splot

# Number of x and y samples.
set isosamples 10, 5

# Plotted domain.
# https://stackoverflow.com/questions/51529014/gnuplot-plot-range-different-from-axes-range/62728206#62728206
set urange [-5.0 : 0.0]
set vrange [-5.0 : 5.0]

# Visible domain.
set xrange [-5.0 : 5.0]
set yrange [-5.0 : 5.0]

# Just to make plot look nicer.
set hidden3d
set xyplane at 0
set xlabel 'x'
set ylabel 'y'

# palette adds color to the lines.
splot '++' using 1:2:($2**2) with lines palette
