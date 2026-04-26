# Discrete Mathematics Lab 10 

## Overview

Graphs are fundamental in computer science and model many situations, especially networks (computer, transportation, friends). $^*$Indicates a challenging problem.

## Learning Objectives

* Construct and manipulate Julia dictionaries to represent graph structures.
* Model graphs as adjacency lists and matrices within code.
* Determine graph properties such as order (number of vertices) and size (number of edges) from a code-based representation.
* Identify adjacent vertices and compute vertex degrees through programmatic analysis.
* Implement graph traversal by coding a function that finds a walk between vertices.
* Visualize graphs using external Julia packages and analyze structural properties from visual output.
* Compare graph representations (list vs. matrix) and discuss their respective strengths.

## Problems

1. **Dictionary** is an ordered and mutable collection with no duplicate keys. Dictionaries have `key => value` pairs. For example, `D = Dict("Apple" => 1, "banana" => 2)`.
   
   Note that neither keys nor values need to be a string, but the key needs to be unique (i.e., dictionaries cannot have two items with the same key). Here are some other examples of dictionaries:
   * `E = Dict(1 => "Apple", 2 => "Banana")`
   * `F = Dict(1 => 2, 3 => 4)`
   * `G = Dict(1 => [1,2,3], 2 => [1,3,4], 3 => [1,2], 4 => [2])`
   
   **Create an empty dictionary**, then verify its type using `typeof`. An empty set is defined as `S = Set()`, but dictionaries use `Dict()`.

2. Add the `key => value` pair `"A" => 1` to this empty dictionary using direct assignment.
   
   Example: `my_dictionary["A"] = 1`

3. There are other ways to add items to a dictionary, particularly by using `merge!()` or direct indexing. Practice both methods.

4. We can use a dictionary to represent a graph by setting the **vertices as keys** and assigning an array of edges incident to the `key` vertex as its value(s). For example, consider the complete graph $K_4$ shown in the Python version.
   
   We can represent this graph using a dictionary as follows:
   
   ```julia
   # Key => value = vertex => [edges (adjacency list)]
   G = Dict(
       1 => [2,3,4], 
       2 => [1,3,4],
       3 => [1,2,4],
       4 => [1,2,3]
   )
   ```

5. Use a dictionary to represent the graph shown in the Python version (graph g24). You may also use integers instead of letters (e.g., `1 = 'A'`, `2 = 'B'`, etc.).

6. Find all vertices adjacent to `'E'` (or its integer equivalent).

7. Use the `length()` function to find the order of a graph stored in a dictionary.

8. The degree sum (sum of degrees or total degree) is $\sum_{i=1}^n d_i$ where $|V| = n$ and $d_i = \deg(v_i)$. Loop over each node's value array, summing up their length. Use this to determine the size of the graph.

9. $^*$Write a function that finds a walk in a graph $G = (V,E)$ from $v$ to $w$ where $v,w \in V$.

10. A matrix (called an adjacency matrix) can be used to represent a graph. A $1$ is in entry $(i,j)$ if an edge exists between $v_i$ and $v_j$; else $0$. In Julia, a matrix is created using square brackets with spaces or semicolons. For example:
    
    ```julia
    A = [1 2 3; 4 5 6; 7 8 9]
    ```
    
    is the $3 \times 3$ matrix:
    $$
    A = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{bmatrix}
    $$
    
    Use a matrix to represent the complete graph $K_4$ from problem #4 above.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sun, January 30, 2026 08:31:29 PM EDT
</i>
