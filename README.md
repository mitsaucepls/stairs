## Prerequisites
Just download everything from Texlive
```sh
sudo pacman -S texlive-core texlive-latexextra texlive-langgerman texlive-bibtexextra texlive-pictures pygmentize
```

## Compile
You can find `compile_latex` in my bin repository.
```bash
compile_latex.sh file
```

## Alternative Workflow
```bash
pdflatex --shell-escape file.tex
bibtex file
pdflatex --shell-escape file.tex
pdflatex --shell-escape file.tex
```
