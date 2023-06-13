# Practice with multilevel models and glmulti
# useful link
# https://yuzar-blog.netlify.app/posts/2022-05-31-glmulti/

# Install packages
install.packages("glmulti")
install.packages('car')

# Load packages
library(glmulti)      #Finds best model
library(lme4)
library(lmtest)
library(tidyverse)
library(sjPlot)       #Visualizes model results
library(flextable)    #beautifies tables
library(performance)  #checks and compares quality of models (and tests assumptions)
library(car)          #extracts model results
