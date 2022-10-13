locfunc <- function(data, to) {
 which(colnames({{ data }}) == {{ to }})
}
experiment_1_Dataset <- read.csv("./CSV_Files/experiment_1_data.csv")
experiment_dataset_analysis <- read.csv("./CSV_Files/experiment_dataset_analysis.csv")
Experiment_1_analysis_dataset <- read.csv("Experiment_1_analysis_dataset.csv")
Experiment_2_timing <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Backup_analysis/timing_exp_2.csv")

Experiment_2_dataset_raw <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Experiment_2_DF_complete.csv")

Experiment_2_Analysis_DF <- read.csv("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Experiment_2_Analysis_DF.csv")
Experiment_2_Demographics_DF <- read.csv("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Experiment_2_Demographics_DF.csv")

Experiment_2_dataset <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Experiment_2_demographics.csv")

m1_exp_1 <- readRDS("./RDS_Files/RDS_Experiment_1/m1_general_dopl.rds")
m1_int_exp_1 <- readRDS("./RDS_Files/RDS_Experiment_1/m1_general_dopl_int.rds")
m3_exp_1 <- readRDS("./RDS_Files/RDS_Experiment_1/m3_DOSPERT_DoPL.rds")
m3_int_exp_1 <- readRDS("./RDS_Files/RDS_Experiment_1/m3_DOSPERT_DoPL_int.rds")
m4_exp_1 <- readRDS("./RDS_Files/RDS_Experiment_1/m4_DOSPERT_separate_DoPL.rds")
m4_int_exp_1 <- readRDS("./RDS_Files/RDS_Experiment_1/m4_DOSPERT_separate_DoPL_int.rds")

m1_exp_1_fixef <- MutateHDI::mutate_each_hdi_no_save(m1_exp_1)
m1_int_exp_1_fixef <- MutateHDI::mutate_each_hdi_no_save(m1_int_exp_1)
m3_exp_1_fixef <- MutateHDI::mutate_each_hdi_no_save(m3_exp_1)
m3_int_exp_1_fixef <- MutateHDI::mutate_each_hdi_no_save(m3_int_exp_1)
m4_exp_1_fixef <- MutateHDI::mutate_each_hdi_no_save(m4_exp_1)
m4_int_exp_1_fixef <- MutateHDI::mutate_each_hdi_no_save(m4_int_exp_1)

m1_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m1.rds")
m1_interaction_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m1_interaction.rds")
m1_interaction_no_pni_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m1_interaction_no_pni.rds")
m2_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m2.rds")
m2_interaction_gender_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m2_interaction_gender.rds")
m3_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m3.rds")
m3_interaction_gender_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/m3_interaction_gender.rds")

m1_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m1_exp_2)
m1_interaction_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m1_interaction_exp_2)
m1_interaction_no_pni_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m1_interaction_no_pni_exp_2)
m2_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m2_exp_2)
m2_interaction_gender_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m2_interaction_gender_exp_2)
m3_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m3_exp_2)
m3_interaction_gender_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(m3_interaction_gender_exp_2)

pni_multi_dospert_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dospert_int_fixef.Rds")

multi_2_model_dospert_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/multi_2_model_dospert_int_fixef.Rds")

multi_model_dospert_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/multi_model_dospert_fixef.Rds")

pni_multi_dopl_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dopl_fixef.Rds")

pni_model_dopl_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_model_dopl_fixef.Rds")

# Mediation Models

fit1_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/fit1.rds")
fit2_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/fit2.rds")
fit3_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/fit3.rds")
mediation_brms_1_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/mediation_brms_1.rds")
mediation_brms_2_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/mediation_brms_2.rds")
mediation_brms_3_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/Dropbox/Andrew Ithurburn/E3 with Julie Pederson/Study 2/Saved_rds/mediation_brms_3.rds")

mediation_brms_1_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(mediation_brms_1_exp_2)
mediation_brms_2_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(mediation_brms_2_exp_2)
mediation_brms_3_exp_2_fixef <- MutateHDI::mutate_each_hdi_no_save(mediation_brms_3_exp_2)

blavinspect_fit1 <- as.data.frame(blavInspect(fit1_exp_2, what = "postmedian"))
colnames(blavinspect_fit1) <- "postmedian"

d2 <- Experiment_2_Demographics_DF %>%
 mutate_at(vars(locfunc(Experiment_2_Demographics_DF, "Gender")), ~ as.factor(recode(., "1" = "Female", "2" = "Male", "3" = "Gender Non-Binary", "6" = "Prefer not to respond"))) %>%
 mutate_at(vars(locfunc(Experiment_2_Demographics_DF, "Ethnicity")), ~ as.factor(recode(.,
  "1" = "White",
  "2" = "Mixed  or  Multi-ethnic",
  "3" = "Asian  or  Asian Scottish  or  Asian British",
  "4" = "African",
  "5" = "Caribbean  or  Black",
  "6" = "Arab ",
  "7" = "Other ethnicity",
  "8" = "Prefer not  to respond"
 ))) %>%
 mutate_at(vars(locfunc(Experiment_2_Demographics_DF, "Ethnic_Origin")), ~ as.factor(recode(.,
  "1" = "Scottish",
  "2" = "English",
  "3" = "European",
  "4" = "Latin American",
  "5" = "Asian",
  "6" = "Arab",
  "7" = "African",
  "8" = "Other",
  "9" = "Prefer not to respond"
 ))) %>%
 mutate_at(vars(locfunc(Experiment_2_Demographics_DF, "Education")), ~ as.factor(recode(.,
  "1" = "Primary School ",
  "2" = "GCSEs  or  Equivalent",
  "3" = "A-Levels  or  Equivalent",
  "4" = "University  Undergraduate  Program",
  "5" = "University  Post-Graduate  Program",
  "6" = "Doctoral  Degree",
  "7" = "Prefer not  to respond"
 )))


Experiment_2_timing$X <- NULL
Experiment_2_timing <- Experiment_2_timing / 1000
