#' Detect character from factor
#'
#' Detect whether a factor is a real factor or a character. It returns TRUE if it is
#' a factor, FALSE if it is a character.
#'
#' @param a factor
#'
#' @return logical
#' @export
#'
#' @examples
#' fdetect(iris$Species)
fdetect<-function(a){
	stopifnot(is.factor(a))
	if (length(unique(a)) == length(a)){
		print(F)
	}
	else
	print(T)
}
