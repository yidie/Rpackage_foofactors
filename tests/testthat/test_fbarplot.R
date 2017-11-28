context("Creating bar plot for a factor")

f<-iris$Species

test_that("fbarplot returns ggplot object", {
	p<-fbarplot(f)
	expect_is(p,"ggplot")
})

##  Load the proto library for accessing sub-components of the ggplot2 plot objects:
library(proto)

test_that("Axis is labelled as 'Species'",{
	p <- fbarplot(f, xlabel="Species")
	expect_identical(p$labels$x, "Species")
})

test_that("fbarplot with invalid input",{
	expect_error(fbarplot("hello"))
})
