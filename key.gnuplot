#!/usr/bin/env gnuplot

## key

# The key is a legend that explains one of the data sets shown in a plot.

# Their text can be changed with `plot title`.

set multiplot layout 6,1

# Can also be done with `plot notitle` for a single plot.
set key off
plot sin(x) title "off"

set key outside
plot sin(x) title "outside"

set key inside
plot sin(x) title "inside"

set key right outside
plot sin(x) title "right outside"

set key rmargin
plot sin(x) title "rmargin"

set key center bottom outside
plot sin(x) title "bottom outside"

unset multiplot
