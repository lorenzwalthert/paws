% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/swf_operations.R
\name{swf_describe_domain}
\alias{swf_describe_domain}
\title{Returns information about the specified domain, including description
and status}
\usage{
swf_describe_domain(name)
}
\arguments{
\item{name}{[required] The name of the domain to describe.}
}
\description{
Returns information about the specified domain, including description
and status.
}
\details{
\strong{Access Control}

You can use IAM policies to control this action\'s access to Amazon SWF
resources as follows:
\itemize{
\item Use a \code{Resource} element with the domain name to limit the action to
only specified domains.
\item Use an \code{Action} element to allow or deny permission to call this
action.
\item You cannot use an IAM policy to constrain this action\'s parameters.
}

If the caller doesn\'t have sufficient permissions to invoke the action,
or the parameter values fall outside the specified constraints, the
action fails. The associated event attribute\'s \code{cause} parameter is set
to \code{OPERATION_NOT_PERMITTED}. For details and example IAM policies, see
\href{https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html}{Using IAM to Manage Access to Amazon SWF Workflows}
in the \emph{Amazon SWF Developer Guide}.
}
\section{Request syntax}{
\preformatted{svc$describe_domain(
  name = "string"
)
}
}

\keyword{internal}
