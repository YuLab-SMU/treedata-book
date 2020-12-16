## to do


ggtree + deeptime can do something like this, <https://www.sciencedirect.com/science/article/pii/S2590197420300197>.



https://github.com/YuLab-SMU/ggtree/pull/349

https://github.com/YuLab-SMU/ggtree/issues/351


geom_cladelab, <https://github.com/YuLab-SMU/ggtree/pull/342/>


geom_zoom_clade

ggtree for pvclust


+ [ggtree - updating a tree view](https://mp.weixin.qq.com/s/csZUfzoluTkXp9DxYR7w6g)


setup git branches:

https://stackoverflow.com/questions/34100048/create-empty-branch-on-github
https://gist.github.com/chrisjacob/833223


## 把master重命名为all
git checkout master
git branch -m master all
git push -u origin all

## 上github把master的default去掉，然后删掉github的master
git push origin --delete master

## 重新创建master
git checkout --orphan master

## 把不要的文件删掉，只留下源文件和一些必要的文件

