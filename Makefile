COMP=pdflatex
BIB_COMP=bibtex
MAIN=tccudesc
MAIN_BIB=tccudesc


.PHONY: clean


all: latex bib latex latex

bib:
	$(BIB_COMP)   $(MAIN)

latex:
	$(COMP)       $(MAIN)
	
clean:
	-@rm -rf $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).log $(MAIN).pdf 2> /dev/null || true


