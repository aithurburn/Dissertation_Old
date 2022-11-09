library(BayesFactor)
library(bayesplot)
library(bayestestR)
library(blavaan)
library(brms)
library(cmdstanr)
library(correlation)
library(corrplot)
library(data.table)
library(DiagrammeR)
library(dplyr)
library(DT)
library(formatR)
library(ggcorrplot)
library(gghighlight)
library(ggmcmc)
library(ggplot2)
library(ggprism)
library(ggpubr)
library(ggridges)
library(ggtext)
library(ggthemes)
library(grid)
library(gridExtra)
library(gtable)
library(gtsummary)
library(htmlTable)
library(htmlwidgets)
library(huxtable)
library(insight)
library(kableExtra)
library(knitr)
library(lubridate)
library(papaja)
library(parameters)
library(plotly)
library(psych)
library(purrr)
library(RColorBrewer)
library(readr)
library(readxl)
library(rmarkdown)
library(rstan)
library(semPlot)
library(shiny)
library(sjPlot)
library(stringi)
library(stringr)
library(svgPanZoom)
library(table1)
library(tidybayes)
library(tidyr)
library(tidySEM)
library(xtable)
options(mc.corrs = parallel::detectCores(), brms.backend = "cmdstanr")
rstan_options(auto_write = TRUE)
load("./Questions.RData")
source("./R/Chapter_2_index.r")
theme_set(theme_apa())
sign_match <- function(m) {
  (m > 0) - (m < 0)
}
Remove <- "/Users/andrew/Documents/1_UoE/Research/PhD/Writing/Dissertation"

if (interactive() && Sys.getenv("RSTUDIO") == "") {
  Sys.setenv(TERM_PROGRAM = "vscode")
  source(file.path(Sys.getenv(
    if (.Platform$OS.type == "windows") "USERPROFILE" else "HOME"
  ), ".vscode-R", "init.R"))
}
options(
  radian.auto_match = TRUE,
  radian.auto_indentation = TRUE,
  radian.complete_while_typing = TRUE,
  radian.completion_adding_spaces_around_equals = TRUE,
  radian.auto_suggest = TRUE,
  radian.color_scheme = "monokai",
  radian.editing_mode = "vi",
  radian.insert_new_line = TRUE,
  radian.global_history_file = "~/.radian_history",
  radian.prompt = paste0(basename(getwd()), " > "),
  lintr::linters_with_defaults(
    line_length_linter = line_length_linter(300L),
    object_length_linter = NULL,
    object_name_linter = NULL,
    came_case_linter = NULL,
    snake_case_linter = NULL
  )
)