###############################################################################
# Script to laod data
#
# Author: Vivek Katial
# Created 2020-07-15 12:11:40
###############################################################################

library(tidyverse)
library(googlesheets4)

gs4_auth(email = "YOUR_EMAIL_HERE")
d_movies <- read_sheet(as_sheets_id("1OtubhG6OTV0OyoDv4P_Hjl_okUzo5T0e9FZuCiTMVyw")) %>% 
    write_csv("movies.csv")
