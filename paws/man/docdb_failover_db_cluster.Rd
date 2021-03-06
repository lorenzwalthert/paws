% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_failover_db_cluster}
\alias{docdb_failover_db_cluster}
\title{Forces a failover for a cluster}
\usage{
docdb_failover_db_cluster(DBClusterIdentifier,
  TargetDBInstanceIdentifier)
}
\arguments{
\item{DBClusterIdentifier}{A cluster identifier to force a failover for. This parameter is not case
sensitive.

Constraints:
\itemize{
\item Must match the identifier of an existing \code{DBCluster}.
}}

\item{TargetDBInstanceIdentifier}{The name of the instance to promote to the primary instance.

You must specify the instance identifier for an Amazon DocumentDB
replica in the cluster. For example, \code{mydbcluster-replica1}.}
}
\description{
Forces a failover for a cluster.
}
\details{
A failover for a cluster promotes one of the Amazon DocumentDB replicas
(read-only instances) in the cluster to be the primary instance (the
cluster writer).

If the primary instance fails, Amazon DocumentDB automatically fails
over to an Amazon DocumentDB replica, if one exists. You can force a
failover when you want to simulate a failure of a primary instance for
testing.
}
\section{Request syntax}{
\preformatted{svc$failover_db_cluster(
  DBClusterIdentifier = "string",
  TargetDBInstanceIdentifier = "string"
)
}
}

\keyword{internal}
