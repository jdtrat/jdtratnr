
#' Find all rows with an NA in any column
#'
#' @param .data A data frame
#'
#' @return A subset of the data that contains all rows with an NA in any column.
#' @export
#'
#' @examples
#' na_car <- mtcars
#' na_car[which(na_car[,"disp"] < 160), "disp"] <- NA
#' na_car[which(na_car[, "hp"] == 110), "hp"] <- NA
#'
#' find_na_rows(.data = na_car)
#'
find_na_rows <- function(.data) {
  rows <- lapply(names(.data), function(data, name) {data[is.na(data[,name]),]}, data = .data)
  as.data.frame(do.call(rbind, rows))
}
