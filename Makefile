PAPERSIZE=letter
MAINTEXFILE=paper.tex
BIBFILE=bibs/refs.bib

FILENAME="$(basename $(MAINTEXFILE))"
PDFNAME=$(FILENAME).pdf

pdf:		$(PDFNAME)

$(PDFNAME):	$(MAINTEXFILE) $(BIBFILE)
		pdflatex $(MAINTEXFILE)
		bibtex $(FILENAME)
		pdflatex $(MAINTEXFILE)
		pdflatex $(MAINTEXFILE)

clean:
		rm -f $(PDFNAME) \
			$(FILENAME).log $(FILENAME).aux $(FILENAME).bbl $(FILENAME).blg $(FILENAME).dvi $(FILENAME).bcf $(FILENAME).out $(FILENAME).run.xml \