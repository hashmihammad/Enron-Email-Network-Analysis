# Enron Email Network Analysis

This project provides a **structural analysis of the Enron email communication network** using **R** and the **igraph** package. It explores various network metrics, centrality measures, and clustering properties, providing insights into how communication occurred within the organization.

The analysis is based on the **Email-Enron-csv.csv** dataset, which contains email interactions between employees.

---

## Files in this Repository

| File | Description |
|------|-------------|
| `betweenness.R` | Calculates **betweenness centrality** of nodes. |
| `closeness.R` | Calculates **closeness centrality** of nodes. |
| `degree.R` | Calculates the **degree** (number of connections) of nodes. |
| `density.R` | Computes the **network density**. |
| `global-local-clustering.R` | Calculates **global and local clustering coefficients**. |
| `visualize.R` | Visualizes the **largest connected component** of the network. |
| `Email-Enron-csv.csv` | The Enron email dataset used for analysis. |
| `README.md` | This document. |

---

## Structural Properties

### **1. Degree**
The **degree** measures how many direct connections each node has.

- **Minimum Degree:** 1  
- **Maximum Degree:** 1,383  
- **Mean Degree:** 10.02  
- **Median Degree:** 3  
- **Mode Degree:** 1  
- **Node with Highest Degree:** 5038 (1,383 connections)  
- **Node with Lowest Degree:** 0 (1 connection)  

**Insight:**  
Most nodes have very few connections, while a few nodes act as **major hubs**. The network is hub-dominated, with a small number of users controlling most interactions.

---

### **2. Network Density**
**Density** measures the fraction of all possible connections that exist.

- **Density:** 0.00027 (~0.027%)

**Insight:**  
The network is extremely sparse, typical of real-world email networks. Most users interact with only a small portion of the organization.

---

### **3. Clustering Coefficients**
**Clustering** indicates how nodes form tightly-knit groups.  

- **Global Clustering:** 0.0853 (~8.53%)  
- **Local Clustering:**  
  - Minimum: 0  
  - Median: 0.9  
  - Mean: 0.7156  
  - Maximum: 1  
  - NA values: 11,211 nodes (degree < 2)  

**Insight:**  
- Globally, only a small percentage of possible triangles are closed.  
- Locally, many nodes form strong clusters, representing **tight departmental communication**.

---

### **4. Betweenness Centrality**
**Betweenness** identifies nodes that act as **bridges** between different parts of the network.

- Minimum: 0  
- Median: 0  
- Mean: 46,805  
- Maximum: 43,651,093  
- Node with Highest Betweenness: 5038  
- Node with Lowest Betweenness: 0  

**Insight:**  
Node 5038 is crucial in connecting distant users, controlling major information pathways. Nodes with low betweenness do not significantly influence communication flow.

---

### **5. Closeness Centrality**
**Closeness** measures how quickly a node can reach all other nodes in the network.

- Minimum: 0.1142  
- Median: 0.2586  
- Mean: 0.3070  
- Maximum: 1  
- Node with Highest Closeness: 2086  
- Node with Lowest Closeness: 8554  

**Insight:**  
- High-closeness nodes (e.g., 2086) can communicate efficiently across the network.  
- Low-closeness nodes are peripheral and isolated.

---

### **6. Two-Mode Network Projection**
The Enron email network is a **one-mode network**: both `FromNodeID` and `ToNodeID` represent email addresses.  
- There is **no bipartite (two-mode) structure**, so projections like Binary, Sum, or Weighted Newman do not apply.

---

## Detailed Analysis & Insights

- **Hub-dominated:** A few nodes (like 5038) control most direct interactions.  
- **Sparse network:** Very low density (~0.027%) means most employees communicate only within a small circle.  
- **Local clusters:** Many users form strong local groups (departments or teams) despite weak global connectivity.  
- **Central nodes:** Node 2086 is most central in terms of closeness; Node 5038 dominates degree and betweenness.  
- **Hierarchical structure:** Communication patterns suggest a few users dominate information flow while most users have limited interactions.

---
