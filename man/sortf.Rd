% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-basic.R
\name{sortf}
\alias{sortf}
\title{sort by a function}
\usage{
sortf(x, func, group_pattern = NULL)
}
\arguments{
\item{x}{vector}

\item{func}{a function used by the sort}

\item{group_pattern}{a regex pattern to group by, only available if x is a
character vector}
}
\value{
vector
}
\description{
sort by a function
}
\examples{
sortf(c(-2, 1, 3), abs)

v <- stringr::str_c("id", c(1, 2, 9, 10, 11, 12, 99, 101, 102)) \%>\% sample()

sortf(v, function(x) reg_match(x, "\\\\d+") \%>\% as.double())

sortf(v, ~ reg_match(.x, "\\\\d+") \%>\% as.double())

v <- c(
  stringr::str_c("A", c(1, 2, 9, 10, 11, 12, 99, 101, 102)),
  stringr::str_c("B", c(1, 2, 9, 10, 21, 32, 99, 101, 102))
) \%>\% sample()

sortf(v, ~ reg_match(.x, "\\\\d+") \%>\% as.double(), group_pattern = "\\\\w")

}
