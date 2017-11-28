context("Detecting factors and characters")

test_that("fdetect can detect factor", {
	y <- factor(c('a', 'b', 'b', 'c', 'a'))
	expect_true(fdetect(y))
})

test_that("fdetect can detect character", {
	x <- factor(c('a', 'b', 'c'))
	expect_false(fdetect(x))
})

test_that("fdetect with invalid input", {
	z<-c('a', 'b', 'c')
	expect_error(fdetect(z))

	expect_error(fdetect(5))
})
