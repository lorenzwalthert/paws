% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wafv2_operations.R
\name{wafv2_tag_resource}
\alias{wafv2_tag_resource}
\title{This is the latest version of AWS WAF, named AWS WAFV2, released in
November, 2019}
\usage{
wafv2_tag_resource(ResourceARN, Tags)
}
\arguments{
\item{ResourceARN}{[required] The Amazon Resource Name (ARN) of the resource.}

\item{Tags}{[required] An array of key:value pairs to associate with the resource.}
}
\description{
This is the latest version of \strong{AWS WAF}, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the \href{https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html}{AWS WAF Developer Guide}.
}
\details{
Associates tags with the specified AWS resource. Tags are key:value
pairs that you can use to categorize and manage your resources, for
purposes like billing. For example, you might set the tag key to
\"customer\" and the value to the customer name or ID. You can specify
one or more tags to add to each AWS resource, up to 50 tags for a
resource.

You can tag the AWS resources that you manage through AWS WAF: web ACLs,
rule groups, IP sets, and regex pattern sets. You can\'t manage or view
tags through the AWS WAF console.
}
\section{Request syntax}{
\preformatted{svc$tag_resource(
  ResourceARN = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
