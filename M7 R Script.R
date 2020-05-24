rm(list = ls())

####### Question 1 #######

### Inputs ###

exp.percent <- c(0.55, 0.325, 0.125)
obs <- c(171, 137, 34)
n <- 342

##a
expected <- exp.percent*n
expected

##b
residuals <- obs - expected
residuals.sq <- residuals**2
residual.exp <- residuals.sq/expected
chi <- sum(residual.exp)
chi

##c
dof <- length(obs) - 1
dof

##d
mean.chi <- dof
mean.chi

##g
qchisq(.95, df=dof) 

##h
1-pchisq(chi, dof)

####### Question 2 #######

require(xlsx)

data <- read.xlsx("C:/Users/mrbo1/OneDrive/Documents/Probability and Statistics/Module 7/M7 Expert Knobs.xlsx", 1)
head(data)

##d
n <- 325
exp.percent <- c(0.55,0.325,0.125)
exp <- matrix(NA, 5,3)
exp[,1] <- n*exp.percent[1]
exp[,2] <- n*exp.percent[2]
exp[,3] <- n*exp.percent[3]
exp

##e
prom1 <- c(163,122,40)
prom2 <- c(156,125,44)
prom3 <- c(185,119,21)
prom4 <- c(175,115,35)
prom5 <- c(177,103,45)

obs <- rbind(prom1, prom2, prom3, prom4, prom5)
obs
residual <- obs-exp
residual.sq <- residual**2
residual.exp <- residual.sq/obs

chi <- sum(residual.exp)
chi
residual

##f
dof <- (nrow(obs)-1)*(ncol(obs)-1)
dof

##g
qchisq(.95, df=dof)

####### Question 3 #######

household <- c(242,443,798,45,1528)
electronic <- c(123,302,768,28,1221)
coltotals <- household + electronic
items <- rbind(household, electronic, coltotals)
colnames(items) <- c("New", "Open Box", "Used", "Needs Repair", "Total")
items <- data.frame(items)
head(items)

##a
p.elec <- items$Total[2] / items$Total[3]
p.elec

##b
p.house <- items$Used[1] / items$Total[3]
p.house

##c
p.newhouse <- items$New[1] / items$New[3] 
p.newhouse

##d
elec <- p.elec * items$Total[3]
elec

##f
chance <- 1/8
house.exp <- c(chance*items$Total[3],chance*items$Total[3],chance*items$Total[3],chance*items$Total[3],4*chance*items$Total[3])
elec.exp <- c(chance*items$Total[3],chance*items$Total[3],chance*items$Total[3],chance*items$Total[3],4*chance*items$Total[3])
items <- rbind(items, house.exp, elec.exp)
items

house.res <- ((items[1,] - items[4,])**2)/house.exp
elec.res <- ((items[2,] - items[5,])**2)/elec.exp

chi <- sum(house.res, elec.res)
chi

dof <- 3

1-pchisq(chi, dof)

####### Question 4 #######

household <- c(533,995,1528)
electronic <- c(467,754,1221)

items <- rbind(household, electronic)
colnames(items) <- c("Stainless", "Other", "Total")
items <- data.frame(items)
head(items)

household <- c(533,995)
electronic <- c(467,754)
items <- rbind(household, electronic)
colnames(items) <- c("Stainless", "Other")
items <- data.frame(items)

chisq.test(items)

stainless <- 1000 / 2749
other <- 1749 / 2749

##b
n <- 2749
p_house_stain <- 533/2749
p_house_other <- 995/2749
se = sqrt((((p_house_stain)*(1 - p_house_stain))/n) + (((p_house_other)*(1 - p_house_other))/n))

lower_bound <- p_house_stain - 1.96 * se
upper_bound <- p_house_other + 1.96 * se
print(paste("Confidence Interval: (", round(lower_bound, 2), ", ", round(upper_bound, 2), ")", sep = ""))

####### Question 5 #######

require(xlsx)

data <- read.xlsx("C:/Users/mrbo1/OneDrive/Documents/Probability and Statistics/Module 7/M7 Expert Sheep.xlsx", 1)
head(data)
colnames(data) <- c("Month", "Num of Apples", "Revenue per Month")
head(data)

##a
model1 <- lm(data[,3]~data[,2],data=data)
summary(model1)
coef(model1)

##b
plot(model1)
hist(model1)

##c
apples1200 <- 1200*coef(model1)[2]+coef(model1)[1]
apples1200

##d
se <- as.numeric(summary(model1)[6])
lower <- apples1200 - (1.96*se)
upper <- apples1200 + (1.96*se)
lower
upper

##e
se

##f
apples25000 <- 25000*coef(model1)[2]+coef(model1)[1]
apples25000

##g
lower <- apples25000 - (1.96*se)
upper <- apples25000 + (1.96*se)
lower
upper
