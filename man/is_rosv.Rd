% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{is_rosv}
\alias{is_rosv}
\title{Is object made from \{rosv\} R6 class}
\usage{
is_rosv(x)
}
\arguments{
\item{x}{Object to check.}
}
\value{
Boolean value based on if \code{x} is an R6 class made by \{rosv\}.
}
\description{
Determine if object is an \{rosv\} type R6 class
}
\examples{
is_rosv(RosvQuery1$new(name = 'readxl', ecosystem = 'CRAN'))

}
