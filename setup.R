library(ape)
library(Biostrings)
## library(OutbreakTools)
library(igraph)
library(phylobase)

library(emojifont)
library(ggplot2)
library(dplyr)
library(kableExtra)
library(tidytree)
library(treeio)
library(ggtree)

library(cowplot)
library(patchwork)
library(aplot)

source("conflicted.R")
source("software-link.R")

theme_set(theme_grey())


badge_version <- function(pkg, color="green") {
    v <- packageVersion(pkg)
    url <- paste0("https://github.com/YuLab-SMU/", pkg)
    badger::badge_custom(pkg, v, color, url)
}


## based on https://bookdown.org/yihui/rmarkdown-cookbook/fig-process.html

svg2png <- function(path, options) {
    if (!grepl('[.]svg$', path)) return(path)
    
    if (file.size(path)/1000000 < 1.2) {
        ## less than 1.2M
        return(path)
    }

    output <- sub(".svg$", ".png", path)
    system2("convert", paste("-density 150", path, output))
    file.remove(path)
    return(output)
}


trim_fig <- function(path, options) {
    output <- sub(".png$", "-crop.png", path)
    system2("convert", paste("-trim", path, output))
    file.remove(path)
    return(output)
}

