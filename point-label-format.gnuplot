#!/usr/bin/env gnuplot
# https://stackoverflow.com/questions/34514279/using-sprintf-to-print-string-value
set yrange [0:5]
set xrange [0:5]
plot "point-label.data" \
    using 1:2:(sprintf("(%d, %s)", $1, stringcolumn(4))) \
    with labels offset 0,char 1 point
