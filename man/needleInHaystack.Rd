% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/needleInHaystack.R
\name{needleInHaystack}
\alias{needleInHaystack}
\title{Find a Needle in a Haystack...}
\usage{
needleInHaystack(findMe, findIn)
}
\arguments{
\item{findMe}{What are you looking for? A character vector.}

\item{findIn}{Where are you looking for it? A character vector.}
}
\value{
A matrix with 1 indicating presence and 0 indicating absence.
}
\description{
Find specified search patterns (in any order, not necessarily joined) in
another vector of strings.
}
\examples{

x <- c("cat", "dog", "rat", "far", "f*n", "god", "g*dn")
y <- c("ar", "n*", "a", "zo")

needleInHaystack(y, x)

}
\references{
\url{http://stackoverflow.com/q/22129542/1270695}
}
\author{
Ananda Mahto
}
