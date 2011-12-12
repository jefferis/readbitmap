\name{read.bitmap}
\alias{read.bitmap}
\title{Read in a bitmap image in JPEG, PNG or BMP format}
\usage{
  read.bitmap(f, channel, IdentifyByMagic = FALSE)
}
\arguments{
  \item{f}{Path to image file}

  \item{channel}{Channel to return for RGB image}

  \item{IdentifyByMagic}{Identify by magic bytes at start
  of file.}
}
\value{
  return value
}
\description{
  Read in a bitmap image in JPEG, PNG or BMP format
}
\seealso{
  \code{\link[jpeg]{readJPEG}},\code{\link[png]{readPNG}}
}

