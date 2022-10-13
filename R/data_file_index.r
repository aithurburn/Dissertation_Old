locfunc <- function(data, to) {
  which(colnames({{ data }}) == {{ to }})
}
m1_exp_1 <- readRDS("./RDS_Files/m1.rds")
m2_exp_1 <- readRDS("./RDS_Files/m2.rds")
m3_exp_1 <- readRDS("./RDS_Files/m3_exp_1.rds")
m3_perception_interaction_exp_1 <- readRDS("./RDS_Files/m3_perception_interaction_exp_1.rds")
m5_exp_1 <- readRDS("./RDS_Files/m5_exp_1.rds")
m6_exp_1 <- readRDS("./RDS_Files/m6.rds")
m7_exp_1 <- readRDS("./RDS_Files/m7.rds")
m3_int_fixef_exp_1 <- MutateHDI::mutate_each_hdi_no_save(m3_exp_1)
m5_int_fixef_exp_1 <- MutateHDI::mutate_each_hdi_no_save(m5_exp_1)

m1_exp_1_fixef <- readRDS("./RDS_Files/fixef_m1_exp1.Rds")
m1_hdi_exp_1 <- readRDS("./RDS_Files/m1_hdi.rds")
m2_hdi_exp_1 <- readRDS("./RDS_Files/m2_hdi.rds")
m3_hdi_exp_1 <- readRDS("./RDS_Files/m3_hdi.rds")
m4_hdi_exp_1 <- readRDS("./RDS_Files/m4_hdi.rds")
m5_hdi_exp_1 <- readRDS("./RDS_Files/m5_hdi.rds")
m6_hdi_exp_1 <- readRDS("./RDS_Files/m6_hdi.rds")
m7_hdi_exp_1 <- readRDS("./RDS_Files/m7_hdi.rds")
m1_hdi_exp_1 <- readRDS("./RDS_Files/m1_hdi.rds")
m1_int_exp_1 <- readRDS("./RDS_Files/m1_int.rds")
m1_int_d_exp_1 <- readRDS("./RDS_Files/m1_int_d.rds")
m1_int_l_exp_1 <- readRDS("./RDS_Files/m1_int_l.rds")
m1_int_p_exp_1 <- readRDS("./RDS_Files/m1_int_p.rds")
m1_int_d_hdi_exp_1 <- readRDS("./RDS_Files/m1_int_d_hdi.rds")
m1_int_l_hdi_exp_1 <- readRDS("./RDS_Files/m1_int_l_hdi.rds")
m1_int_p_hdi_exp_1 <- readRDS("./RDS_Files/m1_int_p_hdi.rds")
m7_DoPL_DOSPERT_exp_1 <- readRDS("./RDS_Files/m7_DoPL_DOSPERT.rds")
m4_perceivedRisk_Age_exp_1 <- readRDS("./RDS_Files/m4_perceivedRisk_Age.rds")
m5_generalRiskPreference_exp_1 <- readRDS("./RDS_Files/m5_generalRiskPreference.rds")
m5_benefitRisk_Age_exp_1 <- readRDS("./RDS_Files/m5_benefitRisk_Age.rds")
m4_perceivedRisk_Gender_exp_1 <- readRDS("./RDS_Files/m4_perceivedRisk_Gender.rds")
m5_benefitRisk_Gender_exp_1 <- readRDS("./RDS_Files/m5_benefitRisk_Gender.rds")
m7_DoPL_DOSPERT_hdi_exp_1 <- readRDS("./RDS_Files/m7_DoPL_DOSPERT_hdi.rds")
m4_perceivedRisk_Age_hdi_exp_1 <- readRDS("./RDS_Files/m4_perceivedRisk_Age_hdi.rds")
m5_generalRiskPreference_hdi_exp_1 <- readRDS("./RDS_Files/m5_generalRiskPreference_hdi.rds")
m5_benefitRisk_Age_hdi_exp_1 <- readRDS("./RDS_Files/m5_benefitRisk_Age_hdi.rds")
m4_perceivedRisk_Gender_hdi_exp_1 <- readRDS("./RDS_Files/m4_perceivedRisk_Gender_hdi.rds")
m5_benefitRisk_Gender_hdi_exp_1 <- readRDS("./RDS_Files/m5_benefitRisk_Gender_hdi.rds")
m1_int_fixef_exp_1_j <- MutateHDI::mutate_each_hdi_no_save(m1_int_exp_1)
m3_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/m3_exp_2.rds")
m3_int_gender_fixef <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/m3_int_gender_fixef.rds")
m2_exp_2_J_fix <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/m2_int_fix.rds")
pni_model_dopl_fix <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/pni_model_dopl_fix.rds")
pni_multi_dopl_fix <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/pni_multi_dopl_fix.rds")
multi_model_dospert_fix_2_J <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/multi_model_dospert_fix.rds")
pni_risk_dospert_fix_2_J <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/pni_risk_dospert_fix.rds")
source("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Question_Index.R")
experiment_1_Dataset <- read.csv("./CSV_Files/experiment_1_data.csv")
experiment_dataset_analysis <- read.csv("./CSV_Files/experiment_dataset_analysis1.csv")
Experiment_2_dataset <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Experiment_2_demographics.csv")
Experiment_2_dataset_raw <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Experiment_with_J_version_two.csv")
Experiment_2_demographic_dataset <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Experiment_2_demographics.csv")


experiment_dataset_analysis$Gender <- replace_na(experiment_dataset_analysis$Gender, "Gender Non-Binary")
d1 <- experiment_dataset_analysis %>%
  mutate_at(vars(locfunc(experiment_dataset_analysis, "Gender")), ~ as.factor(recode(., "1" = "Female", "2" = "Male", "NA" = "Gender Non-Binary", "6" = "Prefer not to respond"))) %>%
  mutate_at(vars(locfunc(experiment_dataset_analysis, "Ethnicity")), ~ as.factor(recode(.,
    "1" = "White",
    "2" = "Mixed  or  Multi-ethnic",
    "3" = "Asian  or  Asian Scottish  or  Asian British",
    "4" = "African",
    "5" = "Caribbean  or  Black",
    "6" = "Arab ",
    "7" = "Other ethnicity",
    "8" = "Prefer not  to respond"
  ))) %>%
  mutate_at(vars(locfunc(experiment_dataset_analysis, "Ethnic_Origin")), ~ as.factor(recode(.,
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
  mutate_at(vars(locfunc(experiment_dataset_analysis, "Education")), ~ as.factor(recode(.,
    "1" = "Primary School ",
    "2" = "GCSEs  or  Equivalent",
    "3" = "A-Levels  or  Equivalent",
    "4" = "University  Undergraduate  Program",
    "5" = "University  Post-Graduate  Program",
    "6" = "Doctoral  Degree",
    "7" = "Prefer not  to respond"
  )))


d2 <- Experiment_2_demographic_dataset %>%
  mutate_at(vars(locfunc(Experiment_2_demographic_dataset, "Gender")), ~ as.factor(recode(., "1" = "Female", "2" = "Male", "3" = "Gender Non-Binary", "6" = "Prefer not to respond"))) %>%
  mutate_at(vars(locfunc(Experiment_2_demographic_dataset, "Ethnicity")), ~ as.factor(recode(.,
    "1" = "White",
    "2" = "Mixed  or  Multi-ethnic",
    "3" = "Asian  or  Asian Scottish  or  Asian British",
    "4" = "African",
    "5" = "Caribbean  or  Black",
    "6" = "Arab ",
    "7" = "Other ethnicity",
    "8" = "Prefer not  to respond"
  ))) %>%
  mutate_at(vars(locfunc(Experiment_2_demographic_dataset, "Ethnic_Origin")), ~ as.factor(recode(.,
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
  mutate_at(vars(locfunc(Experiment_2_demographic_dataset, "Education")), ~ as.factor(recode(.,
    "1" = "Primary School ",
    "2" = "GCSEs  or  Equivalent",
    "3" = "A-Levels  or  Equivalent",
    "4" = "University  Undergraduate  Program",
    "5" = "University  Post-Graduate  Program",
    "6" = "Doctoral  Degree",
    "7" = "Prefer not  to respond"
  )))

dopl_PNI_1_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/dopl_PNI_1_fixef.Rds")
dopl_PNI_1_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/dopl_PNI_1_int_fixef.Rds")
m_7_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m_7_fixef.Rds")
m_7_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m_7_int_fixef.Rds")
m1_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m1_fixef.Rds")
m1_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m1_int_fixef.Rds")
m2_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m2_fixef.Rds")
m2_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m2_int_fixef.Rds")
m3_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m3_fixef.Rds")

m3_int_gender_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m3_interaction_gender_fixef_exp_2.Rds")
m4_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m4_fixef.Rds")
m4_int_gender_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m4_int_gender_fixef.Rds")
m5_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m5_fixef.Rds")
m6_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m6_fixef.Rds")
m6_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m6_int_fixef.Rds")
mod_pni_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/mod_pni_fixef.Rds")
mod_pni_gen_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/mod_pni_gen_fixef.Rds")
multi_2_model_dospert_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/multi_2_model_dospert_int_fixef.Rds")
multi_model_dospert_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/multi_model_dospert_fixef.Rds")
multi_model_dospert_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/multi_model_dospert_int_fixef.Rds")
pni_model_dopl_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_model_dopl_fixef.Rds")
pni_model_dopl_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_model_dopl_int_fixef.Rds")
pni_model_dospert_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_model_dospert_fixef.Rds")
pni_model_dospert_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_model_dospert_int_fixef.Rds")
pni_multi_dopl_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dopl_fixef.Rds")
pni_multi_dopl_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dopl_int_fixef.Rds")
pni_multi_dospert_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dospert_fixef.Rds")
pni_multi_dospert_int_Age_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dospert_int_Age_fixef.Rds")
pni_risk_dospert_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_risk_dospert_fixef.Rds")
pni_multi_dospert_int_fixef_exp_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/pni_multi_dospert_int_fixef.Rds")
correlation_Experiment_2_j <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/corr_1.rds")
Experiment_2_timing <- read.csv("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Backup_analysis/timing_exp_2.csv")

m1_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m1_fixef_exp_2.rds")
m1_interaction_gender_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/m1_interaction.rds")
m1_interaction_gender_fixef_exp_2 <- MutateHDI::mutate_each_hdi_no_save(m1_interaction_gender_exp_2)
m1_interaction_no_pni_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m1_interaction_no_pni_fixef_exp_2.rds")
m2_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m2_fixef_exp_2.rds")
m2_interaction_gender_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/m2_interaction_gender_exp_2.rds")
m2_interaction_gender_fixef_exp_2 <- MutateHDI::mutate_each_hdi_no_save(m2_interaction_gender_exp_2)
m3_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m3_fixef_exp_2.rds")
m3_interaction_gender_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/m3_interaction_gender.rds")
Mediation_comparison_1_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/Mediation_comparison_1_fixef_exp_2.rds")
Mediation_comparison_2_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/Mediation_comparison_2_fixef_exp_2.rds")
Mediation_comparison_3_fixef_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/Mutation_hdi/Mediation_comparison_3_fixef_exp_2.rds")

mediation_comparison_exp_2 <- readRDS("/Users/andrew/Library/CloudStorage/OneDrive-Personal/Documents/1_UoE/Research/PhD/DoPL/Experiments/DoPL_Experiment_Two/Analysis/mediation_comparison.rds")

Experiment_2_demographic_dataset
Experiment_2_timing$X <- NULL
Experiment_2_timing <- Experiment_2_timing / 1000
