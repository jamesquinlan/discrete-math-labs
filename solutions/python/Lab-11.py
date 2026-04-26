# Discrete Mathematics Lab 11 - Solutions

## Problem 1: Adjacency Matrix
A = [[0, 1, 1, 0],
     [1, 0, 1, 1],
     [1, 1, 0, 1],
     [0, 1, 1, 0]]

print("Adjacency matrix A:")
for row in A:
    print(f"  {row}")


## Problem 2: Matrix Multiplication
def matmul(A, B):
    """Multiply matrices A and B"""
    rows_A, cols_A = len(A), len(A[0])
    rows_B, cols_B = len(B), len(B[0])
    
    if cols_A != rows_B:
        return None
    
    result = [[0 for _ in range(cols_B)] for _ in range(rows_A)]
    for i in range(rows_A):
        for j in range(cols_B):
            for k in range(cols_A):
                result[i][j] += A[i][k] * B[k][j]
    return result

# Test
B = [[1, 2], [3, 4], [5, 6], [7, 8]]
result = matmul(A, B)
print(f"\nA × B:")
for row in result:
    print(f"  {row}")


## Problem 3: Non-Commutativity
X = [[1, 2], [3, 4]]
Y = [[2, 0], [1, 3]]

XY = matmul(X, Y)
YX = matmul(Y, X)

print(f"\nX × Y = {XY}")
print(f"Y × X = {YX}")
print(f"Equal? {XY == YX}")


## Problem 4: Transpose
def transpose(M):
    """Return transpose of matrix M"""
    rows, cols = len(M), len(M[0])
    return [[M[i][j] for i in range(rows)] for j in range(cols)]

At = transpose(A)
print(f"\nTranspose of A:")
for row in At:
    print(f"  {row}")


## Problem 5: Symmetric Check
print(f"\nA == A^T? {A == At}")
print("Symmetric → undirected graph")


## Problem 6: Matrix Power
def matrix_power(M, k):
    """Compute M^k"""
    result = M
    for _ in range(k - 1):
        result = matmul(result, M)
    return result

A3 = matrix_power(A, 3)
print(f"\nA^3:")
for row in A3:
    print(f"  {row}")


## Problem 7: Walk Count
print(f"\nWalks of length 3 from vertex 1 to vertex 3:")
print(f"A^3[0][2] = {A3[0][2]}")


## Problem 8: Walks of Length 2
A2 = matrix_power(A, 2)
print(f"\nWalks of length 2 from vertex 2 to vertex 4:")
print(f"A^2[1][3] = {A2[1][3]}")


## Problem 9: Walk Existence
def has_walk(M, v, w, k):
    """Check if walk of length k exists from v to w"""
    Mk = matrix_power(M, k)
    return Mk[v][w] > 0

walk_exists = has_walk(A, 3, 3, 4)
print(f"\nWalk of length 4 from vertex 4 to 4 exists? {walk_exists}")


## Problem 10: Self-Loop Walk
# Already demonstrated in Problem 9
print(f"A^4[3][3] = {matrix_power(A, 4)[3][3]}")
