# Discrete Mathematics Lab 12

## Overview

This lab focuses on **trees**, a special class of graphs. You will work with random graphs, test tree properties, and construct binary trees using arrays and structs. Problems marked with $^*$ are more challenging.

## Learning Objectives

* Generate and interpret random adjacency matrices representing undirected graphs.
* Determine whether a graph is a tree by analyzing connectivity and edge count.
* Implement matrix-based functions to assess graph properties such as degree and total edge count.
* Represent and manipulate tree structures using dictionaries, adjacency matrices, and arrays.
* Model and construct binary trees using Julia structs and object-oriented programming.
* Traverse and print tree structures to validate correct construction and data organization.
* Apply recursive logic to manage tree insertions and traversals in binary search trees.

## Problems

1. Define a function `randadj(N)` that generates a random symmetric $N \times N$ adjacency matrix with 0's on the diagonal. Use this to generate a random graph with $N = 5$. Interpret this graph and visualize its structure.
   
   ```julia
   using Random
   
   function randadj(N)
       A = zeros(Int, N, N)
       for i in 1:N
           for j in (i+1):N
               edge = rand([0, 1])
               A[i, j] = edge
               A[j, i] = edge  # Symmetric
           end
       end
       return A
   end
   ```

2. Write a function `isTree(A)` that accepts an adjacency matrix $A$ and returns `true` if the graph is a **tree**, and `false` otherwise. Hint: A graph is a tree if it is connected and has exactly $n-1$ edges for $n$ vertices.

3. Write code that converts a tree represented as a **dictionary** to its corresponding **adjacency matrix**. Test this conversion using a small tree of 4 or 5 vertices.

4. Write a function that converts an adjacency matrix back to a dictionary. Test with the result from problem 3 to confirm correctness.

5. Write a function `isConnected(A)` that checks whether the graph represented by an adjacency matrix $A$ is connected. Use depth-first search (DFS) or breadth-first search (BFS). Use this function inside your `isTree()` function from Problem 2.

6. Write a function that computes the **degree of each vertex** and the **total number of edges** in a graph represented by an adjacency matrix $A$. Test this with your random graph from Problem 1.

7. Given a binary tree, store the tree using an **array**. Identify the index used to store each node. Then write a function `sumLeaves(tree)` that returns the **sum of all leaf nodes** in the array.
   
   In a complete binary tree stored as an array with 1-based indexing:
   * Root at index 1
   * Left child of node at index `i` is at index `2i`
   * Right child of node at index `i` is at index `2i + 1`
   * Parent of node at index `i` is at index `div(i, 2)`

8. Create a `Node` struct for a binary tree node with fields `val`, `left`, and `right`. Write a function `insert!(root, val)` that inserts a value into the **binary search tree (BST)**, maintaining BST properties. Test by inserting values `[5,3,7,1,4,6,8]`.
   
   ```julia
   mutable struct Node
       val::Int
       left::Union{Node, Nothing}
       right::Union{Node, Nothing}
   end
   
   Node(val) = Node(val, nothing, nothing)
   ```

9. Write a function `inOrder(root)` that performs **in-order traversal** of your BST from Problem 8 and prints the node values.

10. Write a function `treeHeight(root)` that returns the **height of a binary tree**. Test with your BST and verify the output.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sun, January 30, 2026 09:14:29 PM EDT
</i>
