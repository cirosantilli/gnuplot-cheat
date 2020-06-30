#!/usr/bin/env gnuplot
# https://superuser.com/questions/997032/how-to-plot-data-with-lines-and-label-in-each-point
set yrange [0:5]
set xrange [0:5]
plot "point-label.dat" using 1:2:4 with labels offset 0,char 1 point
