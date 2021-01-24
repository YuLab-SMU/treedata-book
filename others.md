## to do


ggtree + deeptime can do something like this, <https://www.sciencedirect.com/science/article/pii/S2590197420300197>.



https://github.com/YuLab-SMU/ggtree/pull/349

https://github.com/YuLab-SMU/ggtree/issues/351

https://github.com/YuLab-SMU/ggtree/pull/360

geom_cladelab, <https://github.com/YuLab-SMU/ggtree/pull/342/>


geom_zoom_clade

ggtree for pvclust


+ [ggtree - updating a tree view](https://mp.weixin.qq.com/s/csZUfzoluTkXp9DxYR7w6g)


----------------


写一段ggtree画思维导图的例子。

x = tribble(~x, ~y,
        'a', 'b',
        a', 'c')
ggtree(as.phylo(x), layout='roundrect') + geom_label(aes(label=label))

还可以把原来的label当做是个指代，替换成真正的label，可以用ggtext支持富文本。


