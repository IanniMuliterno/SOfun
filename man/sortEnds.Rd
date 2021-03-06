% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sortEnds.R
\name{sortEnds}
\alias{sortEnds}
\title{Select the Top-n Highest or Lowest Values in a Vector}
\usage{
sortEnds(invec, n, where = "head")
}
\arguments{
\item{invec}{The input vector}

\item{n}{The number of values desired}

\item{where}{Either \code{"head"} or \code{"tail"}.}
}
\value{
A sorted vector of length-n
}
\description{
Takes "n" values from the head or tail of a sorted vector. Utilizes the
"partial" argument from \code{sort} for increased efficiency.
}
\note{
The \code{"tail"}  approach may not be consideraby faster than
the standard approach.
}
\examples{

set.seed(1)
x <- sample(300, 45, TRUE)
sortEnds(x, 3)
sortEnds(x, 3, "tail")

## Compare with
head(sort(x), 3)
tail(sort(x), 3)

}
\author{
Ananda Mahto
}
