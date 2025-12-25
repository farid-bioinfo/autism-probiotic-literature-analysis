# DATA EXTRACTION FORM: DETAILED DATA DICTIONARY
## Autism-Probiotics Systematic Review

**Purpose:** This document explains every column in the data extraction form (CSV template). Use this while extracting data from each paper.

**Key Principle:** Every field has predefined acceptable values where possible. This prevents inconsistency and makes analysis easier.

---

## SECTION A: STUDY IDENTIFICATION & BASIC CHARACTERISTICS

### study_id
**Definition:** Unique identifier for this paper in the review  
**Format:** TEXT  
**Example:** zheng_2025 OR smith_liu_2022  
**Acceptable Values:** First author last name_publication_year  
**Notes:** Keep consistent; use for linking papers if extracting in multiple sessions

### paper_number
**Definition:** Sequential number for this paper in your review  
**Format:** INTEGER  
**Example:** 1, 2, 3...50  
**Acceptable Values:** 1-50 (or however many papers you include)  
**Notes:** Helps with tracking and PRISMA flow diagram

### first_author
**Definition:** Last name of first author  
**Format:** TEXT  
**Example:** Zheng, Smith, Johnson  
**Acceptable Values:** Any author name  
**Notes:** Use for quick identification

### publication_year
**Definition:** Year the paper was published  
**Format:** INTEGER (4 digits)  
**Example:** 2025, 2024, 2020  
**Acceptable Values:** 2015-2025 (per your inclusion criteria)  
**Notes:** Confirm in header of paper, not acceptance date

### doi
**Definition:** Digital Object Identifier  
**Format:** TEXT  
**Example:** 10.3389/fmicb.2025.1557174  
**Acceptable Values:** Complete DOI string  
**Notes:** Essential for reproducibility; found on paper or Google Scholar

### journal_name
**Definition:** Name of journal where published  
**Format:** TEXT  
**Example:** Frontiers in Microbiology, Nature Medicine, PLOS ONE  
**Acceptable Values:** Exact journal name as published  
**Notes:** Helps identify journal impact/prestige for context

### study_title
**Definition:** Full title of the study  
**Format:** TEXT  
**Example:** "Comprehensive analysis of gut microbiota and fecal metabolites in patients with autism spectrum disorder"  
**Acceptable Values:** Exact title from paper  
**Notes:** Copy-paste from paper; helps verify you have right paper

---

## SECTION B: STUDY DESIGN & METHODOLOGY

### study_design
**Definition:** Overall research design  
**Format:** CATEGORICAL  
**Acceptable Values:**
- RCT_parallel (randomized, parallel groups)
- RCT_crossover (randomized, crossover design)
- Non-RCT_controlled (quasi-experimental)
- Cohort_prospective (prospective cohort)
- Case_control (retrospective case-control)
- Open_label_trial (unblinded, pre-post measurement)

**Example:** RCT_parallel  
**Notes:** Critical for quality assessment; determines which tier

### country
**Definition:** Country/countries where study conducted  
**Format:** TEXT  
**Example:** USA, China, UK, USA and Canada  
**Acceptable Values:** Any country name(s)  
**Notes:** Context for generalizability

### funding_source
**Definition:** Who funded the research  
**Format:** TEXT  
**Example:** National Institutes of Health, Biocodex Inc., University of Cambridge  
**Acceptable Values:** Any funding organization  
**Notes:** Important for conflicts of interest assessment

### study_quality_tier
**Definition:** Pre-classified quality tier based on design (from PRISMA Protocol)  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Tier_1 (RCT with proper randomization, allocation concealment, blinding, ITT)
- Tier_2 (RCT with some bias concerns)
- Tier_3 (Non-RCT controlled trial)
- Tier_4 (Prospective cohort or open-label, n≥15)
- Tier_5 (Retrospective case-control)

**Example:** Tier_1  
**Notes:** Fill this AFTER extracting detailed methodology; it drives analysis decisions

---

## SECTION C: POPULATION CHARACTERISTICS

### sample_size_total
**Definition:** Total number of participants enrolled/analyzed  
**Format:** INTEGER  
**Example:** 82, 150, 34  
**Acceptable Values:** Any positive integer ≥15  
**Notes:** If multiple studies in one paper, use primary study n

### sample_size_intervention
**Definition:** Number of participants receiving the intervention  
**Format:** INTEGER  
**Example:** 41  
**Acceptable Values:** Any positive integer  
**Notes:** For controlled trials; for observational, may be "case" group

### sample_size_control
**Definition:** Number of participants in control group  
**Format:** INTEGER  
**Example:** 41  
**Acceptable Values:** Any positive integer  
**Notes:** For observational studies without control, leave blank (extract "case" vs "baseline")

### mean_age_years
**Definition:** Mean age of participants (or mean of both groups if separate reported)  
**Format:** DECIMAL (one decimal place)  
**Example:** 7.2, 12.5, 8.4  
**Acceptable Values:** Any positive number  
**Notes:** If only age range given, estimate midpoint. If two groups, report both separately if possible.

### age_range
**Definition:** Reported age range of participants  
**Format:** TEXT  
**Example:** 2-16 years, 4-12 years, <18 years  
**Acceptable Values:** Any range descriptor  
**Notes:** Helps contextualize; important for subgroup analysis

### age_group_primary
**Definition:** Classify into child vs. adult for subgroup analysis  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Children (<18 years)
- Adults (≥18 years)
- Mixed (some children, some adults)

**Example:** Children  
**Notes:** Critical for subgroup analysis

### gender_percent_male
**Definition:** Percentage of male participants  
**Format:** DECIMAL (0-100)  
**Example:** 75.6, 82.0, 65.0  
**Acceptable Values:** 0-100  
**Notes:** If not reported, write "NR" (Not Reported); used for participant description

### asd_diagnosis_method
**Definition:** How ASD was diagnosed  
**Format:** CATEGORICAL  
**Acceptable Values:**
- ADOS (Autism Diagnostic Observation Schedule)
- ADOS-2 (updated version)
- DSM-5_criteria (clinician diagnosis per DSM-5)
- ICD-10_criteria (clinician diagnosis per ICD-10)
- Clinical_diagnosis_unspecified (clinician judgment, method not stated)
- Not_specified

**Example:** ADOS  
**Notes:** Important for quality; ADOS is gold standard

### asd_severity_level
**Definition:** Was severity level reported? If so, what level?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Level_1_mild
- Level_2_moderate
- Level_3_severe
- Mixed_levels
- Not_reported

**Example:** Mixed_levels  
**Notes:** Helps assess whether study population is representative

### comorbid_conditions
**Definition:** Were any comorbidities present?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes
- No
- Not_specified

**Example:** Yes  
**Notes:** If Yes, fill in next column with details

### comorbid_conditions_details
**Definition:** If comorbidities present, which ones?  
**Format:** TEXT  
**Example:** ADHD, anxiety disorder, intellectual disability OR "None reported"  
**Acceptable Values:** Any condition names  
**Notes:** Important for subgroup analysis; exclusionary comorbidities affect generalizability

---

## SECTION D: INTERVENTION CHARACTERISTICS

### intervention_type
**Definition:** Detailed description of intervention  
**Format:** TEXT  
**Example:** "Lactobacillus plantarum PS128, 5 billion CFU daily for 8 weeks" OR "FMT via colonoscopy, donor-matched, 3 months follow-up"  
**Acceptable Values:** Detailed text from paper  
**Notes:** Copy-paste relevant intervention description; used for narrative synthesis

### intervention_category_probiotic_prebiotic_synbiotic_fmt
**Definition:** Classify intervention type  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Probiotic_single_strain
- Probiotic_multi_strain
- Prebiotic
- Synbiotic
- FMT_fecal_microbiota_transplantation
- FMT_washed_microbiota_transplantation
- FMT_lyophilized
- Multiple_interventions

**Example:** Probiotic_multi_strain  
**Notes:** Used for subgroup analysis (most important grouping variable)

### intervention_species_strains
**Definition:** Exact species and strains used  
**Format:** TEXT  
**Example:** "Lactobacillus plantarum PS128, Bifidobacterium longum" OR "Multi-strain formula: 12 species listed in Table 1"  
**Acceptable Values:** Any species/strain names  
**Notes:** Critical detail; used for meta-analysis subgrouping

### intervention_dose_cfu_or_equivalent
**Definition:** Dose of probiotics/prebiotics administered  
**Format:** TEXT  
**Example:** "5 billion CFU daily" OR "10 grams inulin daily" OR "FMT 50g stool suspension"  
**Acceptable Values:** Any dose with units  
**Notes:** Unit consistency helps with subgroup analysis

### intervention_duration_weeks
**Definition:** Length of intervention (in weeks)  
**Format:** DECIMAL  
**Example:** 8, 12, 4.3  
**Acceptable Values:** Any positive number  
**Notes:** Follow-up duration goes elsewhere; this is intervention period only

### intervention_form
**Definition:** How was intervention administered?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Capsule
- Powder
- Liquid_suspension
- Sachet
- Food_fortified
- Colonoscopy_infusion (for FMT)
- Nasogastric_tube
- Enema (for FMT)
- Other

**Example:** Capsule  
**Notes:** May affect absorption/compliance

### control_type
**Definition:** What was the comparison?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Placebo_matched
- Placebo_unmatched
- No_treatment
- Waitlist_control
- Standard_care
- Active_comparator (e.g., probiotic_A vs probiotic_B)
- Baseline_only (observational study comparison)

**Example:** Placebo_matched  
**Notes:** Critical for quality assessment

### study_duration_weeks
**Definition:** Total length of study (intervention + follow-up if applicable)  
**Format:** DECIMAL  
**Example:** 12, 24, 8  
**Acceptable Values:** Any positive number  
**Notes:** Longer follow-up = more robust findings

---

## SECTION E: PRIMARY OUTCOME (BEHAVIORAL/DEVELOPMENTAL)

### primary_outcome_measure_tool
**Definition:** Which validated scale was used for primary outcome?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- CARS (Childhood Autism Rating Scale)
- CARS-2 (updated version)
- ADOS (Autism Diagnostic Observation Schedule)
- ADOS-CSS (Calibrated Severity Score)
- ABC (Aberrant Behavior Checklist)
- SRS (Social Responsiveness Scale)
- SRS-2 (updated version)
- ATEC (Autism Treatment Evaluation Checklist)
- CGI-I (Clinical Global Impression-Improvement)
- BAPQ (Broader Autism Phenotype Questionnaire)
- Other_specify

**Example:** CARS  
**Notes:** Critical for effect size calculation; different scales have different interpretations

### primary_outcome_baseline_mean_int
**Definition:** Mean baseline score in intervention group  
**Format:** DECIMAL  
**Example:** 32.4  
**Acceptable Values:** Any number  
**Notes:** Used to calculate Cohen's d; if not reported, search appendix/results

### primary_outcome_baseline_sd_int
**Definition:** Standard deviation of baseline score, intervention group  
**Format:** DECIMAL  
**Example:** 4.2  
**Acceptable Values:** Any positive number  
**Notes:** Critical for effect size calculation

### primary_outcome_baseline_mean_ctrl
**Definition:** Mean baseline score in control group  
**Format:** DECIMAL  
**Example:** 31.8  
**Acceptable Values:** Any number  
**Notes:** Check if groups balanced at baseline

### primary_outcome_baseline_sd_ctrl
**Definition:** Standard deviation baseline score, control group  
**Format:** DECIMAL  
**Example:** 4.5  
**Acceptable Values:** Any positive number  
**Notes:** Blank if no control group (observational)

### primary_outcome_post_mean_int
**Definition:** Mean post-intervention score in intervention group  
**Format:** DECIMAL  
**Example:** 28.1  
**Acceptable Values:** Any number  
**Notes:** Lower is better for CARS, ABC (improvement = lower score)

### primary_outcome_post_sd_int
**Definition:** SD post-intervention score, intervention group  
**Format:** DECIMAL  
**Example:** 4.8  
**Acceptable Values:** Any positive number  

### primary_outcome_post_mean_ctrl
**Definition:** Mean post-intervention score in control group  
**Format:** DECIMAL  
**Example:** 31.2  
**Acceptable Values:** Any number  
**Notes:** Blank if no control

### primary_outcome_post_sd_ctrl
**Definition:** SD post-intervention score, control group  
**Format:** DECIMAL  
**Example:** 4.3  
**Acceptable Values:** Any positive number  

### primary_outcome_cohens_d
**Definition:** Effect size (Cohen's d) already calculated in paper OR you calculate it  
**Format:** DECIMAL  
**Example:** 0.68, -0.21, 1.19  
**Acceptable Values:** Any number (positive or negative)  
**Notes:** If paper doesn't report, calculate: d = (post_int - post_ctrl) / pooled_SD. Negative = favorable for some scales.

### primary_outcome_ci_lower
**Definition:** Lower 95% confidence interval of effect size  
**Format:** DECIMAL  
**Example:** -0.39  
**Acceptable Values:** Any number  
**Notes:** If not reported, leave blank (we'll calculate in meta-analysis phase)

### primary_outcome_ci_upper
**Definition:** Upper 95% confidence interval of effect size  
**Format:** DECIMAL  
**Example:** -0.03  
**Acceptable Values:** Any number  

### primary_outcome_p_value
**Definition:** p-value for primary outcome comparison  
**Format:** DECIMAL (0-1)  
**Example:** 0.042, 0.0001, 0.31  
**Acceptable Values:** 0-1  
**Notes:** If reported as "p<0.001," write 0.001

### primary_outcome_direction
**Definition:** Did intervention improve or worsen outcome?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Improvement (intervention group better than control)
- No_difference
- Worsened (intervention group worse)
- Not_tested (observational study, no control)

**Example:** Improvement  
**Notes:** Sanity check on your Cohen's d calculation

---

## SECTION F: SECONDARY OUTCOME (GI SYMPTOMS)

### secondary_outcome_gi_tool
**Definition:** Which scale measured GI symptoms?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- GSRS (Gastrointestinal Symptom Rating Scale)
- 6-GSI (6-item Gastrointestinal Severity Index)
- BSFS (Bristol Stool Form Scale)
- Rome_III_criteria
- Symptom_frequency (reported as % with constipation, etc.)
- Not_measured
- Other_specify

**Example:** GSRS  
**Notes:** Blank if no GI outcome measured

### secondary_outcome_gi_baseline_mean_int
**Definition:** Mean baseline GI score, intervention group  
**Format:** DECIMAL  
**Example:** 18.5  
**Acceptable Values:** Any number  
**Notes:** Blank if not measured

### secondary_outcome_gi_baseline_sd_int
**Definition:** SD baseline GI score, intervention group  
**Format:** DECIMAL  
**Example:** 6.2  
**Acceptable Values:** Any positive number  

### secondary_outcome_gi_baseline_mean_ctrl
**Definition:** Mean baseline GI score, control group  
**Format:** DECIMAL  
**Example:** 19.1  
**Acceptable Values:** Any number  

### secondary_outcome_gi_baseline_sd_ctrl
**Definition:** SD baseline GI score, control group  
**Format:** DECIMAL  
**Example:** 6.8  
**Acceptable Values:** Any positive number  

### secondary_outcome_gi_post_mean_int
**Definition:** Mean post-intervention GI score, intervention group  
**Format:** DECIMAL  
**Example:** 12.3  
**Acceptable Values:** Any number  
**Notes:** Lower is better for GSRS

### secondary_outcome_gi_post_sd_int
**Definition:** SD post-intervention GI score, intervention group  
**Format:** DECIMAL  
**Example:** 5.1  
**Acceptable Values:** Any positive number  

### secondary_outcome_gi_post_mean_ctrl
**Definition:** Mean post-intervention GI score, control group  
**Format:** DECIMAL  
**Example:** 18.8  
**Acceptable Values:** Any number  

### secondary_outcome_gi_post_sd_ctrl
**Definition:** SD post-intervention GI score, control group  
**Format:** DECIMAL  
**Example:** 6.5  
**Acceptable Values:** Any positive number  

### secondary_outcome_gi_cohens_d
**Definition:** Effect size for GI outcome  
**Format:** DECIMAL  
**Example:** 0.95, -0.15  
**Acceptable Values:** Any number  
**Notes:** Calculate same way as primary outcome

### secondary_outcome_gi_p_value
**Definition:** p-value for GI outcome comparison  
**Format:** DECIMAL (0-1)  
**Example:** 0.008  
**Acceptable Values:** 0-1  

---

## SECTION G: TERTIARY OUTCOME (MICROBIOTA COMPOSITION)

### tertiary_alpha_diversity_measured
**Definition:** Was alpha diversity (species richness) measured?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes
- No
- Not_reported

**Example:** Yes  
**Notes:** Alpha diversity = how diverse is a single person's microbiota

### tertiary_alpha_metric
**Definition:** Which alpha diversity metric?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Shannon_index
- Simpson_index
- Chao1
- ACE
- Observed_species
- Other_specify

**Example:** Shannon_index  
**Notes:** Different metrics measure slightly different aspects

### tertiary_alpha_baseline
**Definition:** Baseline alpha diversity value (or baseline by group)  
**Format:** TEXT  
**Example:** "Int: 3.45±0.52, Ctrl: 3.62±0.48" OR "3.5"  
**Acceptable Values:** Any descriptive text with values  
**Notes:** Text format because format varies by paper

### tertiary_alpha_post
**Definition:** Post-intervention alpha diversity  
**Format:** TEXT  
**Example:** "Int: 3.52±0.51, Ctrl: 3.58±0.49"  
**Acceptable Values:** Any descriptive text  

### tertiary_differential_taxa
**Definition:** Were specific bacterial taxa reported as differential?  
**Format:** TEXT  
**Example:** "Klebsiella (↑ASD), Escherichia-Shigella (↑ASD), Bacteroides (↓ASD)" OR "14 differential OTUs at genus level"  
**Acceptable Values:** Any text description  
**Notes:** Narrative summary; specific taxa important for biological mechanism discussion

### tertiary_taxa_effect_direction
**Definition:** Direction of microbiota changes  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Toward_healthy (intervention moved dysbiotic microbiota toward normal)
- Away_from_healthy (worsened dysbiosis)
- No_change
- Mixed (some taxa improved, some worsened)
- Not_assessed

**Example:** Toward_healthy  
**Notes:** Interpretation of whether microbiota changes are favorable

---

## SECTION H: ADVERSE EVENTS & SAFETY

### adverse_events_reported
**Definition:** Were adverse events documented?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes
- No
- Not_reported

**Example:** Yes  
**Notes:** Critical for safety assessment

### adverse_events_type
**Definition:** What types of adverse events occurred?  
**Format:** TEXT  
**Example:** "Diarrhea (n=3), bloating (n=2), hyperactivity (n=1)" OR "None reported"  
**Acceptable Values:** Any description  
**Notes:** Be specific about types and frequencies

### adverse_events_n
**Definition:** Number of participants experiencing any adverse event  
**Format:** INTEGER  
**Example:** 6  
**Acceptable Values:** Any non-negative integer  
**Notes:** Blank if not reported

### adverse_events_percent
**Definition:** Percentage of participants with any adverse event  
**Format:** DECIMAL (0-100)  
**Example:** 14.6  
**Acceptable Values:** 0-100  
**Notes:** Calculate if not reported: (n_ae / n_total) × 100

### adverse_events_severity
**Definition:** How severe were adverse events?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Mild (transient, no functional impact)
- Moderate (interferes with daily function)
- Severe (hospitalization required)
- Mixed (range of severities)
- Not_specified

**Example:** Mild  
**Notes:** Important for safety profile assessment

### adverse_events_related
**Definition:** Were adverse events attributed to intervention?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Definitely_related
- Probably_related
- Possibly_related
- Unlikely_related
- Not_assessed

**Example:** Probably_related  
**Notes:** Author judgment; even if related, probiotics generally safe

### discontinuation_due_to_ae
**Definition:** Did any participants stop due to adverse events?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes
- No
- Not_reported

**Example:** No  
**Notes:** Indicates whether AE were serious enough to dropout

### discontinuation_n
**Definition:** Number of participants who discontinued due to AE  
**Format:** INTEGER  
**Example:** 0, 2, 5  
**Acceptable Values:** Any non-negative integer  
**Notes:** Blank if no discontinuation

---

## SECTION I: STUDY QUALITY & RISK OF BIAS

### blinding_status
**Definition:** Were participants/assessors blinded to intervention?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Double_blind (participants and outcome assessors blinded)
- Single_blind (participants or assessors blinded)
- Open_label (no blinding)
- Unclear

**Example:** Double_blind  
**Notes:** Critical for Tier 1-2 classification

### allocation_concealment
**Definition:** Was allocation concealment used?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes (randomization method prevents knowing next allocation)
- No (allocation predictable)
- Unclear
- Not_applicable (non-RCT)

**Example:** Yes  
**Notes:** Prevents selection bias in RCTs

### intention_to_treat
**Definition:** Was ITT analysis used (analyzed participants as assigned)?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes
- No (per-protocol analysis only)
- Partial (ITT + per-protocol reported)
- Not_applicable (not RCT)
- Unclear

**Example:** Yes  
**Notes:** Intent-to-treat is gold standard for avoiding bias

### attrition_rate_percent
**Definition:** Percentage of enrolled participants lost to follow-up  
**Format:** DECIMAL (0-100)  
**Example:** 12.5, 0, 28  
**Acceptable Values:** 0-100  
**Notes:** Calculate: ((n_enrolled - n_completed) / n_enrolled) × 100. Higher = worse.

### risk_of_bias_overall_rating
**Definition:** Overall RoB 2 or ROBINS-I assessment (done after full extraction)  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Low_risk
- Some_concerns
- High_risk (RoB 2)
- Moderate_risk
- Serious_risk
- Critical_risk (ROBINS-I)

**Example:** Some_concerns  
**Notes:** Fill after completing extraction; based on blinding, allocation, attrition, etc.

### funding_type
**Definition:** Type of funding source  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Government (NIH, EU grants, etc.)
- Academic (university funding)
- Non-profit (foundations)
- Industry (pharmaceutical, probiotic company)
- No_funding_stated
- Combination

**Example:** Industry  
**Notes:** Important for conflict of interest; some studies funded by probiotic manufacturers

### conflict_of_interest
**Definition:** Did authors declare conflicts of interest?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes_declared
- No_conflicts
- Not_stated
- Authors_employed_by_company (e.g., Biocodex scientist)

**Example:** Yes_declared  
**Notes:** Influences confidence in findings

### quality_concerns_notes
**Definition:** Any other methodological concerns?  
**Format:** TEXT  
**Example:** "Small sample size (n=22), no power calculation, missing data for 3 participants" OR "None identified"  
**Acceptable Values:** Any text  
**Notes:** Narrative description of quality issues affecting certainty

---

## SECTION J: DATA COMPLETENESS & EXTRACTION METADATA

### data_completeness_percent
**Definition:** Percentage of required data fields you successfully extracted  
**Format:** DECIMAL (0-100)  
**Example:** 95, 85, 100  
**Acceptable Values:** 0-100  
**Notes:** Track to identify problem papers early; target ≥85% for inclusion

### extraction_status
**Definition:** Is extraction complete?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Complete (all required data extracted)
- Partial (missing some non-critical data, but acceptable)
- Incomplete_awaiting_author (contacted authors for missing data)
- Excluded_insufficient_data

**Example:** Complete  
**Notes:** Helps identify papers needing follow-up

### extraction_date
**Definition:** Date you extracted this paper  
**Format:** DATE (YYYY-MM-DD)  
**Example:** 2025-12-20  
**Acceptable Values:** Any date  
**Notes:** Helps track when extraction occurred

### extracted_by
**Definition:** Who extracted the data?  
**Format:** TEXT  
**Example:** Farid, Reviewer_2  
**Acceptable Values:** Extractor name  
**Notes:** For duplicate extraction QC (20% of papers extracted by 2 people)

### author_contact_attempted
**Definition:** Did you contact authors for missing data?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes
- No
- Not_needed (had all data)

**Example:** Yes  
**Notes:** Track for transparency

### author_response_received
**Definition:** If contacted, did authors respond?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes (received data)
- No_response
- Declined_to_share
- Not_applicable

**Example:** Yes  
**Notes:** Track to report in Methods section

### data_verification_check
**Definition:** Was a second person verify this extraction?  
**Format:** CATEGORICAL  
**Acceptable Values:**
- Yes (verified correct)
- Yes_corrections_made (found errors, fixed them)
- No_verification
- N/A (part of 80% not requiring double-check)

**Example:** Yes  
**Notes:** Quality control measure for critical papers

---

## USAGE INSTRUCTIONS

### How to Complete This Form

**For each paper:**

1. **Start with Section A (Identification)** - Basics that are easy to find
2. **Move to Section B (Design)** - Read Methods section
3. **Do Section C (Population)** - Read participant table/description
4. **Do Section D (Intervention)** - Read intervention section carefully
5. **Extract Outcomes (E, F, G)** - Read Results section, look for tables with numerical data
6. **Do Section H (Safety)** - Read adverse events paragraph
7. **Do Section I (Quality)** - Fill based on your reading; refer to RoB 2 checklist if RCT
8. **Complete Section J (Metadata)** - Record extraction details

### Critical Data Elements

Some fields are more important than others. If you can't find these, consider contacting the author:

**MUST HAVE:**
- Sample size (total, intervention, control)
- Primary outcome mean/SD (baseline and post)
- p-value or effect size

**VERY IMPORTANT:**
- Study design (determines Tier)
- Intervention details (species, dose, duration)
- Blinding/allocation concealment (RCTs)

**HELPFUL BUT LESS CRITICAL:**
- Microbiota composition details
- Tertiary outcomes
- Author conflict of interest

### Extraction Timeline per Paper

- Simple paper (clear methods, complete data): **20-30 minutes**
- Complex paper (multiple intervention groups, missing data): **45-60 minutes**
- Average paper: **30-40 minutes**

**50 papers × 35 minutes average = 1,750 minutes = ~29 hours**

Plan to extract across 4-6 weeks (~5-7 hours per week).

---

## CSV vs. SPREADSHEET

**You have two options for entering data:**

**Option A: Excel/Google Sheets** (recommended)
- More visually intuitive
- Easy to add dropdown menus for categorical variables
- Can color-code problems
- Then export as CSV for analysis

**Option B: Direct CSV in text editor**
- More portable
- Easier to version control on GitHub
- Less prone to formatting errors

**Recommendation:** Use Google Sheets or Excel while extracting (easier), then download as CSV for analysis.

---

**Status: Block 3 COMPLETE ✅**

Next: Block 4 (10 min) - GitHub setup and first commit

---

*Author: Farid | Date: Day 11, Block 3 | Time: 15 minutes for this block*
