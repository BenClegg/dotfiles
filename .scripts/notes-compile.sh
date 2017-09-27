#!/usr/bin/env bash

_inputfile="$1"

[[ $# -ne 1 ]] && { echo "Filename required."; exit 1; }

_filename=$(basename "$_inputfile")
_filename="${_filename%.*}"
echo "Compiling PDF for" $_filename"..."

pandoc $_filename.md -f markdown -s -V papersize:a4paper -V geometry:margin=1in --latex-engine=/usr/bin/pdflatex -o $_filename-notes.pdf
