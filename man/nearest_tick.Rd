% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/numbers.R
\name{nearest_tick}
\alias{nearest_tick}
\title{the nearest ticks around a number}
\usage{
nearest_tick(x, side = "both", level = NULL, div = 2)
}
\arguments{
\item{x}{number}

\item{side}{default as 'both', can be 'both|left|right'}

\item{level}{the level of ticks, such as 1, 10, 100, etc.}

\item{div}{number of divisions}
}
\value{
nearest tick number
}
\description{
the nearest ticks around a number
}
\examples{
nearest_tick(3462, level = 10)
}
