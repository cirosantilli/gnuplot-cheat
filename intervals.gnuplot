#!/usr/bin/env gnuplot

# Minimized from:
#
# - http://gnuplot.sourceforge.net/demo_5.2/gantt.html
#
# Applications:
#
# - https://tex.stackexchange.com/questions/219971/how-to-plot-time-intervals
# - https://tex.stackexchange.com/questions/45006/how-to-plot-intervals-and-points-in-the-real-line
# - https://stackoverflow.com/questions/7684475/plotting-labeled-intervals-in-matplotlib-gnuplot
# - https://stackoverflow.com/questions/4333202/interval-graph-plotting-in-gnuplot

$DATA << EOD
1 1 5
1 11 13
2 3 10
3 4 8
4 7 13
5 6 15
EOD

set xrange [-1:]
set yrange [0:]
unset key
set border 3
set xtics nomirror
set ytics nomirror
set style arrow 1 nohead linewidth 3
plot $DATA using 2 : 1 : ($3-$2) : (0.0) with vector as 1, \
     $DATA using 2 : 1 : 1 with labels right offset -2
