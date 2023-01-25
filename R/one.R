.initialize_conda <- function(envname, verbose = FALSE) {
    if (is.null(getOption('python_init'))) {
        reticulate::use_miniconda("base")
        options('python_init' = TRUE)
    }
}

onex <- function() {
    .initialize_conda()
    reticulate::source_python(system.file("test.py", package = "reticulatebug"))
    one()
}
