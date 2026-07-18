# Figures

This directory contains the principal publication-quality figures generated during the cross-species therapeutic target discovery workflow.

---

## Figure Overview

| Figure | Description |
|----------|-------------|
| **Project_Workflow.png** | Overview of the computational workflow used for therapeutic target discovery, including discovery, validation, and consensus prioritization. |
| **Figure1_Human_AMP_LN_Atlas.png** | Annotated UMAP of the human AMP Lupus Nephritis single-cell atlas showing major immune cell populations. |
| **Figure2_Human_Lead_Targets_DotPlot.png** | Dot plot illustrating the expression specificity and prevalence of the four prioritized therapeutic targets across human kidney cell populations. |
| **Figure3_Target_UMAPs.png** | UMAP feature plots showing the spatial distribution of the four prioritized therapeutic targets within the human single-cell atlas. |
| **Figure4_Cross_Dataset_Evidence_Matrix.png** | Evidence matrix summarizing support for each prioritized target across human single-cell RNA sequencing, mouse single-cell RNA sequencing, human spatial transcriptomics, and spatial macrophage correlation analyses. |
| **Figure5_Consensus_Target_Ranking.png** | Final consensus ranking of prioritized therapeutic targets based on an additive evidence-scoring framework (maximum possible score = 4). |
| **Supplementary_Figure1_Mouse_Candidate_Targets_DotPlot.png** | Exploratory mouse candidate-target expression panel used during cross-species validation. This figure includes additional candidate genes evaluated before final target prioritization. |

---

## Evidence Scoring

The consensus prioritization integrates multiple independent sources of biological evidence.

| Evidence Weight | Interpretation |
|----------------:|----------------|
| **1.0** | Strong support from the corresponding analysis |
| **0.5** | Partial or suggestive evidence |
| **0.0** | No supporting evidence or evidence not directly available |

The final consensus score is calculated as an additive evidence score across independent validation datasets. This approach provides a transparent interpretation of the supporting evidence and avoids the use of standardized negative scores, which may be misleading when summarizing overall biological support.

---

## Reproducibility

Figures 4 and 5 are generated automatically by:

```text
scripts/05_consensus_ranking.R
```

using the consensus evidence table:

```text
results/Consensus_Target_Ranking.csv
```

All figures in this directory were generated directly from the analysis scripts included in this repository. No manual modification of the underlying data was performed.
