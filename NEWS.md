# readbitmap 0.1.5

* Support for reading TIFF images thanks to Derek Ogle (#4, #3)
* read.bitmap now reads ARGB bmp images into RGBA array (#5)
  thanks to Simon Bartheleme (@dahtah).

# readbitmap 0.1-4

* examples for image_type, read.bitmap
* some tidying of DESCRIPTION in response to comments from Brian Ripley
* Add an INSTALL file with improved details about installing libpng/libjpeg 
  system libraries when necessary (almost never)

# readbitmap 0.1-3

* Import rather than depend on bmp/jpeg/png packages
* (and in so doing fix check error due to missing imports)
* clarify system requirements in DESCRIPTION
* add basic package docs
* dev: move tests to new location to make their installation optional
* dev: upgrade to roxygen2 v4

# readbitmap 0.1-2

* Update README.md for CRAN

# readbitmap 0.1-1

* Give appropriate error message when trying to read unsupported file.

# readbitmap 0.1

* first version on CRAN
