library(tidyverse)

students <- read_csv("https://pos.it/r4ds-students-csv", na = c("N/A",""))

students

students |> #can also use janitor::clean_names()
  rename(
    student_id = 'Student ID',
    full_name = 'Full Name'
  )

students |>
  janitor::clean_names() |>
  mutate(meal_plan = factor(meal_plan))
#this makes everything camelcase

students <- students |>
  janitor::clean_names() |>
  mutate(
    meal_plan = factor(meal_plan),
    age = parse_number(if_else(age == 'five', "5", age))
  )
#skip function
#col_names = FALSE, or can pass a character vector to name them c(a,b,c)

#

# Guessing Types ----------------------------------------------------------

#list(),cols()

#putting mulitple csv in a vector to use read_csv("vector_name", id = "file")
#can  also use list.files()
# write_csv("df here", "students.csv")
#write_rds()
#read_rds()
#write own data using tibble() and tribble()
#make a reprex

























