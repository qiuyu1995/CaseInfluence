% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{Compute_CaseInflu_nonsmooth}
\alias{Compute_CaseInflu_nonsmooth}
\title{Case influence assessment for L2 penalized nonsmooth models}
\usage{
Compute_CaseInflu_nonsmooth(
  X,
  Y,
  lam,
  class = "svm",
  tau = 0.5,
  influence_measure = "FMD"
)
}
\arguments{
\item{X}{A n by p feature matrix}

\item{Y}{A n by 1 response vector}

\item{lam}{Regularization parameter for L2 penalty}

\item{class}{Specify the problem class with default value "quantile". Use "quantile" for quantile regression, and "svm" for support vector machine}

\item{tau}{The parameter for quantile regression, ranging between 0 and 1. No need to specify the value of it if choose class = "svm"}

\item{influence_measure}{Specify the influence measure for computing global influence. For classification problem, "FMD" represents
functional margin difference and "BDLD" represents Binomial deviance loss difference. The default is "FMD". For regression problem, no
need to specify the influence_measure}
}
\value{
global_influence Global influence for each case

cook_distance Cook's distance for each case
}
\description{
Compute the global influence, which is based on case influence graph, for each case under L2 regularized nonsmooth
models, including quantile regression and svm. To compute the case influence graph for each case, we need to solve a solution path problem.
In our algorithm, the exact path can be computed and it is piece-wise linear.
}
