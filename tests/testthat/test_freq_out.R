context("Make a frequency table as a dataframe")

test_that("freq_out with invalid input", {
	expect_error(freq_out(3))
	expect_error(freq_out("a"))
})

test_that("freq_out returns tbl_df object", {
	x<-factor(c('a', 'b', 'b', 'c', 'a'))
	y<-freq_out(x)
	expect_true(is.data.frame(y))
})

test_that("number of rows of freq_out output equals levels of the factor", {
	x<-factor(c('a', 'b', 'b', 'c', 'a'))
	y<-freq_out(x)
	expect_equal(nrow(y), nlevels(x))
})


