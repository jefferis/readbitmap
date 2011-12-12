Introduction
============
  * Simple R package to read bitmap images
  * Currently supports BMP, JPEG and PNG images
  * ... via [bmp][packbmp], [jpeg][packjpeg] and [png][packpng] packages. 
  * includes function to identify images by magic values 
    (standard file extensions can also be used)
  * Includes simple test suite

Installation
============
Regular CRAN Install
--------------------
    install.packages('readbitmap')

Latest Version
--------------
    install.packages('devtools')
    library(devtools)
    install_github('readbitmap','jefferis')
Dependencies
------------
[jpeg][packjpeg] and [png][packpng] packages depend on system libjpeg and libpng libraries. 
These are normally installed on unix like systems (e.g. linux, macosx). 
For Windows, Simon Urbanek provides library binaries at:

  * http://www.rforge.net/jpeg/files/
  * http://www.rforge.net/png/files/

  [packjpeg]: (http://cran.r-project.org/web/packages/jpeg/)
  [packbmp]: (http://cran.r-project.org/web/packages/bmp/)
  [packpng]: (http://cran.r-project.org/web/packages/png/)
