# Discrete Mathematics Lab 11 - Solutions

## Problem 1: Adjacency Matrix
A = [0 1 1 0;
     1 0 1 1;
     1 1 0 1;
     0 1 1 0]

println("Adjacency matrix A:")
for row in eachrow(A)
    println("  $row")
end


## Problem 2: Matrix Multiplication
function matmul(A, B)
    """Multiply matrices A and B"""
    rows_A, cols_A = size(A)
    rows_B, cols_B = size(B)
    
    if cols_A != rows_B
        return nothing
    end
    
    result = zeros(Int, rows_A, cols_B)
    for i in 1:rows_A
        for j in 1:cols_B
            for k in 1:cols_A
                result[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return result
end

# Test
B = [1 2; 3 4; 5 6; 7 8]
result = matmul(A, B)
println("\nA × B:")
for row in eachrow(result)
    println("  $row")
end


## Problem 3: Non-Commutativity
X = [1 2; 3 4]
Y = [2 0; 1 3]

XY = matmul(X, Y)
YX = matmul(Y, X)

println("\nX × Y:")
for row in eachrow(XY)
    println("  $row")
end
println("Y × X:")
for row in eachrow(YX)
    println("  $row")
end
println("Equal? $(XY == YX)")


## Problem 4: Transpose
function transpose_manual(M)
    """Return transpose of matrix M"""
    rows, cols = size(M)
    return [M[i, j] for j in 1:cols, i in 1:rows]
end

At = transpose_manual(A)
println("\nTranspose of A:")
for row in eachrow(At)
    println("  $row")
end


## Problem 5: Symmetric Check
println("\nA == A^T? $(A == At)")
println("Symmetric → undirected graph")


## Problem 6: Matrix Power
function matrix_power(M, k)
    """Compute M^k"""
    result = M
    for _ in 1:(k-1)
        result = matmul(result, M)
    end
    return result
end

A3 = matrix_power(A, 3)
println("\nA^3:")
for row in eachrow(A3)
    println("  $row")
end


## Problem 7: Walk Count
println("\nWalks of length 3 from vertex 1 to vertex 3:")
println("A^3[1,3] = $(A3[1,3])")


## Problem 8: Walks of Length 2
A2 = matrix_power(A, 2)
println("\nWalks of length 2 from vertex 2 to vertex 4:")
println("A^2[2,4] = $(A2[2,4])")


## Problem 9: Walk Existence
function has_walk(M, v, w, k)
    """Check if a walk of length k exists from v to w"""
    Mk = matrix_power(M, k)
    return Mk[v, w] > 0
end

walk_exists = has_walk(A, 4, 4, 4)
println("\nWalk of length 4 from vertex 4 to 4 exists? $walk_exists")


## Problem 10: Self-Loop Walk
A4 = matrix_power(A, 4)
println("A^4[4,4] = $(A4[4,4])")
