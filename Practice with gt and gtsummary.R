# Practice file 'gt', 'gtsummary', 'sjplot'
## useful links
# https://github.com/yuryzablotski/yuzaR-Blog/blob/master/_posts/2022-10-31-gtsummary/gtsummary.Rmd
# https://yuzar-blog.netlify.app/posts/2022-10-31-gtsummary/
# https://yuzar-blog.netlify.app/posts/2022-08-01-sjplot/


# Install packages
install.packages('sjPlot')
install.packages('gt')
install.packages('gtsummary')

# Load packages
library(tidyverse)
library(sjplot)
library(gt)
library(gtsummary)

# Load data
data('mtcars')
glimpse(mtcars)

# examples gtsummary
tbl_summary(mtcars)

mtcars %>%
  tbl_summary(
    label = list(gear ~ 'gears', cyl ~ 'Cylinder'),  #change variable names
    type = mpg ~ 'continuous', #change variable type
    digits = mpg ~ 2, #change number of decimals
    statistic = all_continuous() ~ "{mean} ({sd})", #change demonstration of statistics
    sort = everything() ~ 'frequency') #sort table

mtcars %>%
  tbl_summary(by = gear) %>%
  add_p() 
  
