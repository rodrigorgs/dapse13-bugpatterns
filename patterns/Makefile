.SUFFIXES: .tex .Rnw
PATTERNS = $(wildcard *.Rnw)
TEX = $(patsubst %.Rnw, %.tex, $(PATTERNS))

all: $(TEX)

%.tex: %.Rnw
	R CMD Sweave $<
	sed -i ".tmp" -e "s/includegraphics{/includegraphics{patterns\//g" $@

clean:
	rm $(TEX) *.pdf
