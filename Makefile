all: nm.pdf

clean:
	rm -f *.pdf *.aux *.bbl *.blg *.log *.synctex.*

nm.pdf: *.tex
	xelatex nm.tex

.PHONY: clean all
