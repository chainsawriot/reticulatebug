test_that("testbed", {
    testbed <- file.path(tempdir(), "testbed")
    dir.create(testbed)
    withr::local_envvar(RETICULATE_MINICONDA_PATH = testbed)
    reticulate::install_miniconda()
    expect_error(value <- onex(), NA)
    expect_equal(value, 1)
})
