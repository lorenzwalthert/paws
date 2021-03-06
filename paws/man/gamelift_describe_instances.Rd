% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_instances}
\alias{gamelift_describe_instances}
\title{Retrieves information about a fleet's instances, including instance IDs}
\usage{
gamelift_describe_instances(FleetId, InstanceId, Limit, NextToken)
}
\arguments{
\item{FleetId}{[required] A unique identifier for a fleet to retrieve instance information for.
You can use either the fleet ID or ARN value.}

\item{InstanceId}{A unique identifier for an instance to retrieve. Specify an instance ID
or leave blank to retrieve all instances in the fleet.}

\item{Limit}{The maximum number of results to return. Use this parameter with
\code{NextToken} to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.}
}
\description{
Retrieves information about a fleet\'s instances, including instance
IDs. Use this action to get details on all instances in the fleet or get
details on one specific instance.
}
\details{
To get a specific instance, specify fleet ID and instance ID. To get all
instances in a fleet, specify a fleet ID only. Use the pagination
parameters to retrieve results as a set of sequential pages. If
successful, an Instance object is returned for each result.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html}{Remotely Access Fleet Instances}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html}{Debug Fleet Issues}

\strong{Related operations}
\itemize{
\item DescribeInstances
\item GetInstanceAccess
}
}
\section{Request syntax}{
\preformatted{svc$describe_instances(
  FleetId = "string",
  InstanceId = "string",
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
