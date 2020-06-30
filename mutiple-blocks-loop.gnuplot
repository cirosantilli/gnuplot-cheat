#!/usr/bin/env gnuplot

# Multiple lines from a double blank line separated file
# with an unknown number of blocks.
# Solution found in this superset question:
# https://stackoverflow.com/a/43819870/895245

plot for [i=0:*] 'multiple-blocks.dat' index i title sprintf('%d', i) with linespoints
