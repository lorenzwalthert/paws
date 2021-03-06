# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS Marketplace Catalog Service
#'
#' @description
#' Catalog API actions allow you to manage your entities through list,
#' describe, and update capabilities. An entity can be a product or an
#' offer on AWS Marketplace.
#' 
#' You can automate your entity update process by integrating the AWS
#' Marketplace Catalog API with your AWS Marketplace product build or
#' deployment pipelines. You can also create your own applications on top
#' of the Catalog API to manage your products on AWS Marketplace.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#'
#' @section Service syntax:
#' ```
#' svc <- marketplacecatalog(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string"
#'     ),
#'     endpoint = "string",
#'     region = "string"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- marketplacecatalog()
#' svc$cancel_change_set(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=marketplacecatalog_cancel_change_set]{cancel_change_set} \tab Used to cancel an open change request \cr
#'  \link[=marketplacecatalog_describe_change_set]{describe_change_set} \tab Provides information about a given change set \cr
#'  \link[=marketplacecatalog_describe_entity]{describe_entity} \tab Returns the metadata and content of the entity \cr
#'  \link[=marketplacecatalog_list_change_sets]{list_change_sets} \tab Returns the list of change sets owned by the account being used to make the call\cr
#'  \link[=marketplacecatalog_list_entities]{list_entities} \tab Provides the list of entities of a given type \cr
#'  \link[=marketplacecatalog_start_change_set]{start_change_set} \tab This operation allows you to request changes for your entities 
#' }
#'
#' @rdname marketplacecatalog
#' @export
marketplacecatalog <- function(config = list()) {
  svc <- .marketplacecatalog$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.marketplacecatalog <- list()

.marketplacecatalog$operations <- list()

.marketplacecatalog$metadata <- list(
  service_name = "marketplacecatalog",
  endpoints = list("*" = list(endpoint = "marketplacecatalog.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "marketplacecatalog.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "marketplacecatalog.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "marketplacecatalog.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "Marketplace Catalog",
  api_version = "2018-09-17",
  signing_name = "aws-marketplace",
  json_version = "1.1",
  target_prefix = ""
)

.marketplacecatalog$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.marketplacecatalog$metadata, handlers, config)
}
