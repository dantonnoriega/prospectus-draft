# packages
library(tidyverse)
library(xtable)
devtools::load_all('~/GitHub/spartannash')

# functions
getOutputFormat <- function() {
  knitr::opts_knit$get("rmarkdown.pandoc.to")
}

printTable <- function(tbl, format = getOutputFormat()) {
    cap <- attr(tbl, "caption")
    if(format == 'latex') print(tbl, type = format, comment = FALSE) else knitr::kable(tbl, caption=cap)
}