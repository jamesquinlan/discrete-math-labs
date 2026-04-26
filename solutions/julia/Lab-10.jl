# Discrete Mathematics Lab 10 - Solutions

## Problem 1: Empty Dictionary
D = Dict()
println("Empty structure: $D")
println("Type: $(typeof(D))")  # Shows Dict{Any, Any}


## Problem 2: Add Key-Value Pair
D["A"] = 1
println("\nAfter adding 'A': $D")


## Problem 3: Add Using Direct Assignment
D["B"] = 2
println("After adding 'B': $D")


## Problem 4: Complete Graph K4
G = Dict(
    1 => [2, 3, 4],
    2 => [1, 3, 4],
    3 => [1, 2, 4],
    4 => [1, 2, 3]
)
println("\nComplete graph K4:")
for (vertex, edges) in G
    println("  $vertex: $edges")
end


## Problem 5: Graph g24
# Example graph representation
G = Dict(
    'A' => ['B', 'C'],
    'B' => ['A', 'C', 'D'],
    'C' => ['A', 'B', 'E'],
    'D' => ['B', 'E', 'F'],
    'E' => ['C', 'D', 'F'],
    'F' => ['D', 'E']
)
println("\nGraph g24: $G")


## Problem 6: Adjacent Vertices
println("\nVertices adjacent to 'E': $(G['E'])")


## Problem 7: Order of Graph
order = length(G)
println("\nOrder (number of vertices): $order")


## Problem 8: Size of Graph
total_degree = sum(length(G[v]) for v in keys(G))
size = total_degree ÷ 2  # Each edge counted twice
println("Total degree: $total_degree")
println("Size (number of edges): $size")


## Problem 9: Find Walk
function find_walk(graph, start, finish, path=[])
    """Find a walk from start to finish"""
    path = [path; start]
    if start == finish
        return path
    end
    for neighbor in graph[start]
        if !(neighbor in path)
            new_path = find_walk(graph, neighbor, finish, path)
            if new_path !== nothing
                return new_path
            end
        end
    end
    return nothing
end

walk = find_walk(G, 'A', 'F')
println("\nWalk from A to F: $walk")


## Problem 10: Adjacency Matrix for K4
A = [0 1 1 1;
     1 0 1 1;
     1 1 0 1;
     1 1 1 0]

println("\nAdjacency matrix for K4:")
for row in eachrow(A)
    println("  $row")
end
