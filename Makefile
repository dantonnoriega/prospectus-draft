RMD_FILES := $(filter-out _%, $(wildcard *.Rmd))

all: pdf html

html:
	rmtrash ./docs ;\
	cp ~/Dropbox/Scrivener/ZoteroLib.bib bib/book.bib ;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

pdf: $(RMD_FILES)
	rmtrash ./book-pdf ;\
	cp ~/Dropbox/Scrivener/ZoteroLib.bib bib/book.bib ;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir='book-pdf')" ;\
	open book-pdf/noriega-prospectus-draft.pdf
