#' Make a bar plot for a factor
#'
#' Create a bar plot for a factor with user-defined axis names.
#'
#' @param x factor
#' @param xlabel character
#' @param ylabel character
#'
#' @return ggplot
#' @export
#'
#' @examples
#' x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
#' fbarplot(x, xlabel="Letters")
fbarplot<-function(x, xlabel="Levels", ylabel="Count"){
	if (is.factor(x)){
		df<-freq_out(x)
		ggplot2::ggplot(df, ggplot2::aes_(x=~x,y=~n)) +
			ggplot2::geom_bar(stat = "identity", ggplot2::aes(fill = x)) +
			ggplot2::theme_bw() +
			ggplot2::xlab(xlabel) +
			ggplot2::ylab(ylabel)}
	else
	stop("input is not a factor")
}
