% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aadoc.R, R/RcppExports.R
\name{parameters}
\alias{parameters}
\alias{PREINDUSTRIAL_CO2}
\alias{Q10_RH}
\alias{BETA}
\alias{ECS}
\alias{AERO_SCALE}
\alias{VOLCANIC_SCALE}
\alias{DIFFUSIVITY}
\title{Identifiers for model parameters}
\usage{
PREINDUSTRIAL_CO2()

Q10_RH()

BETA()

ECS()

AERO_SCALE()

VOLCANIC_SCALE()

DIFFUSIVITY()
}
\description{
These identifiers correspond to settable parameters that change the model
behavior and are subject to uncertainty.  All of these can be set using the
\code{\link{SETDATA}} message type.  Changing any of these parameters will
typically invalidate the hector core's internal state; therefore, after
setting one or more of these values you should call \code{\link{reset}} before
attempting to run the model again.  This will rerun the spinup and produce a
new internally consistent state.  Attempting to run the model without resetting
first will usually produce an error (often with a message about failing to conserve
mass).
}
\section{Functions}{
\itemize{
\item \code{PREINDUSTRIAL_CO2}: Preindustrial CO2 concentration (\code{"ppmv CO2"})

\item \code{Q10_RH}: Heterotrophic respiration temperature sensitivity factor (\code{"(unitless)"})

\item \code{BETA}: CO2 fertilization factor (\code{"(unitless)"})

\item \code{ECS}: Equilibrium Climate Sensitivity (\code{"degC"})

\item \code{AERO_SCALE}: Aerosol forcing scaling factor (\code{"(unitless)"})

\item \code{VOLCANIC_SCALE}: Volcanic forcing scaling factor (\code{"(unitless)"})

\item \code{DIFFUSIVITY}: Ocean heat diffusivity (\code{"cm2/s"})
}}

\section{Note}{

Because these identifiers are provided as \code{#define} macros in the hector code,
these identifiers are provided in the R interface as function.  Therefore,
these objects must be called to use them; \emph{e.g.}, \code{GETDATA()}
instead of the more natural looking \code{GETDATA}.
}

\seealso{
Other capability identifiers: \code{\link{carboncycle}},
  \code{\link{concentrations}}, \code{\link{emissions}},
  \code{\link{forcings}}, \code{\link{haloemiss}},
  \code{\link{haloforcings}}, \code{\link{methane}},
  \code{\link{ocean}}, \code{\link{so2}},
  \code{\link{temperature}}
}
\concept{capability identifiers}
