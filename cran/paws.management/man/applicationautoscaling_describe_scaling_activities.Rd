% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationautoscaling_operations.R
\name{applicationautoscaling_describe_scaling_activities}
\alias{applicationautoscaling_describe_scaling_activities}
\title{Provides descriptive information about the scaling activities in the
specified namespace from the previous six weeks}
\usage{
applicationautoscaling_describe_scaling_activities(ServiceNamespace,
  ResourceId, ScalableDimension, MaxResults, NextToken)
}
\arguments{
\item{ServiceNamespace}{[required] The namespace of the AWS service that provides the resource. For a
resource provided by your own application or service, use
\code{custom-resource} instead.}

\item{ResourceId}{The identifier of the resource associated with the scaling activity.
This string consists of the resource type and unique identifier. If you
specify a scalable dimension, you must also specify a resource ID.
\itemize{
\item ECS service - The resource type is \code{service} and the unique
identifier is the cluster name and service name. Example:
\code{service/default/sample-webapp}.
\item Spot Fleet request - The resource type is \code{spot-fleet-request} and
the unique identifier is the Spot Fleet request ID. Example:
\verb{spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE}.
\item EMR cluster - The resource type is \code{instancegroup} and the unique
identifier is the cluster ID and instance group ID. Example:
\verb{instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0}.
\item AppStream 2.0 fleet - The resource type is \code{fleet} and the unique
identifier is the fleet name. Example: \code{fleet/sample-fleet}.
\item DynamoDB table - The resource type is \code{table} and the unique
identifier is the table name. Example: \code{table/my-table}.
\item DynamoDB global secondary index - The resource type is \code{index} and
the unique identifier is the index name. Example:
\code{table/my-table/index/my-table-index}.
\item Aurora DB cluster - The resource type is \code{cluster} and the unique
identifier is the cluster name. Example: \code{cluster:my-db-cluster}.
\item Amazon SageMaker endpoint variant - The resource type is \code{variant}
and the unique identifier is the resource ID. Example:
\code{endpoint/my-end-point/variant/KMeansClustering}.
\item Custom resources are not supported with a resource type. This
parameter must specify the \code{OutputValue} from the CloudFormation
template stack used to access the resources. The unique identifier
is defined by the service provider. More information is available in
our \href{https://github.com/aws/aws-auto-scaling-custom-resource}{GitHub repository}.
\item Amazon Comprehend document classification endpoint - The resource
type and unique identifier are specified using the endpoint ARN.
Example:
\code{arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE}.
\item Lambda provisioned concurrency - The resource type is \code{function} and
the unique identifier is the function name with a function version
or alias name suffix that is not \verb{$LATEST}. Example:
\verb{function:my-function:prod} or \verb{function:my-function:1}.
\item Amazon Keyspaces table - The resource type is \code{table} and the unique
identifier is the table name. Example:
\code{keyspace/mykeyspace/table/mytable}.
}}

\item{ScalableDimension}{The scalable dimension. This string consists of the service namespace,
resource type, and scaling property. If you specify a scalable
dimension, you must also specify a resource ID.
\itemize{
\item \code{ecs:service:DesiredCount} - The desired task count of an ECS
service.
\item \code{ec2:spot-fleet-request:TargetCapacity} - The target capacity of a
Spot Fleet request.
\item \code{elasticmapreduce:instancegroup:InstanceCount} - The instance count
of an EMR Instance Group.
\item \code{appstream:fleet:DesiredCapacity} - The desired capacity of an
AppStream 2.0 fleet.
\item \code{dynamodb:table:ReadCapacityUnits} - The provisioned read capacity
for a DynamoDB table.
\item \code{dynamodb:table:WriteCapacityUnits} - The provisioned write capacity
for a DynamoDB table.
\item \code{dynamodb:index:ReadCapacityUnits} - The provisioned read capacity
for a DynamoDB global secondary index.
\item \code{dynamodb:index:WriteCapacityUnits} - The provisioned write capacity
for a DynamoDB global secondary index.
\item \code{rds:cluster:ReadReplicaCount} - The count of Aurora Replicas in an
Aurora DB cluster. Available for Aurora MySQL-compatible edition and
Aurora PostgreSQL-compatible edition.
\item \code{sagemaker:variant:DesiredInstanceCount} - The number of EC2
instances for an Amazon SageMaker model endpoint variant.
\item \code{custom-resource:ResourceType:Property} - The scalable dimension for
a custom resource provided by your own application or service.
\item \code{comprehend:document-classifier-endpoint:DesiredInferenceUnits} -
The number of inference units for an Amazon Comprehend document
classification endpoint.
\item \verb{lambda:function:ProvisionedConcurrency} - The provisioned
concurrency for a Lambda function.
\item \code{cassandra:table:ReadCapacityUnits} - The provisioned read capacity
for an Amazon Keyspaces table.
\item \code{cassandra:table:WriteCapacityUnits} - The provisioned write
capacity for an Amazon Keyspaces table.
}}

\item{MaxResults}{The maximum number of scalable targets. This value can be between 1 and
50. The default value is 50.

If this parameter is used, the operation returns up to \code{MaxResults}
results at a time, along with a \code{NextToken} value. To get the next set
of results, include the \code{NextToken} value in a subsequent call. If this
parameter is not used, the operation returns up to 50 results and a
\code{NextToken} value, if applicable.}

\item{NextToken}{The token for the next set of results.}
}
\description{
Provides descriptive information about the scaling activities in the
specified namespace from the previous six weeks.
}
\details{
You can filter the results using \code{ResourceId} and \code{ScalableDimension}.
}
\section{Request syntax}{
\preformatted{svc$describe_scaling_activities(
  ServiceNamespace = "ecs"|"elasticmapreduce"|"ec2"|"appstream"|"dynamodb"|"rds"|"sagemaker"|"custom-resource"|"comprehend"|"lambda"|"cassandra",
  ResourceId = "string",
  ScalableDimension = "ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"elasticmapreduce:instancegroup:InstanceCount"|"appstream:fleet:DesiredCapacity"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits"|"rds:cluster:ReadReplicaCount"|"sagemaker:variant:DesiredInstanceCount"|"custom-resource:ResourceType:Property"|"comprehend:document-classifier-endpoint:DesiredInferenceUnits"|"lambda:function:ProvisionedConcurrency"|"cassandra:table:ReadCapacityUnits"|"cassandra:table:WriteCapacityUnits",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\examples{
\dontrun{
# This example describes the scaling activities for an Amazon ECS service
# called web-app that is running in the default cluster.
svc$describe_scaling_activities(
  ResourceId = "service/default/web-app",
  ScalableDimension = "ecs:service:DesiredCount",
  ServiceNamespace = "ecs"
)
}

}
\keyword{internal}
