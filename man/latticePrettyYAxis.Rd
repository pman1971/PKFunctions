\name{lattticePrettyYAxis}
\alias{lattticePrettyYAxis}
\title{Compress large numbers into readable format and adds to Y axis}
\usage{
  compressNumbers()
}
\description{
  This function converts numbers into pretty format appropriate for big numbers and add to Y axis. Typically used for labelling plots to make them more readable and easy to understand.
}
\examples{
  numVector= seq(from= 100000, to= 10000000, by= 500000)
  compressNumbers(numVector)
}

