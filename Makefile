FILENAME = dapse13-bugpatterns
BIBFILENAME = $(FILENAME)

all: sweave $(FILENAME).tex $(BIBFILENAME).bib
	pdflatex $(FILENAME)
	bibtex $(FILENAME)
	pdflatex $(FILENAME)
	pdflatex $(FILENAME)

sweave:
	$(MAKE) -C patterns

view:
	open $(FILENAME).pdf

clean:
	-rm -f *.aux *.bbl *.blg *.log *.out *.idx *.ilg *.ind *.toc *.d
