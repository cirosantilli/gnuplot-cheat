#!/usr/bin/env gnuplot

## border

# Determines which borders are visible. Does not affect ticks.

# 2D encoding:

# - 1: bottom
# - 2: left
# - 4: top
# - 8: right

# Keep only bottom + left.
set border 1 + 2
plot sin(x)
