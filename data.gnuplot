#!/usr/bin/env gnuplot

## Data

# How to use a data file.

# Format is simple:

# - space separated numeric columns
# - newline separated rows
# - lines starting with # are ignored
# - single empty lines are ignored
# - double empty lines mean a new data set

# C-like integers and floats are understood.

### Using

    # Select which data columns to plot.

    # Only columns 2 and 3:

        # p "a.dat" u 2:3

### Store labels in the data file

    # TODO?

plot "square.data"
