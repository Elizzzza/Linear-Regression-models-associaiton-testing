# HW4

# load package and dataset 
library(knitr)
library(tidyverse)
library(rigr)
smsa <- read_csv("smsa.csv")

# Q2 
# Scatterplot of age-adjusted mortality vs. log(NOx)
smsa %>%
  ggplot(aes(x = log(NOxPot), y = Mortality)) +
  geom_point(cex = 1) +
  xlab("Log(NOx)") +
  ylab("Age-adjusted mortality \n (deaths per 100,000 resident)") +
  theme_bw() +
  geom_smooth(aes(col = "Lowess smoother"), se=F, method = "loess", show.legend = T) +
  geom_smooth(aes(col = "Linear regression"), se=F, method = "lm", show.legend = T) +
  scale_color_manual(name = "",
                     values = c("Linear regression"="grey",
                                "Lowess smoother"="blue")) + NULL
smsa %>% 
  mutate(log_NOx = log(NOxPot)) %>% 
  select(Mortality, NOxPot, log_NOx)

# Q3
# Here's a linear model for smsa dataset using rigr:regress
# age-adjusted mortality as response and log(NOx) as predictor
mod1 <- regress("mean", Mortality ~ log(NOxPot), data = smsa) 
mod1 %>% coef() %>% round(4)

smsa %>% 
  mutate(log_NOx = log(NOxPot)) %>% 
  regress("mean", Mortality ~ log_NOx, data = .) %>% 
  coef() %>% round(4)

# Q4
# Plot a scatterplot of age-adjusted mortality on the vertical axis and log(NOx) 
# on the horizontal axis, using different colors for low rainfall or not
smsa %>% 
  mutate(rainfall = ifelse(Rain < 20, "low rainfall", "not low rainfall")) %>% 
  ggplot(aes(x = log(NOxPot), y = Mortality, col = rainfall, pch = rainfall)) +
  geom_point(cex = 1.5) +
  xlab("Log(NOx)") +
  ylab("Age-adjusted mortality \n (deaths per 100,000 resident)") +
  theme_bw() 

# Q5
# Here's a multiple linear regression model for smsa dataset using rigr:regress
# age-adjusted mortality as response and log(NOx) as predictor
# rainfall as effect modifier
mod2 <- smsa %>% 
  mutate(rainfall = ifelse(Rain < 20, 1, 0)) %>% 
  regress("mean", Mortality ~ log(NOxPot)*rainfall, data = .) 

mod2 %>% coef() %>% round(4)
mod2 %>% lincom(c(0,1,0,1))

# another way to run model with new column of log(NOx) 
smsa %>% 
  mutate(log_NOx = log(NOxPot)) %>% 
  regress("mean", Mortality ~ log_NOx, data = .) 
