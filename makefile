# vim: tabstop=8 shiftwidth=8 noexpandtab
# makefile for pdflatex

INPUT  = Presentation
DATE   = $(shell date "+%d%b")
OUTPUT = mjarvis_$(DATE)

TEX = pdflatex -interaction nonstopmode -jobname $(OUTPUT)
VIEW = evince

$(OUTPUT).pdf: $(INPUT).tex
	( \
	$(TEX) $(INPUT); \
	while grep -q "Rerun to get cross-references right." $(OUTPUT).log; \
	do \
		$(TEX) $(INPUT); \
	done \
	)
	cp $(OUTPUT).pdf ~/public_html/presentations/

show: $(OUTPUT).pdf
	$(VIEW) $(OUTPUT).pdf

clean::
	-rm *.toc *.aux *.log *.lof *.bib *.bbl *.blg *.dvi *.out *.nav *.snm *.vrb mjarvis*.pdf
