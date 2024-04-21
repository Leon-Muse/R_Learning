library(tidyverse)
library(nycflights13)

View(flights)

flights |>
  filter(dep_delay > 120)

flights |>
  filter(month == 1 & day == 1)


#flight
flights |>
  filter(month == 1 | month ==2)

flights |>
  filter(month %in% c(1,2))

jan1 <- flights |>
  filter(month == 1 & day == 1)

flights |>
  arrange(year, month, day, dep_time)

flights |>
  arrange(desc(dep_delay))

flights |>
  distinct()

flights |>
  distinct(origin, dest)

flights |>
  distinct(origin, dest, .keep_all = TRUE)

flights |>
  count(origin, dest, sort = TRUE)

#SECTION 3.3


#mutate adds new columns
flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60
  )

# the ".before" moves the new variables to the front
flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 1
#   .after = day
  )

flights |>
  mutate(
    gain = dep_delay - arr_delay,
    hours = air_time / 60,
    gain_per_hour = gain / hours,
    .keep = "used"
  )

#3.3.2

flights |>
  select(year, month, day)

flights |>
  select(year:day)

flights |>
  select(!year:day)

flights |>
  select(where(is.character))
# other things that go inside select are also starts_with,
#ends_with,contains,num_range

flights |>
  select(tail_num = tailnum)
#can also use "rename()" or "clean_names()"


flights |>
  relocate(time_hour, air_time)
#this moves them to the very front

flights |>
  relocate(starts_with("arr"), .before = dep_time)
#helps choose a specific place

#3.4 Pipe

flights |> 
  filter(dest == "IAH") |> 
  mutate(speed = distance / air_time * 60) |> 
  select(year:day, dep_time, carrier, flight, speed) |> 
  arrange(desc(speed))
# |> is the same as %>%


#3.5 

flights |>
  group_by(month) |>
  summarize (
    avg_delay = mean(dep_delay, na.rm = TRUE)
  )
# the na.rm removes the missing values

flights |>
  group_by(month) |>
  summarize(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    n = n()
  )
# n() summarizes the number of rows in each group

#slices functions slices_head, tail, min, max, sample ()

daily <- flights |>
  group_by(year,month, day)

daily

#can also use ungroup to remove a specific frame
# insread of group_by you can us ".by"



















