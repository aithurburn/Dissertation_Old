setwd("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/Experiments/Experiment 1/Experiment_2/")

library("papaja")
r_refs("r-references.bib")
analysisDF <- read.csv("analysisDF.csv")
dftime <- read.csv("Experiment2Datasetclean.csv")
experimenttwoDS <- read.csv("Experiment2Dataset.csv")
dftime <- dftime[-1:-2, ]
library(lubridate)
averagecompletion <- mean(as.numeric(dftime$Duration..in.seconds.))
stdvDF <- sd(as.numeric(dftime$Duration..in.seconds.))
newDF <- read.csv("newDF2.csv")
options(digits = 2)



library("languageserver")
library("DT")
library("ggplot2")
library("ggthemes")
library("tidyr")
library("papaja")
library("brms")
library("rstan")
library(stringr)
library("bayestestR")
library("sjPlot")
library("psych")
library("BayesFactor")
library("bayesplot")
library("kableExtra")
library("ggcorrplot")
library("ggprism")
options(mc.corrs = parallel::detectCores())
rstan_options(auto_write = TRUE)
options(control = list(adapt_delta = 0.99999))
options(brms.backend = "cmdstanr")

bayesplot::bayesplot_theme_set(theme_apa())
locfunc <- function(data, to) {
  which(colnames({{ data }}) == {{ to }})
}

lfunc <- function(dataset, to, from) {
  loc1 <- which(colnames({{ dataset }}) == {{ to }})
  loc2 <- which(colnames({{ dataset }}) == {{ from }})
  length({{ dataset }}[loc1:loc2])
}
theme_set(theme_apa(base_size = 12))
experimenttwoDStime_exploratory_experiment <- read.csv("Experiment2Datasetclean.csv")
experimenttwoDS_exploratory_experiment <- read.csv("Experiment2DatasetcleannoTime.csv")
df1_exploratory_experiment <- read.csv("df1.csv")
corrtable_exploratory_experiment <- readRDS("corrtable.rds")
m4_exploratory_experiment <- readRDS("m4.rds")
m5_exploratory_experiment <- readRDS("m5.rds")
m5gen_exploratory_experiment <- readRDS("m5gen.rds")
m7_exploratory_experiment <- readRDS("m7.rds")
m8_exploratory_experiment <- readRDS("m8.rds")
m8gen_exploratory_experiment <- readRDS("m8gen.rds")
m8Age_exploratory_experiment <- readRDS("m8Age.rds")
dm0_exploratory_experiment <- readRDS("dm0.rds")
dm1_exploratory_experiment <- readRDS("dm1.rds")
dm2_exploratory_experiment <- readRDS("dm2.rds")
dm3_exploratory_experiment <- readRDS("dm3.rds")
dm4_exploratory_experiment <- readRDS("dm4.rds")
dm5_exploratory_experiment <- readRDS("dm5.rds")
bayes.dm5_exploratory_experiment <- readRDS("bayes.dm5.rds")
corr.mod_exploratory_experiment <- readRDS("corrmod.rds")
demographictable_exploratory_experiment <- readRDS("demographictable.rds")
m2prior_exploratory_experiment <- readRDS("m2prior.rds")
dopl1prior_exploratory_experiment <- readRDS("m4prior.rds")
m7prior_exploratory_experiment <- readRDS("m7prior.rds")
m1intPrior_exploratory_experiment <- readRDS("m1intPrior.rds")
analysisDF_exploratory_experiment <- read.csv("analysisDF.csv")



demographicQuestions <- c("Age", "Gender", "Ethnicity", "Eth.ori", "Edu")
sjsQuestions <- c("SJS.1", "SJS.2", "SJS.3")
srpsQuestions <- c(
  "SRPS.1", "SRPS.2", "SRPS.3", "SRPS.4", "SRPS.5", "SRPS.6", "SRPS.7",
  "SRPS.8", "SRPS.9", "SRPS.10", "SRPS.11", "SRPS.12", "SRPS.13", "SRPS.14",
  "SRPS.15", "SRPS.17", "SRPS.18", "SRPS.19", "SRPS.20", "SRPS.21", "SRPS.22",
  "SRPS.23", "SRPS.24"
)

srps.rcQuestions <- c(
  "SRPS.1", "SRPS.2", "SRPS.3", "SRPS.4", "SRPS.5", "SRPS.6", "SRPS.7",
  "SRPS.8", "SRPS.9", "SRPS.10", "SRPS.11", "SRPS.12", "SRPS.13", "SRPS.14",
  "SRPS.15"
)

srps.dmQuestions <- c(
  "SRPS.17", "SRPS.18", "SRPS.19", "SRPS.20", "SRPS.21", "SRPS.22", "SRPS.23",
  "SRPS.24"
)

ssesQuestions <- c(
  "SSES.1", "SSES.2", "SSES.3", "SSES.4", "SSES.5", "SSES.6", "SSES.7",
  "SSES.8", "SSES.9", "SSES.10"
)


spiteQuestions <- c(
  "Spite.1", "Spite.2", "Spite.3", "Spite.4", "Spite.5", "Spite.6", "Spite.7",
  "Spite.8", "Spite.9", "Spite.10", "Spite.11", "Spite.12", "Spite.13",
  "Spite.14", "Spite.15", "Spite.16"
)


Vign.Sex <- c("Vign.1", "Vign.2", "Vign.4", "Vign.7", "Vign.10")
Vign.noSex <- c("Vign.3", "Vign.5", "Vign.6", "Vign.8", "Vign.9")
Vign.Overall <- c(
  "Vign.1", "Vign.2", "Vign.4", "Vign.7", "Vign.10", "Vign.3", "Vign.5",
  "Vign.6", "Vign.8", "Vign.9"
)

Real.Sex <- c("Real.1", "Real.2", "Real.4", "Real.7", "Real.10")
Real.noSex <- c("Real.3", "Real.5", "Real.6", "Real.8", "Real.9")
Real.Overall <- c(
  "Real.1", "Real.2", "Real.4", "Real.7", "Real.10", "Real.3", "Real.5",
  "Real.6", "Real.8", "Real.9"
)

doplQuestions <- c(
  "DoPL_1", "DoPL_6", "DoPL_11", "DoPL_13", "DoPL_14", "DoPL_16", "DoPL_5",
  "DoPL_7", "DoPL_8", "DoPL_12", "DoPL_17", "DoPL_18", "DoPL_2", "DoPL_3",
  "DoPL_4", "DoPL_9", "DoPL_10", "DoPL_15"
)

dominanceQuestions <- c("DoPL_2", "DoPL_3", "DoPL_4", "DoPL_9", "DoPL_10", "DoPL_15")
prestigeQuestions <- c("DoPL_5", "DoPL_7", "DoPL_8", "DoPL_12", "DoPL_17", "DoPL_18")
leadershipQuestions <- c("DoPL_1", "DoPL_6", "DoPL_11", "DoPL_13", "DoPL_14", "DoPL_16")

UMSQuestions <- c(
  "UMS_1", "UMS_2", "UMS_3", "UMS_4", "UMS_5", "UMS_6", "UMS_7", "UMS_8",
  "UMS_9", "UMS_11", "UMS_12"
)
UMSIntimacyQuestions <- c("UMS_11", "UMS_12")
UMSAffiliationQuestions <- c(
  "UMS_1", "UMS_2", "UMS_3", "UMS_4", "UMS_5", "UMS_6", "UMS_7", "UMS_8",
  "UMS_9"
)

savedQuestionsBefore <- c(
  "subjectID", "Age", "Duration..in.seconds.", "Gender", "Ethnicity",
  "Eth.ori", "Edu", "DoPLSum", "dominanceSum", "prestigeSum", "leadershipSum",
  "UMSSum", "UMSIntimacySum", "UMSAffiliationSum", "sjsSum", "ssesSum",
  "Spite", "Vign.Sex", "Vign.noSex", "Vign.Ovr.Score", "Real.Sex", "Real.noSex",
  "Real.Ovr.Score", "srps.rc.rescale", "srps.dm.rescale", "srps.sum.rescale",
  "Power", "Vign.1", "Vign.2", "Vign.3", "Vign.4", "Vign.5", "Vign.6",
  "Vign.7", "Vign.8", "Vign.9", "Vign.10", "Real.1", "Real.2", "Real.3",
  "Real.4", "Real.5", "Real.6", "Real.7", "Real.8", "Real.9", "Real.10"
)

savedQuestionsAfter <- c(
  "subjectID", "Age", "Duration..in.seconds.", "Gender", "Ethnicity",
  "Eth.ori", "Edu", "DoPLSum", "dominanceSum", "prestigeSum", "leadershipSum",
  "UMSSum", "UMSIntimacySum", "UMSAffiliationSum", "sjsSum", "ssesSum",
  "Spite", "Vign.Sex", "Vign.noSex", "Vign.Ovr.Score", "Real.Sex", "Real.noSex",
  "Real.Ovr.Score", "srps.rc.rescale", "srps.dm.rescale", "srps.sum.rescale",
  "Content", "Vignette", "Justification", "Realism", "Power"
)
genderresults <- plyr::count(experimenttwoDS$Gender)
genderresults$freq[2]




## experiment_1_dataset_select <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/Experiments/Experiment 1/Experiment_2/Experiment_1_dataset_dropped_row.csv")
## experiment_1_dataset_select <- experiment_1_dataset_select[, grepl("Timing...First.Click", names(experiment_1_dataset_select))]
## write.csv(experiment_1_dataset_select, "experiment_1_dataset_select.csv")


## experiment_1_dataset_select_2 <- experiment_1_dataset_select[, -c(1:55)]
## experiment_1_dataset_select_2 <- read.csv("experiment_1_dataset_select_2.csv")

justification_timing_overall <- c(
  "Timing...First.Click.56",
  "Timing...First.Click.58",
  "Timing...First.Click.60",
  "Timing...First.Click.62",
  "Timing...First.Click.64",
  "Timing...First.Click.66",
  "Timing...First.Click.68",
  "Timing...First.Click.70",
  "Timing...First.Click.72",
  "Timing...First.Click.74"
)

agreement_timing_overall <- c(
  "Timing...First.Click.57",
  "Timing...First.Click.59",
  "Timing...First.Click.61",
  "Timing...First.Click.63",
  "Timing...First.Click.65",
  "Timing...First.Click.67",
  "Timing...First.Click.69",
  "Timing...First.Click.71",
  "Timing...First.Click.73",
  "Timing...First.Click.75"
)

sexual_justification_timing <- c(
  "Timing...First.Click.56",
  "Timing...First.Click.58",
  "Timing...First.Click.62",
  "Timing...First.Click.68",
  "Timing...First.Click.74"
)

non_sexual_justification_timing <- c(
  "Timing...First.Click.60",
  "Timing...First.Click.64",
  "Timing...First.Click.66",
  "Timing...First.Click.70",
  "Timing...First.Click.72"
)

agreement_timing_sexual <- c(
  "Timing...First.Click.57",
  "Timing...First.Click.59",
  "Timing...First.Click.63",
  "Timing...First.Click.69",
  "Timing...First.Click.75"
)

agreement_timing_non_sexual <- c(
  "Timing...First.Click.61",
  "Timing...First.Click.65",
  "Timing...First.Click.67",
  "Timing...First.Click.71",
  "Timing...First.Click.73"
)

## experiment_1_dataset_select_2$Justification_overall_timing  <- rowMeans(experiment_1_dataset_select_2[, justification_timing_overall])
## experiment_1_dataset_select_2$agreement_overall_timing <- rowMeans(experiment_1_dataset_select_2[, agreement_timing_overall])
## experiment_1_dataset_select_2$sexual_timing_justification  <- rowMeans(experiment_1_dataset_select_2[, sexual_justification_timing])
## experiment_1_dataset_select_2$non_sexual_timing_justification  <- rowMeans(experiment_1_dataset_select_2[, non_sexual_justification_timing])
## experiment_1_dataset_select_2$agreement_sexual_timing  <- rowMeans(experiment_1_dataset_select_2[, agreement_timing_sexual])
## experiment_1_dataset_select_2$agreement_non_sexual_timing  <- rowMeans(experiment_1_dataset_select_2[, agreement_timing_non_sexual])

## write.csv(experiment_1_dataset_select_2, "experiment_1_mean_timings.csv")

## timing_means<- read.csv("./CSV_Files/Timings_means.csv")
## experiment_1_long <- experiment_1_Dataset_analysis %>%
##   select("dominanceSum", "Gender", "ethicalQuestionsRiskSum", "financialQuestionsRiskSum", "healthAndSafetyQuestionsRiskSum", "recreationalQuestionsRiskSum", "socialQuestionsRiskSum") %>%
##   pivot_longer(-c("dominanceSum", "Gender"), names_to = "variable", values_to = "value")

## timing_means <- timing_means %>%
## pivot_longer(!Participants, names_to = "variable", values_to = "value")

## write.csv(timing_means, "testing_means.csv")

## experiment_1_mean_timings <- read.csv("./experiment_1_mean_timings.csv")
## experiment_1_mean_timings <- experiment_1_mean_timings[rep(seq_len(nrow(experiment_1_mean_timings)), each = 10),]
## write.csv(experiment_1_mean_timings, "experiment_1_mean_long.csv")

## exploratory_experiment_demographics_table <- kable(Experiment_1_mean)

## kable(Experiment_1_mean) %>%
## kable_styling(full_width = F)

exploratory_experiment_dataset <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/Dissertation/CSV_Files/Exploratory_Experiment/df.csv")
