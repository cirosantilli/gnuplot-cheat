#!/usr/bin/env gnuplot

# Generate a GIF animation.
# https://stackoverflow.com/questions/22898971/gif-animation-in-gnuplot

set key off
p sin(x)
n = 20
do for [i=1:n] {
    plot sin(x+i*2*pi/n)
}
