% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rowwise.r
\name{rowwise}
\alias{rowwise}
\title{Group input by rows}
\usage{
rowwise(data)
}
\arguments{
\item{data}{Input data frame.}
}
\description{
\badgequestioning
}
\details{
See \href{https://github.com/jennybc/row-oriented-workflows}{this repository}
for alternative ways to perform row-wise operations

\code{rowwise()} is used for the results of \code{\link[=do]{do()}} when you
create list-variables. It is also useful to support arbitrary
complex operations that need to be applied to each row.

Currently, rowwise grouping only works with data frames. Its
main impact is to allow you to work with list-variables in
\code{\link[=summarise]{summarise()}} and \code{\link[=mutate]{mutate()}} without having to
use \code{[[1]]}. This makes \code{summarise()} on a rowwise tbl
effectively equivalent to \code{\link[plyr:ldply]{plyr::ldply()}}.
}
\examples{
df <- expand.grid(x = 1:3, y = 3:1)
df_done <- df \%>\% rowwise() \%>\% do(i = seq(.$x, .$y))
df_done
df_done \%>\% summarise(n = length(i))
}
