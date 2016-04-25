RMD_FILES := $(filter-out _%, $(wildcard *.Rmd))

all: $(RMD_FILES) pdf
	rmtrash ./book-output;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')";\
	cp -R ./book-output/ ~/Github/noriega-prospectus/

pdf: $(RMD_FILES)
	rmtrash ./book-pdf ;\
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book', output_dir='book-pdf')"