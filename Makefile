.SUFFIXES :
.SUFFIXES : .tex .pdf

TEX2PDF = /Library/TeX/texbin/pdflatex

all: $(TEX2PDF) resume.pdf
	open $<

$(TEX2PDF):
	brew cask install mactex

clean:
	rm *.aux *.out *.log

.tex.pdf:
	$(TEX2PDF) $<

.PHONY: all
