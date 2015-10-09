#!/usr/bin/env gnuplot

## Inline data

# Specify data without a separate file.

# http://stackoverflow.com/questions/3318228/gnuplotting-data-without-a-textfile

set key outside
plot '-' using 1:2
    0 0
    1 1
    2 4
    3 9
    4 16
    e
