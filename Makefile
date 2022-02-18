bs4:
	rm -rf gh-pages/libs;\
	sed -i 's/pdf/gh-pages/g' _bookdown.yml;\
	sed -i 's/colorlinks: false/colorlinks: true/g' index.Rmd;\
	Rscript -e 'library(bookdown); render_book("index.Rmd", "bs4_book")';\
	sed -i 's/Chalkduster/Comic Sans MS/g' gh-pages/related-tools.html 

gitbook:
	rm -rf gh-pages/libs;\
	Rscript -e 'library(bookdown); render_book("index.Rmd", "gitbook")';\
	sed -i 's/Chalkduster/Comic Sans MS/g' gh-pages/related-tools.html 

##pdf:
##	pagedjs-cli ./gh-pages/index.html -o treedata-book.pdf

pdfbook:
	sed -i 's/gh-pages/pdf/g' _bookdown.yml;\
	sed -i 's/colorlinks: true/colorlinks: false/g' index.Rmd;\
	Rscript -e 'library(bookdown); render_book("index.Rmd", "pdf_book")'

epub:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "epub_book")'

word:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "word_document2")';\
	mv gh-pages/treedata.docx ./treedata.docx

softwareinfo:
	Rscript -e 'rmarkdown::render("software-info.Rmd", rmarkdown::md_document(variant="gfm"))';\
	sed -i 's/─//g' software-info.md;\
	sed -i 's/✔//g' software-info.md

clean:
	Rscript -e 'bookdown::clean_book()';\
	rm -rf _bookdown_files

cover:
	Rscript -e 'source("book-cover.R")'

largeImg:
	ls -lhS gh-pages/treedata_files/figure-html | head  

publish:
	cd gh-pages;\
	git add .;\
	git commit -m 'update';\
	git push -u origin gh-pages
	
