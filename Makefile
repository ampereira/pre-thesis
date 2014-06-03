CMD=latexmk
FLAGS=-pdf -quiet

default:
	$(CMD) $(FLAGS)

once:


%: tex/%.tex
	$(CMD) $(FLAGS) tex/$@.tex

clean:
	latexmk -C
