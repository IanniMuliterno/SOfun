% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dist2df.R
\name{dist2df}
\alias{dist2df}
\title{Converts a Distance Matrix to a data.frame}
\usage{
dist2df(inDist)
}
\arguments{
\item{inDist}{The input distance object.}
}
\value{
A \code{data.frame}.
}
\description{
Converts a distance matrix to a \code{data.frame}.
}
\examples{

dd <- as.dist((1 - cor(USJudgeRatings)[1:5, 1:5])/2)
dist2df(dd)

}
\references{
\url{http://stackoverflow.com/q/23474729/1270695}
}
\author{
Ananda Mahto
}
