% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationinsights_operations.R
\name{applicationinsights_update_application}
\alias{applicationinsights_update_application}
\title{Updates the application}
\usage{
applicationinsights_update_application(ResourceGroupName,
  OpsCenterEnabled, CWEMonitorEnabled, OpsItemSNSTopicArn, RemoveSNSTopic)
}
\arguments{
\item{ResourceGroupName}{[required] The name of the resource group.}

\item{OpsCenterEnabled}{When set to \code{true}, creates opsItems for any problems detected on an
application.}

\item{CWEMonitorEnabled}{Indicates whether Application Insights can listen to CloudWatch events
for the application resources, such as \verb{instance terminated},
\verb{failed deployment}, and others.}

\item{OpsItemSNSTopicArn}{The SNS topic provided to Application Insights that is associated to the
created opsItem. Allows you to receive notifications for updates to the
opsItem.}

\item{RemoveSNSTopic}{Disassociates the SNS topic from the opsItem created for detected
problems.}
}
\description{
Updates the application.
}
\section{Request syntax}{
\preformatted{svc$update_application(
  ResourceGroupName = "string",
  OpsCenterEnabled = TRUE|FALSE,
  CWEMonitorEnabled = TRUE|FALSE,
  OpsItemSNSTopicArn = "string",
  RemoveSNSTopic = TRUE|FALSE
)
}
}

\keyword{internal}
