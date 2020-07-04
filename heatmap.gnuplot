#!/usr/bin/env gnuplot

## pm3d

## Heat maps

# Palette mapped 3D.

# Represent the third dimension as color, and fill in the entire image.

set size ratio -1
set view map
set samples 5
set isosamples 20
set urange [-5.0 : 5.0]
set vrange [-10.0 : 10.0]
set xrange [-10.0 : 10.0]
set yrange [-15.0 : 15.0]
splot '++' using 1:2:($1**2 + $2**2) notitle with pm3d
