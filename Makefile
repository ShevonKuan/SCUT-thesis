src = main

pdf: clean main.tex main.bib
	latexmk $(src) -shell-escape -xelatex

show:
	xdg-open $(src).pdf

clean:
	-@rm -rf \
		*~ \
		*.aux \
		*.bbl \
		*.blg \
		*.dvi \
		*.ent \
		*.loa \
		*.lof \
		*.lot \
		*.toc \
		*.log \
		*.out \
		.fuse* \
		*.run.xml \
		*.bcf \
		*.xdv \
		*.synctex.gz
	-@find . -name *.aux -exec rm {} \;

# install-fonts:
# 	cd fonts && chmod +x init_fonts.sh && ./init_fonts.sh

