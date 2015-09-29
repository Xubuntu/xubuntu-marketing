all: clean pdf-print pdf-web

pdf-print:
	mkdir -p build
	for file in svg/*.svg; do \
		inkscape -T -A build/$$(basename $$file .svg)_print.pdf $$file; \
	done
	pdftk build/*A4*_print.pdf cat output build/flyer_A4_print.pdf
	pdftk build/*USletter*_print.pdf cat output build/flyer_USletter_print.pdf
	rm build/xubuntu*

pdf-web: 
	mkdir -p build
	for file in svg/*.svg; do \
		inkscape -A build/$$(basename $$file .svg)_web.pdf $$file; \
	done
	pdftk build/*A4*_web.pdf cat output build/flyer_A4_web.pdf
	pdftk build/*USletter*_web.pdf cat output build/flyer_USletter_web.pdf
	rm build/xubuntu*

clean:
	rm -rf build

