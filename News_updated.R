library(tidyverse)
library(readr)
final_dataset_news <- read_csv("C:/Users/tmsha/Downloads/final_dataset_news.csv")
head(final_dataset_news)
summary(final_dataset_news)
max(final_dataset_news[, c("Facebook")])

updated_fb <-final_dataset_news %>%
  
  mutate(fb_op = case_when(
    Facebook %in% 0:3 ~ 'low',
    Facebook %in% 3:24 ~ 'modarate',
    Facebook %in% 24:50000 ~ 'high'
  ))
updated_in <-updated_fb %>%
  
  mutate(in_op = case_when(
    LinkedIn %in% 0:1 ~ 'low',
    LinkedIn %in% 1:4 ~ 'modarate',
    LinkedIn %in% 4:10000 ~ 'high'
  ))
updated_df <-updated_in %>%
  
  mutate(gp_op = case_when(
    Facebook %in% 0:1 ~ 'low',
    Facebook %in% 1:4 ~ 'modarate',
    Facebook %in% 4:10000 ~ 'high'
  ))

head(updated_df)
write.csv(updated_df, file="updated_news_24_06.csv")