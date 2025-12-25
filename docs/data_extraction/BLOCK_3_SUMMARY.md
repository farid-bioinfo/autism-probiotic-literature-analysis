# BLOCK 3 SUMMARY: DATA EXTRACTION FORM

**Completion Time:** 15 minutes  
**Status:** ✅ COMPLETE  
**Key Deliverable:** Standardized form you'll use for all 50+ papers

---

## WHAT WE JUST CREATED

Two files that work together:

**1. data_extraction_form_template.csv**
- 68 columns representing every data point you need to extract
- CSV format (machine-readable, importable to Excel or Google Sheets)
- Ready to duplicate for each paper

**2. DATA_EXTRACTION_DICTIONARY.md**
- 2,500+ words explaining what each column means
- Acceptable values for categorical fields
- Examples and extraction guidance
- The rulebook for consistent data extraction

---

## WHY THIS MATTERS

When you're extracting data from 50 papers across multiple weeks, you need a standardized form to prevent inconsistency.

**Without this form:** "Am I measuring this the same way in paper #5 that I did in paper #1?"

**With this form:** Every field has defined acceptable values, examples, and guidance.

---

## THE 68 COLUMNS ORGANIZED BY SECTION

### **SECTION A: STUDY IDENTIFICATION (7 columns)**
- study_id, paper_number, first_author, publication_year, doi, journal_name, study_title
- *Purpose:* Identify the paper uniquely and link to source

### **SECTION B: STUDY DESIGN & METHODOLOGY (5 columns)**
- study_design, country, funding_source, study_quality_tier
- *Purpose:* Classify study type and assess quality potential

### **SECTION C: POPULATION CHARACTERISTICS (8 columns)**
- sample_size_total, sample_size_intervention, mean_age_years, gender_percent_male, asd_diagnosis_method, asd_severity_level, comorbid_conditions
- *Purpose:* Describe who participated and ensure representativeness

### **SECTION D: INTERVENTION CHARACTERISTICS (6 columns)**
- intervention_type, intervention_category, intervention_species_strains, intervention_dose, intervention_duration_weeks, intervention_form, control_type
- *Purpose:* Understand what intervention was given and how it was delivered

### **SECTION E: PRIMARY OUTCOME - BEHAVIORAL (13 columns)**
- primary_outcome_measure_tool, baseline_mean_int/sd, baseline_mean_ctrl/sd, post_mean_int/sd, post_mean_ctrl/sd, cohens_d, ci_lower, ci_upper, p_value, direction
- *Purpose:* Extract core behavioral outcome data needed for meta-analysis

### **SECTION F: SECONDARY OUTCOME - GI SYMPTOMS (13 columns)**
- secondary_outcome_gi_tool, baseline_mean_int/sd, baseline_mean_ctrl/sd, post_mean_int/sd, post_mean_ctrl/sd, cohens_d, p_value
- *Purpose:* Extract GI outcome if available for subgroup analysis

### **SECTION G: TERTIARY OUTCOME - MICROBIOTA (6 columns)**
- tertiary_alpha_diversity_measured, tertiary_alpha_metric, tertiary_alpha_baseline, tertiary_alpha_post, tertiary_differential_taxa, tertiary_taxa_effect_direction
- *Purpose:* Capture mechanistic insights about microbiota changes

### **SECTION H: ADVERSE EVENTS & SAFETY (7 columns)**
- adverse_events_reported, adverse_events_type, adverse_events_n, adverse_events_percent, adverse_events_severity, adverse_events_related, discontinuation_due_to_ae
- *Purpose:* Document safety profile of interventions

### **SECTION I: STUDY QUALITY & RISK OF BIAS (7 columns)**
- blinding_status, allocation_concealment, intention_to_treat, attrition_rate_percent, risk_of_bias_overall_rating, funding_type, conflict_of_interest
- *Purpose:* Assess quality using standardized criteria (RoB 2, ROBINS-I)

### **SECTION J: EXTRACTION METADATA (7 columns)**
- data_completeness_percent, extraction_status, extraction_date, extracted_by, author_contact_attempted, author_response_received, data_verification_check
- *Purpose:* Track extraction process and quality control

---

## CRITICAL DATA ELEMENTS

**If you can only extract these, the paper is still usable:**

✅ Sample size (n_total, n_intervention, n_control)  
✅ Primary outcome means and SDs (baseline and post)  
✅ Either p-value OR effect size  
✅ Study design (determines quality tier)  

**If you're missing these, contact the authors:**

❌ No sample size  
❌ No outcome data at all  
❌ Can't determine if RCT or not  

---

## EXTRACTION WORKFLOW (How You'll Use This)

### **For each paper:**

1. **Download full PDF** → Open alongside extraction form
2. **Fill Section A** (ID info) - Easy, 3 minutes
3. **Skim Methods** → Fill Sections B, C, D - 10 minutes
4. **Read Results** → Extract outcome data Sections E, F, G - 15-20 minutes
5. **Search for adverse events** → Fill Section H - 5 minutes
6. **Assess quality** → Fill Section I (refer to RoB 2 checklist) - 5-10 minutes
7. **Record metadata** → Fill Section J - 2 minutes

**Total time per paper:** 30-40 minutes average

---

## TIMELINE FOR EXTRACTION

| Papers | Total Time | Per Week (If 5 hrs/week) |
|--------|-----------|------------------------|
| 10 | ~5.5 hours | 1 week |
| 20 | ~11 hours | 2.2 weeks |
| 30 | ~17.5 hours | 3.5 weeks |
| 50 | ~29 hours | 5.8 weeks |

**Realistic plan:** Extract 30 papers over 6 weeks at ~5 hours per week

---

## WORKING WITH THE FORM

### **Option 1: Google Sheets (Recommended)**
- Import CSV template into Google Sheets
- Add data validation (dropdown menus) for categorical fields
- Color-code rows as you extract them
- Easier to spot missing data
- Download as CSV when done

### **Option 2: Excel**
- Similar to Google Sheets
- Works offline
- Export as CSV for analysis

### **Option 3: R/RStudio**
- Read CSV into R as tibble
- Extract data in R directly
- More technical but fully reproducible

---

## DATA QUALITY ASSURANCE

### **Built-in QC measures:**

1. **Data completeness tracking** - Flag papers with <80% data extracted
2. **Duplicate extraction** - For 20% of papers (10 papers if 50 total), extract twice independently, then compare
3. **Author contact protocol** - If critical data missing, contact authors (documented in form)
4. **Sanity checks** - Post > Pre baseline? Effect size reasonable?

### **When to exclude a paper:**

❌ Cannot find ≥3 of these: (n, primary outcome baseline, primary outcome post, p-value)  
❌ Study design cannot be determined  
❌ Data appears corrupted or inconsistent  
❌ Multiple contact attempts to authors with no response

---

## PORTFOLIO VALUE

This data extraction form and dictionary demonstrate:

✅ **Methodological rigor** - You didn't just download papers and eyeball them
✅ **Standardization** - Every paper extracted the same way  
✅ **Reproducibility** - Someone else could use your form to extract the same data
✅ **Attention to detail** - 68 well-designed columns for consistency
✅ **Quality control thinking** - Built-in verification and validation

This is what working bioinformaticians and systematic reviewers actually do.

---

## NEXT STEP (Block 4)

In the next 10 minutes, we'll:
- Create a GitHub repository structure
- Make your first commit
- Push these 4 documents (Protocol, Search Strategy, Data Dictionary, Form)

After Block 4, you'll have a complete "Week 1" deliverable ready for GitHub.

---

**Status: Block 3 COMPLETE ✅**

**Time remaining in 60-minute session: ~10 minutes**

Ready for final Block 4 (GitHub setup & commit)?

---

*Author: Farid | Date: Day 11, Block 3 | Time: 15 minutes for this block*
