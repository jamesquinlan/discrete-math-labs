<style>
img[src*='#left'] {
    float: left;
}
img[src*='#right'] {
    float: right;
}
img[src*='#center'] {
    display: block;
    margin: auto;
}
</style>


# Discrete Mathematics Lab

 
## Overview

Graphs are fundamental in computer science and model many situations, especially networks (computer, transportation, friends) — $^*$Indicates a challenging problem.



## Learning Objectives

* Construct and manipulate Python dictionaries to represent graph structures.
* Model graphs as adjacency lists and matrices within code.
* Determine graph properties such as order (number of vertices) and size (number of edges) from a code-based representation.
* Identify adjacent vertices and compute vertex degrees through programmatic analysis.
* Implement graph traversal by coding a function that finds a walk between vertices.
* Visualize graphs using external Python libraries and analyze structural properties from visual output.
* Compare graph representations (list vs. matrix) and discuss their respective strengths.


## Problems

1.  **Dictionary** is an ordered and changeable collection with no duplicate entries.  Dictionaries have `key:value` pairs.  For example, `D = {'Apple':1, 'banana':2}`.  
Note that neither keys nor values need to be a string, but the key needs to be unique (i.e., dictionaries cannot have two items with the same key).  Here are some other examples of dictionaries: `E = {1:'Apple', 2: 'Banana'}`, `F = {1:2, 3:4}`, `G = {1:[1,2,3], 2:[1,3,4], 3:[1,2],4:[2]}`. **Create an empty dictionary**, then verify its type using `type`. An empty set is defined as `S = set()`, but dictionaries are not sets.  


2. Add the `key:value` pair `'A':1` to this empty dictionary using the `update()` function.  For example,  `my_dictionary.update(another_dictionary)`. **Note**: As of Python version 3.7, dictionaries are *ordered*. In Python 3.6 and earlier, dictionaries are *unordered*.  

3. There are other ways to append new items to a dictionary, particularly by index, `my_dictionary['B'] = 2`.  

4. We can use a dictionary to represent a graph by setting the **vertices as keys** and assigning a list of edges incident to the `key` vertex as its value(s).  For example, consider the complete graph $K_4$ shown below.  

![K4](images/k4.png#center)
We can represent this graph using a dictionary as follows:

```
	# Key:value = vertex:[edges = (adjacency list)]
	G = {
		1:[2,3,4], 
		2:[1,3,4],
		3:[1,2,4],
		4:[1,2,3]
	}
```
5. Use a dictionary to represent the graph below.  You may also use integers instead of letters (e.g., `1 = 'A'`, `2 = 'B'`, etc.).  

![g24](images/g24.png#center)	

6. Find all vertices adjacent to `'E'`.

7. Use the `len ()` function to find the order of a graph stored in a dictionary.


8. The degree sum (sum of degrees or total degree) is $\sum_{i=1}^n d_i$ where $|V| = n$ and $d_i = deg(v_i)$.  Loop over each node’s value list, summing up their length. Use this to determine the size of the graph.
 

9. $^*$Write a function that finds a walk in a graph $G = (V,E)$ from $v$ to $w$ where $v,w \in V$.  


10. A matrix (called an adjacency matrix) can be used to represent a graph. A $1$ is in entry $(i,j)$ if an edge exists between $v_i$ and $v_j$; else $0$.  In Python, a matrix is a "list of lists" in which each list entry is a list representing a row of the matrix.  For example, `A = [[1,2,3], [4,5,6],[7,8,9]]` is the $3 \times 3$ matrix, 
$$
A = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{bmatrix} .
$$
Use a matrix to represent the complete graph $K_4$ from problem #4 above.  




<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sun Jul 27 2025 08:31:29 PM EDT
</i>
