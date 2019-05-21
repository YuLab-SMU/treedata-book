require(tidyr)
require(ggplot2)
require(ggtree)
require(grid)

oldwd <- getwd()
setwd("~/github/plotting_tree_with_data/plotTree/tree_example_april2015/")
info <- read.csv("info.csv")
tree <- read.tree("tree.nwk")

##tp <- tree$tip.label

## set.seed(2018-04-10)
## tree=rtree(230)
## tree$tip.label <- tp

heatmap.colours=c("steelblue","grey","seagreen3","darkgreen","green","brown","tan", "red",
                  "orange","pink","magenta","purple","blue","skyblue3","blue","skyblue2")
names(heatmap.colours) <- 0:15
heatmapData=read.csv("res_genes.csv", row.names=1)

rn <- rownames(heatmapData)
heatmapData <- as.data.frame(sapply(heatmapData, as.character))

rownames(heatmapData) <- rn

cols <- c(HCMC='black', Hue='purple2', KH='skyblue2')
p <- ggtree(tree, layout='circular', size=.1) %<+% info +
#  geom_tippoint(aes(color=location), size=.001) + scale_color_manual(values=cols) #+
  geom_tiplab2(aes(label=name), align=T, linetype=NA, linesize=.05, size=.5, offset=1, hjust=0.5) #+
#  geom_tiplab2(aes(label=year), align=T, linetype=NA, size=.2, offset=3.5, hjust=0.5)

#p + xlim(-3, NA)

df <- p$data
df <- df[df$isTip,]
start <- max(df$x) + 2

dd <- as.data.frame(heatmapData)
## dd$lab <- rownames(dd)
lab <- df$label[order(df$y)]
dd <- dd[lab, , drop=FALSE]
dd$y <- sort(df$y)
dd$lab <- lab
## dd <- melt(dd, id=c("lab", "y"))
dd <- gather(dd, variable, value, -c(lab, y))

i <- which(dd$value == "")
if (length(i) > 0) {
  dd$value[i] <- NA
}
width=.5
width <- width * (p$data$x %>% range %>% diff) / ncol(heatmapData)

V2 <- start + as.numeric(as.factor(dd$variable)) * width

dd$x <- V2
dd$width <- width

dd$value[dd$value == 0] = NA

p2 <- p + geom_tile(data=dd, aes(x, y, fill=value), width=width, inherit.aes=FALSE)

p2 = p2 + scale_fill_manual(values=heatmap.colours, na.value=NA) #"white")

setwd(oldwd)
#p2 <- p2+theme_tree()+theme_transparent()
#p2
p3 <- rotate_tree(open_tree(p2, 120), -35)


# dev.new(height=297, width=210, unit="mm")
png("book-cover.png", width=210, height=297, units="mm", res=150)
#grid.newpage()

grid.text("Data Integration, Manipulation and\nVisualization of Phylogenetic Trees", 
  y=.82, gp=gpar(cex=2.5), just="left", x=.1)

vp = viewport(x=.5, y=.42, width=.9, height=.8)
pushViewport(vp)
grid.draw(ggplotGrob(p3))

upViewport()
grid.text("Guangchuang Yu", y=.22, x=.9, just="right", gp=gpar(cex=2))
grid.text("School of Basic Medical Sciences\nSouthern Medical University", y=.15, x=.9, just="right", 
    gp=gpar(cex=1.5, fontface="italic"))
dev.off()
