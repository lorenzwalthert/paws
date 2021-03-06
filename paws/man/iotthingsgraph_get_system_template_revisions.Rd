% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotthingsgraph_operations.R
\name{iotthingsgraph_get_system_template_revisions}
\alias{iotthingsgraph_get_system_template_revisions}
\title{Gets revisions made to the specified system template}
\usage{
iotthingsgraph_get_system_template_revisions(id, nextToken, maxResults)
}
\arguments{
\item{id}{[required] The ID of the system template.

The ID should be in the following format.

\verb{urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME}}

\item{nextToken}{The string that specifies the next page of results. Use this when
you\'re paginating results.}

\item{maxResults}{The maximum number of results to return in the response.}
}
\description{
Gets revisions made to the specified system template. Only the previous
100 revisions are stored. If the system has been deprecated, this action
will return the revisions that occurred before its deprecation. This
action won\'t work with systems that have been deleted.
}
\section{Request syntax}{
\preformatted{svc$get_system_template_revisions(
  id = "string",
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
