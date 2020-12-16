## to do


ggtree + deeptime can do something like this, <https://www.sciencedirect.com/science/article/pii/S2590197420300197>.



https://github.com/YuLab-SMU/ggtree/pull/349

https://github.com/YuLab-SMU/ggtree/issues/351


geom_cladelab, <https://github.com/YuLab-SMU/ggtree/pull/342/>


geom_zoom_clade

ggtree for pvclust


+ [ggtree - updating a tree view](https://mp.weixin.qq.com/s/csZUfzoluTkXp9DxYR7w6g)


setup git branches:

## 把master重命名为all
git checkout master
git branch -m master all
git push -u origin all

## 上github把master的default去掉，然后删掉github的master
git push origin --delete master

## 重新创建master
git checkout --orphan master

## 把不要的文件删掉，只留下源文件和一些必要的文件

git add .
git commit -m 'source files'
git push -u origin master


## 删掉本地all branch

git branch -d all


## 重新创建gh-pages
git checkout --orphan gh-pages

## 放入readme
git add .
git commit -m 'readme'
git push -u origin gh-pages

## 创建gh-pages
mkdir gh-pages
## 把当前文件夹所有内容，copy 到 gh-pages，等同于这个repo有两个copy

## 修改书的html输出到gh-pages文件夹中。
## 到gh-pages文件夹里，删掉其它的本地branch

cp -R * gh-pages/
cd gh-pages
git branch -d master

## 到master中删掉gh-pages分支
cd ..
git branch -d gh-pages


## 这样子就有两个分支，分别在两个目录里，当前目录是master入源文件，
## gh-pages是gh-pages分支，放html输出。

## 把gh-pages目录放到master分支的gitignore中。
echo 'gh-pages' >> .gitignore

## 然后就可以push到master，以及make生成书，然后到gh-pages里push到github中
## 这样书就分成了两个分支。



