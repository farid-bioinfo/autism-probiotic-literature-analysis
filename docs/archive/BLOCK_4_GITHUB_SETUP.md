# BLOCK 4: GITHUB REPOSITORY SETUP & FIRST COMMIT
## Organizing Your PRISMA Protocol Work for Portfolio

**Block Time:** 10 minutes  
**Status:** ✅ COMPLETE  
**Purpose:** Create professional repository structure and commit Day 11 foundational work

---

## OVERVIEW: YOUR GITHUB STRATEGY

You're creating a portfolio repository that shows:
1. **Research methodology expertise** (PRISMA protocol)
2. **Comprehensive literature management** (search strategy across 5 databases)
3. **Standardized data collection** (extraction form template)
4. **Professional organization** (clean folder structure)

---

## PART 1: REPOSITORY STRUCTURE

Create this folder structure on your local machine:

```
autism-probiotics-literature-analysis/
│
├── README.md                                (Project overview - create now)
├── .gitignore                               (Tell Git what NOT to track)
│
├── protocol/
│   ├── PRISMA_Protocol_v1.0.md             (PRISMA_Protocol.md → rename)
│   ├── SEARCH_STRATEGY.md                  (Block 2 file)
│   └── DATA_EXTRACTION_FORM.md             (Block 3 documentation)
│
├── templates/
│   ├── data_extraction_form_template.csv   (Blank form to duplicate 50 times)
│   └── README.txt                          (Instructions for using templates)
│
├── literature_search/
│   ├── README.md                           (Will document: PubMed, Embase, etc. results)
│   └── search_log.txt                      (To be filled when you run searches)
│
├── data/
│   ├── raw/                                (Empty folder - will hold raw downloads)
│   │   ├── PubMed_20251220.csv
│   │   ├── Embase_20251220.csv
│   │   └── [other database downloads]
│   │
│   ├── extracted/                          (Empty folder - will hold completed extractions)
│   │   └── extraction_data_complete.csv
│   │
│   └── harmonized/                         (Empty folder - for Day 10 harmonization)
│       ├── data_harmonized_zheng.csv
│       └── [other harmonized datasets]
│
├── analysis/
│   ├── scripts/
│   │   ├── day_10_harmonize_literature_data.R    (Your existing script)
│   │   ├── deduplication_script.R                 (To be created for removing duplicates)
│   │   └── meta_analysis.R                        (Future script)
│   │
│   └── figures/
│       └── [To be populated with visualizations]
│
├── documentation/
│   ├── BLOCK_1_SUMMARY.md                  (Block 1 quick reference)
│   ├── PROJECT_TIMELINE.md                 (To be created)
│   └── METHODOLOGY_NOTES.md                (To be created)
│
└── .github/
    └── workflows/                           (Optional - for automation)
```

---

## PART 2: CREATE YOUR REPOSITORY ON GITHUB

### **Step 1: On GitHub.com**

1. Go to https://github.com/new
2. Repository name: `autism-probiotics-literature-analysis`
3. Description: "Systematic review & meta-analysis of probiotics in autism spectrum disorder. Following PRISMA 2020 guidelines with comprehensive literature search and standardized data extraction."
4. Visibility: **Public** (portfolio work should be visible)
5. Initialize with: **Add a README file** (GitHub will create a basic one)
6. Add .gitignore: **R** (GitHub template for R projects)
7. License: **MIT License** (permissive, good for portfolio)
8. Click "Create repository"

### **Step 2: Clone to Your Local Machine**

In your terminal/command line:

```bash
git clone https://github.com/YOUR_USERNAME/autism-probiotics-literature-analysis.git
cd autism-probiotics-literature-analysis
```

Replace `YOUR_USERNAME` with your actual GitHub username.

---

## PART 3: ORGANIZE FILES LOCALLY

### **Step 1: Create Folder Structure**

```bash
# Create all directories
mkdir -p protocol templates literature_search data/{raw,extracted,harmonized} analysis/{scripts,figures} documentation

# Create placeholder README files in folders
echo "# Literature Search Results" > literature_search/README.md
echo "# Analysis Scripts" > analysis/scripts/README.md
```

### **Step 2: Move Your Files Into Correct Locations**

```bash
# Copy your created files to appropriate locations
cp PRISMA_Protocol.md protocol/PRISMA_Protocol_v1.0.md
cp SEARCH_STRATEGY.md protocol/SEARCH_STRATEGY.md
cp DATA_EXTRACTION_FORM.md protocol/DATA_EXTRACTION_FORM.md
cp data_extraction_form_template.csv templates/data_extraction_form_template.csv

# Copy your Day 10 script to analysis
cp day_10_harmonize_literature_data.R analysis/scripts/

# Copy documentation
cp BLOCK_1_SUMMARY.md documentation/
```

---

## PART 4: CREATE KEY DOCUMENTATION FILES

### **Create Main README.md** (Replace GitHub's default)

```markdown
# Autism-Probiotics Systematic Review & Meta-Analysis

**Portfolio Project:** Comprehensive systematic review following PRISMA 2020 guidelines  
**Author:** Farid (farid-bioinfo)  
**Status:** Methodology Phase (Days 11-13)  
**Timeline:** Expected completion Q1 2026  

## Overview

This repository documents a systematic review and meta-analysis of microbiota-targeted interventions (probiotics, prebiotics, synbiotics, fecal microbiota transplantation) for autism spectrum disorder.

### Key Deliverables

- ✅ **PRISMA Protocol (v1.0)** - Pre-registered methodology
- ✅ **Comprehensive Search Strategy** - 5-database approach
- ✅ **Standardized Data Extraction Form** - For all included studies
- 🔄 **Literature Search** - In progress (Days 12-13)
- 📋 **Data Extraction** - Planned (Weeks 2-3)
- 📊 **Meta-Analysis** - Planned (Weeks 3-4)

## Repository Structure

```
protocol/              ← PRISMA methodology files
templates/             ← Blank extraction form (template)
literature_search/     ← Search strategies and results
data/                  ← Raw and processed data
analysis/              ← R scripts and visualizations
documentation/         ← Additional methodology notes
```

## Methodology Highlights

### Research Question (PICO)
- **Population:** Children and adults with diagnosed autism spectrum disorder
- **Intervention:** Probiotics, prebiotics, synbiotics, or FMT
- **Comparison:** Placebo, no treatment, or standard care
- **Outcome:** Behavioral symptom improvement AND/OR GI symptom improvement

### Inclusion Criteria
- Study designs: RCTs, non-RCTs, cohort studies, open-label trials (n≥15)
- Publication date: 2015-2025
- Language: English
- Publication: Peer-reviewed journals, dissertations, clinical trials

### Search Strategy
Comprehensive searches across:
- PubMed (MeSH + free-text)
- Embase
- Cochrane CENTRAL
- PsycINFO
- Web of Science

Expected yield: 300-400 papers after deduplication

### Data Extraction
Standardized form with 80+ variables covering:
- Study design & methodology
- Population characteristics
- Intervention details
- Behavioral & GI outcomes
- Microbiota composition (if measured)
- Risk of bias assessment

### Analysis Plan
- Primary: Meta-analysis of effect sizes (Cohen's d) for behavioral outcomes
- Secondary: GI symptom improvements, adverse event profiles
- Subgroup: By intervention type, age, study design
- Sensitivity: Excluding high-risk-of-bias studies

## Files to Review

**Start here:**
1. [PRISMA Protocol](protocol/PRISMA_Protocol_v1.0.md) - Complete protocol
2. [Search Strategy](protocol/SEARCH_STRATEGY.md) - Database-specific searches
3. [Data Extraction Form](protocol/DATA_EXTRACTION_FORM.md) - Standardized template

**Current Progress:**
- Protocol: ✅ Complete
- Search strategy: ✅ Complete
- Data extraction form: ✅ Complete
- Literature search: 🔄 In progress
- Data extraction: ⏳ Pending search results

## How to Navigate This Repository

### For Methodology Review
→ See `/protocol/` directory with PRISMA components

### For Data Collection  
→ See `/templates/` for blank extraction form

### For Data & Analysis
→ See `/data/` and `/analysis/` once populated

### For Author Contact
- Email: [your email]
- GitHub: [your username]
- LinkedIn: [your profile]

## Reproducibility

This review follows best practices for transparent, reproducible research:
- ✅ Pre-registered protocol (before data collection)
- ✅ Comprehensive search documentation
- ✅ Standardized extraction procedures
- ✅ Risk of bias assessment planned
- ✅ All code and data will be publicly available

## Expected Timeline

| Phase | Timeline | Deliverable |
|-------|----------|------------|
| Methodology | Week 1 | PRISMA Protocol ✅ |
| Search | Week 2-3 | 300-400 papers identified |
| Screening | Week 3-4 | ~50 papers included |
| Extraction | Week 5-6 | Complete dataset |
| Quality Assessment | Week 6 | Risk of bias summary |
| Meta-Analysis | Week 7-8 | Forest plots, summary |
| Writing | Week 8-9 | Results & discussion |
| Publication | Week 10 | Manuscript submitted |

## Limitations & Caveats

- English-language only (may miss non-English literature)
- Data extraction by single reviewer (though 20% re-extraction QC planned)
- Heterogeneous outcome measures may limit meta-analysis pooling

## For Employers/Reviewers

This repository demonstrates:
- 🎯 Research methodology expertise (PRISMA-compliant)
- 📚 Literature management at scale (5-database search, 50+ papers)
- 📊 Statistical approach to heterogeneous data
- 💻 Reproducible research practices (version control, documented methods)
- 🤝 Transparency in research conduct (pre-registration, standardized procedures)

## Citation

If you reference this work:

```
Farid, [First name]. (2025). Systematic review of microbiota-targeted interventions 
for autism spectrum disorder. Retrieved from 
https://github.com/farid-bioinfo/autism-probiotics-literature-analysis
```

## License

MIT License - See LICENSE file for details

---

**Last Updated:** Day 11, Block 4  
**Next Update:** Day 12 (Literature search execution)
```

### **Create .gitignore additions** (to prevent committing unnecessary files)

Add these lines to your `.gitignore`:

```
# Large data files (once populated)
data/raw/*.csv
data/extracted/*.csv

# Temporary files
*.tmp
*.temp
*~

# OS files
.DS_Store
Thumbs.db

# Large PDFs
*.pdf
papers/
literature/

# R session files
.Rhistory
.RData
.Ruserdata
*.Rproj.user

# Credentials
.env
secrets.txt
```

---

## PART 5: COMMIT YOUR WORK TO GIT

### **Step 1: Add All Files**

```bash
git add .
```

This stages all files for commit.

### **Step 2: Create Your First Commit**

```bash
git commit -m "Day 11: PRISMA Protocol Foundation - Blocks 1-4 Complete

- Block 1: PRISMA 2020 Protocol with PICO criteria and inclusion/exclusion rules
- Block 2: Comprehensive search strategy across 5 databases (PubMed, Embase, Cochrane, PsycINFO, Web of Science)
- Block 3: Standardized data extraction form with 80+ variables
- Block 4: GitHub repository setup with professional structure

All methodology pre-registered before literature search begins.
Expected search yield: 300-400 papers across 5 databases."
```

### **Step 3: Push to GitHub**

```bash
git push origin main
```

**Done!** Your work is now on GitHub.

---

## PART 6: VERIFY ON GITHUB

1. Go to https://github.com/YOUR_USERNAME/autism-probiotics-literature-analysis
2. Verify you see:
   - Updated README.md
   - `protocol/` folder with all 3 markdown files
   - `templates/` folder with CSV template
   - `analysis/` folder with your Day 10 script
   - `documentation/` folder with summaries
   - Clean folder structure

---

## PART 7: PREPARE FOR DAY 12

Your repository is ready for the next phase:

**Tomorrow (Day 12):** Execute the literature searches
- You'll download results from each database as CSV files
- Drop them in `literature_search/raw/`
- Run deduplication script
- Get final list of ~300-400 papers ready for screening

---

## QUICK REFERENCE: YOUR COMMIT MESSAGE ANATOMY

Good commit messages follow this pattern:

```
[Day/Phase]: [What changed]

[Detailed explanation of what files changed and why]
```

Examples:

```
Day 11: PRISMA Protocol & Search Strategy - Blocks 1-4 Complete

Day 12: Literature search results from 5 databases (300-400 papers identified)

Day 13: Deduplication complete, final screening list prepared (287 unique papers)
```

---

## FILES TO COMMIT NOW

```
✅ protocol/PRISMA_Protocol_v1.0.md
✅ protocol/SEARCH_STRATEGY.md
✅ protocol/DATA_EXTRACTION_FORM.md
✅ templates/data_extraction_form_template.csv
✅ analysis/scripts/day_10_harmonize_literature_data.R
✅ documentation/BLOCK_1_SUMMARY.md
✅ README.md (main project)
✅ .gitignore (with R exclusions)
```

---

## FINAL CHECKLIST

Before you're done with Block 4:

- [ ] Repository created on GitHub
- [ ] Repository cloned to your local machine
- [ ] Folder structure created
- [ ] All Day 11 files organized into correct folders
- [ ] README.md updated with comprehensive project overview
- [ ] .gitignore configured
- [ ] `git add .` executed
- [ ] `git commit` with detailed message executed
- [ ] `git push origin main` executed
- [ ] Repository verified on GitHub.com

---

## PORTFOLIO NARRATIVE

When someone visits your GitHub today, they see:

> "This person understands how to conduct rigorous systematic reviews. They've:
> 1. Created a pre-registered PRISMA protocol
> 2. Designed comprehensive multi-database search strategy
> 3. Built standardized data extraction procedures
> 4. Organized everything professionally with version control
> 5. Documented everything transparently"

That's the narrative you want employers to see.

---

**Status: Block 4 COMPLETE ✅**

---

**ALL 4 BLOCKS COMPLETE - 60-MINUTE FOCUSED WORK FINISHED**

You just accomplished:
- ✅ PRISMA Protocol (Block 1)
- ✅ Comprehensive Search Strategy (Block 2)
- ✅ Data Extraction Form Template (Block 3)
- ✅ Professional GitHub Repository (Block 4)

This is legitimate, portfolio-quality research methodology work.

---

*Author: Farid | Date: Day 11, Blocks 1-4 | Time: 60 minutes total*
