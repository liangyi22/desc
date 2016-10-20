
context("URL")

test_that("get, set, etc. urls", {
  desc <- description$new("D2")
  expect_identical(
    desc$get_urls(), "https://github.com/klutometis/roxygen"
  )

  desc$set_urls(c("https://foo.bar", "http://x.y"))
  expect_identical(desc$get_urls(), c("https://foo.bar", "http://x.y"))

  desc$add_urls("http://another.one")
  expect_identical(
    desc$get_urls(),
    c("https://foo.bar", "http://x.y", "http://another.one")
  )

  desc$del_urls("^http://")
  expect_identical(desc$get_urls(), "https://foo.bar")

  desc$clear_urls()
  expect_identical(desc$get_urls(), character())

  desc$add_urls("http://another.one")
  expect_identical(desc$get_urls(), "http://another.one")
})