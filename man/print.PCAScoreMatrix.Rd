% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PCAScoreMatrix.R
\name{print.PCAScoreMatrix}
\alias{print.PCAScoreMatrix}
\title{Print PCAScoreMatrix}
\usage{
\method{print}{PCAScoreMatrix}(x, ...)
}
\arguments{
\item{x}{A \code{PCAScoreMatrix} S3-object}

\item{...}{Ignored}
}
\value{
NULL, side effect is used
}
\description{
Print PCAScoreMatrix
}
\examples{

myPCmat <- PCAScoreMatrix(matrix(rnorm(15),ncol=3), c(0.25, 0.15, 0.1))
myPCmat

}
