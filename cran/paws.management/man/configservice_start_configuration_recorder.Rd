% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_start_configuration_recorder}
\alias{configservice_start_configuration_recorder}
\title{Starts recording configurations of the AWS resources you have selected
to record in your AWS account}
\usage{
configservice_start_configuration_recorder(ConfigurationRecorderName)
}
\arguments{
\item{ConfigurationRecorderName}{[required] The name of the recorder object that records each configuration change
made to the resources.}
}
\description{
Starts recording configurations of the AWS resources you have selected
to record in your AWS account.
}
\details{
You must have created at least one delivery channel to successfully
start the configuration recorder.
}
\section{Request syntax}{
\preformatted{svc$start_configuration_recorder(
  ConfigurationRecorderName = "string"
)
}
}

\keyword{internal}
