COMP=pdflatex
BIB_COMP=bibtex
MAIN=svn
MAIN_BIB=svn


.PHONY: clean


all: latex bib latex latex

bib:
	$(BIB_COMP)   $(MAIN)

latex:
	$(COMP)       $(MAIN)
	
clean:
	-@rm -rf $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).log $(MAIN).pdf 2> /dev/null || true


