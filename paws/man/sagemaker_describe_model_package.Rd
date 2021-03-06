% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_describe_model_package}
\alias{sagemaker_describe_model_package}
\title{Returns a description of the specified model package, which is used to
create Amazon SageMaker models or list them on AWS Marketplace}
\usage{
sagemaker_describe_model_package(ModelPackageName)
}
\arguments{
\item{ModelPackageName}{[required] The name of the model package to describe.}
}
\description{
Returns a description of the specified model package, which is used to
create Amazon SageMaker models or list them on AWS Marketplace.
}
\details{
To create models in Amazon SageMaker, buyers can subscribe to model
packages listed on AWS Marketplace.
}
\section{Request syntax}{
\preformatted{svc$describe_model_package(
  ModelPackageName = "string"
)
}
}

\keyword{internal}
