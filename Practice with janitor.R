# practice with janitor
# useful links
# https://github.com/sfirke/janitor

# install packages
install.packages('janitor')
install.packages('knitr')
install.packages('lubridate')

# load packages
library(janitor)
library(tidyverse)
library(knitr)
library(lubridate)

# useful functions
clean_names() #remove weird characters is columnnames
get_dupes() #identify duplicates
tabyl() #create tabulated df of selected variables
adorn_() #summarize results of tabyl df
remove_empty(c("rows", "cols")) #remove empty rows and columns
remove_constant(na.rm = TRUE, quiet = FALSE) #remove columns with all identical values and print wich are removed (quiet)
mutate(date_column = convert_to_date(date_column, # handle the mixed-format dates to one 
                                   character_fun = mdy)) #lubridate notation

