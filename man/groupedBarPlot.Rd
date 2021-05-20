\name{groupedBarPlot}
\alias{groupedBarPlot}
\title{Compress large numbers into readable format}
\usage{
  groupedBarPlot<- function(DF, plotWithinGrp, plotAcrossGrp, transposeMatrix= FALSE)
}
\description{
  Transforms long DF to wide format number matrix and plots grouped barplot
}
\examples{
  data <- data.frame(values = c(4, 1, 3, 6, 7, 3),  # Create example data
                     group = rep(c("group 1",
                                   "group 2",
                                   "group 3"),
                                 each = 2),
                     subgroup = LETTERS[1:2])

  groupedBarPlot(data, "subgroup", "group", FALSE)
}

