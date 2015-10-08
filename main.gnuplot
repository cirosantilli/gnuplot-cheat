#!/usr/bin/env gnuplot

# TODO convert to a bunch of smaller, runnable, examples.

## unset

    unset xrange

## Plot

  # set xrange:

    p [-5:5] sin(x)

  ## With

    # plot style

    # Line:

      p sin(x) w l

  ## EVery

    # select ranges, increases and datablocks

    # plot only the first column up to the 10th:

      p fp ev ::1::10

  ## Line Width

      p sin(x) lw 0.25
      p sin(x) lw 25

  ## Line Color

      p sin(x) lc rgb "red"
      p sin(x) lc rgb "blue"

## CLear

  # clear plot screen

    p sin(x)
    cl

## STats

  # view and get data info

  # view:

    fp = 'a.dat'
    st fp

  # get number of rows *after doing a stats*:

    pr STATS_records

## pa

  # pause one second:

    pa 1

  # pause gnuplot until any character is input by user:

    pa -1

  # Can be used to make animations!

## Programming language

    a = 1
    pr a
    pr pi

  ## functions

    # define:

      f(x) = cos(x) + sin(x) + exp(-x**2) + abs(x)

    # use:

      pr f(1)
      p f(x)

    ## piecewise

        step(x) = x>a ? 1 : 0
        p f(x)*(x<0.8) +  g(x)*(x>=0.8)
          # disadvantage: both parts are always evaluated

    pr 1 + 1
    pr 1 * 1
    pr 1.0 / 2.0

    pr 1 < 2
    pr 1 > 2
    pr 1 != 1

    pr "as"."df"

    if( 1 ){ pr "1" }
    if( 0 ){ pr "0" }

    do for[i=1:5:2]{ pr i }
    do for[i=1:5:2]{ pr i }

  ## Not possible in 4.6:

    # - use command line arguments
    # - define non mathematical functions (`f(){p sin(x); rep cos(x)}`)

## Save image to file

    p abs(x)

  # Save the image

    set terminal gif
    set output "out.gif"
    rep

  # jpeg, png, svg, postscript also possible.

  # Return to normal plotting mode in Linux:

    set output
    set terminal x11

  ## Save gif video

      set key off
      set term gif animate
      set out "out.gif"
      p sin(x)
      n = 20
      for [i=1:n]{ rep sin(x+i*2*pi/n) }

    # Now whatever you plot will go to a gif video file!

## SAve session

  # Save current session:

  # - variables
  # - functions
  # - last plot/splot command

    sa ses.gnuplot

  ## LOad

    # Load something saved with `save`.

      lo ses.gnuplot
