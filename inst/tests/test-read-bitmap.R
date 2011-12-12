context("Reading images with read.image")

require(pixmap)
require(jpeg)

test_that("read.bitmap can load a bmp pretending to be a jpg", {
      jpgfile="../images/bmp-pretending-to-be.jpg"
      bmp=read.bitmap(jpgfile,IdentifyByMagic=TRUE)
      bmp2=read.bmp(jpgfile)
      expect_that(bmp,equals(bmp2))
    })
