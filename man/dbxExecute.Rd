% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/execute.R
\name{dbxExecute}
\alias{dbxExecute}
\title{Execute a statement}
\usage{
dbxExecute(conn, statement, params = NULL)
}
\arguments{
\item{conn}{A DBIConnection object}

\item{statement}{The SQL statement to use}

\item{params}{Parameters to bind}
}
\description{
Execute a statement
}
\examples{
db <- dbxConnect(adapter="sqlite", dbname=":memory:")
DBI::dbCreateTable(db, "forecasts", data.frame(id=1:3, temperature=20:22))

dbxExecute(db, "UPDATE forecasts SET temperature = 20")

dbxExecute(db, "UPDATE forecasts SET temperature = ?", params=list(20))

dbxExecute(db, "UPDATE forecasts SET temperature = ? WHERE id IN (?)", params=list(20, 1:3))
}
