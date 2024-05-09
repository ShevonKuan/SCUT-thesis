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

update:
#自动下载最新cls并备份旧版替换
	-@mv ./scutthesis.cls ./scutthesis.cls.bak
	-@wget -O ./scutthesis.cls https://raw.githubusercontent.com/ShevonKuan/SCUT-thesis/main/scutthesis.cls
	-@echo "Update scutthesis.cls successfully!"
# install-fonts:
# 	cd fonts && chmod +x init_fonts.sh && ./init_fonts.sh

