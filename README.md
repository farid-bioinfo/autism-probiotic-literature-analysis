# Systematic Review: Probiotic and Microbiome Interventions in Autism Spectrum Disorder

**A PRISMA 2020-compliant systematic review and meta-analysis of behavioural outcomes**

**Status:** Manuscript complete — under peer review at a peer-reviewed journal (submitted June 2026)
**Author:** Farid | Independent Researcher, London
**ORCID:** [0009-0009-4443-6037](https://orcid.org/0009-0009-4443-6037)
**Protocol:** Registered on OSF — [osf.io/tch47](https://osf.io/tch47)

---

## 🎯 Project Overview

This project systematically synthesises randomised controlled trial evidence on probiotic and microbiome-targeted interventions (probiotics, prebiotics, synbiotics) for behavioural outcomes in children with autism spectrum disorder (ASD), using PRISMA 2020 methodology and a random-effects meta-analysis.

**Why it matters:** the gut–brain axis literature in ASD is fragmented — small trials, heterogeneous outcome measures, and inconsistent effect reporting make it hard to draw clinical conclusions. This review pools the comparable evidence, quantifies the overall effect size, and assesses its certainty using GRADE.

**What this project demonstrates:**
- End-to-end systematic review execution, solo, from protocol to submission-ready manuscript
- Multi-database literature search and PRISMA screening at scale (700+ records screened)
- Meta-analytic modelling in R (`metafor`), including sensitivity, subgroup, and publication-bias analysis
- Reproducible, version-controlled research workflow

---

## 📊 Methodology

| Element | Detail |
|---|---|
| Reporting standard | PRISMA 2020 |
| Model | DerSimonian–Laird random-effects |
| Effect size | Hedges' *g* (bias-corrected standardised mean difference) |
| Databases searched | PubMed, Embase, Cochrane CENTRAL, PsycINFO, Web of Science |
| Screening | Single reviewer, with 20% random sample of exclusions verified as a QC check |
| Software | R (`metafor`, `dplyr`, `robvis`), LibreOffice, Python |

## 📈 Key Findings (pre-publication; subject to change through peer review)

- **Primary pooled effect (k=6, probiotic-only trials):** Hedges' *g* = −0.296, 95% CI [−0.487, −0.105], *p* = 0.002, *I²* = 0%
- **Full pool (k=9):** *g* = −0.259
- **Publication bias:** Egger's test non-significant (*p* = 0.163); trim-and-fill adjusted *g* = −0.262
- **GRADE certainty:** Moderate
- Negative *g* favours the intervention arm

*(Negative effect sizes indicate improvement; adaptive-behaviour scales were sign-flipped for consistency across outcome measures.)*

---

## 🗂 Repository Structure

```
├── README.md                          # This file
├── docs/
│   ├── PRISMA_Protocol.pdf            # Registered review protocol
│   └── Search_Strategy.pdf            # Full multi-database search strategy
├── analysis/
│   ├── forest_plot_final_v8.R         # Primary meta-analysis + forest plot
│   └── data_harmonization.R           # Cross-study data standardisation
├── figures/
│   ├── forest_plot_figure2.tiff
│   └── funnel_plot_figure4.tiff
└── screening/
    └── search_export_summary.csv      # Deduplicated search results (MeSH + free-text)
```

## 🛠 Tools & Stack

`R` (metafor, dplyr, ggplot2, robvis) · `Python` · LibreOffice (ODT/PRISMA diagrams) · WebPlotDigitizer (figure data extraction) · Git/GitHub

## 📖 Workflow Phases

- [x] Protocol development & OSF pre-registration
- [x] Multi-database literature search (819 records)
- [x] Title/abstract and full-text screening (PRISMA flow)
- [x] Risk-of-bias assessment (46 papers)
- [x] Data extraction & harmonisation
- [x] Meta-analysis, subgroup & sensitivity analysis, GRADE assessment
- [x] Manuscript drafting and submission
- [ ] Peer review response *(in progress)*
- [ ] Publication

---

## 📬 Contact

Available upon request via [ORCID](https://orcid.org/0009-0009-4443-6037).

## 📄 License

Code and analysis scripts in this repository are shared for portfolio and reproducibility purposes. Manuscript text and unpublished results remain under the author's copyright pending journal decision.
