#!/bin/bash
f=ConfirmationOfStatusReport
if pdflatex $f.tex
then
  bibtex $f
  pdflatex $f.tex
  pdflatex $f.tex
fi
rm $f.{aux,log,bbl,blg,log,out}
