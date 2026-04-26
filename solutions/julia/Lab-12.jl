# Discrete Mathematics Lab 12 - Solutions

using Random

## Problem 1: Random Adjacency Matrix
function randadj(N)
    """Generate random symmetric N×N adjacency matrix"""
    A = zeros(Int, N, N)
    for i in 1:N
        for j in (i+1):N
            edge = rand(0:1)
            A[i, j] = edge
            A[j, i] = edge
        end
    end
    return A
end

A = randadj(5)
println("Random 5×5 adjacency matrix:")
for row in eachrow(A)
    println("  $row")
end


## Problem 2: Is Tree?
function count_edges(A)
    """Count edges in undirected graph"""
    total = sum(sum(row) for row in eachrow(A))
    return total ÷ 2
end

function is_connected(A)
    """Check if graph is connected using DFS"""
    n = size(A, 1)
    visited = fill(false, n)
    
    function dfs(v)
        visited[v] = true
        for u in 1:n
            if A[v, u] == 1 && !visited[u]
                dfs(u)
            end
        end
    end
    
    dfs(1)
    return all(visited)
end

function isTree(A)
    """Check if graph is a tree"""
    n = size(A, 1)
    if count_edges(A) != n - 1
        return false
    end
    return is_connected(A)
end

println("\nIs graph a tree? $(isTree(A))")


## Problem 3: Dict to Matrix
function dict_to_matrix(G)
    """Convert graph dictionary to adjacency matrix"""
    vertices = sort(collect(keys(G)))
    n = length(vertices)
    idx = Dict(v => i for (i, v) in enumerate(vertices))
    
    A = zeros(Int, n, n)
    for v in keys(G)
        for u in G[v]
            A[idx[v], idx[u]] = 1
        end
    end
    return A
end

G = Dict(1 => [2,3], 2 => [1,3,4], 3 => [1,2,4], 4 => [2,3])
M = dict_to_matrix(G)
println("\nGraph: $G")
println("Adjacency matrix:")
for row in eachrow(M)
    println("  $row")
end


## Problem 4: Matrix to Dict
function matrix_to_dict(A)
    """Convert adjacency matrix to dictionary"""
    n = size(A, 1)
    G = Dict()
    for i in 1:n
        G[i] = [j for j in 1:n if A[i, j] == 1]
    end
    return G
end

G_back = matrix_to_dict(M)
println("\nConverted back to dict: $G_back")


## Problem 5: Connectivity (already implemented above)
println("\nIs graph connected? $(is_connected(A))")


## Problem 6: Degrees and Edges
function graph_stats(A)
    """Return degrees and edge count"""
    n = size(A, 1)
    degrees = [sum(A[i, :]) for i in 1:n]
    edges = sum(degrees) ÷ 2
    return degrees, edges
end

degrees, edges = graph_stats(A)
println("\nDegrees: $degrees")
println("Number of edges: $edges")


## Problem 7: Binary Tree in Array
tree = [4, 2, 6, 1, 3, 5, 7]  # Complete binary tree

function sum_leaves(tree)
    """Sum leaf nodes in array-based binary tree"""
    n = length(tree)
    leaf_sum = 0
    for i in 1:n
        left = 2i
        right = 2i + 1
        if left > n && right > n  # No children
            leaf_sum += tree[i]
        end
    end
    return leaf_sum
end

println("\nTree: $tree")
println("Sum of leaves: $(sum_leaves(tree))")


## Problem 8: Binary Tree Struct
mutable struct Node
    val::Int
    left::Union{Node, Nothing}
    right::Union{Node, Nothing}
end

Node(val) = Node(val, nothing, nothing)

function insert!(root, val)
    """Insert value into BST"""
    if root === nothing
        return Node(val)
    end
    if val < root.val
        root.left = insert!(root.left, val)
    else
        root.right = insert!(root.right, val)
    end
    return root
end

# Build BST
root = nothing
for val in [5, 3, 7, 1, 4, 6, 8]
    root = insert!(root, val)
end
println("\nBST created with values [5,3,7,1,4,6,8]")


## Problem 9: In-Order Traversal
function inOrder(root)
    """In-order traversal of BST"""
    if root !== nothing
        inOrder(root.left)
        print(root.val, " ")
        inOrder(root.right)
    end
end

print("In-order traversal: ")
inOrder(root)
println()


## Problem 10: Tree Height
function treeHeight(root)
    """Return height of binary tree"""
    if root === nothing
        return -1
    end
    return 1 + max(treeHeight(root.left), treeHeight(root.right))
end

height = treeHeight(root)
println("\nTree height: $height")
