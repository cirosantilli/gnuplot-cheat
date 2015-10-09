#!/usr/bin/env gnuplot

## multiplot layout

# Make a grid of plots.

set multiplot layout 2,2
plot sin(x)
plot cos(x)
plot exp(x)
plot exp(-x)
# Mandatory: this is what actually shows the image.
unset multiplot
