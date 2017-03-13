library(tidyverse)
library(magrittr)

DD <- function() {
  # make example plots
  df <- data_frame(month = rep(1:12,3),
       dufb = c(rep("no",12), rep("counterfactual",12), rep("yes",12)))

  # create data
  shock <- function(x, c=0, m=0) x + c + rnorm(1, m, 1)

  set.seed(1993)
  y1 <- runif(12, 4, 12)
  y1 <- rev(y1)
  y2 <- sapply(y1, shock) # counterfactual
  y3 <- c(y2[1:8], sapply(y1[9:12], shock, c = 3, m = 1))
  d <- y2[8] - y1[8]
  y2 <- c(rep(NA,7), y1[8:12] + d)
  df %<>%
    mutate(dollars = c(y1,y2,y3))

  # plot
  clrs <- scales::hue_pal()(2)

  ggplot(data = df, aes(x = month, y = dollars)) +
    geom_line(aes(linetype = dufb, color = dufb)) +
    scale_linetype_manual(values = c("no" = 1, "yes" = 1, "counterfactual" = 3)) +
    scale_color_manual(values = c("no" = clrs[1], "yes" = clrs[2], "counterfactual" = clrs[2])) +
    scale_x_continuous(breaks = seq(0,13, by=2)) +
    theme_classic() +
    theme(legend.position="bottom") +
    geom_vline(xintercept = 8, linetype = 2, color = 'gray') +
    geom_text(aes(8, 16, label = ' post', hjust = -.2), size = 3, color = 'gray') +
    geom_text(aes(8, 16, label = 'pre ', hjust = 1.2), size = 3, color = 'gray')

}


DC <- function() {
  set.seed(1985)
  y1 <- purrr::map_dbl(1 + rnorm(300, 1,2), round) %>%
    data_frame(Apps = ., DC = "No")
  y2 <- purrr::map_dbl(1 + rnorm(300, 2,2), round) %>%
    data_frame(Apps = ., DC = "Yes")
  d <- bind_rows(y1, y2) %>%
      dplyr::mutate(Apps = replace(Apps, Apps < 0, NA))

  clrs <- scales::hue_pal()(2)
  ns <- d %>%
    na.omit() %>%
    group_by(DC) %>%
    summarise(n = n())

  n1 <- ns$n[1]
  n2 <- ns$n[2]


  ggplot2::ggplot(data = d, aes(x=Apps, fill = DC, alpha = DC)) +
    scale_alpha_manual(values = c(.8, .5)) +
    geom_histogram(position = 'dodge', binwidth = .5) +
    # stat_function(fun = function(x, mean, sd, n, lower, bw){
    #     msm::dtnorm(x = x, mean = mean, sd = sd, lower = lower) * n * bw
    #   },
    #   args = list(mean = 2, sd = 2, lower = 0, n = n1 + n2, bw = .5),
    #   color = clrs[1], size = 3, alpha = .8) +
    # stat_function(fun = function(x, mean, sd, n, lower, bw){
    #     msm::dtnorm(x = x, mean = mean, sd = sd, lower = lower) * n * bw
    #   },
    #   args = list(mean = 3, sd = 2, lower = 0, n = n1 + n2, bw = .5),
    #   color = clrs[2], size = 3, alpha = .5) +
    theme_clean() +
    labs(x = expression(paste("Observed Applications in ",
              group("(",list(0,T),"]"))),
      y = "Count", title = "Observed Social Service Applications (T years since birth)")
}

OFF <- function() {

  z <- function(x) -.01*(x-7)*(x-32) # adjustment function
  set.seed(1985)
  dr <- purrr::map(1:30, ~data_frame(t=.x, y=rnorm(12,4,2), h="H0")) %>%
    dplyr::bind_rows()
  dnr <- purrr::map(1:30, ~data_frame(t=.x, y=rnorm(12,4,2), h="H1")) %>%
    dplyr::bind_rows() %>%
    mutate(y = if_else(t %in% c(15:32), y + z(t), y))
  d <- bind_rows(dr, dnr) %>%
    dplyr::mutate(y = replace(y, y < 0, 0)) %>%
    dplyr::mutate(y = round(y))
  ggplot2::ggplot(data = d, aes(x=t,y=y,color = h)) +
    geom_jitter(size=1, width = .05) +
    scale_size_manual(values=c(2,3)) +
    geom_smooth() +
    theme_clean() +
    labs(y = "Requests", x = "Days since Transfer", title = "Pooled Request by Day since Transfer (12 Months)")

}
