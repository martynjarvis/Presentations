# vim: tabstop=8 shiftwidth=8 noexpandtab
# makefile for pdflatex


Presentation.pdf: Presentation.tex
	pdflatex Presentation.tex

show: Presentation.pdf
	evince Presentation.pdf

clean:
	rm *.toc *.aux *.pdf *.ps *.eps *.log *.lof *.bib *.bbl *.blg *.dvi

