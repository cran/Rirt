% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R, R/model_3pl.R
\name{model_3pl_prob}
\alias{model_3pl_prob}
\alias{model_3pl_info}
\alias{model_3pl}
\alias{model_3pl_lh}
\alias{model_3pl_rescale}
\alias{model_3pl_gendata}
\alias{model_3pl_plot}
\alias{model_3pl_plot_loglh}
\title{3-parameter-logistic model}
\usage{
model_3pl_prob(t, a, b, c, D = 1.702)

model_3pl_info(t, a, b, c, D = 1.702)

model_3pl_lh(u, t, a, b, c, D = 1.702, log = FALSE)

model_3pl_rescale(t, a, b, c, scale = c("t", "b"), mean = 0, sd = 1)

model_3pl_gendata(n_p, n_i, t = NULL, a = NULL, b = NULL, c = NULL,
  D = 1.702, t_dist = c(0, 1), a_dist = c(-0.1, 0.2), b_dist = c(0,
  0.7), c_dist = c(5, 46), t_bounds = c(-3, 3), a_bounds = c(0.01,
  2.5), b_bounds = c(-3, 3), c_bounds = c(0, 0.5), missing = NULL,
  ...)

model_3pl_plot(a, b, c, D = 1.702, type = c("prob", "info"),
  total = FALSE, xaxis = seq(-4, 4, 0.1))

model_3pl_plot_loglh(u, a, b, c, D = 1.702, xaxis = seq(-4, 4, 0.1),
  verbose = FALSE)
}
\arguments{
\item{t}{ability parameters, 1d vector}

\item{a}{discrimination parameters, 1d vector}

\item{b}{difficulty parameters, 1d vector}

\item{c}{guessing parameters, 1d vector}

\item{D}{the scaling constant, default=1.702}

\item{u}{observed responses, 2d matrix}

\item{log}{True to return log-likelihood}

\item{scale}{the scale, 't' for theta or 'b' for b-parameters}

\item{mean}{the mean of the new scale}

\item{sd}{the standard deviation of the new scale}

\item{n_p}{the number of people to be generated}

\item{n_i}{the number of items to be generated}

\item{t_dist}{parameters of the normal distribution used to generate t-parameters}

\item{a_dist}{parameters of the lognormal distribution used to generate a-parameters}

\item{b_dist}{parameters of the normal distribution used to generate b-parameters}

\item{c_dist}{parameters of the beta distribution used to generate c-parameters}

\item{t_bounds}{bounds of the ability parameters}

\item{a_bounds}{bounds of the discrimination parameters}

\item{b_bounds}{bounds of the difficulty parameters}

\item{c_bounds}{bounds of the guessing parameters}

\item{missing}{the proportion or number of missing responses}

\item{...}{additional arguments}

\item{type}{the type of plot: 'prob' for item characteristic curve (ICC) and 
'info' for item information function curve (IIFC)}

\item{total}{TRUE to sum values over items}

\item{xaxis}{the values of x-axis}

\item{verbose}{TRUE to print rough maximum likelihood estimates}
}
\value{
\code{model_3pl_prob} returns the resulting probabilities in a matrix

\code{model_3pl_info} returns the resulting information in a matrix

\code{model_3pl_lh} returns the resulting likelihood in a matrix

\code{model_3pl_rescale} returns t, a, b, c parameters on the new scale

\code{model_3pl_gendata} returns the generated response matrix and parameters in a list

\code{model_3pl_plot} returns a \code{ggplot} object

\code{model_3pl_plot_loglh} returns a \code{ggplot} object
}
\description{
Common computations and operations for the 3PL model
}
\examples{
with(model_3pl_gendata(10, 5), model_3pl_prob(t, a, b, c))
with(model_3pl_gendata(10, 5), model_3pl_info(t, a, b, c))
with(model_3pl_gendata(10, 5), model_3pl_lh(u, t, a, b, c))
model_3pl_gendata(10, 5)
model_3pl_gendata(10, 5, a=1, c=0, missing=.1)
with(model_3pl_gendata(10, 5), model_3pl_plot(a, b, c, type="prob"))
with(model_3pl_gendata(10, 5), model_3pl_plot(a, b, c, type="info", total=TRUE))
with(model_3pl_gendata(5, 50), model_3pl_plot_loglh(u, a, b, c))
}
