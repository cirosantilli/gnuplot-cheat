#!/usr/bin/env gnuplot

## pointsize

## ps

set samples 10
plot \
    0 with points pointtype 7 pointsize 1,\
    1 with points pointtype 7 pointsize 2,\
    2 with points pointtype 7 ps 2,\
    3 with points pointtype 7 pointsize 0.5
