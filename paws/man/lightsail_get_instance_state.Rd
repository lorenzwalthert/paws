% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_instance_state}
\alias{lightsail_get_instance_state}
\title{Returns the state of a specific instance}
\usage{
lightsail_get_instance_state(instanceName)
}
\arguments{
\item{instanceName}{[required] The name of the instance to get state information about.}
}
\description{
Returns the state of a specific instance. Works on one instance at a
time.
}
\section{Request syntax}{
\preformatted{svc$get_instance_state(
  instanceName = "string"
)
}
}

\keyword{internal}
