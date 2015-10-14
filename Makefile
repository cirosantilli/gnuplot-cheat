.POSIX:

IN_EXT ?= .gnuplot
GIF_EXT ?= .gif
PNG_EXT ?= .png
WEB ?= web
ZIP ?= gnuplot-examples.zip

GIFS := $(patsubst %$(GIF_EXT)$(IN_EXT),%$(GIF_EXT),$(wildcard *$(IN_EXT)))
PNGS := $(patsubst %$(IN_EXT),%$(PNG_EXT),$(wildcard *$(IN_EXT)))
# Remove some special files that should not be rendered.
PNGS := $(filter-out main$(PNG_EXT) template$(PNG_EXT),$(PNGS))

.PHONY: clean web zip

all: $(PNGS) $(GIFS)

%$(PNG_EXT): %$(IN_EXT)
	gnuplot -e 'set terminal png' -e 'set output "$@"' '$<'

%$(GIF_EXT): %$(GIF_EXT)$(IN_EXT)
	gnuplot -e 'set terminal gif animate delay 10' -e 'set output "$@"' '$<'

clean:
	rm -fr *$(GIF_EXT) *$(PNG_EXT) '$(ZIP)' '$(WEB)'

web: all
	mkdir -p '$(WEB)'
	cp *$(GIF_EXT) *$(PNG_EXT) '$(WEB)'
	./make-web '$(WEB)'

zip: all
	rm -f '$(ZIP)'
	zip -r '$(ZIP)' *$(GIF_EXT) *$(PNG_EXT)
