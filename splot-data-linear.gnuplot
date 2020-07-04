#!/usr/bin/env gnuplot
# https://stackoverflow.com/questions/62729982/how-to-plot-a-3d-gnuplot-splot-surface-graph-with-data-from-a-file/62729983#62729983
set hidden3d
set xyplane at 0
splot "splot-data-linear.dat" notitle with lines
