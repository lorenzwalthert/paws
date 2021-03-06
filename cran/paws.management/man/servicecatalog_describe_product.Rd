% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/servicecatalog_operations.R
\name{servicecatalog_describe_product}
\alias{servicecatalog_describe_product}
\title{Gets information about the specified product}
\usage{
servicecatalog_describe_product(AcceptLanguage, Id, Name)
}
\arguments{
\item{AcceptLanguage}{The language code.
\itemize{
\item \code{en} - English (default)
\item \code{jp} - Japanese
\item \code{zh} - Chinese
}}

\item{Id}{The product identifier.}

\item{Name}{The product name.}
}
\description{
Gets information about the specified product.
}
\section{Request syntax}{
\preformatted{svc$describe_product(
  AcceptLanguage = "string",
  Id = "string",
  Name = "string"
)
}
}

\keyword{internal}
