export PATH:=/sbin:/usr/sbin:${PATH}

viewpdf:
	pdflatex --output-directory=dist verslag.tex ; xpdf dist/verslag.pdf

viewhtml:
	htlatex verslag.tex ; x-www-browser verslag.html

prepare:
	sudo apt-get install texlive xpdf 

clean:
	rm dist/*.aux dist/*.lg dist/*.4dist/* dist/*.image.dist/* dist/*.htoc dist/*.html dist/*.css dist/*.dvi dist/*.haux dist/*.pdf dist/*.log dist/*.out dist/*.idv dist/*.tmp
	mkdir -p dist
