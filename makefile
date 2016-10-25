latexfile 	= presentation
figures		=
$(latexfile).pdf : verbatim.pdf $(figures) $(latexfile).tex
	rubber --pdf $(latexfile)

verbatim.pdf : verbatim.tex
	rubber --pdf verbatim.tex

.PHONY: clean clean-full

clean:
	rubber --clean $(latexfile) verbatim.tex
	rm -f new.tex

clean-full: clean
	rm -f $(latexfile).synctex $(latexfile).synctex.gz $(latexfile).pdf
	rm -f $(latexfile).brf
	rm -f verbatim.pdf
