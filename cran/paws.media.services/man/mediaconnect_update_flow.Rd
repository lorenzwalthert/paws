% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mediaconnect_operations.R
\name{mediaconnect_update_flow}
\alias{mediaconnect_update_flow}
\title{Updates flow}
\usage{
mediaconnect_update_flow(FlowArn, SourceFailoverConfig)
}
\arguments{
\item{FlowArn}{[required] The flow that you want to update.}

\item{SourceFailoverConfig}{}
}
\description{
Updates flow
}
\section{Request syntax}{
\preformatted{svc$update_flow(
  FlowArn = "string",
  SourceFailoverConfig = list(
    RecoveryWindow = 123,
    State = "ENABLED"|"DISABLED"
  )
)
}
}

\keyword{internal}
