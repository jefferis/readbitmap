\name{image.magic}
\alias{image.magic}
\title{Identify the type of an image using an initial magic value}
\usage{
  image.magic(source, Verbose = FALSE)
}
\arguments{
  \item{source}{Path to file or connection}

  \item{Verbose}{Whether to write a message to console on
  failure (Default F)}
}
\value{
  character value corresponding to standard file extension
  of image format (i.e. jpg, png, bmp)
}
\description{
  Will seek to start of file Currently works for png, jpeg
  and BMP images.
}

