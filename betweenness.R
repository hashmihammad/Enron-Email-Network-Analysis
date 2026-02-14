library(igraph)

network <- read.csv("E:\\My Python Projects\\My All codes\\R\\Assigment\\facebook_combined-csv.csv", header=TRUE)

g <- graph_from_data_frame(network, directed=FALSE)
g <- simplify(g, remove.multiple=TRUE, remove.loops=TRUE)
bet <- betweenness(g, directed=FALSE)

summary(bet)
which.max(bet)
which.min(bet)
