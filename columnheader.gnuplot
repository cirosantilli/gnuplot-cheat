#!/usr/bin/env gnuplot

# Take title from file. Skip that line.
# http://stackoverflow.com/questions/1841640/labels-on-the-input-data-in-gnuplot

set multiplot layout 2,1

plot 'columnheader.dat' using 1:2 title columnheader(2), \
	'' using 1:3 title columnheader(3)

set key autotitle columnheader
plot 'columnheader.dat' using 1:2, \
	'' using 1:3

unset multiplot
