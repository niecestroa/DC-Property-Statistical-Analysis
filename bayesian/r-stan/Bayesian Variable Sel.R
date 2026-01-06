weight.gains <- c(134, 146, 104, 119, 124, 161, 107, 83, 113, 129, 97, 123,
                  70, 118, 101, 85, 107, 132, 94)

diet <- as.factor(c(rep(1,12), rep(0,7)))
rats <- data.frame(weight.gains = weight.gains, diet = diet)

M0 <- weight.gains ~ 1
M1 <- weight.gains ~ diet

library(BayesVarSel)
Btest(models = c(H0 = M0, H1 = M1), data = rats)

data("savings", package = "faraway")

fullmodel <- sr ~ pop15 + pop75 + dpi + ddpi
nullmodel <- sr ~ 1

Btest(models = c(H0 = nullmodel, H1 = fullmodel), data = savings)