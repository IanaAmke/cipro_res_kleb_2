library(here)
library(tidyverse)
library(ggplot2)
library(ggupset)

# read antibiogram data
antibiogram <- read.delim(file = "antibiogram_combined.tsv", 
                                header = TRUE, sep = "\t")

# filter for ciprofloxacin
cipro_antibiogram <- antibiogram %>%
  filter(Antibiotic == "ciprofloxacin") %>%
  select(strain:ST, Flq_mutations, Antibiotic:Measurement.Round)

# SUMMARIES
# MIC (broth dilution)
micbroth_cipro_antibiogram <- cipro_antibiogram %>%
  filter(Laboratory.Typing.Method == "MIC (broth dilution)")

testing_stds_micbroth <- micbroth_cipro_antibiogram %>%
  testing_std()

# MIC (agar dilution)
micagar_cipro_antibiogram <- cipro_antibiogram %>%
  filter(Laboratory.Typing.Method == "MIC (agar dilution)")

testing_stds_micagar <- micagar_cipro_antibiogram %>%
  testing_std()

# MIC (E-test gradient diffusion)
micetest_cipro_antibiogram <- cipro_antibiogram %>%
  filter(Laboratory.Typing.Method == "MIC (E-test gradient diffusion)")

testing_stds_micetest <- micetest_cipro_antibiogram %>%
  testing_std()

# Disk diffusion
diskdiff_cipro_antibiogram <- cipro_antibiogram %>%
  filter(Laboratory.Typing.Method == "Disk diffusion")

testing_stds_diskdiff <- diskdiff_cipro_antibiogram %>%
  testing_std()

# VIOLIN AND UPSET PLOTS FOR MUTATION PATTERNS
# EUCAST/CLSI cut-offs added to infer phenotype
# MIC broth 
micbroth_cipro_antibiogram %>%
  upset_plot_mic() +
  labs(title = "Fluoroquinolone resistance mutations for MIC (broth dilution)")

# MIC agar 
micagar_cipro_antibiogram %>%
  upset_plot_mic() +
  labs(title = "Fluoroquinolone resistance mutations for MIC (agar dilution)")

# MIC etest - **only one entry
#micetest_cipro_antibiogram %>%
  #upset_plot()

# Disk diffusion
diskdiff_cipro_antibiogram %>%
  upset_plot_diskdiff()

# VIOLIN AND UPSET PLOTS FOR INDIVIDUAL MUTATION PATTERNS
# separate Flq_mutations into individual mutations
# MIC broth
micbroth_cipro_antibiogram_sep <- micbroth_cipro_antibiogram %>%
  sep_flq_mutations()

micbroth_cipro_antibiogram_sep %>%
  upset_plot_mic() +
  labs(title = "Fluoroquinolone resistance mutations for MIC (broth dilution)")

# MIC agar
micagar_cipro_antibiogram_sep <- micagar_cipro_antibiogram %>%
  sep_flq_mutations()

micagar_cipro_antibiogram_sep %>%
  upset_plot_mic() +
  labs(title = "Fluoroquinolone resistance mutations for MIC (agar dilution)")

# MIC E-test
micetest_cipro_antibiogram_sep <- micetest_cipro_antibiogram %>%
  sep_flq_mutations()

# Disk diffusion
diskdiff_cipro_antibiogram_sep <- diskdiff_cipro_antibiogram %>%
  sep_flq_mutations()

diskdiff_cipro_antibiogram_sep %>%
  upset_plot_diskdiff()

# summarise genomes that are resistant but have no mutations
# MIC broth
micbroth_no_mut <- micbroth_cipro_antibiogram_sep %>%
  filter(Flq_mutations == "-") %>%
  mutate(Resistance.phenotype = case_when(Measurement <= 0.25 ~ "susceptible",
                                          Testing.standard == "EUCAST" & Measurement > 0.5 ~ "resistant",
                                          Testing.standard == "CLSI" & Measurement >= 1 ~ "resistant",
                                          TRUE ~ "intermediate")) %>%
  filter(Resistance.phenotype == "resistant")

# MIC agar
micagar_no_mut <- micagar_cipro_antibiogram_sep %>%
  filter(Flq_mutations == "-") %>%
  mutate(Resistance.phenotype = case_when(Measurement <= 0.25 ~ "susceptible",
                                          Measurement > 0.5 ~ "resistant",
                                          TRUE ~ "intermediate")) %>%
  filter(Resistance.phenotype == "resistant")

# MIC E-test
micetest_no_mut <- micetest_cipro_antibiogram_sep %>%
  filter(Flq_mutations == "-") %>%
  mutate(Resistance.phenotype = case_when(Measurement <= 0.25 ~ "susceptible",
                                          Measurement > 0.5 ~ "resistant",
                                          TRUE ~ "intermediate")) %>%
  filter(Resistance.phenotype == "resistant")

# Disk diffusion
diskdiff_no_mut <- diskdiff_cipro_antibiogram_sep %>%
  filter(Flq_mutations == "-") %>%
  mutate(Resistance.phenotype = case_when(Testing.standard == "EUCAST" & Measurement >= 25 ~ "susceptible",
                                          Testing.standard == "EUCAST" & Measurement < 22 ~ "resistant",
                                          Testing.standard == "CLSI" & Measurement >= 26 ~ "susceptible",
                                          Testing.standard == "CLSI" & Measurement <= 21 ~ "resistant",
                                          TRUE ~ "intermediate")) %>%
  filter(Resistance.phenotype == "resistant")

# join all dataframes
cipro_res_no_mut <- rbind(micbroth_no_mut, micagar_no_mut, micetest_no_mut, diskdiff_no_mut)

write_delim(cipro_res_no_mut, file = "cipro_res_no_mutations.tsv", delim = "\t")




# FUNCTIONS
# summarise testing standards used
testing_std <- function(df) {
  require(dplyr)
  
  df %>%
    group_by(Testing.standard, Testing.standard.year.or.version) %>%
    count()
}

# create UpSet plots for mic measurements and fluoroquinolone mutations
upset_plot_mic <- function(df) {
  require(dplyr, ggplot2, ggupset)
  
  df %>%
    group_by(strain, Measurement) %>% 
    summarize(mutation_list = list(Flq_mutations)) %>%
    ggplot(aes(mutation_list, Measurement)) + geom_violin() + geom_count() + 
    # EUCAST cut-off of 0.5 mg/L
    geom_hline(aes(yintercept = 0.5, linetype = "EUCAST"), alpha = 0.6, color = "black") +
    # CLSI cut-off of 1 mg/L
    geom_hline(aes(yintercept = 1.0, linetype = "CLSI"), color = "black") +
    labs(x = "Fluoroquinolone resistance mutations", y = "Ciprofloxacin MIC measurement (mg/L)",
         size = "Number of strains", linetype = "MIC breakpoints") +
    scale_linetype_manual(values = c("dotted", "solid")) +
    scale_x_upset() +
    theme_combmatrix(combmatrix.panel.line.size = 0.8)
}

# create UpSet plots for disk diffusion measurements and fluoroquinolone mutations
upset_plot_diskdiff <- function(df) {
  require(dplyr, ggplot2, ggupset)
  
  df %>%
    group_by(strain, Measurement) %>% 
    summarize(mutation_list = list(Flq_mutations)) %>%
    ggplot(aes(mutation_list, Measurement)) + geom_violin() + geom_count() + 
    # EUCAST cut-off of 22mm
    geom_hline(aes(yintercept = 22, linetype = "EUCAST"), alpha = 0.6, color = "black") +
    # CLSI cut-off of 21mm
    geom_hline(aes(yintercept = 21, linetype = "CLSI"), color = "black") +
    labs(title = "Fluoroquinolone resistance mutations for disk diffusion", x = "Fluoroquinolone resistance mutations", 
         y = "Ciprofloxacin disk diffusion measurement (mm)", size = "Number of strains", linetype = "Disk diffusion breakpoints") +
    scale_linetype_manual(values = c("dotted", "solid")) +
    scale_x_upset() +
    theme_combmatrix(combmatrix.panel.line.size = 0.8)
}

# separate Flq_mutations into individual mutations
sep_flq_mutations <- function(df) {
  require(dplyr)
  
  df1 <- df %>%
    separate(Flq_mutations, into = c("mutation_A", "mutation_B", "mutation_C"), sep = "[;]") 
  
  df2 <- df1 %>%  
    pivot_longer(cols = names(df1)[11:13],
                 values_to = "Flq_mutations") %>%
    drop_na(Flq_mutations) %>%
    select(-name)
  
  return(df2)
}
