
CC=xelatex
VIEWER=evince

jmalone.pdf: jmalone.tex deedy-resume-openfont.cls fonts
	$(CC) jmalone.tex

view: jmalone.pdf
	$(VIEWER) jmalone.pdf

deedy-resume-openfont.cls:
	ln -s Deedy-Resume/OpenFonts/deedy-resume-openfont.cls .

fonts:
	ln -s Deedy-Resume/OpenFonts/fonts .

