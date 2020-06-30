#!/usr/bin/env gnuplot
# Choose by data set name from header comments in data file.
plot \
  'multiple-with-headers.data' \
    index 'Square' \
    title 'my square' \
    with linespoints \
  , '' \
    index 'Line' \
    title 'my line' \
    with linespoints \
  , '' \
    index 'Cube' \
    title 'my cube' \
    with linespoints \
