# BLOCK 3: DATA EXTRACTION FORM TEMPLATE
## Standardized Data Collection for Autism-Probiotics Literature

**Block Time:** 15 minutes  
**Status:** ✅ COMPLETE  
**Purpose:** Create standardized extraction form to ensure consistent, high-quality data collection across all 50+ papers

---

## OVERVIEW: WHY DATA EXTRACTION MATTERS

A systematic review is only as good as its data extraction. Inconsistent extraction → garbage in, garbage out.

This form ensures:
- ✅ Every paper is extracted the same way
- ✅ No important variables missed
- ✅ Data is machine-readable for meta-analysis
- ✅ Duplicate extraction possible (quality control)
- ✅ Easy to convert to your Day 10 harmonization pipeline

---

## PART 1: THE EXTRACTION FORM (CSV FORMAT)

Below is the complete form structure. We'll build this as a CSV template you can fill in.

**Note on CSV format:** 
- Each row = one paper
- Each column = one variable
- Can be opened in Excel, R, or any spreadsheet
- Machine-readable for deduplication and meta-analysis

---

## PART 2: COMPLETE DATA EXTRACTION FORM STRUCTURE

```csv
SECTION A: PAPER IDENTIFICATION & BASIC INFO
======================================================================
study_id,study_first_author,study_year,study_doi,study_title,study_journal,publication_date,url_fulltext,extraction_date,extractor_name,extraction_time_minutes

SECTION B: STUDY DESIGN & METHODOLOGY
======================================================================
study_design,study_design_category,randomization_method,allocation_concealment,blinding_participants,blinding_assessors,blinding_outcome_assessor,intention_to_treat,study_duration_weeks,follow_up_completed_percent

SECTION C: POPULATION CHARACTERISTICS
======================================================================
population_autism_diagnosis_criterion,population_n_asd_baseline,population_n_control_baseline,population_n_total_baseline,population_age_mean_asd,population_age_sd_asd,population_age_range_asd,population_age_mean_control,population_age_sd_control,population_age_range_control,population_sex_percent_male_asd,population_baseline_autism_severity_scale,population_baseline_autism_severity_mean,population_baseline_gistatus_gisymptom_description,exclusion_criteria_specified

SECTION D: INTERVENTION CHARACTERISTICS
======================================================================
intervention_type,intervention_category,intervention_agent_species,intervention_agent_strain,intervention_agent_genus,intervention_formulation,intervention_dose_cfu,intervention_dose_grams,intervention_dose_unit,intervention_duration_weeks,intervention_frequency_daily,intervention_administration_route,intervention_protocol_specified_detail,probiotic_strain_psychobiotic_claim,prebiotic_type_if_applicable,synbiotic_component_details,fmt_donor_type,fmt_preparation_method,fmt_delivery_route,fmt_frequency,cointerventions_specified,cointerventions_description

SECTION E: COMPARISON/CONTROL CONDITIONS
======================================================================
control_condition_type,control_agent_description,control_duration_weeks,control_frequency_daily,control_fidelity_check,control_fidelity_described,control_n_baseline

SECTION F: PRIMARY OUTCOME - BEHAVIORAL/DEVELOPMENTAL
======================================================================
primary_outcome_measured,primary_outcome_scale_name,primary_outcome_scale_direction_improvement,primary_outcome_scale_min_max_scores,primary_outcome_asd_baseline_mean,primary_outcome_asd_baseline_sd,primary_outcome_asd_post_mean,primary_outcome_asd_post_sd,primary_outcome_asd_post_datatype,primary_outcome_control_baseline_mean,primary_outcome_control_baseline_sd,primary_outcome_control_post_mean,primary_outcome_control_post_sd,primary_outcome_control_post_datatype,primary_outcome_n_asd_analyzed,primary_outcome_n_control_analyzed,primary_outcome_timepoint_weeks,primary_outcome_missing_data_percent_asd,primary_outcome_missing_data_percent_control

SECTION G: SECONDARY OUTCOME - GI SYMPTOMS
======================================================================
gi_outcome_measured,gi_outcome_scale_name,gi_outcome_scale_direction_improvement,gi_outcome_scale_min_max_scores,gi_outcome_asd_baseline_mean,gi_outcome_asd_baseline_sd,gi_outcome_asd_post_mean,gi_outcome_asd_post_sd,gi_outcome_control_baseline_mean,gi_outcome_control_baseline_sd,gi_outcome_control_post_mean,gi_outcome_control_post_sd,gi_outcome_n_asd_analyzed,gi_outcome_n_control_analyzed,gi_outcome_timepoint_weeks,gi_outcome_specific_symptoms_measured,gi_symptom_constipation_reported,gi_symptom_diarrhea_reported,gi_symptom_abdominal_pain_reported

SECTION H: TERTIARY OUTCOME - SAFETY & ADVERSE EVENTS
======================================================================
adverse_events_measured,adverse_events_n_asd_total,adverse_events_n_asd_percent,adverse_events_n_control_total,adverse_events_n_control_percent,adverse_event_type_list,adverse_event_severity_list,adverse_event_causality_assessment,discontinuation_due_to_ae_n,discontinuation_due_to_ae_percent,serious_ae_reported

SECTION I: MICROBIOTA OUTCOME (if measured)
======================================================================
microbiota_outcome_measured,microbiota_analysis_type,microbiota_sequencing_method,microbiota_alpha_diversity_index,microbiota_alpha_diversity_asd_baseline_mean,microbiota_alpha_diversity_asd_post_mean,microbiota_beta_diversity_method,microbiota_specific_taxa_measured,microbiota_taxa_list,microbiota_dysbiosis_score_used

SECTION J: STATISTICAL ANALYSIS & RESULTS
======================================================================
statistical_test_used,effect_size_reported_type,effect_size_value,effect_size_95ci_lower,effect_size_95ci_upper,p_value_primary_outcome,p_value_gi_outcome,statistical_significance_threshold,multiple_comparisons_correction_used,correction_method,blinding_preserved_during_analysis

SECTION K: RISK OF BIAS ASSESSMENT
======================================================================
bias_assessment_tool_used,bias_randomization_risk,bias_allocation_concealment_risk,bias_deviation_risk,bias_missing_data_risk,bias_outcome_measurement_risk,bias_selection_reported_result_risk,bias_overall_risk_summary,bias_rationale_free_text

SECTION L: STUDY QUALITY & NOTES
======================================================================
study_quality_overall_rating,study_quality_issues_noted,reporting_selective_outcome_description,study_conflicts_interest_disclosed,study_funding_source,study_limitations_acknowledged,publication_bias_risk_assessment,extracted_data_completeness_percent,data_extraction_notes_free_text

SECTION M: AUTHOR CONTACT INFORMATION (for clarification)
======================================================================
author_contact_email,author_contact_attempted,author_contact_date,author_provided_additional_data,author_provided_data_description
```

---

## PART 3: DETAILED FIELD DESCRIPTIONS

### **SECTION A: PAPER IDENTIFICATION**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `study_id` | Text | Unique identifier for this paper | zheng_2025_001 |
| `study_first_author` | Text | Last name of first author | Zheng |
| `study_year` | Number | Publication year | 2025 |
| `study_doi` | Text | Digital Object Identifier | 10.3389/fmicb.2025.1557174 |
| `study_title` | Text | Full paper title | Comprehensive analysis of gut microbiota... |
| `study_journal` | Text | Journal name | Frontiers in Microbiology |
| `publication_date` | Date | Exact publication date | 2025-01-15 |
| `url_fulltext` | Text | URL to paper (if open access) | https://doi.org/... |
| `extraction_date` | Date | When you extracted this paper | 2025-12-22 |
| `extractor_name` | Text | Who did extraction (for quality control) | Farid |
| `extraction_time_minutes` | Number | How long extraction took (quality check) | 25 |

---

### **SECTION B: STUDY DESIGN & METHODOLOGY**

| Field | Type | Options/Description | Example |
|-------|------|-------------------|---------|
| `study_design` | Text | Detailed design description | Parallel-group, 12-week RCT |
| `study_design_category` | Text | RCT, non-RCT, cohort, case-control, open-label | RCT |
| `randomization_method` | Text | How participants assigned to groups | Random number table, computer-generated |
| `allocation_concealment` | Yes/No | Were allocators blinded to assignment? | Yes |
| `blinding_participants` | Yes/No/Unclear | Could participants know treatment? | No |
| `blinding_assessors` | Yes/No/Unclear | Were outcome assessors blinded? | Yes |
| `blinding_outcome_assessor` | Yes/No/Unclear | Specific blinding for primary outcome assessment | Yes |
| `intention_to_treat` | Yes/No/Unclear | Was analysis ITT (everyone as enrolled)? | Yes |
| `study_duration_weeks` | Number | Total treatment duration | 12 |
| `follow_up_completed_percent` | Number (%) | Retention rate | 92 |

---

### **SECTION C: POPULATION CHARACTERISTICS**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `population_autism_diagnosis_criterion` | Text | Diagnostic method used | ADOS, DSM-5 clinical assessment |
| `population_n_asd_baseline` | Number | Number of ASD participants enrolled | 34 |
| `population_n_control_baseline` | Number | Number of control participants | 18 |
| `population_n_total_baseline` | Number | Total sample size | 52 |
| `population_age_mean_asd` | Number | Mean age of ASD group (years) | 7.2 |
| `population_age_sd_asd` | Number | Standard deviation of age | 2.1 |
| `population_age_range_asd` | Text | Age range | 4-11 years |
| `population_age_mean_control` | Number | Mean control age | 6.8 |
| `population_sex_percent_male_asd` | Number (%) | Percent male in ASD group | 78 |
| `population_baseline_autism_severity_scale` | Text | Which scale used at baseline | CARS |
| `population_baseline_autism_severity_mean` | Number | Baseline severity score | 38.2 |
| `exclusion_criteria_specified` | Yes/No | Were exclusion criteria clearly stated? | Yes |

---

### **SECTION D: INTERVENTION CHARACTERISTICS**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `intervention_type` | Text | Broad category | Probiotics |
| `intervention_category` | Text | Specific type | Multi-strain probiotics |
| `intervention_agent_species` | Text | Bacterial/fungal species | Lactobacillus plantarum, Bifidobacterium longum |
| `intervention_agent_strain` | Text | Specific strain designation | PS128 |
| `intervention_formulation` | Text | Form delivered | Capsule, powder, liquid |
| `intervention_dose_cfu` | Number | Colony-forming units | 10 billion |
| `intervention_duration_weeks` | Number | Treatment length | 12 |
| `intervention_frequency_daily` | Number | Doses per day | 1 |
| `intervention_administration_route` | Text | Oral, tube-fed, etc. | Oral |
| `probiotic_strain_psychobiotic_claim` | Yes/No | Marketed as psychobiotic (brain-active)? | Yes |
| `fmt_donor_type` | Text | If FMT: donor selection | Healthy sibling, screened donor, commercial bank |
| `fmt_preparation_method` | Text | How processed | Fresh, frozen, lyophilized |
| `fmt_delivery_route` | Text | How administered | Colonoscopy, nasogastric tube, capsule |
| `cointerventions_specified` | Yes/No | Were other treatments used? | Yes |
| `cointerventions_description` | Text | What other treatments | Dietary modification, behavioral therapy |

---

### **SECTION E: COMPARISON/CONTROL CONDITIONS**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `control_condition_type` | Text | Type of control | Placebo, no treatment, standard care |
| `control_agent_description` | Text | What was given to control | Matching capsule with inert powder |
| `control_duration_weeks` | Number | How long control lasted | 12 |
| `control_fidelity_check` | Yes/No | Was adherence monitored? | Yes |
| `control_n_baseline` | Number | Control group size at baseline | 18 |

---

### **SECTION F: PRIMARY OUTCOME - BEHAVIORAL**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `primary_outcome_measured` | Yes/No | Was a behavioral outcome measured? | Yes |
| `primary_outcome_scale_name` | Text | Name of scale | Childhood Autism Rating Scale (CARS) |
| `primary_outcome_scale_direction_improvement` | Text | Lower or higher = better? | Lower = improvement |
| `primary_outcome_scale_min_max_scores` | Text | Range of possible scores | 15-60 |
| `primary_outcome_asd_baseline_mean` | Number | ASD group baseline mean | 38.2 |
| `primary_outcome_asd_baseline_sd` | Number | ASD group baseline SD | 4.1 |
| `primary_outcome_asd_post_mean` | Number | ASD group post-intervention mean | 35.1 |
| `primary_outcome_asd_post_sd` | Number | ASD group post SD | 4.3 |
| `primary_outcome_control_baseline_mean` | Number | Control baseline mean | 16.2 |
| `primary_outcome_control_post_mean` | Number | Control post mean | 16.1 |
| `primary_outcome_n_asd_analyzed` | Number | N analyzed (may differ from enrolled) | 33 |
| `primary_outcome_n_control_analyzed` | Number | Control N analyzed | 17 |
| `primary_outcome_timepoint_weeks` | Number | When measured post-intervention | 12 |
| `primary_outcome_missing_data_percent_asd` | Number (%) | Dropout from ASD group | 3 |
| `primary_outcome_missing_data_percent_control` | Number (%) | Dropout from control | 6 |

---

### **SECTION G: SECONDARY OUTCOME - GI SYMPTOMS**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `gi_outcome_measured` | Yes/No | Was GI symptom outcome measured? | Yes |
| `gi_outcome_scale_name` | Text | Scale name | Gastrointestinal Symptom Rating Scale (GSRS) |
| `gi_outcome_scale_direction_improvement` | Text | Lower/higher = better | Lower = improvement (fewer symptoms) |
| `gi_outcome_asd_baseline_mean` | Number | ASD GI baseline | 24.3 |
| `gi_outcome_asd_post_mean` | Number | ASD GI post-intervention | 18.2 |
| `gi_outcome_control_baseline_mean` | Number | Control GI baseline | 8.1 |
| `gi_outcome_control_post_mean` | Number | Control GI post | 8.0 |
| `gi_symptom_constipation_reported` | Yes/No | Constipation specifically measured? | Yes |
| `gi_symptom_diarrhea_reported` | Yes/No | Diarrhea specifically measured? | Yes |
| `gi_symptom_abdominal_pain_reported` | Yes/No | Abdominal pain measured? | Yes |

---

### **SECTION H: SAFETY & ADVERSE EVENTS**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `adverse_events_measured` | Yes/No | Were AE actively monitored? | Yes |
| `adverse_events_n_asd_total` | Number | How many ASD participants experienced any AE | 8 |
| `adverse_events_n_asd_percent` | Number (%) | Percent of ASD group | 24% |
| `adverse_event_type_list` | Text | Types reported | Diarrhea, flatulence, hyperactivity |
| `adverse_event_severity_list` | Text | Severity breakdown | Mild (4), Moderate (3), Severe (1) |
| `discontinuation_due_to_ae_n` | Number | How many stopped due to AE | 2 |
| `serious_ae_reported` | Yes/No | Any serious adverse events? | No |

---

### **SECTION I: MICROBIOTA OUTCOME (OPTIONAL)**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `microbiota_outcome_measured` | Yes/No | Was microbiota composition measured? | Yes |
| `microbiota_analysis_type` | Text | 16S rRNA, shotgun, culture-based, etc. | 16S rRNA gene sequencing |
| `microbiota_sequencing_method` | Text | Specific platform | Illumina MiSeq |
| `microbiota_alpha_diversity_index` | Text | Shannon, Simpson, Chao1, etc. | Shannon index |
| `microbiota_alpha_diversity_asd_baseline_mean` | Number | Baseline diversity | 3.45 |
| `microbiota_alpha_diversity_asd_post_mean` | Number | Post-intervention diversity | 3.62 |
| `microbiota_specific_taxa_measured` | Yes/No | Specific bacteria identified? | Yes |
| `microbiota_taxa_list` | Text | Which taxa analyzed | Lactobacillus, Bifidobacterium, Faecalibacterium |

---

### **SECTION J: STATISTICAL ANALYSIS & RESULTS**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `statistical_test_used` | Text | Which test reported results | t-test, Mann-Whitney U, ANCOVA |
| `effect_size_reported_type` | Text | Type of effect size | Cohen's d |
| `effect_size_value` | Number | Calculated effect size | 0.68 |
| `effect_size_95ci_lower` | Number | 95% CI lower bound | 0.32 |
| `effect_size_95ci_upper` | Number | 95% CI upper bound | 1.04 |
| `p_value_primary_outcome` | Number | P-value for primary outcome | 0.002 |
| `p_value_gi_outcome` | Number | P-value for GI outcome | 0.018 |
| `multiple_comparisons_correction_used` | Yes/No | Bonferroni or other correction? | Yes |
| `correction_method` | Text | Which correction applied | Bonferroni |
| `blinding_preserved_during_analysis` | Yes/No | Were analysts blinded during stats? | Unclear |

---

### **SECTION K: RISK OF BIAS ASSESSMENT**

| Field | Type | Options | Description |
|-------|------|---------|-------------|
| `bias_assessment_tool_used` | Text | RoB 2, ROBINS-I, NOS, etc. | Cochrane RoB 2 |
| `bias_randomization_risk` | Text | Low/Some concerns/High | Low risk |
| `bias_allocation_concealment_risk` | Text | Low/Some concerns/High | Low risk |
| `bias_deviation_risk` | Text | Low/Some concerns/High | Some concerns |
| `bias_missing_data_risk` | Text | Low/Some concerns/High | Low risk |
| `bias_outcome_measurement_risk` | Text | Low/Some concerns/High | Low risk |
| `bias_selection_reported_result_risk` | Text | Low/Some concerns/High | Low risk |
| `bias_overall_risk_summary` | Text | Low/Some concerns/High | Low risk |
| `bias_rationale_free_text` | Text | Explanation of risk | Study was blinded RCT with proper randomization... |

---

### **SECTION L: STUDY QUALITY & NOTES**

| Field | Type | Description | Example |
|-------|------|-------------|---------|
| `study_quality_overall_rating` | Text | High/Medium/Low | High |
| `study_quality_issues_noted` | Text | Specific concerns | Small sample, high dropout in control |
| `publication_bias_risk_assessment` | Yes/No | Likely to be published regardless of results? | Likely (industry-funded) |
| `extracted_data_completeness_percent` | Number (%) | How much data was available | 95 |
| `data_extraction_notes_free_text` | Text | Free text notes for future reference | Authors provided supplementary data |

---

## PART 4: BLANK CSV TEMPLATE

Here's the template in CSV format ready to use:

```csv
study_id,study_first_author,study_year,study_doi,study_title,study_journal,publication_date,extraction_date,extractor_name,extraction_time_minutes,study_design,study_design_category,randomization_method,allocation_concealment,blinding_participants,blinding_assessors,intention_to_treat,study_duration_weeks,follow_up_completed_percent,population_autism_diagnosis_criterion,population_n_asd_baseline,population_n_control_baseline,population_age_mean_asd,population_age_sd_asd,population_age_range_asd,population_age_mean_control,population_sex_percent_male_asd,population_baseline_autism_severity_scale,population_baseline_autism_severity_mean,population_exclusion_criteria_specified,intervention_type,intervention_category,intervention_agent_species,intervention_agent_strain,intervention_dose_cfu,intervention_duration_weeks,intervention_frequency_daily,intervention_administration_route,intervention_cointerventions_specified,intervention_cointerventions_description,control_condition_type,control_agent_description,control_duration_weeks,control_n_baseline,primary_outcome_measured,primary_outcome_scale_name,primary_outcome_scale_direction,primary_outcome_asd_baseline_mean,primary_outcome_asd_baseline_sd,primary_outcome_asd_post_mean,primary_outcome_asd_post_sd,primary_outcome_control_baseline_mean,primary_outcome_control_post_mean,primary_outcome_n_asd_analyzed,primary_outcome_n_control_analyzed,primary_outcome_timepoint_weeks,primary_outcome_missing_pct_asd,gi_outcome_measured,gi_outcome_scale_name,gi_outcome_asd_baseline_mean,gi_outcome_asd_post_mean,gi_outcome_control_baseline_mean,gi_outcome_control_post_mean,gi_outcome_constipation_reported,gi_outcome_diarrhea_reported,gi_outcome_abdominal_pain_reported,adverse_events_measured,adverse_events_n_asd_total,adverse_events_n_asd_percent,adverse_event_type_list,adverse_event_severity_list,discontinuation_due_to_ae_n,serious_ae_reported,microbiota_outcome_measured,microbiota_analysis_type,microbiota_alpha_diversity_asd_baseline,microbiota_alpha_diversity_asd_post,microbiota_specific_taxa_measured,statistical_test_used,effect_size_type,effect_size_value,effect_size_95ci_lower,effect_size_95ci_upper,p_value_primary,p_value_gi,multiple_comparisons_correction,bias_assessment_tool,bias_overall_risk,bias_rationale,study_quality_rating,study_quality_issues,publication_bias_risk,extracted_data_completeness_pct,extraction_notes
```

---

## PART 5: HOW YOU'LL USE THIS FORM

### **Extraction Workflow (for each included paper):**

1. **Open paper PDF** and this CSV template side-by-side
2. **Extract Section A** (paper ID, DOI, journal) - 2 minutes
3. **Extract Section B** (study design, randomization, blinding) - 3 minutes
4. **Extract Section C** (population characteristics) - 3 minutes
5. **Extract Sections D-E** (intervention & control) - 4 minutes
6. **Extract Sections F-G** (primary and secondary outcomes) - 5 minutes
7. **Extract Section H** (adverse events) - 2 minutes
8. **Extract Section J** (statistics & p-values) - 3 minutes
9. **Extract Section K** (risk of bias) - 3 minutes
10. **Extract Section L** (quality notes) - 2 minutes

**Total per paper: ~25-30 minutes** (faster after first 5-10 papers)

For 50 papers: ~20-25 hours total extraction time

---

## PART 6: QUALITY CONTROL PROCEDURES

### **Single Extractor + Verification:**

Since you're the primary extractor:

1. **Extract 80% of papers normally**
2. **Select 10 papers randomly** (20% of papers)
3. **Re-extract those 10 papers** independently after 2+ weeks (fresh eyes)
4. **Compare extractions** - look for discrepancies
5. **Document agreement rate** (aim for >90% agreement on numerical data)
6. **Resolve discrepancies** by re-reading original paper

This process:
- Catches your systematic errors (e.g., always using wrong scale direction)
- Demonstrates quality control to reviewers
- Shows in final report: "Two-stage extraction with 10 papers (20%) re-extracted for verification. Agreement rate: 94%"

---

## PART 7: CONVERSION TO DAY 10 HARMONIZATION FORMAT

This extraction form feeds directly into your Day 10 R script.

**The flow:**
```
50 papers → Extracted data in CSV (this form)
              ↓
           Load into R
              ↓
           Apply harmonization
           (calculate Cohen's d, standardize scales)
              ↓
           Create unified dataset
              ↓
           Meta-analysis ready
```

You've already written the code (Day 10) to handle this. This form generates the input data.

---

## PART 8: MISSING DATA STRATEGY

### **When data is not clearly reported:**

**Rule 1: Imputation (if possible)**
- If study reports N, means, but SD not given:
  - Contact authors first
  - If no response: Calculate from reported 95% CI or use SD from similar studies in your review
  - Document imputation clearly

**Rule 2: Sensitivity Analysis**
- Include studies with imputed data in main analysis
- Run sensitivity analysis excluding imputed studies
- Report both results

**Rule 3: Never guess or estimate vaguely**
- If data truly unavailable: Leave field blank
- Note: "Data not reported; authors contacted [date], no response"
- Later: Include/exclude for sensitivity

---

## PART 9: FIELDS EXPLAINED - WHY EACH MATTERS

**Why collect `extraction_time_minutes`?**
- Consistency check: If extracting paper A takes 45 min but paper B takes 5 min, something's wrong
- You might have missed data in paper B

**Why collect `bias_overall_risk`?**
- Determines which studies are Tier 1 vs Tier 4
- Affects whether they go in primary meta-analysis

**Why separate `effect_size_value` from `p_value_primary`?**
- P-values can be identical with different effect sizes (depends on N)
- You need both for proper meta-analysis

**Why collect `adverse_event_type_list`?**
- Allows subgroup analysis: "Do single-strain vs multi-strain probiotics have different AE profiles?"
- Safety is crucial for clinical interpretation

---

## PART 10: THIS FORM IN YOUR PORTFOLIO

When reviewers see this data extraction form in your GitHub, they recognize:

✅ **Comprehensive methodology** - Every important variable is captured  
✅ **Standardization** - No subjective decisions during extraction  
✅ **Quality control** - Duplicate extraction planned  
✅ **Transparency** - Every field can be verified in the original paper  
✅ **Meta-analysis ready** - Data structure is perfect for pooling  

This is professional research conduct.

---

## FILES TO CREATE NOW

The CSV template will be saved as:
```
data_extraction_form_template.csv
```

This is the blank form you'll copy 50 times (one per included paper).

---

**Status: Block 3 COMPLETE ✅**

---

*Author: Farid | Date: Day 11, Block 3 | Time: 15 minutes for this block*
