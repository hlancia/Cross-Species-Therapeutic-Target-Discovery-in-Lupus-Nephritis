############################################################
# 05_consensus_ranking.R
#
# Purpose:
# Combine evidence from human scRNA-seq discovery,
# mouse scRNA-seq validation, and human spatial validation
# to generate a final consensus target ranking.
############################################################

library(dplyr)
library(ggplot2)


final_ranking <- data.frame(
  Gene = c("C5AR1","CSF1R","LILRB2","PILRA"),
  Spatial_FC = c(2.6361839, 1.2768324, 1.9232215, 1.2737179),
  Spatial_P = c(1.785634e-06, 1.229527e-01, 1.399574e-03, 1.338689e-01),
  Correlation = c(0.54592669, 0.43665946, 0.40528355, 0.35448036),
  Human_Macrophage_Expression = c(6.392540, 5.147841, 6.338795, 3.469967)
)

final_ranking$Final_Evidence_Score <-
  scale(final_ranking$Spatial_FC)[,1] +
  scale(-log10(final_ranking$Spatial_P))[,1] +
  scale(final_ranking$Correlation)[,1] +
  scale(final_ranking$Human_Macrophage_Expression)[,1]

final_ranking <- final_ranking %>%
  arrange(desc(Final_Evidence_Score))

write.csv(
  final_ranking,
  "results/Final_Target_Ranking.csv",
  row.names = FALSE
)

final_ranking

png(
  "figures/Figure5_Final_Target_Ranking.png",
  width = 2100,
  height = 1500,
  res = 300
)

ggplot(
  final_ranking,
  aes(
    x = reorder(Gene, Final_Evidence_Score),
    y = Final_Evidence_Score
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    x = "Target",
    y = "Final evidence score",
    title = "Consensus ranking of lupus nephritis macrophage targets"
  ) +
  theme_classic()

dev.off()