#!/usr/bin/env gnuplot

# Artistic colormap rendering.

# Placed here because it takes a long time, and is just artistic,
# not a minimal example.

set key off
set view map
set samples 100
set isosamples 100
set xrange [ -10 : 10 ]
set yrange [ -10 : 10 ]
n = 100
do for [i=1:n] {
    splot '++' using 1:2:(sin(($1**2 + $2**2) * 2*pi*i/n)) with pm3d
}
