% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloud9_operations.R
\name{cloud9_update_environment}
\alias{cloud9_update_environment}
\title{Changes the settings of an existing AWS Cloud9 development environment}
\usage{
cloud9_update_environment(environmentId, name, description)
}
\arguments{
\item{environmentId}{[required] The ID of the environment to change settings.}

\item{name}{A replacement name for the environment.}

\item{description}{Any new or replacement description for the environment.}
}
\description{
Changes the settings of an existing AWS Cloud9 development environment.
}
\section{Request syntax}{
\preformatted{svc$update_environment(
  environmentId = "string",
  name = "string",
  description = "string"
)
}
}

\examples{
\dontrun{
# 
svc$update_environment(
  name = "my-changed-demo-environment",
  description = "This is my changed demonstration environment.",
  environmentId = "8d9967e2f0624182b74e7690ad69ebEX"
)
}

}
\keyword{internal}
