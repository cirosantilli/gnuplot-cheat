# Introduction

*Not* related to the GNU project, and does not use GPL!! LOL.

A bunch of demos can be found under `demo` of the source tree. Many PNG outputs can be found at: <http://gnuplot.sourceforge.net/demo/>

It can be used freely, but you cannot distribute a modified version, only patches. Like CC no derivatives?

Ubuntu 14.04 install:

    sudo apt-get install gnuplot-x11

All examples are tested Ubuntu 14.04, with Gnuplot 4.6.4 unless stated otherwise.

## Short vs long form

Most commands have a short form, e.g.:

    plot

has short form:

    p

I recommend using the long form when scripting, and the short form for interactive sessions.

## Source code

    cvs -d:pserver:anonymous@gnuplot.cvs.sourceforge.net:/cvsroot/gnuplot login
    cvs -z3 -d:pserver:anonymous@gnuplot.cvs.sourceforge.net:/cvsroot/gnuplot co -P gnuplot

Yes, CVS on SourceForge... but remember that this is a project started in 1985 :-)
