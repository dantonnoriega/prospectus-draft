getOutputFormat <- function() {
  knitr::opts_knit$get("rmarkdown.pandoc.to")
}
