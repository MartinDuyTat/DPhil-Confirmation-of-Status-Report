#!/bin/bash
f=ConfirmationOfStatusReport
#f=DPhilThesisOutline
if pdflatex $f.tex
then
  bibtex $f
  pdflatex $f.tex
  pdflatex $f.tex
fi
rm $f.{aux,log,bbl,blg,out}
