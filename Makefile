gitbook:
	Rscript -e 'library(bookdown);render_book("index.Rmd", "gitbook")'

clean:
	Rscript -e 'bookdown::clean_book()'
