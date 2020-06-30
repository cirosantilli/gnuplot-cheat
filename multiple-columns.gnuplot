#!/usr/bin/env gnuplot

# Multiple plots from a single data file file.

set multiplot layout 2,1 title "global title"

set title "my subtitle 1 1"
# Column choice method.
# Variable to reuse file name.
# Can also be done with empty filename string.
f = 'square-line.data'
plot f using 1:2 title 'Square' with linespoints, \
     f using 3:4 title 'Line' with linespoints

# TODO: same as above but inline?
# Maybe the problem is that each `-` expects a new file.
# http://stackoverflow.com/questions/10397750/embedding-multiple-datasets-in-a-gnuplot-command-script
#plot '-' index 0 with lines linecolor rgb 'red', \
     #'-' index 1 with lines linecolor rgb 'green'
    #1 1
    #2 2
    #3 3


    #1 1
    #2 4
    #3 9
    #e

unset multiplot
