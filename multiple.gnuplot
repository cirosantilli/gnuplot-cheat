#!/usr/bin/env gnuplot

# Newer plot commands erase old ones.

# One way to avoid that, is to use a single plot command and separate them with commas.

# Other methods include:

# - `replot`
# - plot for

plot sin(x), cos(x)
