\name{image_type}
\alias{image_type}
\title{Identify the type of an image using the magic value at the start of the file}
\usage{
  image_type(source, Verbose = FALSE)
}
\arguments{
  \item{source}{Path to file or connection}

  \item{Verbose}{Whether to write a message to console on
  failure (Default F)}
}
\value{
  character value corresponding to standard file extension
  of image format (i.e. jpg, png, bmp) or NA_character_ on
  failure.
}
\description{
  Currently works for png, jpeg and BMP images. Will seek
  to start of file if passed a connection. For details of
  magic values for files, see e.g.
  http://en.wikipedia.org/wiki/Magic_number_(programming)#Magic_numbers_in_files
}

