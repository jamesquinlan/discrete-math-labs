# Discrete Mathematics Lab 8 - Solutions

## Problem 1: issubset Function
function issubset_manual(A, B)
    """Check if A is a subset of B"""
    for x in A
        if !(x in B)
            return false
        end
    end
    return true
end

# Test
A = Set([1, 2, 3])
B = Set([1, 2, 3, 4, 5])
C = Set([4, 5, 6])
println("issubset_manual($A, $B) = $(issubset_manual(A, B))")
println("issubset_manual($A, $C) = $(issubset_manual(A, C))")


## Problem 2: Set Equality Using issubset
function sets_equal(A, B)
    """Check if sets are equal using issubset"""
    return issubset_manual(A, B) && issubset_manual(B, A)
end

println("\nsets_equal($A, $B) = $(sets_equal(A, B))")
println("sets_equal($A, $A) = $(sets_equal(A, A))")


## Problem 3: Build Universal Set
function uni(N)
    """Build universal set from 1 to N"""
    U = Set{Int}()
    for i in 1:N
        push!(U, i)
    end
    return U
end

U = uni(10)
println("\nUniversal set U(10): $U")


## Problem 4: Set Complement
function complement(A, U)
    """Return complement of A with respect to U"""
    return setdiff(U, A)
end

A = Set([1, 2, 3, 4])
U = uni(10)
println("complement($A, $U) = $(complement(A, U))")


## Problem 5: Set Operations
U = Set(1:10)
A = Set([1, 2, 3, 7])
B = Set([2, 3, 5, 7, 9])

println("\nU = $U")
println("A = $A")
println("B = $B")
println("A ∪ B = $(A ∪ B)")
println("A ∩ B = $(A ∩ B)")
println("A - B = $(setdiff(A, B))")
println("A ∩ B^c = $(A ∩ complement(B, U))")


## Problem 6: Partition
function partition(A, n)
    """Partition set A into n disjoint subsets"""
    A_list = sort(collect(A))
    size = length(A_list) ÷ n
    parts = []
    for i in 1:(n-1)
        push!(parts, Set(A_list[((i-1)*size+1):(i*size)]))
    end
    push!(parts, Set(A_list[((n-1)*size+1):end]))  # Last partition gets remainder
    return parts
end

A = Set([1, 2, 3, 4, 5, 6, 7, 8])
parts = partition(A, 3)
println("\nPartition of $A into 3 sets:")
for (i, p) in enumerate(parts)
    println("  Part $i: $p")
end


## Problem 7: Cartesian Product
function cartesian_product(S)
    """Return S × S"""
    return Set([(x, y) for x in S for y in S])
end

S = Set([1, 2, 3])
SxS = cartesian_product(S)
println("\n$S × $S = $SxS")


## Problem 8: Verify Distributive Law
function verify_distributive(A, B, C)
    """Verify A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C)"""
    lhs = A ∪ (B ∩ C)
    rhs = (A ∪ B) ∩ (A ∪ C)
    return lhs == rhs
end

A = Set([1, 2, 3, 4, 5])
B = Set([1, 3, 5, 7, 9])
C = Set([1, 2, 4, 6, 7])
println("\nDistributive law holds? $(verify_distributive(A, B, C))")


## Problem 9: Random Set Generation
using Random

function genset(n, m)
    """Generate random set with n elements from {1,...,m}"""
    if n > m
        return nothing
    end
    return Set(randperm(m)[1:n])
end

println("\nRandom set (5 elements from 1-20): $(genset(5, 20))")


## Problem 10: All Nonempty Subsets
function all_subsets(n)
    """List all nonempty subsets of {1,...,n}"""
    subsets = []
    for i in 1:(2^n - 1)
        subset = Set{Int}()
        for j in 0:(n-1)
            if (i & (1 << j)) > 0
                push!(subset, j + 1)
            end
        end
        push!(subsets, subset)
    end
    return subsets
end

n = 3
subsets = all_subsets(n)
println("\nAll nonempty subsets of {1,...,$n}:")
for s in subsets
    println("  $s")
end
