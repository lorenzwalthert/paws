% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_list_rooms}
\alias{chime_list_rooms}
\title{Lists the room details for the specified Amazon Chime Enterprise account}
\usage{
chime_list_rooms(AccountId, MemberId, MaxResults, NextToken)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{MemberId}{The member ID (user ID or bot ID).}

\item{MaxResults}{The maximum number of results to return in a single call.}

\item{NextToken}{The token to use to retrieve the next page of results.}
}
\description{
Lists the room details for the specified Amazon Chime Enterprise
account. Optionally, filter the results by a member ID (user ID or bot
ID) to see a list of rooms that the member belongs to.
}
\section{Request syntax}{
\preformatted{svc$list_rooms(
  AccountId = "string",
  MemberId = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
