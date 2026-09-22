library(tidyverse)
library(janitor)

raw_data <- Survey_Effect_of_Sleep_on_Mental_Health_Responses_ |> 
  clean_names()

Survey_Effect_of_Sleep_on_Mental_Health_Responses_$Timestamp <- NULL

# Assigning number to qualitative rating

Formatted <- Survey_Effect_of_Sleep_on_Mental_Health_Responses_ |> 
  mutate(
    `How often do you feel stressed because of school, studies, or assignments?` = case_when(
      `How often do you feel stressed because of school, studies, or assignments?` == "Rarely" ~ 1,
      `How often do you feel stressed because of school, studies, or assignments?` == "Sometimes" ~ 2,
      `How often do you feel stressed because of school, studies, or assignments?` == "Often" ~ 3,
      `How often do you feel stressed because of school, studies, or assignments?` == "Always" ~ 4,
      TRUE ~ NA_real_
    ),
    `How often does poor sleep affect your ability to concentrate during lessons or studying?` = case_when(
      `How often does poor sleep affect your ability to concentrate during lessons or studying?` == "Rarely" ~ 1,
      `How often does poor sleep affect your ability to concentrate during lessons or studying?` == "Sometimes" ~ 2,
      `How often does poor sleep affect your ability to concentrate during lessons or studying?` == "Often" ~ 3,
      `How often does poor sleep affect your ability to concentrate during lessons or studying?` == "Always" ~ 4,
      TRUE ~ NA_real_
    ),
    `When you get enough sleep, how would you describe your mental well-being the next day?` = case_when(
      `When you get enough sleep, how would you describe your mental well-being the next day?` == "Much worse" ~ 1,
      `When you get enough sleep, how would you describe your mental well-being the next day?` == "Slightly worse" ~ 2,
      `When you get enough sleep, how would you describe your mental well-being the next day?` == "Not much difference" ~ 3,
      `When you get enough sleep, how would you describe your mental well-being the next day?` == "Slightly better" ~ 4,
      `When you get enough sleep, how would you describe your mental well-being the next day?` == "Much better" ~ 5,
      TRUE ~ NA_real_
    )
  )


