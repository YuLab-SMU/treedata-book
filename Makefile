gitbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "gitbook")'

pdfbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "pdf_book")'
clean:
	Rscript -e 'bookdown::clean_book()'
