% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CharNumSplit.R
\name{CharNumSplit}
\alias{CharNumSplit}
\title{Split Vectors in the Form of Numbers+Characters or Characters+Numbers into Respective Parts}
\usage{
CharNumSplit(string, alphaFirst = TRUE)
}
\arguments{
\item{string}{The string to be split.}

\item{alphaFirst}{Logical. Characters first (\code{TRUE})? Or numbers (\code{FALSE})?}
}
\value{
A \code{list} with the split values.
}
\description{
A convenience function for the \code{perl = TRUE} patterns for
\code{"(?<=[a-zA-Z])(?=[0-9])"} and \code{"(?<=[0-9])(?=[a-zA-Z])"}. That's it. Really.
}
\examples{

STR1 <- c("ABC123", "BCD234", "CDE345", "DEF456")
STR2 <- c("123ABC", "234BCD", "345CDE", "456DEF")

CharNumSplit(STR1, alphaFirst = TRUE)
CharNumSplit(STR2, alphaFirst = FALSE)

}
\references{
\url{http://stackoverflow.com/a/23052016/1270695}
}
\author{
Ananda Mahto
}
