% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/built_in_distributions.R
\name{r_sample}
\alias{r_sample}
\title{Generate Random Sample}
\usage{
r_sample(sample, weights = NULL, ..., n = default_n(), .seed = NULL)
}
\arguments{
\item{sample}{a set of values to choose from}

\item{weights}{a vector of weights, must be the same length as \code{sample},
between 0 & 1}

\item{...}{Unused}

\item{n}{number of observations to generate. The \code{\link[=default_n]{default_n()}} function will
provide a default value within context}

\item{.seed}{One of the following:
\itemize{
\item NULL (default) will not change the current seed. This is the
usual case for generating random numbers.
\item A numeric value. This will be used to set the seed before generating
the random numbers. This seed will be stored with the results.
\item TRUE. A random seed value will be generated and set as the seed
before the results are generated. Again, this will be stored with
the results.
}

To extract the random seed from a previously generated set of
values, use \code{pull_seed()}}
}
\value{
A vector of length \code{n} of the same type as \code{sample}
}
\description{
Generates a Sample from a set, with replacement
}
\examples{

set_n(15)

r_sample(c("blue", "red", "yellow"))

r_sample(c("blue", "red", "yellow"),
  weights = c(1, 5, 1)
)

r_sample(c("blue", "red", "yellow"), n = 10)
}
