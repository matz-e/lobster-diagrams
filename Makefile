%.pdf: %.tex preamble.tex
	lualatex $<

%.png: %.pdf
	convert -background white -density 300 -flatten $*.pdf $@
