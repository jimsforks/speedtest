% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bestest.r
\name{spd_best_servers}
\alias{spd_best_servers}
\title{Find "best" servers (latency-wise) from master server list}
\usage{
spd_best_servers(servers = NULL, config = NULL, max = 10)
}
\arguments{
\item{servers}{if not \code{NULL}, then the data frame from \code{\link[=spd_servers]{spd_servers()}}. If
\code{NULL}, then \code{\link[=spd_servers]{spd_servers()}} will be called to retrieve the server list.}

\item{config}{client configuration retrieved via \code{\link[=spd_config]{spd_config()}}. If \code{NULL} it
will be retrieved}

\item{max}{the maximum numbers of "best" servers to return. This is hard-capped
at 25 since Oookla is a free/sponsored service and if you plan on abusing
it you'll have to write your own code to do so. Default is \code{10}.}
}
\value{
server list in order of latency closeness (retrieval speed column included)
}
\description{
The input \code{servers} data frame will be truncatred to the first \code{max} and
HTTP and ICMP probe tests will be performed to determine initial retrieval
speed and latency. Not all servers respond to ICMP requests due to the way
their routers, switches or firewalls are configured.
}
\note{
the list of target servers will be truncated to the first \code{max}. \code{max} may
amount may not be returned if there were errors connecting to servers.
}
