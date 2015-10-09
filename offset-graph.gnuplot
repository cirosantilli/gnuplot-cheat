#!/usr/bin/env gnuplot

## offset graph

# Give some margin in the axes.

# - http://stackoverflow.com/questions/7330161/accessing-gnuplots-autorange-values
# - https://groups.google.com/forum/#!topic/comp.graphics.apps.gnuplot/JN3CrdPBDpU

# Fractions are percentages, values are fixed values.

# Left, right, top, bottom values.

set offset graph 1, 2, 0.1, 2.0
plot sin(x)
