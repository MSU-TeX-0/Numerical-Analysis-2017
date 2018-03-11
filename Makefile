NAME=numerical-analysis
LATEX=xelatex

.PHONY: all
all: $(NAME).pdf

.PHONY: clean
clean:
	rm -f *.pdf *.aux *.bbl *.blg *.log *.synctex.*

.PHONY: remake
remake:
	$(LATEX) $(NAME).tex

$(NAME).pdf: *.tex src/*.tex include/*.tex
	$(MAKE) remake
