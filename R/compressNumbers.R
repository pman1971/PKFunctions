#' @export
# Compress numbers
compressNumbers <- function(tx) {
  div <- findInterval(as.numeric(gsub("\\,", "", tx)),
                      c(0, 1e3, 1e6, 1e9, 1e12) )
  paste(round( as.numeric(gsub("\\,","",tx))/10^(3*(div-1)), 1),
        c("","K","M","B","T")[div] )}
