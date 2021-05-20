#' @export
# Transforms long DF to wide format number matrix and plots grouped barplot
groupedBarPlot<- function(DF, plotWithinGrp, plotAcrossGrp, transposeMatrix= FALSE)
{
  dataWide <- reshape(data,
                      idvar = plotWithinGrp,
                      timevar = plotAcrossGrp,
                      direction = "wide")
  row.names(dataWide) <- dataWide[, plotWithinGrp]
  dataWide <- dataWide[ , 2:ncol(dataWide)]
  colnames(dataWide)<- unique(DF[, plotAcrossGrp])
  dataWideMatrix <- as.matrix(dataWide)
  if(transposeMatrix)
  {dataWideMatrix= t(dataWideMatrix)}

  barplot(height = dataWideMatrix,
          beside = TRUE)
}
