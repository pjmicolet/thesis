THESIS=infthesis-template
TEX = $(wildcard *.tex)


.PHONY: all clean

$(THESIS).pdf: $(TEX) $(BIB)
	pdflatex $(THESIS)
	bibtex $(THESIS)
	pdflatex $(THESIS)
	pdflatex $(THESIS)

clean:
	rm -f */*.aux */*.bbl */*.blg */*.log */*.out $(THESIS).pdf
         
