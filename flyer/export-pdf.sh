#!/bin/bash

rm -rf pdf
mkdir pdf

for file in svg/*.svg
do
	# text as text (embedded font)
	inkscape -A pdf/$(basename $file .svg)_web.pdf $file
	# text as paths
	inkscape -T -A pdf/$(basename $file .svg)_print.pdf $file
done

# Text as text
# Use case: web
pdftk pdf/*A4*_web.pdf cat output pdf/flyer_A4_web.pdf
pdftk pdf/*USletter*_web.pdf cat output pdf/flyer_USletter_web.pdf

# Text as paths
# Use case: print
pdftk pdf/*A4*_print.pdf cat output pdf/flyer_A4_print.pdf
pdftk pdf/*USletter*_print.pdf cat output pdf/flyer_USletter_print.pdf
