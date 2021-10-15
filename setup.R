library(conflicted)
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

conflict_prefer("expand", "ggtree")
conflict_prefer("mask", "treeio")
conflict_prefer("parent", "treeio")
conflict_prefer("ancestor", "treeio")
conflict_prefer("get.data", "treeio")
conflict_prefer("drop.tip", "treeio")
conflict_prefer("read.newick", "treeio")
conflict_prefer("MRCA", "tidytree")

conflict_prefer("filter", "dplyr")
conflict_prefer("rename", "dplyr")
conflict_prefer("collapse", "dplyr")
conflict_prefer("intersect", "dplyr")
conflict_prefer("union", "dplyr")
conflict_prefer("slice", "dplyr")
conflict_prefer("strsplit", "base")
conflict_prefer("paste", "base")
conflict_prefer("geom_errorbarh", "ggplot2")
conflict_prefer("as.data.frame", "BiocGenerics")




theme_set(theme_grey())

library(yulab.utils)
# pkg name in bold
options("yulab.utils_pkgfmt" = '**%s**') 


pkg_paml <- mypkg("PAML", "http://abacus.gene.ucl.ac.uk/software/paml.html")
pkg_baseml <- mypkg("BASEML", "http://abacus.gene.ucl.ac.uk/software/paml.html")
pkg_codeml <- mypkg("CODEML", "http://abacus.gene.ucl.ac.uk/software/paml.html")
pkg_hyphy <- mypkg("HyPhy", "https://veg.github.io/hyphy-site/")
pkg_r8s <- mypkg("r8s", "http://loco.biosci.arizona.edu/r8s/")
pkg_raxml <- mypkg("RAxML", "http://evomics.org/learning/phylogenetics/raxml/")
pkg_phyldog <- mypkg("PHYLDOG", "http://pbil.univ-lyon1.fr/software/phyldog/") 
pkg_revbayes <- mypkg("RevBayes", "http://revbayes.github.io/intro.html")
pkg_archaeopteryx <- mypkg("Archaeopteryx", "https://sites.google.com/site/cmzmasek/home/software/archaeopteryx")
pkg_phyloch <- mypkg("PHYLOCH", "http://www.christophheibl.de/Rpackages.html")
pkg_beast <- mypkg("BEAST", "http://beast2.org/")
pkg_epa <- mypkg("EPA", "http://sco.h-its.org/exelixis/web/software/epa/index.html")
pkg_pplacer <- mypkg("PPLACER", "http://matsen.fhcrc.org/pplacer/")
pkg_astral <- mypkg("ASTRAL", "https://github.com/smirarab/ASTRAL")
pkg_mega <- mypkg("MEGA", "https://www.megasoftware.net/")
pkg_mrbayes <- mypkg("MrBayes", "http://nbisweden.github.io/MrBayes/")
pkg_figtree <- mypkg("FigTree", "http://beast.community/figtree")
pkg_treeview <- mypkg("TreeView", "http://en.bio-soft.net/tree/TreeView.html")
pkg_treedyn <- mypkg("TreeDyn", "http://www.treedyn.org/")
pkg_evolview <- mypkg("EvolView", "https://www.evolgenius.info/evolview/")
pkg_itol <- mypkg("iTOL", "https://itol.embl.de/")
pkg_phylip <- mypkg("PHYLIP", "https://evolution.genetics.washington.edu/phylip.html")
pkg_paup <- mypkg("PAUP\\*", "https://paup.phylosolutions.com/")


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
