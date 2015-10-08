.POSIX:

IN_EXT ?= .gnuplot
OUT_EXT ?= .png

OUTS := $(patsubst %$(IN_EXT),%$(OUT_EXT),$(wildcard *$(IN_EXT)))
OUTS := $(filter-out main$(OUT_EXT),$(OUTS))

.PHONY: clean

all: $(OUTS)

%$(OUT_EXT): %$(IN_EXT)
	gnuplot -e 'set terminal png' -e 'set output "$@"' '$<'

clean:
	rm -f *$(OUT_EXT)
