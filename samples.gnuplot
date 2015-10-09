#!/usr/bin/env gnuplot

## samples

# Set the number of points for analytical function plots.

# Different  samples for different functions:
# http://stackoverflow.com/questions/19524582/different-number-of-samples-for-different-functions

set key off
set samples 10
plot x with points

# TODO: how to set multiple sample rates?
# replot here also replots the first one.
#set samples 20
#replot sin(x) + 1 with points
