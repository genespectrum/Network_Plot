library(igraph)
library(tidygraph)
library(ggraph)
library(ggplot2)

set.seed(123)

# ---------------------------------------
# 1. Import and read the csv file
# ---------------------------------------
edges <- choose.files()
edges <- read.csv(edges)

# ---------------------------------------
# 2. Build graph and compute node degree
# ---------------------------------------
g <- graph_from_data_frame(edges, directed = FALSE)
V(g)$degree <- degree(g)
tg <- as_tbl_graph(g)

# ---------------------------------------
# 4. FANCY Co-expression Network Plot
# ---------------------------------------
ggraph(tg, layout = "fr") +
  
  # --- Edges ---
  geom_edge_link(
    aes(width = weight, color = weight),
    alpha = 0.4,
    lineend = "round"
  ) +
  
  # --- Nodes ---
  geom_node_point(
    aes(size = degree, color = degree),
    shape = 21,
    fill = "white",
    stroke = 1
  ) +
  
  # --- Labels ---
  geom_node_text(
    aes(label = name),
    repel = TRUE, size = 3.5, fontface = "bold"
  ) +
  
  # --- Color scales ---
  scale_edge_color_gradient(low = "#9ecae1", high = "#08306b") +
  scale_color_gradient(low = "#fed98e", high = "#c65102") +
  scale_size(range = c(4, 14)) +
  scale_edge_width(range = c(0.2, 1.8)) +
  
  # --- Theme ---
  theme_void() +
  ggtitle(" Large-Scale Gene Co-expression Network (20 Genes, 100 Edges)") +
  theme(
    plot.title = element_text(size = 18, face = "bold", hjust = 0.5)
  )
ggsave("Network_plot.png", width = 14, height = 7, dpi = 300, bg = 'white')

