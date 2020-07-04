#!/usr/bin/env gnuplot

## samples
#
# Set the number of points for analytical function plots.
#
# Different  samples for different functions:
# http://stackoverflow.com/questions/19524582/different-number-of-samples-for-different-functions

set key off
set samples 10
plot [-3:3] sin(x) with linespoints
