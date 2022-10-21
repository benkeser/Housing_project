library(labelled)
library(gtsummary)
library(here)

here::i_am("code/00_clean_data.R")
absolute_path <- here::here('raw_data/HousingData.csv')
data <- read.csv(absolute_path, header = TRUE)
head(data)

var_label(data) <- list(
  CRIM = "Crime Rate Per capita",
  ZN = "Proportion Land zoned > 25,000 Ft",
  INDUS = "Non-retail Prop",
  CHAS = "Charles River Tract",
  NOX = "Nitric Oxides Concentration",
  RM = "Avg Rooms per unit",
  AGE = "Proportion of Units Built before 1940",
  DIS = "Distance to 5 Emploiyment Centers",
  RAD = "Highway Accessibility",
  TAX = "Full-Value Property-Tax rate per $10,000",
  PTRATIO = "Student-Teacher Ratio per town",
  B = "Proportion of Black Residents by Town",
  LSTAT = "% Lower income status of Population",
  MEDV = "Median value of owner-occupied homes ($1000s)"
  
)
data$Tax_amount <- ifelse(data$TAX < 408.2373, "< Mean", ">= Mean")
mean(data$TAX)
saveRDS(
  data,
  file = here::here("output/data_clean.rds")
)
