# Project Summary

## Title

**Cross-Species Therapeutic Target Discovery in Lupus Nephritis**

---

## Objective

Develop a reproducible computational framework for identifying macrophage-associated therapeutic targets by integrating human single-cell RNA sequencing, mouse single-cell RNA sequencing, and human spatial transcriptomics.

---

## Scientific Question

Which inflammatory macrophage-associated genes are consistently associated with lupus nephritis across independent species and transcriptomic technologies?

---

## Datasets

| Dataset | Technology |
|----------|------------|
| AMP Lupus Nephritis (SDY997) | Human single-cell RNA sequencing |
| GSE201932 | Mouse single-cell RNA sequencing |
| GSE263909 | Human spatial transcriptomics |

---

## Workflow

```text
Human Kidney scRNA-seq
        │
        ▼
Inflammatory Macrophage Identification
        │
        ▼
Differential Expression Analysis
        │
        ▼
Cross-Species Validation
(Mouse scRNA-seq)
        │
        ▼
Independent Spatial Validation
(Human)
        │
        ▼
Integrated Therapeutic Target Ranking
```

---

## Top Therapeutic Targets

1. **C5AR1**
2. **LILRB2**
3. **CSF1R**
4. **PILRA**

---

## Repository Contents

- Reproducible R analysis scripts
- Publication-quality figures
- Intermediate analysis tables
- Final therapeutic target rankings
- Project documentation

---

## Keywords

**Single-cell RNA sequencing • Spatial transcriptomics • Lupus nephritis • Inflammatory macrophages • Computational biology • Therapeutic target discovery • Cross-species validation • Translational immunology**
