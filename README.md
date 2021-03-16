# Exposome-Data-Challenge

The Exposome concept embraces the simultaneous exposure of individuals to multiple environmental factors and their combined effects, providing an unprecedented conceptual framework. The Exposome Data Challenge is an initiative promoted by the ISGlobal Severo Ochoa program, the ISGlobal Exposome Hub, and ATHLETE project to promote innovative statistical, data science, or other quantitative approaches to studying the health effects of complex high-throughput measurement of exposure indicators (exposome). 

The available Exposome dataset includes multiple health outcomes (continuous and categorical), multiple exposures, -omics and additional non-exposure variables (e.g., potential confounders). The data represents a real case scenario of exposome dataset (based on the HELIX project database) with multiple correlated variables (N>100 exposure variables) arising from general and personal environments at different time points, biological molecular data (multi-omics: DNA methylation, gene expression, proteins, metabolomics) and multiple clinical phenotypes. The population is drawn from a multi-center study which will represent the main confounding structure in the dataset.


## Part 1: [High dimensional data](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Part1_Exposome_HighDimensionality.R) (Analysis using the R package rexposome) 

 
### Correlation
![Exp_Corr](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/Corr_exposome.png)

### PCA
In general, the Exposome data is high dimensional, thus introducing several challenges for data cleaning, exploring, analysis and/or visualization. Thus, one potential pre-processing step of this type of datasets could include a dimensionality reduction phase. In this category, PCA transform can be considered an interesting possibility to explore, even if a compromise must be made since the new space has less interpretability but hidden trends could be also identified.


Reduction of the dimensionality
![PCA_Exp](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/PCA_exposome.png)


Phenotype clustering with PCA
![PCA_IQ](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/PCA_Exp-IQ.png)



PCA and variables correlation (Only numerical non-categorical or dichotomus variables)
![PCA_Var](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/PCA_Variables.png)

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
 
## 2. [Deep Learning Modeling](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Part2_DL_MultiOutput_Regression.ipynb) with Multi-Output Regression (Python - Keras/TensorFlow)

Instead of using PCA transfor and to include all variables, deep learning could be a solution, and mdata modeling could be obtained by implemeting a Neural Network for analysis

## Conclusions
PCA implementation allows high dimensionality reduction of the Exposome data that can to use less complex and computing challenging models but some interpretability and partial information could be compromise in this case. 
Deep learning allows the use of massive amount of data with the compromise of having more complex models thus difficult to interpret which could be a challenge in specific contexts. 
All in all, a compromise is necessary for either proposed approach to handle high dimensionality datasets. Which compromise regarding data, computing resources, model complexity and interpretability, should be based on the needed analysis and final application.
