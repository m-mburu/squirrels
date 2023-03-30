## code to prepare `DATASET` dataset goes here

usethis::use_data(DATASET, overwrite = TRUE)
nyc_squirrels_act_sample <- readr::read_csv("data-raw/nyc_squirrels_act_sample.csv")

nyc_squirrels_dummy <- head(nyc_squirrels_act_sample, 15)


usethis::use_data(nyc_squirrels_dummy, overwrite = TRUE)

checkhelper::use_data_doc(
  name = "nyc_squirrels_dummy",
  description = "A data set representing squirrels survey in New York",
)
