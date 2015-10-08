#!/usr/bin/env gnuplot

set key off
p sin(x)
n = 20
do for [i=1:n] {
    plot sin(x+i*2*pi/n)
}
