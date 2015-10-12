#!/usr/bin/env gnuplot

## palette

# Represent an extra dimension with color.

# Variable point size is another option with `pointsize variable`:
# http://gnuplot.sourceforge.net/demo/pointsize.html

set key off

set multiplot layout 3,1

# We could also add a `using 1:2:3` here,
# but that is the default.
# TODO how to make this smooth?
plot '-' with lines palette linewidth 3

    0 0 0
    1 1 1
    2 4 8
    3 9 27
    4 16 64
    e

# This example uses the special filename '+',
# which makes x vary over the range,
# so we can define everything with functions.
plot '+' using 1:(sin($1)):($1**2) with lines palette linewidth 3

# Switch between two colors only:
# http://stackoverflow.com/questions/8717805/how-to-make-points-one-color-when-a-third-column-equals-zero-and-another-color
set palette model RGB defined ( 0 'red', 1 'green' )
plot '+' using 1:(sin($1)):($1 < 0 ? 0 : 1) palette linewidth 3

unset multiplot
