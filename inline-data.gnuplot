#!/usr/bin/env gnuplot

## Inline data

## -

# Specify data without a separate file.

# http://stackoverflow.com/questions/3318228/gnuplotting-data-without-a-textfile

# Uses the special filename `-`.

set multiplot layout 2,1

set key outside

plot '-' lw 3
    0 0
    1 1
    2 4
    3 9
    4 16
    e

# Multiple data syntax looks like Bash EOF.
# Cannot reuse - multiple times:
# http://stackoverflow.com/questions/10397750/embedding-multiple-datasets-in-a-gnuplot-command-script/33064402#33064402

plot '-' lw 3, '-' lw 3
    0 0
    1 1
    2 4
    3 9
    4 16
    e
    0 0
    1 1
    2 2
    3 3
    4 4
    e

unset multiplot
