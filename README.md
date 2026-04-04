### Statistics Anxiety Network Analysis (STARS) Repository

This repository contains the data, helper script, and R Markdown reports for a network psychometric analysis of statistics anxiety in undergraduate students (N = 132). The Statistics Anxiety Rating Scale (STARS) was utilised, bifurcating symptoms into affective arousal and cognitive appraisals.



The analysis investigates internal cohesion, path efficiency, and simulates network resilience (targeted vs. random symptom deactivation) to inform psychotherapeutic and pedagogical interventions.



#### Repository Structure

Do navigate to the respective sections.



##### Data Files

stars-data\_132.csv

&#x09;The primary dataset containing compiled self-reported responses from 132 	undergraduate students. Includes demographic variables and responses to the 	51-item STARS instrument measured on a 5-point Likert scale.

stars-items.md

&#x09;Contains the list of all 51 STARS items.



##### Helper Script

dataset4.R

&#x09;R script containing code that allows for processing of survey data into 	partial correlation matrices for network analysis, and other useful 	functions.



##### Analysis Reports

Final-Report.Rmd

&#x09;The primary, reproducible R markdown script containing the full analysis. 	Includes data wrangling, network estimation, macro- and micro-analysis, and 	targeted degradation simulations.

Final-Report.html

&#x09;The knitted html output for alternative visualisation.



Preliminary-Report.Rmd

&#x09;The initial exploratory R Markdown script. Contains early-stage literature 	reviews, preliminary network modeling, and data analysis that informed the 	hypotheses of the final report.

Preliminary-Report.html

&#x09;The knitted html output for alternative visualisation.



#### Packages

To reproduce the analysis in the .Rmd files, the following R packages are required:

* tidyverse
* bootnet
* igraph

