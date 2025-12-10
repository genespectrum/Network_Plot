# Network Plot 
### This repository provides a simple and clean tutorial to create a Gene Co-expression Network Plot using an edge list CSV file.

## Overview
A Gene Co-expression Network Plot is a visual representation of how genes are connected based on their interaction or expression similarity.
Each gene is shown as a node, and each interaction is shown as a connecting edge.
Edges vary in thickness or color depending on how strong the interaction is, and nodes vary in size based on how many connections they have.
This visualization helps in understanding the overall structure of gene interactions, identifying network patterns, and highlighting central or highly connected genes within the system.
## Dataset Requirements
Edge List (CSV)

The CSV should contain:
- from – Source gene
- to – Target gene
- weight – Strength of interaction
- degree – (Optional) Number of connections
If degree is not present, it will be calculated automatically.
## Step-by-Step Tutorial
1. Install & Load Packages

   Ensure required packages like “igraph”,  “tidygraph”,  “ggraph”,  “ggplot2” for graph creation and plotting are installed and loaded.

2. Prepare Your Input File 

   Select and import your edge list CSV.

   It should contain all gene pairs and interaction weights.

3. Load the Edge List

   Read the CSV into R so the gene connections and weights are ready for graph building.

4. Build the Graph

   Convert the edge list into a graph structure.
   Genes become nodes, and interactions become edges.

5. Calculate Degree

   Compute how many connections each gene has.
   Hub genes will have higher degree values.

6. Convert to tidygraph

   Organize graph data into tidy format for easier plotting and handling.

7. Plot the Network

   Create the network visualization with:
   Edges showing interaction strength
   Nodes sized and colored by degree
   Labels for each gene

8. Save the Plot
   Export the final network image in high resolution.

## Use Cases
1. Gene Interaction Visualization

   Helps explore how genes connect and form modules.

2. Hub Gene Identification

   Easily reveals which genes have many connections.

3. Co-expression Pattern Discovery

   Shows groups of genes that behave similarly in biological systems.





