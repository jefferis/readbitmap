context("Reading images with read.image")

require(pixmap)
require(jpeg)

test_that("read.bitmap can load a bmp pretending to be a jpg", {
      jpgfile="../images/bmp-pretending-to-be.jpg"
      bmp=read.bitmap(jpgfile)
      bmp2=read.bmp(jpgfile)
      expect_that(bmp,equals(bmp2))
    })

test_that("read.bitmap errors out loading fake bmp when identifying by extension", {
      jpgfile="../images/bmp-pretending-to-be.jpg"
      expect_that(read.bitmap(jpgfile, IdentifyByExtension = TRUE),throws_error())
    })

test_that("read.bitmap can load a read jpeg identified by extension", {
      jpgfile="../images/real.jpg"
      expect_that(read.bitmap(jpgfile, IdentifyByExtension = TRUE),
          equals(readJPEG(jpgfile)))
    })

test_that("read.bitmap can load a read png identified by extension", {
      pngfile="../images/real.png"
      expect_that(read.bitmap(pngfile, IdentifyByExtension = TRUE),
          equals(readPNG(pngfile)))
    })

test_that("read.bitmap can load a read bmp identified by extension", {
      imgfile="../images/real.bmp"
      expect_that(read.bitmap(imgfile, IdentifyByExtension = TRUE),
          equals(read.bmp(imgfile)))
    })
