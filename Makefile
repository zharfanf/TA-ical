all: clean install

install:
	# Faishal's Part
	bash process_data.sh
	# End of Faishal's Part
	
	mkdir -p output
	mkdir -p build
	latexmk -pdf -bibtex -outdir=../build -cd src/thesis.tex
	mv ./build/thesis.pdf output

clean:
	rm -f output/* build/*
	find . -iname "*~" -exec rm '{}' ';'
