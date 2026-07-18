# Methodology

## Overview

This project implements a reproducible computational workflow to identify and prioritize inflammatory macrophage-associated therapeutic targets in lupus nephritis through the integration of independent human and mouse transcriptomic datasets.

The analysis combines single-cell RNA sequencing, cross-species validation, and spatial transcriptomics to prioritize therapeutic candidates supported by multiple independent lines of biological evidence.

---

## Computational Workflow

```text
Human Kidney scRNA-seq
        │
        ▼
Quality Control
        │
        ▼
Normalization
        │
        ▼
Highly Variable Gene Selection
        │
        ▼
Dimensionality Reduction (PCA)
        │
        ▼
Graph-Based Clustering
        │
        ▼
Cell Type Annotation
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

## Datasets

| Dataset | Species | Technology | Purpose |
|----------|----------|------------|---------|
| SDY997 | Human | Single-cell RNA sequencing | Discovery |
| GSE201932 | Mouse | Single-cell RNA sequencing | Cross-species validation |
| GSE263909 | Human | Spatial transcriptomics | Independent validation |

---

## Software Environment

| Software | Version |
|----------|---------|
| R | 4.x |
| Seurat | v5 |
| dplyr | Latest |
| ggplot2 | Latest |
| patchwork | Latest |
| Matrix | Latest |

> **Note:** Exact package versions and installation instructions are provided in `requirements.md`.

---

## Human Single-Cell RNA Sequencing Analysis

The human AMP Lupus Nephritis dataset (SDY997) served as the discovery cohort.

The computational workflow included:

- Quality control
- Data normalization
- Identification of highly variable genes
- Principal component analysis (PCA)
- Graph-based clustering
- Uniform Manifold Approximation and Projection (UMAP) visualization
- Cell type annotation using canonical immune cell markers

Inflammatory macrophages were selected for downstream therapeutic target discovery.

---

## Differential Expression Analysis

Differential expression analysis was performed to identify genes significantly enriched in inflammatory macrophages compared with all remaining cell populations.

Candidate genes were prioritized according to:

- Adjusted *p*-value
- Average log₂ fold change
- Percentage of expressing cells
- Biological relevance

---

## Cross-Species Validation

Candidate therapeutic targets identified in the human discovery dataset were evaluated in an independent mouse lupus nephritis single-cell RNA sequencing dataset (GSE201932).

Genes demonstrating conserved macrophage-associated expression across both species were retained as higher-confidence therapeutic candidates.

---

## Spatial Transcriptomic Validation

Prioritized targets were further evaluated using an independent human spatial transcriptomic dataset (GSE263909).

Spatial analysis was performed to determine whether candidate genes localized to macrophage-rich inflammatory regions within diseased kidney tissue.

---

## Target Prioritization Strategy

Final therapeutic targets were prioritized by integrating multiple independent sources of biological evidence.

Each candidate was evaluated according to:

- Human inflammatory macrophage enrichment
- Cross-species conservation
- Human spatial transcriptomic validation
- Spatial association with macrophage-rich regions
- Biological plausibility based on published literature

Only targets supported by multiple orthogonal datasets were prioritized for downstream interpretation.

---

## Reproducibility

All analyses were performed using scripted R workflows.

The repository contains:

- Fully reproducible source code
- Intermediate analysis tables
- Publication-quality figures
- Final therapeutic target rankings
- Comprehensive project documentation

No manual data manipulation was performed outside of scripted analyses.

---

## Limitations

Several limitations should be considered when interpreting these results.

- Public datasets differ in sample preparation, sequencing technologies, and preprocessing pipelines.
- Cross-species comparisons assume conservation of macrophage biology between humans and mice.
- Spatial transcriptomics provides lower cellular resolution than single-cell RNA sequencing.
- Computational prioritization identifies candidate therapeutic targets but does not replace functional experimental validation.

Future experimental studies are required to confirm the biological and therapeutic relevance of the prioritized targets.

---

## Future Improvements

Potential extensions of this computational framework include:

- Integration of additional lupus nephritis cohorts
- Cell–cell communication analysis
- Integration of human genetic (GWAS) evidence
- Druggability assessment using public databases
- AI-assisted therapeutic target prioritization
- Multi-omic data integration
