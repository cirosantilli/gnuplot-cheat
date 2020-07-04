#!/usr/bin/env gnuplot
# TODO: don't know how to specify the coordinates in the file:
# https://stackoverflow.com/questions/2834921/how-to-plot-3d-matrix-csv-data-in-gnuplot-with-splot-using-the-first-row-and-col#comment110928090_2834921
set hidden3d
set xyplane at 0
splot "splot-data-matrix.dat" matrix notitle with lines
