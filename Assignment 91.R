# 1. If Z is norm (mean = 0, sd = 1)

# Find P(Z > 2.64)
#critical value for z = 2.64 : (2.64-0)/1 = 2.64
#area under curve between mean (0) and 2.64 : 0.4959
#Hence P(Z > 2.64) = 0.5-0.4959 = 0.0041

# Find P(|Z| > 1.39)
#Critical value for z = 1.39 : (1.39-0)/1 = 1.39
#area under the curve between mean (0) and 1.39 : 0.4177
#similarly arean of curve between mean (0) and -1.39 : 0.4177
#Hence P(|Z| > 1.39) = 1 - (2*0.4177) = 0.1646

# 2. Suppose p = the proportion of students who are admitted to the graduate school of the University of California at Berkeley, and suppose that a public relation officer boasts that UCB has historically had a 40% acceptance rate for its graduate school. Consider the data stored in the table UCBAdmissions from  1973. Assuming these observations constituted a simple random sample, are they consistent with the officer's claim, or do they provide evidence that the acceptance rate was significantly less than 40%? Use an α = 0.01 significance level.

View(UCBAdmissions)
data(UCBAdmissions)
str(UCBAdmissions)

apply(UCBAdmissions,c(1),sum)
1755/sum(UCBAdmissions)

prop.test(1755,sum(UCBAdmissions),p=0.40,alternative = "less",conf.level = 0.99)

#since the sample proportion lies with in the 99 percent confidence interval and since p value is greater than 0.01, Ho is accepted i.e. there is no evidence from the sample data that acceptance rate is significantly less than 40

prop.test(1755,sum(UCBAdmissions),p=0.40,alternative = "two.sided",conf.level = 0.99)
#looking at the above, the sample observations is in line with the true proportion being 40%