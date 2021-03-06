% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagebuilder_operations.R
\name{imagebuilder_get_image_recipe}
\alias{imagebuilder_get_image_recipe}
\title{Gets an image recipe}
\usage{
imagebuilder_get_image_recipe(imageRecipeArn)
}
\arguments{
\item{imageRecipeArn}{[required] The Amazon Resource Name (ARN) of the image recipe that you want to
retrieve.}
}
\description{
Gets an image recipe.
}
\section{Request syntax}{
\preformatted{svc$get_image_recipe(
  imageRecipeArn = "string"
)
}
}

\keyword{internal}
