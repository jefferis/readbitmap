# readbitmap
[![Build Status](https://travis-ci.org/jefferis/readbitmap.svg)](https://travis-ci.org/jefferis/readbitmap)
[![CRAN status](http://www.r-pkg.org/badges/version/readbitmap)](https://cran.r-project.org/package=readbitmap)

## Introduction

**readbitmap** is a simple R package that provides a function `read.bitmap` to read
standard bitmap format images, identifying them by their image header 
(or [magic value](https://en.wikipedia.org/wiki/Magic_number_(programming)#Magic_numbers_in_files))
rather than relying on the file extension.

  * See http://jefferis.github.io/readbitmap for online documentation.
  * Currently supports BMP, JPEG, PNG and TIFF images
  * ... via [bmp](https://cran.r-project.org/package=bmp), [jpeg](https://cran.r-project.org/package=jpeg), [png](https://cran.r-project.org/package=png), and
  [tiff](https://cran.r-project.org/package=tiff) packages. 
  * includes function to identify images by magic values 
    (standard file extensions can also be used)
  * Includes simple test suite

## Installation

### Regular CRAN Install

```r
install.packages('readbitmap')
```

### Latest Version

```r
if (!require("devtools")) install.packages("devtools")
devtools::install_github('jefferis/readbitmap')
```

## Dependencies
The [jpeg](https://cran.r-project.org/package=jpeg),
[png](https://cran.r-project.org/package=png), and 
[tiff](https://cran.r-project.org/package=tiff) R packages depend on system
libjpeg, libpng and libtiff libraries.  These are pretty much always installed on unix
like systems (e.g. linux, macosx). Failing that, see:

  * http://www.libpng.org/
  * http://ijg.org/
  * http://www.libtiff.org/

For Windows, binary installs of the jpeg and png packages include the libjpeg
and lipng available on winbuilder and therefore no system library is required.
The winbuilder libraries are part of a collection provied by Brian Ripley at:

  http://www.stats.ox.ac.uk/pub/Rtools/goodies/multilib/

The file is called `local323.zip` at the time of writing.

For windows users building from source, the libraries are part of the Rtools
bundle available at:

  http://cran.r-project.org/bin/windows/Rtools/
