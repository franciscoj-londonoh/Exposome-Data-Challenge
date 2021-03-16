# Exposome-Data-Challenge

The Exposome concept embraces the simultaneous exposure of individuals to multiple environmental factors and their combined effects, providing an unprecedented conceptual framework. The Exposome Data Challenge is an initiative promoted by the ISGlobal Severo Ochoa program, the ISGlobal Exposome Hub, and ATHLETE project to promote innovative statistical, data science, or other quantitative approaches to studying the health effects of complex high-throughput measurement of exposure indicators (exposome). 

The available Exposome dataset includes multiple health outcomes (continuous and categorical), multiple exposures, -omics and additional non-exposure variables (e.g., potential confounders). The data represents a real case scenario of exposome dataset (based on the HELIX project database) with multiple correlated variables (N>100 exposure variables) arising from general and personal environments at different time points, biological molecular data (multi-omics: DNA methylation, gene expression, proteins, metabolomics) and multiple clinical phenotypes. The population is drawn from a multi-center study which will represent the main confounding structure in the dataset.


## 1. High dimensional data (Analysis in R)

 
### Correlation

### PCA

Reduction of the dimensionality

Phenotype clustering with PCA

PCA and variables correlation (Only numerical non-categorical or dichotomus variables)

  By family
  
    PCA & Lifestyle
    PCA & Smoke
    PCA & Social economic
    PCA & Natural spaces
    PCA & Build Environment 
    PCA & Meteo
    PCA & Indoor Air
    PCA & Air Pollution
    PCA & Traffic
    PCA & Noise
    PCA & Covariates
    PCA & Water DBPs
    PCA & PBDE
    PCA & PFAS
    PCA & Phenols
    PCA & Phthalates
    PCA & Organochlorines
    PCA & Organophosphates
    PCA & Metals
 
## 2. Deep Learning Modeling with Multi-Output Regression (Python - Keras/TensorFlow)
Instead of using PCA transfor and to include all variables, deep learning could be a solution, and mdata modeling could be obtained by implemeting a Neural Network for analysis


## Conclusions
In general, the Exposome data is high dimensional, thus introducing several challenges to the 
PCA allows the reduction of the dimensionality of the data to use less complex and computing challenging models but some interpretability and partial information could be compromise in this case. 
Deep learning allows the use of massive amount of data with the compromise of having more complex models thus non-easeble interpretable which could be a challenge in specific contexts
All in all, a compromise is necessary. Which compromise regarding data, computing resources, model complexity and interpretability, is according to the analysis and final application.
