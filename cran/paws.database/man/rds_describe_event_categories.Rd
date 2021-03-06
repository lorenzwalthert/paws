% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_describe_event_categories}
\alias{rds_describe_event_categories}
\title{Displays a list of categories for all event source types, or, if
specified, for a specified source type}
\usage{
rds_describe_event_categories(SourceType, Filters)
}
\arguments{
\item{SourceType}{The type of source that is generating the events.

Valid values: db-instance \\| db-parameter-group \\| db-security-group \\|
db-snapshot}

\item{Filters}{This parameter isn\'t currently supported.}
}
\description{
Displays a list of categories for all event source types, or, if
specified, for a specified source type. You can see a list of the event
categories and source types in the
\href{https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html}{Events}
topic in the \emph{Amazon RDS User Guide.}
}
\section{Request syntax}{
\preformatted{svc$describe_event_categories(
  SourceType = "string",
  Filters = list(
    list(
      Name = "string",
      Values = list(
        "string"
      )
    )
  )
)
}
}

\keyword{internal}
