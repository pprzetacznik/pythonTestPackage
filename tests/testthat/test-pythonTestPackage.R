context("sumx")

test_that("sample usage", {
    x <- sumx(1,2)
    expect_that(x, equals("0x3"))
})
