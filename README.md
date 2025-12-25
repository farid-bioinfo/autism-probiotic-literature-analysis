# Systematic Review: Probiotics and Autism Spectrum Disorder
## Comprehensive Literature Analysis & Meta-Analysis

**Repository:** farid-bioinfo/autism-probiotics-literature-analysis  
**Status:** Week 1 Complete - Foundation Phase  
**Next Phase:** Literature Search & Screening (Day 12)  
**Author:** Farid | London-based Bioinformatics Analyst  

---

## 🎯 Project Mission

Systematically synthesize published research on probiotic interventions in autism spectrum disorder using PRISMA 2020 methodology. The goal is to understand which microbiota-targeted interventions (probiotics, prebiotics, synbiotics, fecal microbiota transplantation) show efficacy in improving behavioral and gastrointestinal symptoms in individuals with autism.

**Why this project:** The gut-brain axis literature on autism is fragmented across heterogeneous studies with inconsistent outcome reporting. A rigorous systematic review following international guidelines can clarify the evidence base and identify gaps for future research.

**Why this matters for bioinformatics:** This project demonstrates the ability to work with messy, real research data—not toy datasets. It shows systematic methodology, quality control thinking, and reproducible research practices.

---

## 📊 Current Status: Week 1 Foundation Complete

### ✅ What's Been Completed (Days 10-11)

**Day 10:** Data Harmonization Code
- Built R script to convert 3 heterogeneous papers into unified analytical framework
- Demonstrates tidyverse mastery and real research data handling
- Portfolio-ready visualization code (forest plots, intervention comparisons, biomarker analysis)

**Day 11:** Research Methodology Foundation (THIS WEEK)
- **Block 1:** Developed PRISMA 2020 compliant protocol with defensible methodology
- **Block 2:** Designed comprehensive search strategy across 5 databases (PubMed, Embase, Cochrane, PsycINFO, Web of Science)
- **Block 3:** Created standardized data extraction form with detailed dictionary (68 columns, quality controls)
- **Block 4:** Organized professional GitHub repository structure

**Total documentation:** ~2,000 lines of methodology + code + guidance

### ⏭️ What's Next (Day 12 onwards)

**Day 12:** Literature Search Execution (2-3 hours)
- Execute searches on all 5 databases
- Expected retrieval: 300-400 papers
- Deduplication and validation

**Days 13-14:** Title/Abstract Screening (8-10 hours)
- Apply PRISMA inclusion criteria
- Expected selection: 50-70 papers for full-text review

**Days 15-17:** Data Extraction (8-10 hours)
- Extract data using standardized form
- Expected completion: 30-50 papers with complete data

**Week 4-5:** Meta-Analysis & Results
- Pool effect sizes using metafor package
- Forest plots, subgroup analyses, publication bias assessment
- Publication-ready results document

---

## 📚 Repository Contents: Week 1 Foundation

### Core Documentation

#### 1. **[PRISMA_Protocol.md](docs/protocol/PRISMA_Protocol.md)**
**The foundational research protocol**

**Why this is important:** This document defines every decision that will be made in the systematic review BEFORE searching for papers. It prevents selection bias and ensures academic credibility.

**What it contains:**
- Research question in PICO format (Population, Intervention, Comparison, Outcome)
- Explicit inclusion/exclusion criteria with measurable decision rules
- Study design hierarchy (Tier 1-5 classification for evidence strength)
- Quality assessment methodology (Cochrane RoB 2, ROBINS-I, Newcastle-Ottawa)
- Statistical analysis plan (meta-analysis strategy, heterogeneity assessment, subgroup analyses)
- 13 detailed sections covering background, objectives, methods, and analysis

**Key insight:** Every inclusion/exclusion decision made during screening can be justified by referring to this protocol. This is what prevents accusations of cherry-picking papers.

**Read time:** 20-30 minutes for complete understanding; 5 minutes for quick reference

---

#### 2. **[SEARCH_STRATEGY.md](docs/search_strategy/SEARCH_STRATEGY.md)**
**Comprehensive database-specific search methodology**

**Why this is important:** Different databases use different indexing systems (PubMed uses MeSH, Embase uses Emtree, PsycINFO has its own thesaurus). A one-size-fits-all search strategy misses literature.

**What it contains:**
- Database-specific search strings (PubMed primary + supplementary, Embase, Cochrane CENTRAL, PsycINFO, Web of Science)
- MeSH term mapping and Boolean operator logic
- Expected yield per database (200-300 from PubMed, 80-120 from Embase, etc.)
- Deduplication strategy (identifying and removing duplicates across databases)
- Search documentation template (reproducible, auditable process)
- PRISMA flow diagram template (for tracking papers through screening)
- Sanity checks (known papers should appear; obvious non-relevant should be rare)

**Key insight:** Multi-database searching is comprehensive and defensible. Searching only PubMed would miss literature and introduce bias.

**Read time:** 15-20 minutes for detail; 5 minutes for search strings only

---

#### 3. **[DATA_EXTRACTION_DICTIONARY.md](docs/data_extraction/DATA_EXTRACTION_DICTIONARY.md)**
**Complete field-by-field guidance for data extraction**

**Why this is important:** When extracting data from 50+ papers over 6 weeks, standardization is critical. This dictionary ensures every variable is extracted the same way across all papers.

**What it contains:**
- Definition of all 68 extraction form fields
- Acceptable values for categorical variables (with examples)
- Extraction guidance and special cases
- Critical data elements (must-have minimum for paper inclusion)
- Practical workflow (how long each section takes)
- Quality control procedures (duplicate extraction, author contact protocol)
- CSV vs. spreadsheet recommendations

**Organized by section:**
- A: Study Identification (7 fields)
- B: Study Design & Methodology (5 fields)
- C: Population Characteristics (8 fields)
- D: Intervention Characteristics (7 fields)
- E: Primary Outcome - Behavioral (13 fields)
- F: Secondary Outcome - GI Symptoms (13 fields)
- G: Tertiary Outcome - Microbiota (6 fields)
- H: Adverse Events & Safety (7 fields)
- I: Study Quality & Risk of Bias (7 fields)
- J: Extraction Metadata (7 fields)

**Key insight:** Standardized extraction prevents inconsistency and enables reliable meta-analysis.

**Read time:** 30-40 minutes for complete understanding; 10 minutes for quick reference during extraction

---

#### 4. **[data_extraction_form_template.csv](docs/data_extraction/data_extraction_form_template.csv)**
**Standardized CSV template with 68 columns**

**Why this is important:** This is the actual form you'll duplicate for each paper, then populate with extracted data. CSV format is machine-readable, importable to Excel/Google Sheets, and version-controllable in Git.

**Structure:**
- 68 columns representing every data point needed for analysis
- Column names designed for clarity and consistency
- Can be imported into Excel/Google Sheets for easier data entry
- Exportable back to CSV for R analysis

**Usage:**
- Duplicate template 50 times (one per paper)
- Fill in data while reading each paper
- Export combined CSV for meta-analysis

**Read time:** 2 minutes to understand structure; then reference as needed during extraction

---

### Supporting Documentation (Week 1 Progression)

#### **[DAY_11_COMPLETE_SESSION_SUMMARY.md](DAY_11_COMPLETE_SESSION_SUMMARY.md)**
Complete overview of the entire Week 1 work, showing:
- What was accomplished in each 15-minute block
- Why each deliverable matters
- Portfolio value of this approach
- Timeline for Days 12-17

**Read time:** 20-30 minutes for comprehensive understanding

---

#### **[BLOCK_1_SUMMARY.md](docs/protocol/BLOCK_1_SUMMARY.md)**
Quick reference for PRISMA Protocol creation:
- The three core elements (PICO format, inclusion/exclusion criteria, study design hierarchy)
- Decision rules for screening (the checklist you'll use)
- Quality safeguards built into the protocol

**Read time:** 10-15 minutes

---

#### **[BLOCK_3_SUMMARY.md](docs/data_extraction/BLOCK_3_SUMMARY.md)**
Quick reference for data extraction form:
- Why standardization matters
- The 10 sections of the extraction form
- Timeline expectations (30-40 minutes per paper)
- Quality assurance procedures

**Read time:** 10 minutes

---

#### **[BLOCK_4_GITHUB_SETUP.md](BLOCK_4_GITHUB_SETUP.md)**
Instructions for GitHub repository setup and commits:
- Creating professional folder structure
- Git commands for committing work
- How to maintain the repository going forward

**Read time:** 10-15 minutes

---

## 🧠 Understanding the Methodology

### The Research Design Philosophy

This systematic review follows PRISMA 2020 (Preferred Reporting Items for Systematic Reviews and Meta-Analyses), the international standard for conducting and reporting systematic reviews.

**Three key principles:**

1. **Pre-registration of methodology** (in the PRISMA Protocol)
   - Define inclusion/exclusion criteria BEFORE searching
   - Prevents selective inclusion of papers that support your hypothesis
   - Transparency: anyone can see exactly how decisions were made

2. **Comprehensive literature search** (in the Search Strategy)
   - Multiple databases searched with database-specific strategies
   - Not taking shortcuts by searching only PubMed
   - Deduplication and validation procedures documented

3. **Standardized data extraction** (in the Data Dictionary & Form)
   - Every paper extracted the same way
   - Prevents "I measured this differently in paper A vs. paper B" inconsistencies
   - Built-in quality control (duplicate extraction for critical papers, author contact if data missing)

### The PICO Framework

All research questions in this review are framed using PICO:

| Element | Definition |
|---------|-----------|
| **P** (Population) | Children and adults with diagnosed autism spectrum disorder (DSM-5, ICD-10, or ADOS criteria) |
| **I** (Intervention) | Microbiota-targeted interventions: probiotics, prebiotics, synbiotics, or fecal microbiota transplantation |
| **C** (Comparison) | Placebo, no treatment, waitlist control, or standard care |
| **O** (Outcome) | PRIMARY: Behavioral symptoms (CARS, ABC, SRS, ADOS, ATEC); SECONDARY: GI symptoms (GSRS, BSFS) |

### The Evidence Hierarchy

Not all studies are created equal. This review uses a 5-tier system:

- **Tier 1 (Strongest):** RCTs with proper randomization, allocation concealment, blinding, and intention-to-treat analysis
- **Tier 2 (Strong):** RCTs with some bias concerns but otherwise rigorous
- **Tier 3 (Moderate):** Non-randomized controlled trials
- **Tier 4 (Lower):** Prospective cohort studies or open-label trials (n≥15)
- **Tier 5 (Lowest):** Retrospective case-control studies

Primary conclusions will be based on Tier 1-2 evidence. Lower tiers inform interpretation but don't drive conclusions.

---

## 🔬 The Research Question

**Primary question:** Do microbiota-targeted interventions improve behavioral and gastrointestinal symptoms in individuals with autism spectrum disorder?

**Secondary questions:**
- Which intervention types (probiotics vs. prebiotics vs. synbiotics vs. FMT) show the most promise?
- What variables predict intervention success (age, severity, duration, strain type)?
- Is there evidence of publication bias?
- What is the safety profile of these interventions?

---

## 📈 Expected Outcomes

### Literature Screening (Days 13-14)

Starting with 300-400 papers from comprehensive literature search:

```
300-400 papers identified
        ↓
Title/Abstract Screening (apply PRISMA criteria)
        ↓
50-70 papers selected for full-text review
        ↓
Full-text assessment (detailed inclusion evaluation)
        ↓
30-50 papers included in final analysis
```

### Meta-Analysis Output (Weeks 4-5)

Expected to produce:
- Forest plots (showing effect sizes with confidence intervals)
- Summary tables (study characteristics, outcomes)
- Subgroup analyses (by intervention type, age, study design)
- Publication bias assessment (funnel plots, Egger's test)
- Sensitivity analyses (excluding high-risk studies)
- GRADE certainty of evidence assessment

### Publication Readiness

All outputs will be formatted for journal publication:
- Publication-ready figures (high resolution, clear labels)
- APA-formatted results tables
- Detailed results text
- Supplementary materials (if submitted to journal)

---

## 🛠️ Technical Approach

### Tools & Languages

**R/RStudio:**
- Data extraction and harmonization (tidyverse: dplyr, tidyr, ggplot2)
- Meta-analysis calculations (metafor package)
- Publication-ready visualizations
- Statistical analysis and sensitivity testing

**Git & GitHub:**
- Version control of all analysis scripts
- Documentation of methodology
- Reproducible research transparency
- Portfolio demonstration of professional practices

**Databases:**
- PubMed (via NCBI)
- Embase (via Elsevier)
- Cochrane CENTRAL (via Cochrane Library)
- PsycINFO (via APA)
- Web of Science (via Clarivate)

### Data Management

**File structure:**
```
data/
├── raw/              → Downloaded search results (CSVs from each database)
├── extracted/        → Completed extraction forms (one CSV per paper)
└── harmonized/       → Cleaned, combined dataset ready for meta-analysis
```

**Quality control:**
- Deduplication checks across database results
- Duplicate extraction for 20% of papers (quality verification)
- Author contact protocol for missing critical data
- Data completeness tracking (target ≥85%)

---

## 📋 Portfolio Value

### What This Repository Demonstrates

1. **Research Design Expertise**
   - Understanding of PRISMA methodology (international gold standard)
   - Pre-registered protocol (prevents bias, ensures transparency)
   - Systematic, defensible decision-making

2. **Literature Management Skills**
   - Multi-database searching (comprehensive, not shortcuts)
   - Database-specific syntax and indexing knowledge
   - Deduplication and validation procedures

3. **Data Quality Thinking**
   - Standardized extraction methodology (consistency)
   - Built-in quality controls (duplicate extraction, author contact)
   - Documentation of every decision (reproducible, auditable)

4. **Statistical Sophistication**
   - Effect size standardization (Cohen's d across different scales)
   - Heterogeneity assessment (I² statistics)
   - Meta-analytic methodology (random-effects models, subgroup analyses)

5. **Professional Practices**
   - Clear documentation (readable, comprehensive)
   - Version control (Git, GitHub)
   - Reproducible research (anyone can follow your steps)
   - Public portfolio (employers see your thinking process)

### Why This Matters to Employers

Someone reviewing this repository sees:
- ✅ Not just a programmer, but a researcher
- ✅ Follows published guidelines (not making it up)
- ✅ Systematic thinking about quality and reproducibility
- ✅ Can handle real, messy research data
- ✅ Transparent methodology (every decision documented)
- ✅ Professional organization and practices

This is what distinguishes a bioinformatics analyst from a data analyst.

---

## 🚀 How to Use This Repository

### For Reviewers/Employers

1. **Start here:** Read this README to understand the project
2. **Understand the methodology:** Read PRISMA_Protocol.md (define how we'll make decisions)
3. **See the search logic:** Read SEARCH_STRATEGY.md (understand database approach)
4. **Review data extraction:** Read DATA_EXTRACTION_DICTIONARY.md (see data quality thinking)
5. **Follow the progression:** Look at Git commit history to see daily progress

### For Continuing This Work

1. **Day 12 (Search execution):** Follow SEARCH_STRATEGY.md, execute searches, commit results
2. **Days 13-14 (Screening):** Use PRISMA_Protocol.md PICO criteria, apply to 300+ papers
3. **Days 15-17 (Extraction):** Use data_extraction_form_template.csv, complete for 50 papers
4. **Weeks 4-5 (Analysis):** Load extracted data into R, perform meta-analysis

Each step is documented in the respective guides.

---

## 📅 Timeline & Milestones

| Week | Days | Task | Deliverable | Status |
|------|------|------|-------------|--------|
| Week 1 | 10-11 | Design protocol & search strategy | PRISMA protocol, search strategy, extraction form | ✅ COMPLETE |
| Week 2 | 12 | Execute literature search | 300-400 papers (deduplicated) | ⏳ PENDING |
| Week 2 | 13-14 | Title/abstract screening | 50-70 papers selected | ⏳ PENDING |
| Week 3 | 15-17 | Full-text review & data extraction | 30-50 papers with complete data | ⏳ PENDING |
| Week 4-5 | 18-25 | Meta-analysis & results | Publication-ready synthesis, forest plots, tables | ⏳ PENDING |

---

## 🔗 Quick Navigation

**[→ PRISMA Protocol](docs/protocol/PRISMA_Protocol.md)** - Research methodology (read first)  
**[→ Search Strategy](docs/search_strategy/SEARCH_STRATEGY.md)** - Database search methodology  
**[→ Data Dictionary](docs/data_extraction/DATA_EXTRACTION_DICTIONARY.md)** - Data extraction guidance  
**[→ Extraction Form](docs/data_extraction/data_extraction_form_template.csv)** - The actual template  
**[→ Session Summary](DAY_11_COMPLETE_SESSION_SUMMARY.md)** - Week 1 overview  

---

## 📚 Key References

### Research Guidelines
- **PRISMA 2020 Statement:** Preferred Reporting Items for Systematic Reviews and Meta-Analyses
- **Cochrane Handbook v6.4:** Methods for systematic reviews of interventions
- **GRADE Approach:** Assessing certainty of evidence

### Tools & Resources
- **Cochrane RoB 2:** Risk of bias tool for randomized trials
- **ROBINS-I:** Risk of bias in non-randomized studies of interventions
- **Newcastle-Ottawa Scale:** Quality assessment for observational studies
- **PROSPERO:** Prospective Register of Systematic Reviews

---

## 💡 Key Principles

1. **Transparency Over Convenience** - Document every decision, even when shortcuts are possible
2. **Methodology First** - Design the study properly before searching for papers
3. **Standardization Everywhere** - Use the same extraction procedures for every paper
4. **Quality Control Built In** - Duplicate extraction, author contact, data completeness tracking
5. **Reproducibility Always** - Someone else should be able to follow your exact steps

---

## 👤 Author

**Farid** | Bioinformatics Analyst | London, UK

- **Background:** BSc Biological Sciences, MSc Biomedical Science (Medical Microbiology), MSc Biostatistics & Bioinformatics (9.43/10)
- **Professional Experience:** Healthcare Scientist at Public Health England (microbiological analysis, outbreak investigations)
- **Research Interest:** Gut-brain axis research, microbiota-targeted interventions in neurodevelopmental disorders, precision medicine
- **Portfolio Focus:** Building bioinformatics competence through systematic research projects

GitHub: [@farid-bioinfo](https://github.com/farid-bioinfo)

---

## 📝 License & Attribution

This systematic review protocol follows PRISMA 2020 guidelines and is designed as a comprehensive literature synthesis. All methodology is transparent and reproducible.

**Status:** Research in progress (Week 1 complete, Days 12-25 pending)  
**Last Updated:** December 2025  
**Next Update:** Post-Day 12 (Literature search results)

---

## 🤝 Questions or Suggestions?

This is an active research project. Methodology may be refined as work progresses, with all changes documented in Git commit history.

---

*Week 1 Foundation Complete - Ready for Day 12 Literature Search*
