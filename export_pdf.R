rmds <- list.files(pattern = ".Rmd")
rmds <- rmds[rmds != "crc.Rmd"]
rmds <- rmds[rmds != "index.Rmd"]

system("cat index.Rmd > crc.Rmd")

for (f in rmds) {
    cat("\n\n\n", file = "crc.Rmd", append=TRUE)
    cmd <- paste("cat", f, ">> crc.Rmd")
    system(cmd)
}

library(rmarkdown)
library(pagedown)

render("crc.Rmd", "book_crc")
print("print to pdf")
chrome_print('crc.html', timeout=10000)


file.rename("crc.pdf", "docs/treedata.pdf")

file.remove("crc.Rmd")
file.remove("html.Rmd")

print("done...")
