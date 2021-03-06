% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_create_matchmaking_configuration}
\alias{gamelift_create_matchmaking_configuration}
\title{Defines a new matchmaking configuration for use with FlexMatch}
\usage{
gamelift_create_matchmaking_configuration(Name, Description,
  GameSessionQueueArns, RequestTimeoutSeconds, AcceptanceTimeoutSeconds,
  AcceptanceRequired, RuleSetName, NotificationTarget,
  AdditionalPlayerCount, CustomEventData, GameProperties, GameSessionData,
  BackfillMode, Tags)
}
\arguments{
\item{Name}{[required] A unique identifier for a matchmaking configuration. This name is used
to identify the configuration associated with a matchmaking request or
ticket.}

\item{Description}{A human-readable description of the matchmaking configuration.}

\item{GameSessionQueueArns}{[required] Amazon Resource Name
(\href{https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html}{ARN})
that is assigned to a GameLift game session queue resource and uniquely
identifies it. ARNs are unique across all Regions. These queues are used
when placing game sessions for matches that are created with this
matchmaking configuration. Queues can be located in any Region.}

\item{RequestTimeoutSeconds}{[required] The maximum duration, in seconds, that a matchmaking ticket can remain
in process before timing out. Requests that fail due to timing out can
be resubmitted as needed.}

\item{AcceptanceTimeoutSeconds}{The length of time (in seconds) to wait for players to accept a proposed
match. If any player rejects the match or fails to accept before the
timeout, the ticket continues to look for an acceptable match.}

\item{AcceptanceRequired}{[required] A flag that determines whether a match that was created with this
configuration must be accepted by the matched players. To require
acceptance, set to \code{TRUE}.}

\item{RuleSetName}{[required] A unique identifier for a matchmaking rule set to use with this
configuration. You can use either the rule set name or ARN value. A
matchmaking configuration can only use rule sets that are defined in the
same Region.}

\item{NotificationTarget}{An SNS topic ARN that is set up to receive matchmaking notifications.}

\item{AdditionalPlayerCount}{The number of player slots in a match to keep open for future players.
For example, assume that the configuration\'s rule set specifies a match
for a single 12-person team. If the additional player count is set to 2,
only 10 players are initially selected for the match.}

\item{CustomEventData}{Information to be added to all events related to this matchmaking
configuration.}

\item{GameProperties}{A set of custom properties for a game session, formatted as key-value
pairs. These properties are passed to a game server process in the
GameSession object with a request to start a new game session (see
\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession}{Start a Game Session}).
This information is added to the new GameSession object that is created
for a successful match.}

\item{GameSessionData}{A set of custom game session properties, formatted as a single string
value. This data is passed to a game server process in the GameSession
object with a request to start a new game session (see \href{https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession}{Start a Game Session}).
This information is added to the new GameSession object that is created
for a successful match.}

\item{BackfillMode}{The method used to backfill game sessions that are created with this
matchmaking configuration. Specify \code{MANUAL} when your game manages
backfill requests manually or does not use the match backfill feature.
Specify \code{AUTOMATIC} to have GameLift create a StartMatchBackfill request
whenever a game session has one or more open slots. Learn more about
manual and automatic backfill in \href{https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html}{Backfill Existing Games with FlexMatch}.}

\item{Tags}{A list of labels to assign to the new matchmaking configuration
resource. Tags are developer-defined key-value pairs. Tagging AWS
resources are useful for resource management, access management and cost
allocation. For more information, see \href{https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html}{Tagging AWS Resources}
in the \emph{AWS General Reference}. Once the resource is created, you can
use TagResource, UntagResource, and ListTagsForResource to add, remove,
and view tags. The maximum tag limit may be lower than stated. See the
AWS General Reference for actual tagging limits.}
}
\description{
Defines a new matchmaking configuration for use with FlexMatch. A
matchmaking configuration sets out guidelines for matching players and
getting the matches into games. You can set up multiple matchmaking
configurations to handle the scenarios needed for your game. Each
matchmaking ticket (StartMatchmaking or StartMatchBackfill) specifies a
configuration for the match and provides player attributes to support
the configuration being used.
}
\details{
To create a matchmaking configuration, at a minimum you must specify the
following: configuration name; a rule set that governs how to evaluate
players and find acceptable matches; a game session queue to use when
placing a new game session for the match; and the maximum time allowed
for a matchmaking attempt.

There are two ways to track the progress of matchmaking tickets: (1)
polling ticket status with DescribeMatchmaking; or (2) receiving
notifications with Amazon Simple Notification Service (SNS). To use
notifications, you first need to set up an SNS topic to receive the
notifications, and provide the topic ARN in the matchmaking
configuration. Since notifications promise only \"best effort\"
delivery, we recommend calling \code{DescribeMatchmaking} if no notifications
are received within 30 seconds.

\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html}{Design a FlexMatch Matchmaker}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html}{Setting up Notifications for Matchmaking}

\strong{Related operations}
\itemize{
\item CreateMatchmakingConfiguration
\item DescribeMatchmakingConfigurations
\item UpdateMatchmakingConfiguration
\item DeleteMatchmakingConfiguration
\item CreateMatchmakingRuleSet
\item DescribeMatchmakingRuleSets
\item ValidateMatchmakingRuleSet
\item DeleteMatchmakingRuleSet
}
}
\section{Request syntax}{
\preformatted{svc$create_matchmaking_configuration(
  Name = "string",
  Description = "string",
  GameSessionQueueArns = list(
    "string"
  ),
  RequestTimeoutSeconds = 123,
  AcceptanceTimeoutSeconds = 123,
  AcceptanceRequired = TRUE|FALSE,
  RuleSetName = "string",
  NotificationTarget = "string",
  AdditionalPlayerCount = 123,
  CustomEventData = "string",
  GameProperties = list(
    list(
      Key = "string",
      Value = "string"
    )
  ),
  GameSessionData = "string",
  BackfillMode = "AUTOMATIC"|"MANUAL",
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
