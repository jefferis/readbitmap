Introduction
============
[![Build Status](https://travis-ci.org/jefferis/readbitmap.svg)](https://travis-ci.org/jefferis/readbitmap)

  * Simple R package to read bitmap images
  * Currently supports BMP, JPEG and PNG images
  * ... via [bmp](http://cran.r-project.org/web/packages/bmp/), [jpeg](http://cran.r-project.org/web/packages/jpeg/) and [png](http://cran.r-project.org/web/packages/png/) packages. 
  * includes function to identify images by magic values 
    (standard file extensions can also be used)
  * Includes simple test suite

Installation
============
Regular CRAN Install
--------------------
```r
install.packages('readbitmap')
```

Latest Version
--------------
```r
if (!require("devtools")) install.packages("devtools")
devtools::install_github('readbitmap','jefferis')
```

Dependencies
------------
The [jpeg](http://cran.r-project.org/web/packages/jpeg/) and 
[png](http://cran.r-project.org/web/packages/png/) R packages depend on system
libjpeg and libpng libraries.  These are pretty much always installed on unix
like systems (e.g. linux, macosx). Failing that, see:

  * http://www.libpng.org/
  * http://ijg.org/

For Windows, binary installs of the jpeg and png packages include the libjpeg
and lipng available on winbuilder and therefore no system library is required.
The winbuilder libraries are part of a collection provied by Brian Ripley at:

  http://www.stats.ox.ac.uk/pub/Rtools/goodies/multilib/

file local300.zip. 

For windows users building from source, the libraries are part of the Rtools
bundle available at:

  http://cran.r-project.org/bin/windows/Rtools/
