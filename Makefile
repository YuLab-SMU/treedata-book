bs4:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "bs4_book")';\
	sed -i 's/Chalkduster/Comic Sans MS/g' docs/related-tools.html 

gitbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "gitbook")';\
	sed -i 's/Chalkduster/Comic Sans MS/g' docs/related-tools.html 

pdfbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "pdf_book")'

epub:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "epub_book")'

clean:
	Rscript -e 'bookdown::clean_book()';\
	rm -rf _bookdown_files

cover:
	Rscript -e 'source("book-cover.R")'
