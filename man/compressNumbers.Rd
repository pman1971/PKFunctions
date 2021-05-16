\name{compressNumbers}
\alias{compressNumbers}
\title{Compress large numbers into readable format}
\usage{
  compressNumbers()
}
\description{
  This function converts numbers into pretty format appropriate for big numbers. Typically used    for labelling plots to make them more readable and easy to understand.
}
\examples{
  numVector= seq(from= 100000, to= 10000000, by= 500000)
  compressNumbers(numVector)
}

