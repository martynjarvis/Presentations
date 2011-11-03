# vim: tabstop=8 shiftwidth=8 noexpandtab
# makefile for pdflatex
INPUT  = Presentation
#DATE   = `shell date "+%Y%m%d%" `
DATE   = $(shell date "+%d%b")
OUTPUT = hgg_mjarvis_$(DATE)

$(OUTPUT).pdf: $(INPUT).tex
	pdflatex -jobname $(OUTPUT) $(INPUT).tex

show: $(OUTPUT).pdf
	evince $(OUTPUT).pdf

clean:
	rm *.toc *.aux *.log *.lof *.bib *.bbl *.blg *.dvi *.out *.nav *.snm

cleanall:
	rm *.toc *.aux *.pdf *.ps *.eps *.log *.lof *.bib *.bbl *.blg *.dvi *.out *.nav *.snm
