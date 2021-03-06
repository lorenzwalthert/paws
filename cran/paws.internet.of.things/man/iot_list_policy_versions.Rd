% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_list_policy_versions}
\alias{iot_list_policy_versions}
\title{Lists the versions of the specified policy and identifies the default
version}
\usage{
iot_list_policy_versions(policyName)
}
\arguments{
\item{policyName}{[required] The policy name.}
}
\description{
Lists the versions of the specified policy and identifies the default
version.
}
\section{Request syntax}{
\preformatted{svc$list_policy_versions(
  policyName = "string"
)
}
}

\keyword{internal}
