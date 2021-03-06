setwd('C:\\Users\\dbarron\\Dropbox\\Advanced Quant')

dta <- read.csv('FactorAnalysis.csv')
head(dta)

library(psych)
dta.r <- cov(dta)
dta.r
VSS.scree(dta.r)

VSS(dta.r)
fa.parallel(dta.r, n.obs = 300, fm = 'ml')
f0 <- fa(dta.r, nfactors=2, n.obs=300, fm='ml')
f0
f2 <- fa(dta.r, nfactors = 2, n.obs = 300, rotate = 'varimax', fm='ml')
f2$loadings

f3 <- fa(dta.r, nfactors = 3, n.obs = 300, rotate = 'varimax', fm='ml')
f3$loadings

# Two factors, one likes science, one likes maths.
plot(f2)

nfactors(dta.r, fm='ml', n.obs=300)


