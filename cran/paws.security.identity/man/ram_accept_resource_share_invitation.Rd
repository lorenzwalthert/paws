% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ram_operations.R
\name{ram_accept_resource_share_invitation}
\alias{ram_accept_resource_share_invitation}
\title{Accepts an invitation to a resource share from another AWS account}
\usage{
ram_accept_resource_share_invitation(resourceShareInvitationArn,
  clientToken)
}
\arguments{
\item{resourceShareInvitationArn}{[required] The Amazon Resource Name (ARN) of the invitation.}

\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.}
}
\description{
Accepts an invitation to a resource share from another AWS account.
}
\section{Request syntax}{
\preformatted{svc$accept_resource_share_invitation(
  resourceShareInvitationArn = "string",
  clientToken = "string"
)
}
}

\keyword{internal}
