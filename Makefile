BOOKLETS := single-page double-page standard twoside

.DEFAULT_TARGET: all
.PHONY: all $(BOOKLETS:%=booklet-%)

all: $(BOOKLETS:%=booklet-%)

$(BOOKLETS:%=booklet-%):
	latexmk -pdf $@.tex

