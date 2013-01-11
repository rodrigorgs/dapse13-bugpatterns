.SUFFIXES: .tex .Rnw
PATTERNS = $(wildcard *.Rnw)
TEX = $(patsubst %.Rnw, %.tex, $(PATTERNS))

all: $(TEX)

%.tex: %.Rnw
	R CMD Sweave $<

clean:
	rm $(TEX)
