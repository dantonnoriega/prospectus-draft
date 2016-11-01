RMD_FILES := $(filter-out _%, $(wildcard *.Rmd))

all: pdf html

html:
	rmtrash ./book-output ;\
	cp ~/Dropbox/Scrivener/ZoteroLib.bib ./book.bib ;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')";\
	cp -R ./book-output/ ~/Github/prospectus-publish/

pdf: $(RMD_FILES)
	rmtrash ./book-pdf ;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir='book-pdf')"
