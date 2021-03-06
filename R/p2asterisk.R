#' Convert p values into asterisks
#' 
#' The function map p values into asterisks by common definitions
#' 
#' 
#' @param p Numerical, p values (between 0 and 1), can be a matrix or more
#' generally an array
#' @param use0.1 Logical, whether a dot should be displayed if 0.05<p<0.1
#' @return A character vector of the same length as \code{p} of asterisk
#' symbols. In case \code{p} is an array, both `dim` and `dimnames` properties
#' are copied to the returning value.
#' @note \code{NA} will be mapped to empty strings.
#' @examples
#' 
#' myPvals <- c(0.0005, 0.02, 0.4, 0.075, NA, 0.0044)
#' myPasterisks <- p2asterisk(myPvals, use0.1=FALSE)
#' stopifnot(identical(myPasterisks, c("***", "*", "", "", "", "**")))
#' 
#' myPasterisks2 <- p2asterisk(myPvals, use0.1=TRUE)
#' stopifnot(identical(myPasterisks2, c("***", "*", "", ".", "",  "**")))
#' 
#' @export p2asterisk
p2asterisk <- function(p, use0.1=TRUE) {
  res <- rep("", length(p))
  if(use0.1) {
    res[p<0.1] <- "."
  }
  res[p<0.05] <- "*"
  res[p<0.01] <- "**"
  res[p<0.001] <- "***"
  if(!is.null(dim(p))) {
    dim(res) <- dim(p)
    dimnames(res) <- dimnames(p)
  }
  return(res)
}
