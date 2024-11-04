install.packages("igraph")
install.packages("igraphdata")

# Read in library igraph and igraphdata

library("igraph")
library("igraphdata")

# Read in Data

data("USairports")

# Now simply data and remove self loops (they make for horrible plots)

g <- simplify(USairports, remove.loops = TRUE, remove.multiple = TRUE)

# Now you are good to go to work with the graph "g"
