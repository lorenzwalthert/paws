% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chime_operations.R
\name{chime_update_account}
\alias{chime_update_account}
\title{Updates account details for the specified Amazon Chime account}
\usage{
chime_update_account(AccountId, Name)
}
\arguments{
\item{AccountId}{[required] The Amazon Chime account ID.}

\item{Name}{The new name for the specified Amazon Chime account.}
}
\description{
Updates account details for the specified Amazon Chime account.
Currently, only account name updates are supported for this action.
}
\section{Request syntax}{
\preformatted{svc$update_account(
  AccountId = "string",
  Name = "string"
)
}
}

\keyword{internal}
