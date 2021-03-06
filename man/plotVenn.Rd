% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotVenn.R
\name{plotVenn}
\alias{plotVenn}
\title{Plot Venn object of the Vennerable package}
\usage{
plotVenn(
  venn,
  main = "",
  show = list(FaceText = "weight", Universe = FALSE),
  ...
)
}
\arguments{
\item{venn}{Venn object from the Vennerable package}

\item{main}{Figure title}

\item{show}{default options}

\item{...}{other parameters passed to plotVenn}
}
\value{
Side effect is used - a plot is generated
}
\description{
The function plots Venn object of the Vennerable package in a way that
better suits my eyes
}
\note{
The function is applicable to Vennerable package version 3.0.
}
\examples{

if(require("Vennerable")) {
 myVenn <- list(A=LETTERS[1:24], B=LETTERS[3:8], C=LETTERS[5:9])
 plotVenn(Venn(myVenn), main="Letters")
}

}
