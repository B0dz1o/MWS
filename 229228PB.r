eur <- read.csv('EUROCASH.mst')
rel_change <- rep(c(0), length(eur$X.OPEN.) - 1)
for( i in 1: length(eur$X.OPEN.) - 1){
  rel_change[i] <- 100 * (eur$X.OPEN.[i+1] - eur$X.OPEN.[i]) / eur$X.OPEN.[i]
}
g <- rel_change
h = hist(rel_change, freq = FALSE)
xfit<-seq(min(g),max(g),length=40) 
yfit<-dnorm(xfit,mean=mean(g),sd=sd(g)) 
lines(xfit, yfit, col="black", lwd=2)

dev.new()
peo <- read.csv('PEKAO.mst')
lpp <- read.csv('LPP.mst')
eur_open <- rel_change
lpp_open <- lpp$X.OPEN.
peo_open <- peo$X.OPEN.


boxplot(c(rel))

