\name{read.bitmap}
\alias{read.bitmap}
\title{Read in a bitmap image in JPEG, PNG or BMP format}
\usage{
  read.bitmap(f, channel, IdentifyByExtension = FALSE, ...)
}
\arguments{
  \item{f}{Path to image file}

  \item{channel}{Integer identifying channel to return for
  an RGB image}

  \item{IdentifyByExtension}{Identify by file extension
  only (Default FALSE)}

  \item{...}{Additional parameters passed to underlying
  image readers}
}
\value{
  return value
}
\description{
  By default uses magic byte to identify file (rather than
  the file extension) Currently uses readers in bmp, jpeg
  and png packages.
}
\seealso{
  \code{\link[jpeg]{readJPEG},\link[png]{readPNG},\link[bmp]{read.bmp}}
}

