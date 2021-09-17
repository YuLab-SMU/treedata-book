


## to do
https://github.com/YuLab-SMU/ggtree/pull/434
https://github.com/YuLab-SMU/ggtree/issues/367

ggtree + deeptime can do something like this, <https://www.sciencedirect.com/science/article/pii/S2590197420300197>.

+ [ introduce align argument in geom_hilight #431 ](https://github.com/YuLab-SMU/ggtree/pull/431)
+ [geom_facet() support discrete scale](https://github.com/YuLab-SMU/ggtree/issues/351)
+ [geom_cladelab: the devel version of geom_cladelabel to support aes mapping](https://github.com/YuLab-SMU/ggtree/pull/342)
+ [add horizontal parameter in geom_cladelabel](https://github.com/YuLab-SMU/ggtree/pull/343)
+ [branch size can be grandually changed](https://github.com/YuLab-SMU/ggtree/pull/349)
+ [add offset.label and label to geom_treescale](https://github.com/YuLab-SMU/ggtree/pull/360)
+ [fix extendto argument for geom_highlight when layout="inward_circular" or "dendrogram"](379)
+ [added new default tip.order to ggdensitree that is more similar to DensiTree's](382)
+ [update stat method of tree layout](385)
+ [ remove inhibit.size and use continuous replace](https://github.com/YuLab-SMU/ggtree/pull/387)
+ [The optimization of internal function of geom_tiplab](https://github.com/YuLab-SMU/ggtree/pull/392)
+ [optimize the angle of text in geom_cladelab and don't inherit the global aes in geom_cladelab and geom_taxalink](https://github.com/YuLab-SMU/ggtree/pull/396)
+ [fix ape layout branch.length](https://github.com/YuLab-SMU/ggtree/pull/403)
+ [update geom_tiplab for better compatibility with geom_nodelab](https://github.com/YuLab-SMU/ggtree/pull/406)
+ [new geom_nodelab and geom_tiplab](https://github.com/YuLab-SMU/ggtree/pull/408)
+ [Update geom_range.R to fix issue #306](https://github.com/YuLab-SMU/ggtree/pull/410)
+ [optimizing geom_range to support the mapping of color, size.](https://github.com/YuLab-SMU/ggtree/pull/411)
+ [Add branch.y (and branch.x = branch) in calculate_branch_mid() for positioning on branches in unrooted layouts](https://github.com/YuLab-SMU/ggtree/pull/412)
+ [add branch.x and branch.y for unrooted layout](https://github.com/YuLab-SMU/ggtree/pull/414)
+ [fixed fontface of aes](https://github.com/YuLab-SMU/ggtree/pull/418)
+ [add td_mutate and geom_hilight, geom_cladelab supporting fuction data](https://github.com/YuLab-SMU/ggtree/pull/421)
+ [fix the issue of data argument of geom_tiplab](https://github.com/YuLab-SMU/ggtree/pull/426)
+ [options to control the line type of radial](https://github.com/YuLab-SMU/ggtree/pull/427)
+ [ data argument of geom_facet supporting function #430 ](https://github.com/YuLab-SMU/ggtree/pull/430)
+ [add `select`, `filter`, `mutate`, `left_join`, `unnest`, `pull` and `rename` verbs for `treedata` object](https://github.com/YuLab-SMU/tidytree/pull/19)






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



+ [Regarding "read.beast" function](https://github.com/YuLab-SMU/treeio/issues/43)
+ [update method to parse phyloxml format file](https://github.com/YuLab-SMU/treeio/pull/44)
+ [Adding read.treeqza to parse tree qza file from output of qiime2](46)


+ [fix drop.tip when all tips removed](https://github.com/YuLab-SMU/treeio/pull/65)
+ [fix the add_pseudo_nodelabel when the node.label is not null in beast file](https://github.com/YuLab-SMU/treeio/pull/64)
+ [fixed bug when some node labels are blank in read.beast](https://github.com/YuLab-SMU/treeio/pull/63)
+ [to fix issues about additional parameters of drop.tip](https://github.com/YuLab-SMU/treeio/pull/62)
+ [As.phylo as.treedata](https://github.com/YuLab-SMU/treeio/pull/61)
+ [Optimization read.mcmctree](https://github.com/YuLab-SMU/treeio/pull/60)
+ [add read.mcmctree function](https://github.com/YuLab-SMU/treeio/pull/58)
+ [fix read.beast](https://github.com/YuLab-SMU/treeio/pull/56)
+ [add new as.phylo method for chronos class](https://github.com/YuLab-SMU/treeio/pull/54)
+ [fix bug for parsing MrBayes output](https://github.com/YuLab-SMU/treeio/pull/53)
+ [update read.fasta](https://github.com/YuLab-SMU/treeio/pull/52)
+ [update read.nhx to parse large tree file](https://github.com/YuLab-SMU/treeio/pull/51)
+ [Added read.beast.tree and exported write_beast_newick](https://github.com/YuLab-SMU/treeio/pull/50)
+ [update read.beast](https://github.com/YuLab-SMU/treeio/pull/48)




## tidytree

+ [给进化树加分支](https://mp.weixin.qq.com/s/OBb9sqR9IuEfAzDqEBr6Uw)


## treeio

+ [树变图，图变树？](https://mp.weixin.qq.com/s/Uhx3l3lKQS88OJ4SHntkNg)
+ [treeio: 进化树基础类和方法](https://mp.weixin.qq.com/s/uhxCqbnssgP_GHVHqANbaQ)
+ [进化树改名](https://mp.weixin.qq.com/s/-v1vklrKRwkEJ0amjVJjJQ)
+ [treeio: Phylogenetic data integration](https://mp.weixin.qq.com/s/vLcoF2yMpOa4VzO2nxhZEw)
+ [Subsetting Phylogenetic Trees](https://mp.weixin.qq.com/s/-wpzjkpHLGL8jEzNTSivJQ)
+ [treeio支持解析MEGA的输出](https://mp.weixin.qq.com/s/Ikp3hq8OBOsdkQY390grqA)



## ggtree


+ [Ask me anything about ggtree](https://mp.weixin.qq.com/s/IzSC1GnNPUwKdehhz-U8fQ) <!-- x -->
+ [当年ggtree发布文，为整合数据而生！](https://mp.weixin.qq.com/s/4g2dPmm5ycTvbube4ujlgQ)
+ [ggtree无根树及注释](https://mp.weixin.qq.com/s/Jij3xQhvgsuZBH_g45MvvQ) <!-- x -->
+ [无根树中加入枝长图例](https://mp.weixin.qq.com/s/kvCuKjHA9qZ6qL-7R855dg) <!-- x -->
+ [ggtree画根分支](https://mp.weixin.qq.com/s/ObJlBkOTKIYjYpHTww6cIw) <!-- x -->
+ [phylip树格式](https://mp.weixin.qq.com/s/NcS-yOsRxHJZStiZ7SPw4g) <!-- x -->
+ [ggtree版本的plotTree](https://mp.weixin.qq.com/s/JM7m7fQSxW7SdRVyGhuxTA) <!-- x -->
+ [align genomic features with phylogenetic tree](https://mp.weixin.qq.com/s/3j9qg0qpMUsxpp_QkTm9fA)
+ [ggjoy facet with ggtree](https://mp.weixin.qq.com/s/iTJzXJRHD3z_rq9OHZJ_4Q)
+ [reproducible logo generated by ggtree](https://mp.weixin.qq.com/s/Tp0ydzaInr80S6oVlEsBCA)
+ [用ggtree重现Figtree的示例进化树](https://mp.weixin.qq.com/s/3Fc83au6gV5p6ZdlzlAC2w)
+ [ggtree for microbiome data](https://mp.weixin.qq.com/s/KScSppwajYsuHuf1w3bQTQ)
+ [ggtree for outbreak data ](https://mp.weixin.qq.com/s/eo_lrVctJ3X3OCdAQqK9Dw)
+ [ggtree支持phylog对象](https://mp.weixin.qq.com/s/7MFS_OUVB5GkKCnHSGzUGA)
+ [ggtree画层次聚类](https://mp.weixin.qq.com/s/tLaboUnsm2iA20PWLuf6yg)
+ [用户数据注释进化树](https://mp.weixin.qq.com/s/ClTWsdyIYyHeNN0enwlglw)
+ [改变outgroup的枝长](https://mp.weixin.qq.com/s/d2sLLmuMTXLZNfQbWtKUxg)
+ [使用自己的数据来给进化树上色](https://mp.weixin.qq.com/s/8ryU-3HjMvE7RFgo4rQ3Ew)
+ [bootstrap分段标记](https://mp.weixin.qq.com/s/7dq1br8LCY5jAtQDm1bXPg)
+ [ggtree中标记树分支？](https://mp.weixin.qq.com/s/nlAGbHMJ2tBEaaBxCQC13A)
+ [xlim_tree: set x axis limits for only Tree panel](https://mp.weixin.qq.com/s/eOSLVtLC0KM61DVQjpCcig)
+ [reverse time scale](https://mp.weixin.qq.com/s/JdjWAIFfGDKBzYQOabzKaw)
+ [vertical dendrogram in ggtree](https://mp.weixin.qq.com/s/2sV5wGux37ytBZulB3p3JA)
+ [中空的环形树](https://mp.weixin.qq.com/s/7W6Z7wVQZEPR1A5P-sMHZA)
+ [可视化操作树的拓扑结构](https://mp.weixin.qq.com/s/SbAyY4WzB7hNRbID48NIgg)
+ [ggtree - updating a tree view](https://mp.weixin.qq.com/s/csZUfzoluTkXp9DxYR7w6g)
+ [facet_plot: 加图层到特定的分面上](https://mp.weixin.qq.com/s/hY38gr2x8AqRaTh4C7mrnA)
+ [facet_plot：加图层到特定分面，方法二](https://mp.weixin.qq.com/s/PnbasfW4HKILuZNdrLVX_g)
+ [facet_plot: 关联数据和进化树的通用方法](https://mp.weixin.qq.com/s/FlrnY9GeV5fHa6EZpZhTJA)
+ [facet_plot更改panel label](https://mp.weixin.qq.com/s/RC9TsEZRjflIZE15xpa0sg)
+ [同时让N颗树关联同一个数据集](https://mp.weixin.qq.com/s/LTK1tDPLEk8_BWEVB9kReQ)
+ [漫画版的进化树你见过吗？](https://mp.weixin.qq.com/s/P7yUFLwW4OLGBrPw05iQ_A)
+ [取子集画图](https://mp.weixin.qq.com/s/JXpakSKqPPRHhcyQQVdoGA)
+ [Y叔不想养蛙，只想养你！](https://mp.weixin.qq.com/s/S5K9HwgCC2LtUJsnKBx0Yg)
+ [用图片注释进化树](https://mp.weixin.qq.com/s/BV-8HtiZC-XSHUVAwiS7Vw)
+ [当生物女博士遇到小学二年级语文作业](https://mp.weixin.qq.com/s/BJjy28aru_l40v-jdPnSPA) <!-- x -->
+ [identify: 交互式操作进化树](https://mp.weixin.qq.com/s/PIns29a9pwrUSK6kWpUBIw) <!-- x -->
+ [plotly: 交互式探索进化树](https://mp.weixin.qq.com/s/a0XHr8Vfr49tEBYZWoRBxA) <!-- x -->
+ [ggnetworx：让ggtree支持phylogenetic networks](https://mp.weixin.qq.com/s/YytLpKKkTqqpcrJJLFOhjg)
+ [ggtree买家秀](https://mp.weixin.qq.com/s/W9UI9doKKeq8YhbcA0N-_A)
+ [ggplot2 - 更改分面的相对宽度](https://mp.weixin.qq.com/s/72UHjAQTRXuHzoeWUc-ccA)
+ [听说你想画好几颗树在一起](https://mp.weixin.qq.com/s/Hx9fI-JaMN7gY_vElQiQKg)
+ [倒不如画一些渐变色的线条吧](https://mp.weixin.qq.com/s/0WGS6b11F1Ul0ZkceKYOvQ)
+ [python的世界里没有这么好的工具！](https://mp.weixin.qq.com/s/zops2EyAdJsLtBcGcxa3ZQ)
+ [风儿啊，它吹乱了我的头发](https://mp.weixin.qq.com/s/iUUyXtJG3Fj3uPfvfHmdQA)
+ [ggtree在线书](https://mp.weixin.qq.com/s/NwYXAxhAQNW0Xmq21FY2nw)
+ [进化树和基因组结构](https://mp.weixin.qq.com/s/rm6x7-sWnvQ9qRn26eP2nQ)
+ [ggtree所支持的各种树的布局](https://mp.weixin.qq.com/s/E0MfgCFdMxJyrVqpmwNUgA)
+ [进化树上随意选几条边来上色](https://mp.weixin.qq.com/s/TssW_2exj54YYrgHro3dtg)
+ [进化树上随意选几条边，换线条类型！](https://mp.weixin.qq.com/s/FcigGbaRR2RKTTza7fWx1w)
+ [听说你想在系统发育树上随意加个点？](https://mp.weixin.qq.com/s/L1eNG-bGXQmHu3spQoINRg)
+ [这么多年了，终于有个故事可以讲](https://mp.weixin.qq.com/s/okDgKJgV8wr5xDMufOEihw)
+ [对ggplot2指定的分面，任性调整xlim和分面宽度！](https://mp.weixin.qq.com/s/ClGhvr_sJi-6-SN8hgRUyg)
+ [给不同的分面分别设置x label？](https://mp.weixin.qq.com/s/sIoXMP000HJGEgAalTCrWg)
+ [度量生物多样性](https://mp.weixin.qq.com/s/ntgUi0-AZOu5nbZHvSS9aQ)
+ [进化树与序列的距离矩阵](https://mp.weixin.qq.com/s/Vb9MBt419sO69UOPfEb0UQ)
+ [画两颗面对面的树，还要分别加注释！](https://mp.weixin.qq.com/s/jevqlyaf7c7zudQCAkylJQ)
+ [对进化树的分支长度做数据变换](https://mp.weixin.qq.com/s/rUgOI2uMjE_lK4ou9x2hUw)
+ [一个legend伪装成三个，服气！](https://mp.weixin.qq.com/s/OcTP0mU3LPraza-7EHmy2w)
+ [听说你想给线条画个边框？](https://mp.weixin.qq.com/s/Cq6e_ZBUgyZtxJOHiXkpZA)
+ [纯文本的进化树](https://mp.weixin.qq.com/s/inI7RtaFAg3g9oH3iwMLwg)
+ [用ggtree画思维导图，小白也能学会！](https://mp.weixin.qq.com/s/NArmAQJp5OPt_SEVGmGv8g)



### ggtreeExtra

+ [用图层叠加方法绘制环形进化树](https://mp.weixin.qq.com/s/Il8yZqUoBVCvND7U7HKxxA)
+ [用ggtreeExtra给进化树加热图](https://mp.weixin.qq.com/s/rhv7xLgrY1TlpfbC_riAvQ)
### 直播

+ [webinar录播 (2017-10-24)：plotting tree + data](https://mp.weixin.qq.com/s/YuUOztQg3nUnhdvyg8asvg)
+ [ggtree直播PPT第一部分](https://mp.weixin.qq.com/s/3yEN-8oUck2WPmNQ368qYA)
+ [ggtree直播PPT第二部分](https://mp.weixin.qq.com/s/7-YhGzzu_tVAwySrYOKGFg)

