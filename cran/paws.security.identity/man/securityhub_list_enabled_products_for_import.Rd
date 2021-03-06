% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/securityhub_operations.R
\name{securityhub_list_enabled_products_for_import}
\alias{securityhub_list_enabled_products_for_import}
\title{Lists all findings-generating solutions (products) that you are
subscribed to receive findings from in Security Hub}
\usage{
securityhub_list_enabled_products_for_import(NextToken, MaxResults)
}
\arguments{
\item{NextToken}{The token that is required for pagination. On your first call to the
\code{ListEnabledProductsForImport} operation, set the value of this
parameter to \code{NULL}.

For subsequent calls to the operation, to continue listing data, set the
value of this parameter to the value returned from the previous
response.}

\item{MaxResults}{The maximum number of items to return in the response.}
}
\description{
Lists all findings-generating solutions (products) that you are
subscribed to receive findings from in Security Hub.
}
\section{Request syntax}{
\preformatted{svc$list_enabled_products_for_import(
  NextToken = "string",
  MaxResults = 123
)
}
}

\keyword{internal}
