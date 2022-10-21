#Load in our data
here::i_am("code/02_make_figure1.R")
data <- readRDS(file = here::here("output/data_clean.rds"))
data <- na.exclude(data)
library(ggplot2)

scatterplot <-
  ggplot(data, aes(x = LSTAT, y = RM) ) + 
  labs(x = "% Lower income status of Population", y = "Avg Rooms per unit") +
  ggtitle('Average Rooms per Leased unit by Proportion of Lower Income Status') +
  geom_point() + 
  geom_smooth(method = lm) +
  theme_bw()
scatterplot
##We can save this figure using the ggplot package as well
ggsave(
  here::here("output/scatterplot.png"),
  plot = scatterplot,
  device = "png"
)

