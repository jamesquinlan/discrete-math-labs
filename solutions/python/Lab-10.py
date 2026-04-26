# Discrete Mathematics Lab 10 - Solutions

## Problem 1: Empty Dictionary
D = {}
print(f"Empty structure: {D}")
print(f"Type: {type(D)}")  # Shows <class 'dict'>


## Problem 2: Add Key-Value Pair
D.update({'A': 1})
print(f"\nAfter update: {D}")


## Problem 3: Add Using Index
D['B'] = 2
print(f"After index assignment: {D}")


## Problem 4: Complete Graph K4
G = {
    1: [2, 3, 4],
    2: [1, 3, 4],
    3: [1, 2, 4],
    4: [1, 2, 3]
}
print(f"\nComplete graph K4:")
for vertex, edges in G.items():
    print(f"  {vertex}: {edges}")


## Problem 5: Graph g24
# Example graph representation
G = {
    'A': ['B', 'C'],
    'B': ['A', 'C', 'D'],
    'C': ['A', 'B', 'E'],
    'D': ['B', 'E', 'F'],
    'E': ['C', 'D', 'F'],
    'F': ['D', 'E']
}
print(f"\nGraph g24: {G}")


## Problem 6: Adjacent Vertices
print(f"\nVertices adjacent to 'E': {G['E']}")


## Problem 7: Order of Graph
order = len(G)
print(f"\nOrder (number of vertices): {order}")


## Problem 8: Size of Graph
total_degree = sum(len(G[v]) for v in G)
size = total_degree // 2  # Each edge counted twice
print(f"Total degree: {total_degree}")
print(f"Size (number of edges): {size}")


## Problem 9: Find Walk
def find_walk(graph, start, end, path=[]):
    """Find a walk from start to end"""
    path = path + [start]
    if start == end:
        return path
    for neighbor in graph[start]:
        if neighbor not in path:
            new_path = find_walk(graph, neighbor, end, path)
            if new_path:
                return new_path
    return None

walk = find_walk(G, 'A', 'F')
print(f"\nWalk from A to F: {walk}")


## Problem 10: Adjacency Matrix for K4
A = [
    [0, 1, 1, 1],
    [1, 0, 1, 1],
    [1, 1, 0, 1],
    [1, 1, 1, 0]
]

print(f"\nAdjacency matrix for K4:")
for row in A:
    print(f"  {row}")
