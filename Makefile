FILENAME = source

.PHONY: all clean

all: $(FILENAME).pdf
	open $(FILENAME).pdf

clean:
	$(RM) *.aux *.dvi *.log

%.pdf: %.dvi
	dvipdfmx $<

%.dvi: %.tex
	platex $<

