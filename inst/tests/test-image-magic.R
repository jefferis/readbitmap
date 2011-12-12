# Verify that image magics can successfully be identified 
# 
# Author: jefferis
###############################################################################
context("Verify that image magics can be identified")

test_that("image_type identifies bmps", {
      expect_that(image_type("../images/real.bmp"),
          equals("bmp"))
      expect_that(image_type("../images/bmp-pretending-to-be.jpg"),
          equals('bmp'))
    })

test_that("image_type returns NA for pnms", {
      expect_that(image_type("../images/real.pnm"),
          equals(NA))
    })

test_that("image_type identifies pngs", {
      expect_that(image_type("../images/real.png"),
          equals('png'))
      expect_that(image_type("../images/png-pretending-to-be.bmp"),
          equals('png'))
    })

test_that("image_type identifies jpgs", {
      expect_that(image_type("../images/real.jpg"),
          equals('jpg'))
    })
