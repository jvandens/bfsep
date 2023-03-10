% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/infiltration.R
\name{infiltration}
\alias{infiltration}
\title{Calculate infiltration}
\usage{
infiltration(lb, ws, ks, a, zs, i)
}
\arguments{
\item{lb}{BASIN LENGTH}

\item{ws}{WIDTH OF SURACE ZONE (ONE SIDE OF CHANNEL)}

\item{ks}{HYDRAULIC CONDUCTIVITY OF SURFACE}

\item{a}{HYDRAULIC GRADIENT FOR SURFACE (CONSTANT)}

\item{zs}{SATURATED THICKNESS OF SURFACE}

\item{i}{IMPULSE DEPTH}
}
\value{
a numeric scalar
}
\description{
\code{infiltration()} calculates portion of I that infiltrates into the surface reservoir, F
}
\examples{
infiltration(1,2,3,4,5,6)
}
