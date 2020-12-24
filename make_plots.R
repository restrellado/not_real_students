
# Packages ----------------------------------------------------------------

library(tidyverse)
library(here)


# Source ------------------------------------------------------------------

source(here::here("make_student_dataset.R"))


# Plot --------------------------------------------------------------------

df %>% 
  filter(min_rank(quiz_100) <= 25) %>% 
  ggplot(data = ., aes(x = reorder(student_id, quiz_100), y = quiz_100)) + 
  geom_bar(stat = "identity") + 
  labs(x = "Fake Student ID", y = "Quiz Score") +
  coord_flip()
