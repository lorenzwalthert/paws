% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codegurureviewer_operations.R
\name{codegurureviewer_describe_repository_association}
\alias{codegurureviewer_describe_repository_association}
\title{Returns a RepositoryAssociation object that contains information about
the requested repository association}
\usage{
codegurureviewer_describe_repository_association(AssociationArn)
}
\arguments{
\item{AssociationArn}{[required] The Amazon Resource Name (ARN) of the
\href{https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html}{\code{RepositoryAssociation}}
object. You can retrieve this ARN by calling \code{ListRepositories}.}
}
\description{
Returns a
\href{https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html}{\code{RepositoryAssociation}}
object that contains information about the requested repository
association.
}
\section{Request syntax}{
\preformatted{svc$describe_repository_association(
  AssociationArn = "string"
)
}
}

\keyword{internal}
