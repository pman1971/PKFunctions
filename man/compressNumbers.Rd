\name{compressNumbers}
\alias{compressNumbers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Converts numbers into pretty format appropriate for big numbers
}
\usage{
compressNumbers(tx)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tx}{
%%     ~~Describe \code{tx} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (tx)
{
    div <- findInterval(as.numeric(gsub("\\,", "", tx)), c(0,
        1000, 1e+06, 1e+09, 1e+12))
    paste(round(as.numeric(gsub("\\,", "", tx))/10^(3 * (div -
        1)), 1), c("", "K", "M", "B", "T")[div])
  }
}

numVector= seq(from= 100000, to= 10000000, by= 500000)
compressNumbers(numVector)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
