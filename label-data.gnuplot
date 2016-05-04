#!/usr/bin/env gnuplot

set key autotitle columnheader
set terminal png linespoints
plot '-' using 1:2, \
	'' using 1:3
    x y z
    1 1 1
    2 2 4
    3 3 9
    4 4 16
    e
