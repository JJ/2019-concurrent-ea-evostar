## ----setup, cache=FALSE,echo=FALSE---------------------------------------
library(ggplot2)
library(ggthemes)

data <- read.csv("data/evostar2019.csv")
data$gap = as.factor(data$gap)

## ----results-evals,cache=FALSE,echo=FALSE--------------------------------
ggplot(data,aes(x=evaluations,y=time,color=gap))+scale_color_brewer(palette="Set1")+geom_point(size=3,aes(shape=gap))+theme_tufte()+labs(x="Evaluations",y="Time",title="Evaluations vs Time per generation gap")

## ----results-evals-bp,cache=FALSE,echo=FALSE-----------------------------
ggplot(data,aes(x=gap,y=evaluations,group=gap))+geom_boxplot()+theme_tufte()+labs(title="Evaluations vs generation gap")

## ----results-avg-evals,cache=FALSE,echo=FALSE----------------------------
ggplot(data,aes(x=gap,y=avg.eval,group=gap))+geom_boxplot()+theme_tufte()+labs(title="Average number of evaluations vs generation gap")

## ----results-avg-time,cache=FALSE,echo=FALSE-----------------------------
ggplot(data,aes(x=gap,y=time,group=gap))+geom_boxplot()+theme_tufte()+labs(title="Time vs generation gap")

