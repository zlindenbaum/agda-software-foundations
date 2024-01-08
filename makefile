default: sf

sf:
	lhs2TeX --agda Sf.lagda > Sf.tex
	xelatex Sf.tex
	bibtex Sf.aux
	xelatex Sf.tex
	xelatex Sf.tex
clean:
	rm *.tex
	rm *.pdf
	rm *.aux
	rm *.log
	rm *.ptb
	rm *.toc
	rm *.out
	rm *.bbl
	rm *.blg
	rm *.agdai
view: sf
	evince Sf.pdf &
