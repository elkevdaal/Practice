# Practice fast EDA
# Packages: dlookr, smartEDA, performance, DataExplorer
# useful links
# https://yuzar-blog.netlify.app/posts/2021-01-09-exploratory-data-analysis-and-beyond-in-r-in-progress/
# https://yuzar-blog.netlify.app/posts/2021-01-30-r-package-reviews-dlookr-diagnose-explore-and-transform-your-data/
--
  
# install packages
install.packages('dlookr')
install.packages('SmartEDA')
install.packages('DataExplorer')
install.packages('performance')  
install.packages('forecast')
install.packages('flextable')

# load packages
library(dlookr)
library(SmartEDA)
library(DataExplorer)
library(performance)
library(forecast)
library(flextable)

# load test dataset
data("mtcars")
data("iris")
data(airquality)

# create automated EDA report
create_report(mtcars) #EDA report with DataExplorer
ExpReport(mtcars, op_file = getwd()) #EDA report with SmartEDA
airquality %>%
  eda_web_report(
    target        = 'Temp', 
    output_format = "html", 
    output_file   = "EDA_airquality.html") #EDA report with dlookr


# diagnose data with dlookr
## check variable types and missings
diagnose(iris) %>% flextable()
## check factors and levels, with count and percentage
diagnose_category(iris) %>% flextable()
## check numerics with summary stats
diagnose_numeric(mtcars) %>% flextable()
## check outliers
diagnose_outlier(iris) %>% flextable()
## check missing values in plot with percentages
plot_na_pareto(airquality)
## check patterns of missing values
plot_na_intersect(airquality)
## diagnose report
diagnose_web_report(mtcars, output_format = 'html') 

# explore data with dlookr
## describe all numeric variables (descriptive statistics)
describe(airquality) %>% flextable()
## check for normality (and possible transformations)
airquality %>%
  plot_normality(Wind)
## check correlations between variables
correlate(airquality) %>% flextable()

# Transform data with dlookr (imputation) --> check link

