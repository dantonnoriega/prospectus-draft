RMD_FILES := $(filter-out _%, $(wildcard *.Rmd))

all: bib $(RMD_FILES) pdf 
	rm -rf ./book-output;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')";\
	cp -R ./book-output/ ~/Github/noriega-prospectus/

pdf: $(RMD_FILES)
	rm -rf ./book-pdf;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir='book-pdf')"

bib: ; cp ~/Dropbox/Scrivener/ZoteroLib.bib ./book.bib