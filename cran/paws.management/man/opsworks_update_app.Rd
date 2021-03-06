% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_update_app}
\alias{opsworks_update_app}
\title{Updates a specified app}
\usage{
opsworks_update_app(AppId, Name, Description, DataSources, Type,
  AppSource, Domains, EnableSsl, SslConfiguration, Attributes,
  Environment)
}
\arguments{
\item{AppId}{[required] The app ID.}

\item{Name}{The app name.}

\item{Description}{A description of the app.}

\item{DataSources}{The app\'s data sources.}

\item{Type}{The app type.}

\item{AppSource}{A \code{Source} object that specifies the app repository.}

\item{Domains}{The app\'s virtual host settings, with multiple domains separated by
commas. For example: \code{'www.example.com, example.com'}}

\item{EnableSsl}{Whether SSL is enabled for the app.}

\item{SslConfiguration}{An \code{SslConfiguration} object with the SSL configuration.}

\item{Attributes}{One or more user-defined key/value pairs to be added to the stack
attributes.}

\item{Environment}{An array of \code{EnvironmentVariable} objects that specify environment
variables to be associated with the app. After you deploy the app, these
variables are defined on the associated app server instances.For more
information, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment}{Environment Variables}.

There is no specific limit on the number of environment variables.
However, the size of the associated data structure - which includes the
variables\' names, values, and protected flag values - cannot exceed 20
KB. This limit should accommodate most if not all use cases. Exceeding
it will cause an exception with the message, \"Environment: is too large
(maximum is 20 KB).\"

If you have specified one or more environment variables, you cannot
modify the stack\'s Chef version.}
}
\description{
Updates a specified app.
}
\details{
\strong{Required Permissions}: To use this action, an IAM user must have a
Deploy or Manage permissions level for the stack, or an attached policy
that explicitly grants permissions. For more information on user
permissions, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$update_app(
  AppId = "string",
  Name = "string",
  Description = "string",
  DataSources = list(
    list(
      Type = "string",
      Arn = "string",
      DatabaseName = "string"
    )
  ),
  Type = "aws-flow-ruby"|"java"|"rails"|"php"|"nodejs"|"static"|"other",
  AppSource = list(
    Type = "git"|"svn"|"archive"|"s3",
    Url = "string",
    Username = "string",
    Password = "string",
    SshKey = "string",
    Revision = "string"
  ),
  Domains = list(
    "string"
  ),
  EnableSsl = TRUE|FALSE,
  SslConfiguration = list(
    Certificate = "string",
    PrivateKey = "string",
    Chain = "string"
  ),
  Attributes = list(
    "string"
  ),
  Environment = list(
    list(
      Key = "string",
      Value = "string",
      Secure = TRUE|FALSE
    )
  )
)
}
}

\keyword{internal}
