## Software information and conventions

The R and core packages information when compiling this book is as
follows:

``` r
R.version.string
```

    ## [1] "R version 4.1.2 (2021-11-01)"

``` r
library(treedataverse)
```

    ##  Attaching packages  treedataverse 0.0.1 

    ##  ape         5.5            treeio      1.18.1   
    ##  dplyr       1.0.7          ggtree      3.2.1
    ##  ggplot2     3.3.5          ggtreeExtra 1.4.1    
    ##  tidytree    0.3.6

The [**treedataverse**](https://github.com/YuLab-SMU/treedataverse) is a
meta package to make it easy to install and load core packages for
processing and visualizing tree with data using the packages described
in this book. The installation guide for
[**treedataverse**](https://github.com/YuLab-SMU/treedataverse) can be
found in FAQ.

The datasets used in this book have three sources:

1.  Simulation data
2.  Datasets in the R packages
3.  Data downloaded from the Internet

In order to make the data downloaded from the Internet more accessible,
we packed the data in an R package,
[**TDbook**](https://CRAN.R-project.org/package=TDbook), with detailed
documentation of the original source, including URL, authors, and
citation if the information is available. The
[**TDbook**](https://CRAN.R-project.org/package=TDbook) is available on
CRAN and can be installed using `install.packages("TDbook")`.

Package names in this book are formatted as bold text (*e.g.*,
[**ggtree**](http://bioconductor.org/packages/ggtree)), and function
names are followed by parentheses (*e.g.*, `treeio::read.beast()`). The
double-colon operator (`::`) means accessing an object from a package.
