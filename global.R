###############################################################################
# Entrypoint for app
#
# Author: Vivek Katial
# Created 2020-07-15 12:29:09
###############################################################################

library(shiny)
library(tidyverse)

d_movies <- read_csv("movies.csv")
