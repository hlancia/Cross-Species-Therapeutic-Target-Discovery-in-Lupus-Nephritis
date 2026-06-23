# Executive Summary

## Objective

Lupus nephritis (LN) remains a major cause of kidney failure in patients with systemic lupus erythematosus. Macrophages are increasingly recognized as key drivers of kidney inflammation and tissue injury.

The objective of this project was to identify and prioritize macrophage-associated therapeutic targets through integration of independent human and mouse transcriptomic datasets.

---

## Approach

Three independent datasets were integrated:

| Dataset | Species | Technology | Role |
|----------|----------|------------|----------|
| AMP Lupus Nephritis (SDY997) | Human | Single-cell RNA-seq | Discovery |
| GSE201932 | Mouse | Single-cell RNA-seq | Cross-species validation |
| GSE263909 | Human | Spatial transcriptomics | Independent validation |

Analysis workflow:

Human LN scRNA-seq
↓
Inflammatory macrophage identification
↓
Differential expression analysis
↓
Target prioritization
↓
Mouse validation
↓
Human spatial validation
↓
Consensus ranking

---

## Key Results

Inflammatory macrophages emerged as a prominent disease-associated population in lupus nephritis.

Cross-species and cross-platform validation identified four prioritized targets:

1. C5AR1
2. LILRB2
3. CSF1R
4. PILRA

### Lead Candidate: C5AR1

Evidence supporting C5AR1:

- Strong enrichment in human inflammatory macrophages
- Conserved expression in mouse lupus nephritis macrophages
- Significant increase in independent human spatial transcriptomic data
- Strong correlation with macrophage-rich glomerular regions

---

## Skills Demonstrated

- Single-cell RNA-seq analysis
- Spatial transcriptomics integration
- Cell type annotation
- Differential expression analysis
- Cross-species validation
- Translational target discovery
- Reproducible computational workflows
- Data-driven target prioritization

---

## Future Directions

- Integration of additional lupus nephritis cohorts
- Incorporation of GWAS evidence
- Druggability assessment
- Machine learning-based target ranking
- Network biology approaches
