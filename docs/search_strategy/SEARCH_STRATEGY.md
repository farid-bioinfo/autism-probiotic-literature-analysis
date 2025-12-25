# BLOCK 2: COMPREHENSIVE SEARCH STRATEGY
## Literature Search Protocol for Autism-Probiotics Systematic Review

**Block Time:** 15 minutes  
**Status:** ✅ COMPLETE  
**Purpose:** Design database-specific search strings that comprehensively capture all relevant literature while minimizing false positives

---

## OVERVIEW: THE SEARCH STRATEGY PHILOSOPHY

We are building **5 different search strings** because each database has different indexing systems and syntax rules:

- **PubMed:** Uses MeSH (Medical Subject Headings) controlled vocabulary
- **Embase:** Uses Emtree terms (different from MeSH)
- **Cochrane:** Uses CENTRAL registry with focused methodology filters
- **PsycINFO:** Uses PsycINFO thesaurus terms (psychology-specific)
- **Web of Science:** Topic search across multidisciplinary fields

**Key Principle:** We're searching for papers about:
1. **Autism** (population)
2. **Microbiota interventions** (probiotics, prebiotics, synbiotics, FMT)
3. **Behavioral OR GI outcomes** (what we measure)

We're NOT restricting by study design, age, or publication type at the search stage. That filtering happens during screening (this is intentional—more comprehensive, less biased).

---

## PART 1: PUBMED (MEDLINE)

**Why PubMed first?** It's the largest biomedical database, covers most autism and microbiota literature, uses standardized MeSH terms for consistency.

### 1.1 PubMed MeSH Term Strategy

**Step 1: Map key concepts to MeSH terms**

| Concept | MeSH Terms | Rationale |
|---------|-----------|-----------|
| Autism | "Autism Spectrum Disorder" OR "Autistic Disorder" OR "Child Development Disorders, Pervasive" | MeSH changed terminology over time; use all variants |
| Probiotics | "Probiotics" OR "Microbiota" OR "Microbiome" | Direct terms; Microbiota captures broader dysbiosis studies |
| Prebiotics | "Prebiotics" OR "Dietary Supplements" | Dietary Supplements captures inulin, FOS, GOS |
| FMT | "Fecal Microbiota Transplantation" OR "Microbiota Transplantation" | Direct term; newer addition to MeSH |
| Behavioral Outcome | "Behavior" OR "Behavior, Animal" OR "Behavioral Symptoms" | Covers symptom severity, behavioral scales |
| GI Outcome | "Gastrointestinal Diseases" OR "Digestive System Diseases" | Covers constipation, diarrhea, abdominal pain |

### 1.2 Primary PubMed Search String

```
(
  "Autism Spectrum Disorder"[MeSH] 
  OR "Autistic Disorder"[MeSH] 
  OR "Child Development Disorders, Pervasive"[MeSH]
)
AND
(
  "Probiotics"[MeSH] 
  OR "Microbiota"[MeSH]
  OR "Microbiome"[MeSH]
  OR "Prebiotics"[MeSH]
  OR "Fecal Microbiota Transplantation"[MeSH]
  OR "Microbiota Transplantation"[MeSH]
  OR "Dysbiosis"[MeSH]
)
AND
(
  "Behavior"[MeSH]
  OR "Behavioral Symptoms"[MeSH]
  OR "Gastrointestinal Diseases"[MeSH]
  OR "Digestive System Diseases"[MeSH]
)
```

**What this does:** Finds papers tagged with autism AND microbiota-related terms AND outcomes we measure.

**Search Details:**
- Date filter: 2015-2025
- Language: English
- Publication type: All (journals, trials, reports)

**Expected yield:** 150-250 papers

### 1.3 Supplementary PubMed Search (Free-text for newer terms)

MeSH indexing lags behind terminology in the field. We need a second search for newer concepts:

```
(
  (autism OR "autism spectrum disorder" OR ASD OR "pervasive developmental disorder")
  AND
  (probiotic* OR prebiotic* OR synbiotic* OR "microbiota transplant*" OR FMT 
   OR "fecal microbiota" OR dysbiosis OR "gut flora" OR "gut microbiome")
  AND
  (behavio* OR sympto* OR "gastrointestinal" OR "GI symptom*" OR constipat* OR diarrh* OR "abdominal pain")
)
```

**Important syntax notes:**
- Asterisk (*) = wildcard (probiotic* catches probiotic, probiotics, probiotic's, etc.)
- Quotation marks = phrase search (finds exact phrases)
- NOT tagged with [MeSH] = free-text search (searches title, abstract, keywords)

**Expected yield:** 100-150 papers (with overlap from primary search; that's fine, we'll deduplicate)

**Total PubMed expected:** 200-300 unique papers after deduplication

---

## PART 2: EMBASE (Elsevier)

**Why Embase separately?** It indexes journals PubMed misses, especially European publications. Different indexing = different papers.

### 2.1 Embase Search String

Embase uses Emtree controlled vocabulary (different from MeSH). We use both Emtree terms and free-text:

```
(
  'autism'/de 
  OR 'autism spectrum disorder'/de 
  OR 'pervasive developmental disorder'/de
)
AND
(
  'probiotic agent'/de 
  OR 'prebiotic agent'/de 
  OR 'fecal microbiota transplantation'/de
  OR microbiota:ti,ab 
  OR microbiome:ti,ab 
  OR dysbiosis:ti,ab
)
AND
(
  'behavior'/de 
  OR 'gastrointestinal disorder'/de 
  OR 'behavior symptom'/de
)
```

**Embase syntax explanation:**
- `/de` = Emtree controlled term (equivalent to MeSH)
- `:ti,ab` = Search in title or abstract (free-text)

### 2.2 Supplementary Embase Free-Text Search

```
(
  (autism OR ASD OR 'autism spectrum')
  AND
  (probiotic* OR prebiotic* OR synbiotic* OR 'gut flora' OR microbiota OR microbiome)
  AND
  (behavio* OR symptom* OR gastrointestinal OR 'GI symptom*')
) 
AND [2015-2025]/py
```

**Expected yield:** 80-120 unique papers (less overlap with PubMed than you'd expect)

---

## PART 3: COCHRANE LIBRARY (CENTRAL)

**Why Cochrane?** Specializes in clinical trials. We'll find well-designed RCTs here. Also filters out some noise since only published trials.

### 3.1 Cochrane CENTRAL Search

Cochrane uses simplified searching. We keep it straightforward:

```
(
  (autism OR "autism spectrum disorder" OR ASD OR "pervasive developmental")
  AND
  (probiotic* OR prebiotic* OR synbiotic* OR "microbiota transplant*" OR FMT)
)
```

**Cochrane-specific filter:**
- Study Type: Clinical Trials (this filters for RCTs and controlled trials automatically)
- Publication date: 2015-2025
- Search fields: Title, Abstract, Keywords

**Why simpler search?** Cochrane already filters for trial methodology. We don't need to specify outcomes—the trial registry itself requires outcomes reporting.

**Expected yield:** 30-50 papers (all will be trials; high quality by default)

---

## PART 4: PsycINFO (APA)

**Why PsycINFO?** Indexes psychology and developmental journals that biomedical databases might miss. Essential for autism-specific developmental/behavioral literature.

### 4.1 PsycINFO Search String

PsycINFO uses its own thesaurus. Search strategy:

```
(
  (DE "Autism Spectrum Disorder" OR DE "Autistic Disorder" 
   OR TI "autism spectrum" OR AB "autism spectrum")
  AND
  (DE "Probiotics" OR DE "Microorganisms" 
   OR AB "probiotic*" OR AB "prebiotic*" OR AB "microbiota"
   OR AB "gut flora" OR AB "dysbiosis")
  AND
  (DE "Behavior Change" OR DE "Behavioral Symptoms" 
   OR DE "Gastrointestinal Disorders"
   OR AB "behavio* change" OR AB "symptom* improvement")
)
```

**PsycINFO syntax:**
- `DE` = Thesaurus-controlled term (PsycINFO's vocabulary)
- `TI` = Title search
- `AB` = Abstract search

### 4.2 Alternative PsycINFO Approach (If database interface simpler)

Some PsycINFO interfaces allow simpler syntax:

```
(autism OR "autism spectrum" OR ASD)
AND
(probiotic* OR prebiotic* OR microbiota OR "gut flora" OR dysbiosis)
```

**Expected yield:** 50-100 papers (psychological/developmental perspective)

---

## PART 5: WEB OF SCIENCE

**Why Web of Science?** Multidisciplinary coverage across biomedical, psychology, and life sciences. Also provides citation tracking (forward/backward searches).

### 5.1 Web of Science Search

Web of Science uses topic search (title, abstract, keywords, author keywords):

```
TS=(
  (autism OR "autism spectrum disorder" OR ASD)
  AND
  (probiotic* OR prebiotic* OR synbiotic* OR "microbiota transplant*" 
   OR "fecal microbiota" OR dysbiosis OR "gut microbiota" OR "gut microbiome")
  AND
  (behavio* OR symptom* OR gastrointestinal OR outcome*)
)
```

**Web of Science syntax:**
- `TS=` = Topic search (searches title, abstract, keywords, author keywords)
- Boolean operators: AND, OR, NOT, NEAR (proximity operator)

### 5.2 Web of Science Date Filter
- Timespan: 2015-2025
- Language: English
- Document Type: Article, Review, Clinical Trial (exclude editorial, opinion)

**Expected yield:** 100-150 papers

### 5.3 Citation Tracking (Bonus)

Once we identify key papers (especially recent meta-analyses), we can:
- **Forward citations:** See who cited this paper (find newer evidence)
- **Backward citations:** See what this paper cites (find older relevant work)

This captures papers that databases missed.

---

## PART 6: SEARCH DEDUPLICATION & DOCUMENTATION

### 6.1 Expected Total Yield

| Database | Estimated Yield | Notes |
|----------|-----------------|-------|
| PubMed (both searches) | 200-300 | Largest, foundational |
| Embase | 80-120 | Some unique European journals |
| Cochrane CENTRAL | 30-50 | High-quality trials, low duplication |
| PsycINFO | 50-100 | Behavioral/developmental focus |
| Web of Science | 100-150 | Multidisciplinary, citation tracking |
| **TOTAL (with duplicates)** | **460-720** | |
| **After deduplication** | **300-400** | ~40-50% are duplicates across databases |

### 6.2 Deduplication Process

When you download results from each database:

1. **Export as CSV** with: Title, Authors, Year, Abstract, Source
2. **Use R script to identify duplicates:**
   - Exact title match = same paper
   - >95% title similarity + same year = same paper
   - Remove duplicates, keep first occurrence

3. **Manual verification:** Check 20-30 suspicious duplicates by eye

---

## PART 7: DOCUMENTATION OF SEARCH PROCESS

### 7.1 Search Log Template

For each database, you'll record:

```
Database: PubMed
Date Searched: [Date]
Search String: [Copy exact string used]
Date Limits: 2015-01-01 to 2025-12-31
Language: English
Number of Results: 247
Date Downloaded: [Date]
File Name: PubMed_20251220_results.csv
Notes: MeSH search; included free-text supplement
```

Repeat for each of 5 databases.

**Why document?** Reproducibility. Someone else should be able to re-run your exact search and get the same results (if data unchanged).

### 7.2 PRISMA Flow Diagram (You'll populate this)

```
                        Records identified through 
                        database searching
                              (n = 400)
                                  ↓
                        ┌─────────┴──────────┐
                        ↓                    ↓
                 Duplicates        Records screened
                removed              (n = 250)
                (n = 150)                 ↓
                                  ┌──────┴──────┐
                                  ↓             ↓
                            Records         Records
                           excluded      selected for
                          (n = 180)      full-text
                                        review
                                         (n = 70)
                                             ↓
                                    ┌────────┴────────┐
                                    ↓                 ↓
                              Full-text         Reasons for
                             records            exclusion
                             examined           (n = 25)
                              (n = 70)
                                  ↓
                        Studies included
                        in qualitative
                        synthesis
                             (n = 45)
                                  ↓
                        Studies included
                        in quantitative
                        synthesis
                        (meta-analysis)
                             (n = 30)
```

You'll fill in actual numbers after screening.

---

## PART 8: PRACTICAL WORKFLOW

### 8.1 When You Run the Searches (Block execution steps)

**Step 1: PubMed (30 min)**
- Go to https://pubmed.ncbi.nlm.nih.gov/
- Copy primary search string
- Click "Advanced Search"
- Paste string
- Set date limits (2015-2025)
- Set language (English)
- Click Search
- Results page → "Send to:" → File → Format "CSV" → Download

**Step 2: Repeat for Embase, Cochrane, PsycINFO, Web of Science**
- Each has different interface but same logic

**Step 3: Deduplication (30 min)**
- Download all 5 CSV files
- Load into R script (we'll write one)
- Identify duplicates by title matching
- Keep one instance of each unique paper
- Export deduplicated list: "all_papers_deduplicated.csv"

**Total execution time:** 1.5-2 hours of active searching

### 8.2 Organization File Structure

```
lit_search_results/
├── raw_downloads/
│   ├── PubMed_20251220.csv
│   ├── Embase_20251220.csv
│   ├── Cochrane_20251220.csv
│   ├── PsycINFO_20251220.csv
│   └── WebOfScience_20251220.csv
├── search_log.txt (documented what you searched)
├── deduplication_script.R
└── all_papers_deduplicated.csv (final list for screening)
```

---

## PART 9: CRITICAL SEARCH VALIDATION

### 9.1 Sanity Checks: Did your search work?

After downloading results, check:

**Check 1: Known papers appear?**
- Zheng et al. 2025, Kotowska 2024, Taha et al. 2025 should be in results
- If NOT: Your search string is too restrictive, revise it

**Check 2: Obvious non-relevant papers excluded?**
- Papers about "probiotics for weight loss" should be rare
- Papers about "autism diagnosis" without intervention should be rare
- If you see many: Search might be too broad

**Check 3: Yield is reasonable?**
- 300-400 total papers after deduplication is realistic
- 50-100 is too few (missed literature)
- 1000+ is too many (overly broad)

If checks fail, refine search strings before proceeding to screening.

---

## PART 10: KEY DIFFERENCES BETWEEN DATABASES

Why we search 5 databases instead of just PubMed:

| Database | Strength | Coverage | What It Captures |
|----------|----------|----------|-----------------|
| **PubMed** | Largest biomedical | Medical journals | Core clinical + microbiota literature |
| **Embase** | European journals | Broader than PubMed | Papers PubMed misses (esp. EU journals) |
| **Cochrane** | Trial quality filter | RCTs focused | Well-designed intervention studies |
| **PsycINFO** | Behavioral/developmental | Psychology journals | Autism from psychology perspective |
| **Web of Science** | Multidisciplinary | Broadest coverage | Citations + interdisciplinary work |

**The redundancy is intentional.** If a paper appears in 3 databases, that's confirmation it's important. If unique to one database, that database was necessary to find it.

---

## PART 11: TIMELINE FOR SEARCH EXECUTION

| Task | Time | When |
|------|------|------|
| Run PubMed searches | 30 min | Day 12 |
| Run other 4 databases | 60 min | Day 12 |
| Deduplication | 30 min | Day 12 |
| Validation checks | 20 min | Day 12 |
| **Total** | **2.5 hours** | **Concentrated Day 12 session** |

**Result:** ~300-400 papers ready for title/abstract screening

---

## SUMMARY FOR YOUR PORTFOLIO

This search strategy document shows:

✅ **Database expertise** - You understand strengths/weaknesses of each  
✅ **Comprehensive methodology** - Not taking shortcuts  
✅ **Transparency** - Every search is documented and reproducible  
✅ **Systematic thinking** - Pre-planned deduplication and validation  

Someone reviewing your GitHub will see: "This person knows how to find literature systematically."

---

**Status: Block 2 COMPLETE ✅**

**Files created:**
- SEARCH_STRATEGY.md (this document)
- Search strategy rationale and validation procedures

**Next Block (3 of 4):**
- 15 minutes: Design Data Extraction Form template
- This is the standardized form you'll use for all 50 papers

Ready to continue?

---

*Author: Farid | Date: Day 11, Block 2 | Time: 15 minutes for this block*
