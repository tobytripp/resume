.SUFFIXES :
.SUFFIXES : .tex .pdf

TEX2PDF = /Library/TeX/texbin/pdflatex

all: $(TEX2PDF) resume.pdf
	open resume.pdf

$(TEX2PDF):
	brew cask install mactex

typeset:
	$(TEX2PDF) resume.tex

clean:
	rm *.aux *.out *.log

.tex.pdf:
	$(TEX2PDF) $<

.PHONY: all
