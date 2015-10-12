#!/usr/bin/env gnuplot

## pm3d

## Heat maps

# Palette mapped 3D.

# Represent the third dimension as color, and fill in the entire image.

set view map
set samples 10
set isosamples 10
set xrange [ -10 : 10 ]
set yrange [ -10 : 10 ]
splot '++' using 1:2:($1**2 + $2**2) with pm3d
