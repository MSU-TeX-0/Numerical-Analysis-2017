NAME=numerical-analysis
LATEX=xelatex

all: $(NAME).pdf

clean:
	rm -f *.pdf *.aux *.bbl *.blg *.log *.synctex.*

$(NAME).pdf: *.tex src/*.tex include/*.tex
	$(LATEX) $(NAME).tex

.PHONY: clean all
