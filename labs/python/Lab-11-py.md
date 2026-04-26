# Discrete Mathematics Lab

## Overview

This lab explores the intersection of **graph theory** and **matrix operations**. You will use **adjacency matrices** to represent graphs and apply **matrix multiplication** and **transposition** to compute walk counts and analyze graph connectivity. This introduces algorithmic methods for working with graphs using numerical representations.

 
## Learning Objectives

* Represent undirected graphs using adjacency matrices.
* Implement matrix multiplication and transposition in code.
* Analyze matrix properties relevant to graph theory (e.g., symmetry, non-commutativity).
* Compute the number of walks between vertices using powers of adjacency matrices.
* Design functions to determine walk existence and walk length between vertices.
* Interpret matrix-based graph data (e.g., walk counts, self-loops) to understand connectivity.

 
## Problems 

1. Define an **adjacency matrix** for a graph with four vertices and five edges. Use a list of lists to represent the matrix in code. Example:
	
	```python
	A = [[0, 1, 1, 0],
	     [1, 0, 1, 1],
	     [1, 1, 0, 1],
	     [0, 1, 1, 0]]
	```

2. Write a function `matmul(A, B)` to multiply two matrices (lists of lists). Ensure it works for non-square matrices. Test with small examples.

3. Provide an example (with matrices) to show that matrix multiplication is **not commutative**. Use your function from #2 and explain the result.

4. Write a function `transpose(M)` that computes the **transpose** of a matrix \$M\$, returning a new matrix.

5. Apply your function from #4 to transpose the matrix from problem #1. Is the result symmetric? What does symmetry indicate about the graph?

6. Write a function `matrix_power(M, k)` that computes the \$k\$-th power of an adjacency matrix using repeated multiplication.

7. Use your function to compute \$A^3\$ from problem #1. Interpret the value at position $\[1]\[3]\$ as the number of walks of length 3 from vertex 1 to vertex 3.

8. Compute the number of **walks of length 2** from vertex 2 to vertex 4 using \$A^2\$.

9. Write a function `has_walk(M, v, w, k)` that returns `True` if a **walk of length \$k\$** exists between vertices \$v\$ and \$w\$, using the adjacency matrix \$M\$.

10. Use your function from #9 to determine whether a **walk of length 4** exists from vertex 4 to vertex 4 in the graph from problem #1.

 


<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sun Jul 28 2025 09:20:23 PM EDT
</i>
