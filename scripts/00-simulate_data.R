#### Preamble ####
# Purpose: Simulates a dataset of Toronto libraries.
# Author: Yanzun Jiang
# Date: 25 November 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# Pre-requisites: None.
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(1125)

# Create a dataset by randomly assigning states and parties to divisions
simulated_data <- tibble(
  area = round(rexp(50, 0.00005)),
  parking = round(rexp(50, 0.1)),
  dih = sample(c(0, 1), 50, replace = TRUE, p = c(0.7, 0.3)),
  workstations = round(rexp(50, 0.1)),
  year = round(runif(50, 0, 100))
)


#### Save data ####
write_csv(simulated_data, "data/00-simulated_data/simulated_data.csv")
