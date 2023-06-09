# WARNING - Generated by {fusen} from /dev/flat_check_data.Rmd: do not edit by hand

#' Check the integrity of the column of primary fur colors
#'
#' @param df_squirrels Data frame. A dataset with squirrels data.
#'
#' @return Nothing. Use for side effect. Displays a message if everything is ok
#' @export
#'
#' @examples
#' my_data_squirrels <- readr::read_csv(
#'   system.file("nyc_squirrels_sample.csv", package = "squirrels")
#' )
#' check_squirrel_data_integrity(my_data_squirrels)
check_squirrel_data_integrity <- function(df_squirrels){
  
  # Check if there is a primary_fur_color column
  if (isFALSE("primary_fur_color" %in% names(df_squirrels))) {
    stop("There is no primary_fur_color in this dataset")
  }
  
  # Check if the values in the primary_fur_color column are ok
  primary_colors_ok <- check_primary_color_is_ok(df_squirrels$primary_fur_color)
  
  if (isTRUE(primary_colors_ok)){
    message("All primary fur colors are ok")
  }
  
}
