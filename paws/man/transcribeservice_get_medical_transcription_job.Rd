% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribeservice_operations.R
\name{transcribeservice_get_medical_transcription_job}
\alias{transcribeservice_get_medical_transcription_job}
\title{Returns information about a transcription job from Amazon Transcribe
Medical}
\usage{
transcribeservice_get_medical_transcription_job(
  MedicalTranscriptionJobName)
}
\arguments{
\item{MedicalTranscriptionJobName}{[required] The name of the medical transcription job.}
}
\description{
Returns information about a transcription job from Amazon Transcribe
Medical. To see the status of the job, check the
\code{TranscriptionJobStatus} field. If the status is \code{COMPLETED}, the job is
finished. You find the results of the completed job in the
\code{TranscriptFileUri} field.
}
\section{Request syntax}{
\preformatted{svc$get_medical_transcription_job(
  MedicalTranscriptionJobName = "string"
)
}
}

\keyword{internal}
