.DEFAULT_TARGET: all
.PHONY: all canzoniere booklet-single-page booklet-double-page booklet-standard

all: canzoniere booklet-single-page booklet-double-page booklet-standard

canzoniere:
	latexmk -pdf $@.tex

booklet-single-page: canzoniere
	pdflatex $@.tex

booklet-double-page: canzoniere
	pdflatex $@.tex

booklet-standard: canzoniere
	pdflatex $@.tex
