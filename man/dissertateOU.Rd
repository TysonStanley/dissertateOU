% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dissertateOU.R
\name{dissertateOU}
\alias{dissertateOU}
\title{dissertateOU format.}
\usage{
dissertateOU(..., highlight = NULL, citation_package = "none")
}
\arguments{
\item{...}{Additional arguments to \code{rmarkdown::pdf_document}}

\item{highlight}{Syntax highlighting style. Supported styles include
"default", "tango", "pygments", "kate", "monochrome", "espresso",
"zenburn", and "haddock". Pass \code{NULL} to prevent syntax highlighting.}

\item{citation_package}{The LaTeX package to process citations, \code{natbib}
or \code{biblatex}. Use \code{default} if neither package is to be used,
which means citations will be processed via the command
\command{pandoc-citeproc}.}
}
\value{
R Markdown output format to pass to
  \code{\link[rmarkdown:render]{render}}
}
\description{
Format for creating dissertations at Utah State University. It has been approved by the graduate school.
}
\details{
Possible arguments for the YAML header are:
\itemize{
  \item \code{title} title of the dissertation
  \item \code{author} list of authors, containing \code{name} and \code{num}
  \item \code{year} year of defense
  \item \code{degree} degree earned (e.g. "Doctor of Philosophy")
  \item \code{field} the field the degree is awarded in
  \item \code{academicunit} the academic unit awarding the degree
  \item \code{thesis} whether this is a thesis or dissertation (true means thesis)
  \item \code{chair} name of the defense committee chairperson
  \item \code{committee2} name of second committee member
  \item \code{committee3} name of third committee member
  \item \code{committee4} name of fourth committee member
  \item \code{committee5} name of fifth committee member (if left blank, committee4 will be ignored and the cover page will be formatted as a masters thesis)
  \item \code{bibliography} BibTeX \code{.bib} file name
  \item \code{csl} the .csl citation style file name
  \item \code{header-includes}: custom additions to the header, before the \code{\\begin\{document\}} statement
  \item \code{include-after}: for including additional LaTeX code before the \code{\\end\{document\}} statement
  }
}
\examples{

\dontrun{
library(rmarkdown)
draft("MyArticle.Rmd", template = "dissertateOU", package = "dissertateOU")
}

}
