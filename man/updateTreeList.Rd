% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updateTreeList.R
\name{updateTreeList}
\alias{updateTreeList}
\title{internal Phylofactor function - splits the tree corresponding to the split atom}
\usage{
updateTreeList(treeList, atomList, grp, tree)
}
\arguments{
\item{treeList}{list of trees}

\item{atomList}{list of atoms corresponding to treeList}

\item{grp}{two-element list corresponding to the splitting of an atom}
}
\description{
internal Phylofactor function - splits the tree corresponding to the split atom
}
\examples{
library(ape)
set.seed(6)
tree <- rtree(10)
Groups <- getGroups(tree)
treeList <- list(tree)
atomList <- list(1:10)
factor <- 16
grp <- getLabelledGrp(factor,tree,Groups)
grp
lapply(grp,FUN=function(g,tree){tree$tip.label[g]},tree=tree)

node=17

treeList <- updateTreeList(treeList,atomList,grp,tree)
par(mfrow=c(1,3))
plot.phylo(tree,main='Original Tree',cex=2)
edgelabels('SPLIT',12,bg='red',cex=2)

plot.phylo(treeList[[1]],main='First Atom Tree',cex=2)
plot.phylo(treeList[[2]],main='Second Atom Tree',cex=2)
}

