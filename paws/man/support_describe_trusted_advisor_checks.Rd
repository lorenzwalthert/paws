% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_operations.R
\name{support_describe_trusted_advisor_checks}
\alias{support_describe_trusted_advisor_checks}
\title{Returns information about all available AWS Trusted Advisor checks,
including the name, ID, category, description, and metadata}
\usage{
support_describe_trusted_advisor_checks(language)
}
\arguments{
\item{language}{[required] The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English (\"en\") and Japanese (\"ja\").
Language parameters must be passed explicitly for operations that take
them.}
}
\description{
Returns information about all available AWS Trusted Advisor checks,
including the name, ID, category, description, and metadata. You must
specify a language code. The AWS Support API currently supports English
(\"en\") and Japanese (\"ja\"). The response contains a
TrustedAdvisorCheckDescription object for each check. You must set the
AWS Region to us-east-1.
}
\details{
\itemize{
\item You must have a Business or Enterprise support plan to use the AWS
Support API.
\item If you call the AWS Support API from an account that does not have a
Business or Enterprise support plan, the
\code{SubscriptionRequiredException} error message appears. For
information about changing your support plan, see \href{http://aws.amazon.com/premiumsupport/}{AWS Support}.
}
}
\section{Request syntax}{
\preformatted{svc$describe_trusted_advisor_checks(
  language = "string"
)
}
}

\keyword{internal}
