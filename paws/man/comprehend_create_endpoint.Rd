% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_create_endpoint}
\alias{comprehend_create_endpoint}
\title{Creates a model-specific endpoint for synchronous inference for a
previously trained custom model}
\usage{
comprehend_create_endpoint(EndpointName, ModelArn,
  DesiredInferenceUnits, ClientRequestToken, Tags)
}
\arguments{
\item{EndpointName}{[required] This is the descriptive suffix that becomes part of the \code{EndpointArn}
used for all subsequent requests to this resource.}

\item{ModelArn}{[required] The Amazon Resource Number (ARN) of the model to which the endpoint will
be attached.}

\item{DesiredInferenceUnits}{[required] The desired number of inference units to be used by the model using this
endpoint. Each inference unit represents of a throughput of 100
characters per second.}

\item{ClientRequestToken}{An idempotency token provided by the customer. If this token matches a
previous endpoint creation request, Amazon Comprehend will not return a
\code{ResourceInUseException}.}

\item{Tags}{Tags associated with the endpoint being created. A tag is a key-value
pair that adds metadata to the endpoint. For example, a tag with
\"Sales\" as the key might be added to an endpoint to indicate its use
by the sales department.}
}
\description{
Creates a model-specific endpoint for synchronous inference for a
previously trained custom model
}
\section{Request syntax}{
\preformatted{svc$create_endpoint(
  EndpointName = "string",
  ModelArn = "string",
  DesiredInferenceUnits = 123,
  ClientRequestToken = "string",
  Tags = list(
    list(
      Key = "string",
      Value = "string"
    )
  )
)
}
}

\keyword{internal}
