#!/usr/bin/env gnuplot

# Generate an X11 animation. TODO:

# - stop color changes
# - get rid of the initial plot command

set key off
n = 20
plot 0
clear
do for [i=1:n] {
    replot sin(x + i*2*pi/n)
    pause 0.1
}
