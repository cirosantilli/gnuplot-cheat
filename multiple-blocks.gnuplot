#!/usr/bin/env gnuplot

# Multiple lines from a double blank line separated file
# with a known number of blocks.

plot \
  'multiple-blocks.dat' \
    index 0 \
    title 'my line' \
    with linespoints \
  , '' \
   index 1 \
   title 'my square' \
   with linespoints \
  , '' \
   index 2 \
   title 'my cube' \
   with linespoints
