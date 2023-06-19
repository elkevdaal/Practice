# Practice file 'gtsummary', 'sjplot'
## useful links
# https://github.com/yuryzablotski/yuzaR-Blog/blob/master/_posts/2022-10-31-gtsummary/gtsummary.Rmd
# https://yuzar-blog.netlify.app/posts/2022-10-31-gtsummary/
# https://yuzar-blog.netlify.app/posts/2022-11-25-gtsummary2/
# https://yuzar-blog.netlify.app/posts/2022-08-01-sjplot/


# Install packages
#install.packages('sjPlot')
#install.packages('gt')
#install.packages('gtsummary')
#install.packages('gtExtras')

# Load packages
library(tidyverse)
library(gt)
library(sjPlot)
library(gtsummary)
library(gtExtras)

# Load data
data('mtcars')
data('airquality')
glimpse(mtcars)

# examples gtsummary to create tables
tbl_summary(mtcars) 

mtcars %>%
  tbl_summary(
    label = list(gear ~ 'gears', cyl ~ 'Cylinder'),  #change variable names
    type = mpg ~ 'continuous', #change variable type
    digits = mpg ~ 2, #change number of decimals
    statistic = all_continuous() ~ "{mean} ({sd})", #change demonstration of statistics
    sort = everything() ~ 'frequency', #sort table
    include = c(-hp, -wt)) #include/exclude variables
mtcars %>%
  tbl_summary(by = gear) %>%
  add_p() 

# create gt table and apply themes from gtextras
air_10 <- head(airquality, 20)
air_10 %>% gt() %>%
  gt_theme_espn() %>%
  tab_header('Table example')

air_10 %>% gt() %>%
  gt_theme_nytimes() %>%
  tab_header('Table example')

air_10 %>% gt() %>%
  gt_theme_guardian() %>%
  tab_header('Table example')

air_10 %>% gt() %>%
  gt_theme_538() %>%
  tab_header('Table example')

# examples to summarize regression tables (sjPlot --> tab_model)

