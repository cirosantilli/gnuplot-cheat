#!/usr/bin/env gnuplot

# Multiple plots from a single file.

plot "square-line.data" using 1:2 title "Square", \
     "square-line.data" using 3:4 title "Line"
