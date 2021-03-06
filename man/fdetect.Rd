% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fdetect.R
\name{fdetect}
\alias{fdetect}
\title{Detect character from factor}
\usage{
fdetect(a)
}
\arguments{
\item{a}{factor}
}
\value{
logical
}
\description{
Detect whether a factor is a real factor or a character. It returns TRUE if it is
a factor, FALSE if it is a character.
}
\examples{
fdetect(iris$Species)
}
