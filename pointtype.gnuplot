#!/usr/bin/env gnuplot

## pointtype

## pt

# There are 13 types, then it just loops modulo.

set samples 10
plot for [i=1:15] i with points pointtype i
