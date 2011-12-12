context("Reading images with read.bitmap")

require(pixmap)
require(jpeg)

test_that("read.bitmap can load real bmp, jpg, png files", {
      imgfile="../images/real.bmp"
      expect_that(read.bitmap(imgfile),
          equals(read.bmp(imgfile)),info='bmp problem')
      imgfile="../images/real.jpg"
      expect_that(read.bitmap(imgfile),
          equals(readJPEG(imgfile)),info='jpg problem')
      imgfile="../images/real.png"
      expect_that(read.bitmap(imgfile),
          equals(readPNG(imgfile)),info='png problem')
    })

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

test_that("read.bitmap errors out loading a pnm file (not implemented)", {
      imgfile="../images/real.pnm"
      expect_that(read.bitmap(imgfile),throws_error())
      expect_that(read.bitmap(imgfile, IdentifyByExtension = TRUE),throws_error())
    })

test_that("read.bitmap can load a real jpeg identified by extension", {
      jpgfile="../images/real.jpg"
      expect_that(read.bitmap(jpgfile, IdentifyByExtension = TRUE),
          equals(readJPEG(jpgfile)))
    })

test_that("read.bitmap can load a real png identified by extension", {
      pngfile="../images/real.png"
      expect_that(read.bitmap(pngfile, IdentifyByExtension = TRUE),
          equals(readPNG(pngfile)))
    })

test_that("read.bitmap can load a real bmp identified by extension", {
      imgfile="../images/real.bmp"
      expect_that(read.bitmap(imgfile, IdentifyByExtension = TRUE),
          equals(read.bmp(imgfile)))
    })
