% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RCodes.R
\name{bss.dt.bs}
\alias{bss.dt.bs}
\title{Bayesian sample size in a decision-theoretic approach under the Birbaum-Saunders/inverse-gamma model.}
\usage{
bss.dt.bs(loss = "L1", a1 = 2.5, b1 = 100, a2 = 2.5, 
                b2 = 100, cost=0.01, rho = 0.05, gam = 0.25,
                nmax = 1E2, nlag = 1E1, nrep = 1E2, lrep = 1E2,
                npost = 1E2, plots = FALSE, prints = TRUE, ...)
}
\arguments{
\item{loss}{L1 (Absolute loss), L2 (Quadratic loss), L3 (Weighted loss) and L4 (Half loss) representing the loss function used. The default is absolute loss function.}

\item{a1}{hyperparameter of the prior distribution for beta. The default is 3.}

\item{b1}{hyperparameter of the prior distribution for beta. The default is 2.}

\item{a2}{hyperparameter of the prior distribution for \code{alpha^2}. The default is 3.}

\item{b2}{hyperparameter of the prior distribution for \code{alpha^2}. The default is 2.}

\item{cost}{a positive real number representing the cost of colect one observation. The default is 0.010.}

\item{rho}{a number in (0, 1). The probability of the credible interval is \eqn{1-rho}. Only
for loss function L3. The default is 0.95.}

\item{gam}{a positive real number connected with the credible interval when using loss
function L4. The default is 0.5.}

\item{nmax}{a positive integer representing the maximum number for compute the Bayes risk.
Default is 100.}

\item{nlag}{a positive integer representing the lag in the n's used to compute the Bayes risk. Default is 10.}

\item{nrep}{a positive integer representing the number of samples taken for each \eqn{n}.}

\item{lrep}{a positive integer representing the number of samples taken for \eqn{S_n}. Default is 100.}

\item{npost}{a positive integer representing the number of values to draw from the posterior distribution of the mean. Default is 100.}

\item{...}{Currently ignored.}

\item{plot}{Boolean. If TRUE (default) it plot the estimated Bayes risks and the fitted curve.}
}
\value{
An integer representing the optimal sample size.
}
\description{
A function to obtain the optimal Bayesian sample size via a decision-theoretic approach for estimating the mean of the Birbaum-Saunders distribution.
}
\examples{
 
bss.dt.bs(loss="L1",plot=TRUE)

}
\references{
Costa, E.G., Paulino, C.D., and Singer, J. M. (2019). Sample size determination to evaluate ballast water standards: a decision-theoretic approach. Tech. rept. University of Sao Paulo.
}
\author{
Eliardo G. Costa \email{eliardocosta@ccet.ufrn.br} and Manoel Santos-Neto \email{manoel.ferreira@ufcg.edu.br}
}
