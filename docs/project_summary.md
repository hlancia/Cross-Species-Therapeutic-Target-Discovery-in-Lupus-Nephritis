# Project Summary

## Title

**Cross-Species Therapeutic Target Discovery in Lupus Nephritis**

---

## Overview

This project presents a reproducible computational framework for identifying macrophage-associated therapeutic targets in lupus nephritis through the integration of independent human and mouse transcriptomic datasets.

Human single-cell RNA sequencing, mouse single-cell RNA sequencing, and human spatial transcriptomics were combined to prioritize therapeutic candidates supported by multiple orthogonal lines of biological evidence.

---

## Scientific Objective

The primary objective was to identify inflammatory macrophage-associated therapeutic targets that are reproducible across species and independent transcriptomic technologies.

Rather than relying on differential expression from a single dataset, the workflow integrates multiple validation steps to improve confidence in biologically relevant therapeutic candidates.

---

## Datasets

| Dataset | Species | Technology | Purpose |
|----------|----------|------------|---------|
| AMP Lupus Nephritis (SDY997) | Human | Single-cell RNA-seq | Target discovery |
| GSE201932 | Mouse | Single-cell RNA-seq | Cross-species validation |
| GSE263909 | Human | Spatial transcriptomics | Independent validation |

---

## Computational Workflow

```text
Human scRNA-seq
        │
        ▼
Inflammatory Macrophage Discovery
        │
        ▼
Differential Expression Analysis
        │
        ▼
Cross-Species Validation
        │
        ▼
Spatial Validation
        │
        ▼
Integrated Target Prioritization
```

---

## Main Findings

The integrated analysis consistently prioritized four macrophage-associated therapeutic targets:

1. **C5AR1**
2. **LILRB2**
3. **CSF1R**
4. **PILRA**

Among these, **C5AR1** emerged as the strongest candidate based on consistent evidence across human single-cell RNA sequencing, mouse validation, and human spatial transcriptomics.

---

## Repository Contents

- Reproducible R scripts
- Publication-quality figures
- Intermediate analysis tables
- Final therapeutic target rankings
- Documentation describing the complete workflow

---

## Applications

This workflow can be adapted to:

- autoimmune diseases
- inflammatory diseases
- translational target discovery
- cross-species validation studies
- multi-dataset integration
- therapeutic target prioritization
