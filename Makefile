.DEFAULT_TARGET: all
.PHONY: all booklet-single-page booklet-double-page booklet-a4 booklet-standard booklet-twoside booklet-cd

all: booklet-single-page booklet-double-page booklet-a4 booklet-standard booklet-twoside booklet-cd
	mkdir -p build
	mv -f *.pdf build/
	latexmk -c

booklet-single-page: booklet-standard
	latexmk -pdf $@.tex

booklet-double-page: booklet-twoside
	latexmk -pdf $@.tex

booklet-a4:
	latexmk -pdf $@.tex

booklet-standard:
	latexmk -pdf $@.tex

booklet-twoside:
	latexmk -pdf $@.tex

booklet-cd:
	cd cd/canzoniere && latexmk -pdf canzoniere.tex && mv canzoniere.pdf ../../booklet-cd.pdf && latexmk -c
