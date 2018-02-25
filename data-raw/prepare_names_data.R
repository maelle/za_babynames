girls_names <- readr::read_csv("data-raw/girls_names.csv")
girls_names$sex <- "female"

boys_names <- readr::read_csv("data-raw/boys_names.csv")
boys_names$sex <- "male"

sa_names <- rbind(girls_names, boys_names)

names(sa_names) <- c("first_name", "number", "sex")

usethis::use_data(sa_names, overwrite = TRUE)
