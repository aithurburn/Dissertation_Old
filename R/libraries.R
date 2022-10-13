library(papaja)
library(ggplot2)
library(sjPlot)
library(readr)
library(RColorBrewer)
library(tidyr)
library(grid)
library(gtable)
library(DiagrammeR)
library(lubridate)
library(DT)
library(kableExtra)
library(svgPanZoom)
library(knitr)
library(ggmcmc)
library(ggridges)
library(rstan)
library(insight)
library(shiny)
library(gridExtra)
library(ggpubr)
library(gghighlight)
library(ggtext)
library(ggcorrplot)
library(ggprism)
library(brms)
library(parameters)
library(rmarkdown)
library(ggthemes)
library(cmdstanr)
library(bayestestR)
library(psych)
library(BayesFactor)
library(bayesplot)
library(gtsummary)
library(table1)
library(huxtable)
library(correlation)
library(stringr)
library(xtable)
library(dplyr)
library(purrr)
library(readxl)
library(plotly)
library(corrplot)
library(htmlwidgets)
library(formatR)
library(tidybayes)
library(blavaan)
library(tidySEM)
library(htmlTable)
library(data.table)
library(semPlot)
options(mc.corrs = parallel::detectCores(), brms.backend = "cmdstanr")
rstan_options(auto_write = TRUE)
load("./Questions.RData")
source("./R/data_indexes.r")
theme_set(theme_apa())
sign_match <- function(m) {
  (m > 0) - (m < 0)
}



Remove <- "/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/Dissertation/"


# ```{r}
# m3_perception_interaction <- brm(mvbind(ethicalQuestionsPerceptionSum, financialQuestionsPerceptionSum, socialQuestionsPerceptionSum, healthAndSafetyQuestionsPerceptionSum, recreationalQuestionsPerceptionSum) ~ dominanceSum * Gender + prestigeSum * Gender + leadershipSum * Gender + Age,
#   data = experiment_dataset_analysis_scaled, backend = "cmdstanr", cores = parallel::detectCores(), save_pars = save_pars(all = TRUE), iter = 10000,
#   prior = c(
#     prior(normal(0, 1), coef = "Age", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(2, 1), coef = "dominanceSum", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "leadershipSum", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "prestigeSum", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "dominanceSum:Gender1", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:prestigeSum", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:leadershipSum", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "Intercept", resp = "ethicalQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "sigma", resp = "ethicalQuestionsPerceptionSum"),
#     #
#     prior(normal(0, 1), coef = "Age", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(2, 1), coef = "dominanceSum", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "leadershipSum", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "prestigeSum", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "dominanceSum:Gender1", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:prestigeSum", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:leadershipSum", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "Intercept", resp = "financialQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "sigma", resp = "financialQuestionsPerceptionSum"),
#     #
#     prior(normal(0, 1), coef = "Age", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(2, 1), coef = "dominanceSum", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "leadershipSum", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "prestigeSum", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "dominanceSum:Gender1", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:prestigeSum", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:leadershipSum", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "Intercept", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "sigma", resp = "healthAndSafetyQuestionsPerceptionSum"),
#     #
#     prior(normal(0, 1), coef = "Age", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(2, 1), coef = "dominanceSum", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "leadershipSum", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "prestigeSum", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "dominanceSum:Gender1", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:prestigeSum", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:leadershipSum", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "Intercept", resp = "recreationalQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "sigma", resp = "recreationalQuestionsPerceptionSum"),
#     #
#     prior(normal(0, 1), coef = "Age", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(2, 1), coef = "dominanceSum", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "leadershipSum", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "prestigeSum", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "dominanceSum:Gender1", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:prestigeSum", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), coef = "Gender1:leadershipSum", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "Intercept", resp = "socialQuestionsPerceptionSum"),
#     prior(normal(0, 1), class = "sigma", resp = "socialQuestionsPerceptionSum")
#   )
# )



# saveRDS(m3_perception_interaction, "/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/Dissertation/RDS_Files/m3_perception_interaction_exp_1.rds")
# ```


# ```{r}
# summary(m3_perception_interaction)
# ```
