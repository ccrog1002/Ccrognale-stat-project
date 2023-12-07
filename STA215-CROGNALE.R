## Project:  STA 215, Fall 2023, Final Project
# Located:   Kline TCNJ Google Drive
# File Name: template
# Date:      2023_11_16
# Who:       Zachary D. Kline



## Load packages
# NOTE: Run base.R if these commands return an error!
library(readr)
library(dplyr)
library(tidytext)
library(tidyverse)
library(ggplot2)
library(haven)
library(forcats)
library(psych)

# Load data 
data <- read_delim("raw_data.csv")



##################################################################################
############### STEP 1: Table 1    ####################   
##################################################################################

# EXAMINE QUANT_VAR1 SCALE
table(data$scale)
mean(data$scale)
sd(data$scale)
summary(data$scale)

# EXAMINE QUANT_VAR2 SHOCK
table(data$shocking)
mean(data$shocking)
sd(data$shocking)

# EXAMINE QUAL_VAR1 RELATION
table(data$relation)

# EXAMINE QUAL_VAR2 REASON
table(data$reason)

##################################################################################
####################  STEP 2: Table  2             ####################   
##################################################################################

table(data$relation, data$reason)

## relation is Y, reason is X

##################################################################################
####################   STEP 3: Chi squared test             ####################   
##################################################################################

chisq.test(table(data$relation, data$reason))

##################################################################################
####################  STEP 4: ANOVA                ####################   
##################################################################################

anova_adapted <- aov(data$scale ~ data$relation, data = data)
# Summarize ANOVA results
summary(anova_adapted)

##################################################################################
####################  STEP 5: Correlation                ####################   
##################################################################################

ccor <- or(data$scale, data$shocking)

##################################################################################
####################  STEP 6: Linear Regression                ####################   
##################################################################################

linear_relationship <- lm(data$shocking ~ data$scale, data = data)

##################################################################################
####################  STEP 7: Figure 1                                ####################   
##################################################################################

x_mean <- mean(data$scale)
y_mean <- mean(data$shocking)

plot(data$scale, data$shocking)
abline(linear_relationship, col = "red")


abline(v = x_mean, col = "red")
abline(h = y_mean, col = "red")
##################################################################################
####################  STEP 8: Examine residuals                     ####################   
##################################################################################

plot(data$scale, residuals(linear_relationship))
abline(h = 0, col = "red")
