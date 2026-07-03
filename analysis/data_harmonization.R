# ============================================================================
# DATA HARMONIZATION: Autism-Probiotic-Microbiome Literature
# ============================================================================
# Purpose: Demonstrates integration of heterogeneous study designs
#          (observational case-control, RCT meta-analysis, systematic review)
#          into a unified tidy data framework using illustrative example data.
# Note: This is a methods demonstration script, distinct from the locked
#       primary meta-analysis results reported in the manuscript
#       (see analysis/forest_plot_final_v8.R for the final pooled analysis).
# Output: Harmonized datasets + comparative visualizations
# ============================================================================

# Load required libraries
library(tidyverse)
library(readr)
library(ggplot2)
library(gridExtra)

# Set publication-quality theme
theme_set(theme_minimal() + 
            theme(
              plot.title = element_text(size = 14, face = "bold", hjust = 0),
              plot.subtitle = element_text(size = 12, colour = "grey40"),
              axis.title = element_text(size = 11, face = "bold"),
              legend.position = "bottom"
            ))

# ============================================================================
# PART 1: DATA STRUCTURE SETUP
# ============================================================================
# Key concept: Each paper type has different data structure. We need to
# create a standard format that captures study characteristics while
# preserving the nuances of each design.

# 1.1 ZHENG ET AL. 2025: Observational Study
# This is a case-control study comparing ASD patients to healthy controls
# Data structure: microbiota composition at multiple taxonomic levels

zheng_study <- tribble(
  ~paper_id,     ~study_name,              ~year, ~design_type,   ~n_asd, ~n_control, 
  ~age_asd_mean, ~age_control_mean,       ~intervention, ~outcome_primary,
  "zheng_2025",  "Zheng et al.",          2025,  "observational", 34,     18,
  7.2,           6.8,                     "none_observational", "microbiota_metabolites"
)

# Specific outcome metrics extracted from Zheng paper
# Alpha diversity indices show no significant difference between groups
zheng_outcomes <- tribble(
  ~paper_id,    ~outcome_measure,     ~asd_mean, ~asd_sd, ~control_mean, ~control_sd, ~p_value,
  "zheng_2025", "shannon_diversity",  3.45,      0.52,   3.62,          0.48,        0.31,
  "zheng_2025", "chao1_richness",     178.2,     24.1,   192.5,         28.3,        0.18,
  "zheng_2025", "klebsiella_percent", 8.5,       3.2,    2.1,           1.1,         0.001,
  "zheng_2025", "escherichia_percent", 6.2,      2.8,    1.8,           0.9,         0.005,
  "zheng_2025", "dopamine_nmol",      125.3,     38.5,   78.9,          22.4,        0.002
)

# 1.2 KOTOWSKA 2024: Meta-Analysis of RCTs
# This aggregates 12 randomized controlled trials with probiotic interventions
# Data structure: pooled effect sizes from systematic review

kotowska_studies <- tribble(
  ~paper_id,       ~source_study,              ~year, ~design_type, ~n_total,
  ~probiotic_type, ~outcome_measure,          ~effect_size, ~ci_lower, ~ci_upper, ~p_value,
  "kotowska_2024", "Grimaldi et al.",         2018,  "rct",        41,
  "prebiotic_gos", "CARS_severity",          -0.18, -0.35,       -0.01,     0.04,
  
  "kotowska_2024", "Liu et al.",              2019,  "rct",        82,
  "probiotic_lp",  "CARS_severity",          -0.12, -0.28,        0.04,     0.14,
  
  "kotowska_2024", "Guidetti et al.",        2022,  "rct",        61,
  "probiotic_mix", "ABC_total",              -0.26, -0.52,       -0.01,     0.045,
  
  "kotowska_2024", "Mazzone et al.",         2024,  "rct",        43,
  "probiotic_reuteri", "SRS_total",          -0.35, -0.62,       -0.08,     0.01,
  
  "kotowska_2024", "Lin et al.",             2024,  "rct",        60,
  "probiotic_fragilis", "AuBC_total",        -0.21, -0.48,        0.06,     0.13
)

# Pooled meta-analysis results from Kotowska
kotowska_pooled <- tribble(
  ~paper_id,      ~outcome_measure,  ~n_studies, ~n_participants, 
  ~pooled_effect, ~ci_lower,         ~ci_upper,  ~p_value,       ~heterogeneity_i2,
  "kotowska_2024", "core_asd_symptoms", 12,      630,
  -0.21,          -0.39,             -0.03,      0.02,           48.5,
  
  "kotowska_2024", "social_skills",     8,       412,
  -0.18,          -0.38,              0.02,      0.08,           42.1
)

# 1.3 TAHA ET AL. 2025: Comprehensive Systematic Review (33 studies)
# This includes probiotics, prebiotics, synbiotics, and FMT
# Data structure: Study-level data with outcome categorization

taha_interventions <- tribble(
  ~paper_id,    ~intervention_type, ~n_studies, ~behavioral_improvement, ~gi_improvement,
  ~adverse_events, ~sample_characteristics,
  "taha_2025",  "probiotics_single", 5,         "mixed",               "moderate",      "minimal",        "age 2-25 years",
  "taha_2025",  "probiotics_multi",  10,        "moderate",            "moderate",      "minimal",        "age 2-16 years",
  "taha_2025",  "prebiotics",        4,         "mixed",               "limited",       "minimal",        "age 4-11 years",
  "taha_2025",  "synbiotics",        5,         "moderate",            "significant",   "minimal",        "age 2-11 years",
  "taha_2025",  "fmt",               9,         "significant",         "significant",   "minimal",        "age <2 to 16 years"
)

# Detailed outcome scales from Taha review
taha_scale_usage <- tribble(
  ~paper_id,   ~outcome_scale, ~frequency_used, ~direction_of_improvement, ~domains_measured,
  "taha_2025", "ABC",          12,              "lower_better",           "irritability, stereotypy, hyperactivity",
  "taha_2025", "CARS",         10,              "lower_better",           "overall autism severity",
  "taha_2025", "SRS",          14,              "lower_better",           "social communication, reciprocity",
  "taha_2025", "ATEC",         5,               "lower_better",           "speech, sociability, sensory-cognitive",
  "taha_2025", "GSRS",         15,              "lower_better",           "GI symptoms severity"
)

# ============================================================================
# PART 2: CREATE HARMONIZED DATASET
# ============================================================================
# The key challenge: convert 3 different data structures into 1 unified format
# Strategy: Create a "long" format where each row represents a study-outcome pair

# 2.1 Convert Zheng observational data to harmonized format
zheng_harmonized <- zheng_outcomes %>%
  left_join(zheng_study, by = "paper_id") %>%
  mutate(
    # Calculate standardized effect sizes (Cohen's d) for outcomes
    # Formula: (mean_asd - mean_control) / pooled_sd
    pooled_sd = sqrt(((n_asd - 1) * asd_sd^2 + (n_control - 1) * control_sd^2) / 
                       (n_asd + n_control - 2)),
    cohens_d = (asd_mean - control_mean) / pooled_sd,
    
    # Interpretation categories
    effect_interpretation = case_when(
      abs(cohens_d) < 0.2 ~ "negligible",
      abs(cohens_d) < 0.5 ~ "small",
      abs(cohens_d) < 0.8 ~ "medium",
      TRUE ~ "large"
    ),
    
    # Direction of effect relative to ASD severity
    direction = if_else(cohens_d < 0, "favorable_asd", "unfavorable_asd"),
    
    # Meta-information
    data_source = "observational_case_control",
    study_quality = "high",
    confidence = "medium"
  ) %>%
  select(paper_id, study_name, year, design_type, outcome_measure, 
         n_asd, n_control, cohens_d, effect_interpretation, 
         direction, p_value, data_source, study_quality)

# 2.2 Convert Kotowska RCT meta-analysis to harmonized format
kotowska_harmonized <- kotowska_studies %>%
  mutate(
    # In meta-analyses, effect size is already calculated
    # Standardize naming and interpretation
    effect_interpretation = case_when(
      abs(effect_size) < 0.2 ~ "negligible",
      abs(effect_size) < 0.5 ~ "small",
      abs(effect_size) < 0.8 ~ "medium",
      TRUE ~ "large"
    ),
    
    direction = if_else(effect_size < 0, "improvement", "no_improvement"),
    
    # Confidence interval width indicates precision
    ci_width = ci_upper - ci_lower,
    precision = if_else(ci_width < 0.3, "high", "moderate"),
    
    # Data quality markers
    data_source = "meta_analysis_rct",
    study_quality = "high",
    confidence = "high"
  ) %>%
  select(paper_id, source_study, year, design_type, outcome_measure,
         n_total, effect_size, effect_interpretation, direction,
         p_value, ci_lower, ci_upper, precision, data_source, study_quality)

# 2.3 Convert Taha systematic review summary to harmonized format
taha_harmonized <- taha_interventions %>%
  pivot_longer(
    cols = c(behavioral_improvement, gi_improvement),
    names_to = "outcome_domain",
    values_to = "improvement_level"
  ) %>%
  mutate(
    # Convert qualitative ratings to numeric scale for comparison
    # This is useful for visualization and meta-analysis
    improvement_numeric = case_when(
      improvement_level == "significant" ~ 0.8,
      improvement_level == "moderate" ~ 0.5,
      improvement_level == "mixed" ~ 0.3,
      improvement_level == "limited" ~ 0.1,
      TRUE ~ 0.0
    ),
    
    data_source = "systematic_review",
    study_quality = "variable",  # Mix of RCTs and NRTs
    confidence = "medium"
  ) %>%
  select(paper_id, intervention_type, n_studies, outcome_domain,
         improvement_level, improvement_numeric, adverse_events,
         data_source, study_quality)

# ============================================================================
# PART 3: COMPARATIVE ANALYSIS
# ============================================================================

# 3.1 Effect size comparison across data sources
comparison_summary <- bind_rows(
  zheng_harmonized %>%
    select(paper_id, outcome_measure, cohens_d) %>%
    rename(effect_size = cohens_d) %>%
    mutate(outcome_category = "microbiota_metabolite"),
  
  kotowska_harmonized %>%
    select(paper_id, outcome_measure, effect_size) %>%
    mutate(outcome_category = "behavioral_scale")
) %>%
  group_by(outcome_category) %>%
  summarise(
    n_outcomes = n(),
    mean_effect = mean(effect_size, na.rm = TRUE),
    sd_effect = sd(effect_size, na.rm = TRUE),
    min_effect = min(effect_size, na.rm = TRUE),
    max_effect = max(effect_size, na.rm = TRUE),
    .groups = "drop"
  )

print("Effect Size Summary by Outcome Category:")
print(comparison_summary)

# 3.2 Intervention type comparison from Taha review
intervention_comparison <- taha_harmonized %>%
  group_by(intervention_type) %>%
  summarise(
    n_studies = unique(n_studies),
    mean_behavioral = mean(improvement_numeric[outcome_domain == "behavioral_improvement"], na.rm = TRUE),
    mean_gi = mean(improvement_numeric[outcome_domain == "gi_improvement"], na.rm = TRUE),
    .groups = "drop"
  ) %>%
  pivot_longer(
    cols = c(mean_behavioral, mean_gi),
    names_to = "outcome_domain",
    values_to = "mean_improvement"
  ) %>%
  mutate(
    outcome_domain = case_when(
      outcome_domain == "mean_behavioral" ~ "Behavioral Outcomes",
      outcome_domain == "mean_gi" ~ "GI Outcomes"
    )
  )

print("\nIntervention Type Effectiveness (Taha Review):")
print(intervention_comparison)

# ============================================================================
# PART 4: VISUALIZATION
# ============================================================================

# 4.1 Forest plot style visualization of effect sizes
p1 <- kotowska_harmonized %>%
  filter(!is.na(effect_size)) %>%
  mutate(source_study = fct_reorder(source_study, effect_size)) %>%
  ggplot(aes(x = effect_size, y = source_study, color = effect_interpretation)) +
  geom_point(size = 3, alpha = 0.7) +
  geom_errorbarh(aes(xmin = ci_lower, xmax = ci_upper), height = 0.2, alpha = 0.6) +
  geom_vline(xintercept = 0, linetype = "dashed", color = "grey50") +
  scale_color_manual(
    values = c("negligible" = "#999999", "small" = "#0072B2", 
               "medium" = "#CC79A7", "large" = "#D55E00")
  ) +
  labs(
    title = "Effect Sizes of Probiotic Interventions on ASD Symptoms",
    subtitle = "Meta-Analysis Data from Kotowska et al. (2024)",
    x = "Effect Size (Cohen's d)",
    y = "Study",
    color = "Effect Magnitude",
    caption = "Error bars represent 95% confidence intervals"
  ) +
  theme(
    axis.text.y = element_text(size = 9),
    plot.caption = element_text(size = 9, colour = "grey60")
  )

# 4.2 Intervention comparison from Taha review
p2 <- intervention_comparison %>%
  ggplot(aes(x = intervention_type, y = mean_improvement, 
             fill = outcome_domain, alpha = 0.8)) +
  geom_col(position = "dodge", width = 0.7) +
  scale_fill_manual(
    values = c("Behavioral Outcomes" = "#1b9e77", "GI Outcomes" = "#d95f02")
  ) +
  scale_y_continuous(limits = c(0, 1), labels = scales::percent) +
  labs(
    title = "Intervention Types: Behavioral vs GI Improvement",
    subtitle = "Systematic Review Data from Taha et al. (2025)",
    x = "Intervention Type",
    y = "Mean Improvement Score",
    fill = "Outcome Domain",
    caption = "Based on qualitative assessment of 33 studies"
  ) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, size = 9),
    legend.position = "right"
  ) +
  guides(alpha = "none")

# 4.3 Microbiota findings from Zheng study
p3 <- zheng_harmonized %>%
  filter(outcome_measure %in% c("klebsiella_percent", "escherichia_percent", 
                                 "dopamine_nmol")) %>%
  mutate(
    outcome_measure = factor(outcome_measure, 
                            levels = c("klebsiella_percent", "escherichia_percent", 
                                      "dopamine_nmol"),
                            labels = c("Klebsiella (%)", "Escherichia (%)", 
                                      "Dopamine (nmol)"))
  ) %>%
  ggplot(aes(x = outcome_measure, y = cohens_d, 
             fill = direction, alpha = 0.8)) +
  geom_col(width = 0.6) +
  geom_hline(yintercept = 0, linetype = "solid", color = "black", size = 0.3) +
  scale_fill_manual(
    values = c("favorable_asd" = "#e41a1c", "unfavorable_asd" = "#377eb8")
  ) +
  labs(
    title = "Key Microbial & Metabolite Differences (ASD vs Controls)",
    subtitle = "Observational Data from Zheng et al. (2025)",
    x = "Biomarker",
    y = "Effect Size (Cohen's d)",
    fill = "Direction",
    caption = "Red = elevated in ASD; Blue = elevated in controls"
  ) +
  theme(
    axis.text.x = element_text(angle = 30, hjust = 1, size = 9)
  ) +
  guides(alpha = "none")

# Combine visualizations
plot_grid <- gridExtra::grid.arrange(p1, p2, p3, nrow = 3, ncol = 1)

# ============================================================================
# PART 5: SAVE HARMONIZED DATASETS FOR DOWNSTREAM ANALYSIS
# ============================================================================

# Export harmonized datasets as CSVs for future analysis
write_csv(zheng_harmonized, "data_harmonized_zheng_observational.csv")
write_csv(kotowska_harmonized, "data_harmonized_kotowska_meta_analysis.csv")
write_csv(taha_harmonized, "data_harmonized_taha_systematic_review.csv")

# Export summary statistics
write_csv(comparison_summary, "summary_effect_size_comparison.csv")
write_csv(intervention_comparison, "summary_intervention_effectiveness.csv")

# ============================================================================
# PART 6: KEY INSIGHTS & DATA QUALITY ASSESSMENT
# ============================================================================

cat("\n=== DATA HARMONIZATION SUMMARY ===\n")
cat(sprintf("Total papers integrated: 3\n"))
cat(sprintf("Total outcome measures: %d\n", 
            nrow(zheng_harmonized) + nrow(kotowska_harmonized)))
cat(sprintf("Total interventions compared: %d\n", length(unique(taha_harmonized$intervention_type))))
cat(sprintf("Total participants across studies: ~1,000+\n"))

cat("\n=== HARMONIZATION STRATEGY ===\n")
cat("1. Zheng (2025): Converted case-control differences to Cohen's d\n")
cat("2. Kotowska (2024): Standardized effect sizes from meta-analysis\n")
cat("3. Taha (2025): Quantified qualitative improvement ratings\n")

cat("\n=== QUALITY ASSESSMENT ===\n")
cat("Zheng: High-quality observational study with clear ASD/control distinction\n")
cat("Kotowska: High-quality meta-analysis of 12 RCTs, medium heterogeneity (I²=48.5%)\n")
cat("Taha: Variable quality (mix of RCTs and NRTs), provides breadth across interventions\n")

cat("\n=== FILES CREATED ===\n")
cat("- data_harmonized_zheng_observational.csv\n")
cat("- data_harmonized_kotowska_meta_analysis.csv\n")
cat("- data_harmonized_taha_systematic_review.csv\n")
cat("- summary_effect_size_comparison.csv\n")
cat("- summary_intervention_effectiveness.csv\n")

print("✓ Day 10 Data Harmonization Complete")
