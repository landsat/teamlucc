% Generated by roxygen2 (4.0.1): do not edit by hand
\docType{methods}
\name{subsample}
\alias{subsample}
\alias{subsample,pixel_data,numeric-method}
\alias{subsample,pixel_data-method}
\title{Subsample a pixel_data object}
\usage{
subsample(x, size, strata = "sources", type = "training", flag = TRUE,
  classes = levels(x@y))

\S4method{subsample}{pixel_data,numeric}(x, size, strata = "sources",
  type = "training", flag = TRUE, classes = levels(x@y))
}
\arguments{
\item{x}{a \code{pixel_data} object}

\item{size}{either 1) a number from 0 to 1, indicating \code{size} is the
fraction of pixels to sample, or 2) a number greater than 1, in which case
\code{size} is the number of pixels to sample. Size applies per strata, if
stratification is chosen.}

\item{strata}{whether to draw samples from within individual classes, nested
within source polygons (\code{strata='sources'}), or from within individual
classes alone (\code{strata='classes'})}

\item{type}{whether to subsample training data (\code{type='training'}) or
testing data (\code{type='testing'}). Whichever type is chosen, the other
type will be left untouched (for example, if \code{type='testing'}, the
training data will not be changed).}

\item{flag}{whether to swap training flag on sampled data (for example, flag
sampled training data as testing data, if \code{flag=TRUE} and
\code{type='training'}) or remove sampled data from dataset entirely
(\code{flag=FALSE}).}

\item{classes}{specifies which classes to sample, defaults to all classes in
\code{x}}
}
\description{
Subsample a pixel_data object
}

