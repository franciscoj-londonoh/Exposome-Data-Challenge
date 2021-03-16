library(rexposome)
library(tidyverse)

# Data preparation: exposome + covariates -> merge
expos_cov <- merge(exposome,covariates,by="ID")
expos_cov$ID <- NULL # ID column removal

# Phenotype variable labels removal from codebook table: exposome + covariate description 
phen_names <- colnames(phenotype)
phen_names <- phen_names[ phen_names != 'ID' ]
row.names.remove <- c(phen_names)
description_expo <- codebook
description_expo <- description_expo[!(row.names(description_expo) %in% c(phen_names)), ]

# ExposomeSet from DataFrame
exp <- loadExposome(exposures = expos_cov, description = description_expo, phenotype = phenotype, description.famCol = "family")

# Variables correlation: redundancy information
exp_cr <- correlation(exp, use = "pairwise.complete.obs", method.cor = "pearson")

dev.new(width = 550, height = 330, unit = "px")
plot(1:15)
plotCorrelation(exp_cr, type = "matrix")

# Standardisation of variables 
exp_std <- standardize(exp, method = "normal")

# PCA
exp_pca <- pca(exp_std, pca = TRUE, npc=15)
plotPCA(exp_pca, set = "all")

# PCA analysis with IQ phenotype
plotPCA(exp_pca, set = "samples", phenotype = "hs_correct_raven")


# Plotting correlation between exposures and PCA
plotEXP(exp_pca) + theme(axis.text.y = element_text(size = 6.5)) + ylab("")

# Plotting correlation between exposures by family and PCA
for (family_expo in familyNames(exp)){
  variables_name <- rownames(codebook %>% filter(family == family_expo, var_type != "factor", transformation != "Dichotomous"))
  dev.new(width = 550, height = 330, unit = "px")
  plot(1:15)
  plt <- plotEXP(exp_pca, exposure = variables_name) + ggtitle(family_expo) + theme(axis.text.y = element_text(size = 8)) + ylab("")
  print(plt)
  readline(prompt="Press [enter] to continue")
}

# Plotting association score between phentoypes and PCA
plotPHE(exp_pca)