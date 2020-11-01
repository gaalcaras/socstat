library(tidyverse)
library(lubridate)

film_ratings <- read_csv(here::here("data-raw", "data", "film_ratings.csv")) %>%
  mutate(genre = as_factor(film_genre),
         nationality = as_factor(film_nationality)) %>%
  select(film,
         date = film_date,
         duration = film_duration,
         genre,
         nationality,
         paper,
         rating)

usethis::use_data(film_ratings, overwrite = TRUE)
