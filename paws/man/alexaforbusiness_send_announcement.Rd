% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alexaforbusiness_operations.R
\name{alexaforbusiness_send_announcement}
\alias{alexaforbusiness_send_announcement}
\title{Triggers an asynchronous flow to send text, SSML, or audio announcements
to rooms that are identified by a search or filter}
\usage{
alexaforbusiness_send_announcement(RoomFilters, Content,
  TimeToLiveInSeconds, ClientRequestToken)
}
\arguments{
\item{RoomFilters}{[required] The filters to use to send an announcement to a specified list of rooms.
The supported filter keys are RoomName, ProfileName, RoomArn, and
ProfileArn. To send to all rooms, specify an empty RoomFilters list.}

\item{Content}{[required] The announcement content. This can contain only one of the three
possible announcement types (text, SSML or audio).}

\item{TimeToLiveInSeconds}{The time to live for an announcement. Default is 300. If delivery
doesn\'t occur within this time, the announcement is not delivered.}

\item{ClientRequestToken}{[required] The unique, user-specified identifier for the request that ensures
idempotency.}
}
\description{
Triggers an asynchronous flow to send text, SSML, or audio announcements
to rooms that are identified by a search or filter.
}
\section{Request syntax}{
\preformatted{svc$send_announcement(
  RoomFilters = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  Content = list(
    TextList = list(
      list(
        Locale = "en-US",
        Value = "string"
      )
    ),
    SsmlList = list(
      list(
        Locale = "en-US",
        Value = "string"
      )
    ),
    AudioList = list(
      list(
        Locale = "en-US",
        Location = "string"
      )
    )
  ),
  TimeToLiveInSeconds = 123,
  ClientRequestToken = "string"
)
}
}

\keyword{internal}
