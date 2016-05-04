# Invocation

Execute scrip from a file

    gnuplot file.gnuplot

You can also add a `#!/usr/bin/env gnuplot` shebang and run it as:

    ./file.gnuplot

## e

`-e` executes a string and exits.

By default, when it exits plot windows get closed.

## p

You can prevent that with `-p`:

    gnuplot -p -e 'p sin(x)'
