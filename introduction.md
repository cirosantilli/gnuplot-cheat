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

## File extension

<http://stackoverflow.com/questions/5497889/is-there-a-standard-file-extension-for-gnuplot-files>

There are a bunch of options.

I prefer `.gnuplot` as it is the clearest, but it has little support.

The shebang helps Vim there.

## Source code

    cvs -d:pserver:anonymous@gnuplot.cvs.sourceforge.net:/cvsroot/gnuplot login
    cvs -z3 -d:pserver:anonymous@gnuplot.cvs.sourceforge.net:/cvsroot/gnuplot co -P gnuplot
    cd gnuplot
    cvs update -r Release_5_0_1
    # Ubuntu 14.04.
    sudo apt-get build-dep gnuplot
    sudo apt-get install lua5.2
    ./prepare
    ./configure
    time make
    ./src/gnuplot --version
    # Install is needed for it to work.
    sudo make install
    gnuplot --version

When you get tired of it:

    sudo make uninstall

Yes, CVS on SourceForge... but remember that this is a project started in 1985 :-)

TODO: how to checkout a given version????
