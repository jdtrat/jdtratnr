test_that("na_subsetting works", {
  na_car <- mtcars
  na_car[which(na_car[,"disp"] < 160), "disp"] <- NA
  na_car[which(na_car[, "hp"] == 110), "hp"] <- NA

  na_rows <- find_na_rows(.data = na_car)

  expect_equal(nrow(na_rows), 15)
})
