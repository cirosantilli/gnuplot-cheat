.POSIX:

IN_EXT ?= .gnuplot
GIF_EXT ?= .gif
PNG_EXT ?= .png

GIFS := $(patsubst %$(GIF_EXT)$(IN_EXT),%$(GIF_EXT),$(wildcard *$(IN_EXT)))
PNGS := $(patsubst %$(IN_EXT),%$(PNG_EXT),$(wildcard *$(IN_EXT)))
PNGS := $(filter-out main$(PNG_EXT),$(PNGS))

.PHONY: clean

all: $(PNGS) $(GIFS)

%$(PNG_EXT): %$(IN_EXT)
	gnuplot -e 'set terminal png' -e 'set output "$@"' '$<'

%$(GIF_EXT): %$(GIF_EXT)$(IN_EXT)
	gnuplot -e 'set terminal gif animate delay 10' -e 'set output "$@"' '$<'

clean:
	rm -f *$(GIF_EXT) *$(PNG_EXT)
