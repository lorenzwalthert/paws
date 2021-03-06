% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53_operations.R
\name{route53_list_tags_for_resource}
\alias{route53_list_tags_for_resource}
\title{Lists tags for one health check or hosted zone}
\usage{
route53_list_tags_for_resource(ResourceType, ResourceId)
}
\arguments{
\item{ResourceType}{[required] The type of the resource.
\itemize{
\item The resource type for health checks is \code{healthcheck}.
\item The resource type for hosted zones is \code{hostedzone}.
}}

\item{ResourceId}{[required] The ID of the resource for which you want to retrieve tags.}
}
\description{
Lists tags for one health check or hosted zone.
}
\details{
For information about using tags for cost allocation, see \href{https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html}{Using Cost Allocation Tags}
in the \emph{AWS Billing and Cost Management User Guide}.
}
\section{Request syntax}{
\preformatted{svc$list_tags_for_resource(
  ResourceType = "healthcheck"|"hostedzone",
  ResourceId = "string"
)
}
}

\keyword{internal}
