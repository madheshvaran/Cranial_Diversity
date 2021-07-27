# Packages

library(ggplot2)
library(qgraph)
library(readxl)

# Human Skull

human_skull <- read.csv("raw data/Human Skull.csv", header = TRUE, row.names = 1)

png(filename = "output/Human Skull.png", height = 1200, width = 1200)
qgraph(human_skull, 
       layout = "spring", 
       labels = TRUE, 
       color = "#56B4E9",
       cut = NULL,
       legend.cex = 1,
       edge.width = 0.9,
       edge.color = "black",
       vsize = 4, 
       label.cex = 1.5, 
       label.color = "darkblue")
dev.off()
