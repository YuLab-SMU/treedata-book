x=tibble::tribble(~x, ~y,
                  'a', 'a1',
                  'a', 'a2',
                  'a', 'a3',
                  'a', 'a4',
                  'a', 'a5',
                  'a1', 'b1',
                  'a1', 'b2',
                  'a1', 'b3',
                  'a1', 'b4',
                  'a2', 'c1',
                  'a2', 'c2',
                  'a2', 'c3',
                  'a2', 'c4',
                  'a3', 'd1',
                  'a3', 'd2',
                  'a3', 'd3',
                  'a4', 'e1',
                  'a4', 'e2',
                  'a5', 'f1',
                  'a5', 'f2',
                  'a5', 'f3')
                  


require(treeio)
require(ggtree)

f = function(n) {
  paste(sample(LETTERS,n, replace=T), collapse="")
}

n = sample(5:8, 7, replace=T)
lab=sapply(n, f)
names(lab) = letters[1:7]
lab

lab <- c('a' = '项目计划',
         'a1' = '需求讨论',
         'a2' = '讨论解决方案',
         'a3' = '项目设计',
         'a4' = '汇报讨论',
         'a5' = '结果确认',
         'b1' = '现状说明',
         'b2' = '需求分析',
         'b3' = '需求定义',
         'b4' = '明确目标',
         'c1' = '获取基本信息',
         'c2' = '明确需求目标',
         'c3' = '功能范围确认',
         'c4' = '解决方案初步商讨',
         'd1' = '解决方案',
         'd2' = '实施计划',
         'd3' = '原型设计',
         'e1' = '解决方案汇报',
         'e2' = '方案讨论',
         'f1' = '目标明确',
         'f2' = '范围确定',
         'f3' = '方案可靠'
         )
y = as.phylo(x)

require(tidytree)
yy = as_tibble(y) %>% mutate(cat = ifelse(node %in% parent, 1, parent))
yy$cat[rootnode(y)] = 0

## http://www.bio-review.com/mind-mapping/
ggtree(as.treedata(yy), ladderize=F, layout='roundrect') + 
  geom_nodelab(aes(x=x*.95, label=lab[label], 
                   fill=factor(cat)), hjust=1, geom='label') + 
  geom_tiplab(aes(label=lab[label], fill=factor(cat)), geom='label') +
  scale_y_reverse() +
  hexpand(.2) + hexpand(.06, -1) + 
  theme(legend.position = 'none')


