#!/usr/bin/env gnuplot

## range

## xrange

## yrange

# The default for X for formulas like sin is from -10 to 10, and Y fits the data.

# If the data is composed of points, X also fits the points.

set xrange [-20 : 30]
set yrange [-2 : 0.5]
plot sin(x)
