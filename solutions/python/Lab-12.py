# Discrete Mathematics Lab 12 - Solutions

import random

## Problem 1: Random Adjacency Matrix
def randadj(N):
    """Generate random symmetric N×N adjacency matrix"""
    A = [[0]*N for _ in range(N)]
    for i in range(N):
        for j in range(i+1, N):
            edge = random.randint(0, 1)
            A[i][j] = edge
            A[j][i] = edge
    return A

A = randadj(5)
print("Random 5×5 adjacency matrix:")
for row in A:
    print(f"  {row}")


## Problem 2: Is Tree?
def count_edges(A):
    """Count edges in an undirected graph"""
    total = sum(sum(row) for row in A)
    return total // 2

def is_connected(A):
    """Check if graph is connected using DFS"""
    n = len(A)
    visited = [False] * n
    
    def dfs(v):
        visited[v] = True
        for u in range(n):
            if A[v][u] == 1 and not visited[u]:
                dfs(u)
    
    dfs(0)
    return all(visited)

def isTree(A):
    """Check if graph is a tree"""
    n = len(A)
    if count_edges(A) != n - 1:
        return False
    return is_connected(A)

print(f"\nIs graph a tree? {isTree(A)}")


## Problem 3: Dict to Matrix
def dict_to_matrix(G):
    """Convert graph dictionary to adjacency matrix"""
    vertices = sorted(G.keys())
    n = len(vertices)
    idx = {v: i for i, v in enumerate(vertices)}
    
    A = [[0]*n for _ in range(n)]
    for v in G:
        for u in G[v]:
            A[idx[v]][idx[u]] = 1
    return A

G = {1: [2,3], 2: [1,3,4], 3: [1,2,4], 4: [2,3]}
M = dict_to_matrix(G)
print(f"\nGraph: {G}")
print("Adjacency matrix:")
for row in M:
    print(f"  {row}")


## Problem 4: Matrix to Dict
def matrix_to_dict(A):
    """Convert adjacency matrix to dictionary"""
    n = len(A)
    G = {}
    for i in range(n):
        G[i] = [j for j in range(n) if A[i][j] == 1]
    return G

G_back = matrix_to_dict(M)
print(f"\nConverted back to dict: {G_back}")


## Problem 5: Connectivity (already implemented above)
print(f"\nIs graph connected? {is_connected(A)}")


## Problem 6: Degrees and Edges
def graph_stats(A):
    """Return degrees and edge count"""
    n = len(A)
    degrees = [sum(A[i]) for i in range(n)]
    edges = sum(degrees) // 2
    return degrees, edges

degrees, edges = graph_stats(A)
print(f"\nDegrees: {degrees}")
print(f"Number of edges: {edges}")


## Problem 7: Binary Tree in Array
tree = [4, 2, 6, 1, 3, 5, 7]  # Complete binary tree

def sum_leaves(tree):
    """Sum leaf nodes in array-based binary tree"""
    n = len(tree)
    leaf_sum = 0
    for i in range(n):
        left = 2*i + 1
        right = 2*i + 2
        if left >= n and right >= n:  # No children
            leaf_sum += tree[i]
    return leaf_sum

print(f"\nTree: {tree}")
print(f"Sum of leaves: {sum_leaves(tree)}")


## Problem 8: Binary Tree Class
class Node:
    def __init__(self, val):
        self.val = val
        self.left = None
        self.right = None

def insert(root, val):
    """Insert value into BST"""
    if root is None:
        return Node(val)
    if val < root.val:
        root.left = insert(root.left, val)
    else:
        root.right = insert(root.right, val)
    return root

# Build BST
root = None
for val in [5, 3, 7, 1, 4, 6, 8]:
    root = insert(root, val)
print("\nBST created with values [5,3,7,1,4,6,8]")


## Problem 9: In-Order Traversal
def inOrder(root):
    """In-order traversal of BST"""
    if root:
        inOrder(root.left)
        print(root.val, end=' ')
        inOrder(root.right)

print("In-order traversal: ", end='')
inOrder(root)
print()


## Problem 10: Tree Height
def treeHeight(root):
    """Return height of binary tree"""
    if root is None:
        return -1
    return 1 + max(treeHeight(root.left), treeHeight(root.right))

height = treeHeight(root)
print(f"\nTree height: {height}")
