install.packages("readr")

library("igraph")
library("readr") # Quick tidy way to read in csv files

# Read datasets

graph <- read_delim("tutorials/tutorial_2/graph.csv", ";", escape_double = FALSE, trim_ws = TRUE)
attributes <- read_delim("./tutorials/tutorial_2/attributes.csv", ";", escape_double = FALSE, trim_ws = TRUE)

# Merge datasets in graph

g <- graph_from_data_frame(d = graph, vertices = attributes, directed = FALSE)

# Remove isolates

isolated = which(degree(g)==0)
g = delete.vertices(g, isolated)
