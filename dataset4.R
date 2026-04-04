
# load the necessary libraries
library(igraph)
library(bootnet) # needed to compute partial correlation matrix
library(tidyverse) # for data wrangling 

# load the stars dataset
data <- read.csv('stars-data_132.csv', header = T)

# retain the 51 items for estimating the correlation matrix
data <- data |> select(item_1:item_51) 

# create partial correlation matrix from the 51 stars items
stars_matrix <- estimateNetwork(data, default = "pcor", 
                                threshold = 'sig') # recommended to retain sig. correlations; can also try other regularization techniques

# extract the matrix for conversion to igraph 
# absolutize if necessary 
stars_adj_mat <- abs(stars_matrix$graph) # you should know how to convert stars_adj_mat into an igraph object 

### options: 

# filtering by cases: e.g., you only want to analyze HM students 
data <- data |> fitler(HM_or_not == 'HM') 

# filtering by items: e.g. you only want to analyze the first 10 items in STARS 
data <- data |> select(item_1:item_10)

# or specific items
data <- data |> select(item_1, item_10, item_12:item_20)
