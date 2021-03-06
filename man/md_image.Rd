% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/md-link.R
\name{md_image}
\alias{md_image}
\title{Markdown image links}
\usage{
md_image(url, alt = "", title = NULL, ..., .name = FALSE)
}
\arguments{
\item{url}{A character vector of link destination (URL) strings.}

\item{alt}{A character vector of \href{https://w.wiki/GHn}{alternative text} that
can be used to refer to an image.}

\item{title}{The optional title of the link.}

\item{...}{A sequence of \code{alt = "/url"} named vector pairs. If any such
pairs are provided, \code{.name} will be considered \code{TRUE}.}

\item{.name}{logical; if \code{TRUE}, the pairs in \code{...} will be used instead of
any values supplied to \code{x} and \code{url}.}
}
\value{
A \code{glue} vector of collapsed display text and associated URLs.

A \code{glue} vector of collapsed alternative text and associated URLs.
}
\description{
Take character vectors of alternative text, image link destinations, and
optional titles and return single glue vector of valid markdown inline image
links. This inline is rendered as the \verb{<img>} HTML tag. Note that the
expected arguments of \code{md_image()} are reversed from \code{md_link()}
}
\details{
Syntax for images is like the syntax for links, with one difference. Instead
of link text, we have an image description. The rules for this are the same
as for link text, except that (a) an image description starts with \verb{![}
rather than \code{[}, and (b) an image description may contain links. An image
description has inline elements as its contents. When an image is rendered to
HTML, this is standardly used as the image’s \code{alt} attribute.
}
\examples{
if (file.exists("man/figures/logo.png")) md_image("man/figures/logo.png")
md_image("http://hexb.in/hexagons/eff.png")
md_image(EFF = "http://hexb.in/hexagons/eff.png")
md_image("http://hexb.in/hexagons/eff.png", "EFF Hex Sticker", "Logo")
}
\seealso{
Other inline functions: 
\code{\link{md_autolink}()},
\code{\link{md_bold}()},
\code{\link{md_code}()},
\code{\link{md_convert}()},
\code{\link{md_disallow}()},
\code{\link{md_escape}()},
\code{\link{md_hardline}()},
\code{\link{md_issue}()},
\code{\link{md_italic}()},
\code{\link{md_link}()},
\code{\link{md_softline}()},
\code{\link{md_strike}()},
\code{\link{md_text}()}
}
\concept{inline functions}
