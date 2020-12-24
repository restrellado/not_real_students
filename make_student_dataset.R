
# Packages ----------------------------------------------------------------

set.seed(12)
library(tidyverse)
library(randomNames)


# Load Objects ------------------------------------------------------------

schools <- paste("School", LETTERS[1:10])


# Make dataset ------------------------------------------------------------

df <- randomNames(1000, 
                  sample.with.replacement = FALSE, 
                  which.names = "both", 
                  return.complete.data = TRUE) %>% 
  as_tibble() %>% 
  mutate(student_id = sample(100000:999999, 1000, replace = FALSE), 
         school = sample(schools, 1000, replace = TRUE)) %>% 
  select(student_id, last_name, first_name, everything())
  