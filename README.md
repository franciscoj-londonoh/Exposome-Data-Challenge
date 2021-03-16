# Exposome-Data-Challenge

The Exposome concept embraces the simultaneous exposure of individuals to multiple environmental factors and their combined effects, providing an unprecedented conceptual framework. The Exposome Data Challenge is an initiative funded by the ISGlobal Severo Ochoa program, the ISGlobal Exposome Hub, and ATHLETE project to promote innovative statistical, data science, or other quantitative approaches to studying the Exposome. 

For the event, the available Exposome dataset includes multiple health outcomes (continuous and categorical), multiple exposures, -omics and additional non-exposure variables. The population is drawn from a multi-center study which will represent the main confounding structure in the dataset.


## Part 1: [High dimensional data](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Part1_Exposome_HighDimensionality.R) (Analysis using the R package rexposome) 

 
### Correlation
There is some redundant information in the dataset. Although the clearer issue is the amount of data to handle that makes even data visualization a complex task.

![Exp_Corr](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/Corr_exposome.png)


### PCA
In general, the Exposome data is high dimensional, thus introducing several challenges for data cleaning, exploring, analysis and/or visualization. Thus, one potential pre-processing step of this type of datasets could include a dimensionality reduction phase. In this category, PCA transform can be considered an interesting possibility to explore, even if a compromise must be made since the new space has less interpretability but hidden trends could be also identified.


#### Reduction of the dimensionality
![PCA_Exp](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/PCA_exposome.png)


#### Phenotype clustering with PCA

The color dots represent the "Intelligence quotient at 6-11 years old - Total of correct answers at the RAVEN test"
![PCA_IQ](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/PCA_Exp-IQ.png)



#### PCA and variables correlation (Only numerical non-categorical or dichotomus variables)
![PCA_Var](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/blob/main/Images/PCA/PCA_Variables.png)

  * By family
  
  All images are available [here](https://github.com/franciscoj-londonoh/Exposome-Data-Challenge/tree/main/Images/PCA)
  
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

Instead of using PCA transformation, all variables could be analyzed by using a deep learning approach, modeling the data with the implementation of a Neural Network with Multi-Output Regression. 

## Conclusions
PCA implementation allows high dimensionality reduction of the Exposome data that can support the use of less complex and computing challenging models but some interpretability and partial information could be compromise. Deep learning approaches can be fed massive amount of data with the compromise of having more complex models thus difficult to interpret, representing a challenge in specific contexts. 
All in all, a compromise is necessary for either proposed approach to handle high dimensionality datasets. Which compromise should take place regarding data, computing resources, model complexity and interpretability, will be determined on the needed analysis and final application.
