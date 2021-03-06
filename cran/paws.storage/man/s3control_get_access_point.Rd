% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_operations.R
\name{s3control_get_access_point}
\alias{s3control_get_access_point}
\title{Returns configuration information about the specified access point}
\usage{
s3control_get_access_point(AccountId, Name)
}
\arguments{
\item{AccountId}{[required] The account ID for the account that owns the specified access point.}

\item{Name}{[required] The name of the access point whose configuration information you want to
retrieve.}
}
\description{
Returns configuration information about the specified access point.
}
\section{Request syntax}{
\preformatted{svc$get_access_point(
  AccountId = "string",
  Name = "string"
)
}
}

\keyword{internal}
