if (!requireNamespace("pacman", quietly = TRUE)) {
    install.packages("pacman")
}

library(pacman)

p_load(ape)
p_load(Biostrings)
## p_load(OutbreakTools)
p_load(igraph)
p_load(phylobase)

p_load(emojifont)
p_load(ggplot2)
p_load(dplyr)
p_load(kableExtra)
p_load(tidytree)
p_load(treeio)
p_load(ggtree)

p_load(cowplot)
p_load(patchwork)
p_load(aplot)

p_load(phytools)
p_load(hexbin)
p_load(TDbook)
p_load(ggimage)
p_load(phyloseq)
p_load(treemap)
p_load(ggtreeExtra)
p_load(ggstar)
p_load(MicrobiotaProcess)
p_load(tanggle)
p_load(gggenes)
p_load(ggtext)
p_load(ggbreak)
p_load(rotl)
p_load(gridSVG)
p_load(data.tree)
p_load(rsvg)

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

squote <- function(string) {
    if (knitr::is_latex_output()) {
        left_quote_mark <- "`"
    } else {
        left_quote_mark <- "'"
    }

    right_quote_mark <- "'"

    fmt <- "%s%s%s"
    sprintf(fmt, left_quote_mark, string, right_quote_mark)
}
