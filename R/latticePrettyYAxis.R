#' Load a Matrix
#'
#' This function loads a file as a matrix. It assumes that the first column
#' contains the rownames and the subsequent columns are the sample identifiers.
#' Any rows with duplicated row names will be dropped with the first one being
#' kepted.
#'
#' @param infile Path to the input file
#' @return A matrix of the infile
#' @export
# Creates custom labels for lattice plot axis
latticePrettyYAxis <- function (lim, logsc = FALSE, at = NULL, ...)
{
  ans <- yscale.components.default(lim = lim, logsc = logsc,
                                   at = at, ...)
  xx = as.numeric(ans$left$labels$labels)
  ans$left$labels$labels <- comprss(xx)
  ans
}
