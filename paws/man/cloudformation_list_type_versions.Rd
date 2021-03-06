% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_list_type_versions}
\alias{cloudformation_list_type_versions}
\title{Returns summary information about the versions of a type}
\usage{
cloudformation_list_type_versions(Type, TypeName, Arn, MaxResults,
  NextToken, DeprecatedStatus)
}
\arguments{
\item{Type}{The kind of the type.

Currently the only valid value is \code{RESOURCE}.

Conditional: You must specify either \code{TypeName} and \code{Type}, or \code{Arn}.}

\item{TypeName}{The name of the type for which you want version summary information.

Conditional: You must specify either \code{TypeName} and \code{Type}, or \code{Arn}.}

\item{Arn}{The Amazon Resource Name (ARN) of the type for which you want version
summary information.

Conditional: You must specify either \code{TypeName} and \code{Type}, or \code{Arn}.}

\item{MaxResults}{The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a \code{NextToken} value that you can assign to the \code{NextToken} request
parameter to get the next set of results.}

\item{NextToken}{If the previous paginated request didn\'t return all of the remaining
results, the response object\'s \code{NextToken} parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object\'s \code{NextToken} parameter. If
there are no remaining results, the previous response object\'s
\code{NextToken} parameter is set to \code{null}.}

\item{DeprecatedStatus}{The deprecation status of the type versions that you want to get summary
information about.

Valid values include:
\itemize{
\item \code{LIVE}: The type version is registered and can be used in
CloudFormation operations, dependent on its provisioning behavior
and visibility scope.
\item \code{DEPRECATED}: The type version has been deregistered and can no
longer be used in CloudFormation operations.
}

The default is \code{LIVE}.}
}
\description{
Returns summary information about the versions of a type.
}
\section{Request syntax}{
\preformatted{svc$list_type_versions(
  Type = "RESOURCE",
  TypeName = "string",
  Arn = "string",
  MaxResults = 123,
  NextToken = "string",
  DeprecatedStatus = "LIVE"|"DEPRECATED"
)
}
}

\keyword{internal}
