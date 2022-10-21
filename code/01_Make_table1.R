#Use cleaned data to create a nice and pretty table 1
#then save our Table 1 as an object to load into our report!
here::i_am("code/01_Make_table1.R")

data <- readRDS(file = here::here("output/data_clean.rds"))

library(gtsummary)

table1 <- data %>% 
  select("CRIM" , "CHAS", "NOX", "PTRATIO", "Tax_amount", "B") %>%
  tbl_summary(by = Tax_amount) %>% 
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Full-Value Property-Tax rate per $10,000**") %>%
  add_overall() %>%
  add_p()



saveRDS(table1, file = here::here("output/table_one.rds"))