# Discrete Mathematics Lab 9 - Solutions

using Random

# Random set generator
function randset(M)
    """Generate random subset of {1,...,M-1}"""
    list1 = collect(1:(M-1))
    n = rand(list1)
    S = Set(list1)
    for _ in 1:n
        if !isempty(S)
            x = rand(collect(S))
            delete!(S, x)
        end
    end
    return S
end


## Problem 1: issubset Function
function issubset_manual(A, B)
    """Check if A ⊆ B"""
    for elem in A
        if !(elem in B)
            return false
        end
    end
    return true
end

A = randset(20)
B = randset(20)
println("A = $A")
println("B = $B")
println("A ⊆ B? $(issubset_manual(A, B))")


## Problem 2: Complement Function
function complement(A, U)
    """Return A^c with respect to U"""
    return setdiff(U, A)
end

U = Set(1:29)
A = randset(30)
Ac = complement(A, U)
println("\nU = {1,...,29}")
println("A = $A")
println("A^c = $Ac")


## Problem 3: Verify A ∩ B ⊆ A and A ∩ B ⊆ B
A = randset(20)
B = randset(20)
intersection = A ∩ B
println("\nA = $A")
println("B = $B")
println("A ∩ B = $intersection")
println("(A ∩ B) ⊆ A? $(issubset_manual(intersection, A))")
println("(A ∩ B) ⊆ B? $(issubset_manual(intersection, B))")


## Problem 4: Verify A ⊆ (A ∪ B) and B ⊆ (A ∪ B)
union_set = A ∪ B
println("\nA ∪ B = $union_set")
println("A ⊆ (A ∪ B)? $(issubset_manual(A, union_set))")
println("B ⊆ (A ∪ B)? $(issubset_manual(B, union_set))")


## Problem 5: Transitive Property
A = randset(20)
B = copy(A)
union!(B, randset(5))
C = copy(B)
union!(C, randset(5))
println("\nA ⊆ B? $(issubset_manual(A, B))")
println("B ⊆ C? $(issubset_manual(B, C))")
println("A ⊆ C? $(issubset_manual(A, C))")


## Problem 6: Set Identities
A, B, C = randset(20), randset(20), randset(20)

# a. Commutative Laws
println("\nCommutative Laws:")
println("A ∩ B == B ∩ A? $((A ∩ B) == (B ∩ A))")
println("A ∪ B == B ∪ A? $((A ∪ B) == (B ∪ A))")

# b. Associative Laws
println("\nAssociative Laws:")
println("(A ∪ B) ∪ C == A ∪ (B ∪ C)? $(((A ∪ B) ∪ C) == (A ∪ (B ∪ C)))")
println("(A ∩ B) ∩ C == A ∩ (B ∩ C)? $(((A ∩ B) ∩ C) == (A ∩ (B ∩ C)))")

# c. Distributive Laws
println("\nDistributive Laws:")
println("A ∪ (B ∩ C) == (A ∪ B) ∩ (A ∪ C)? $((A ∪ (B ∩ C)) == ((A ∪ B) ∩ (A ∪ C)))")
println("A ∩ (B ∪ C) == (A ∩ B) ∪ (A ∩ C)? $((A ∩ (B ∪ C)) == ((A ∩ B) ∪ (A ∩ C)))")

# d. Double Complement
U = Set(1:30)
A = randset(30)
Ac = complement(A, U)
Acc = complement(Ac, U)
println("\nDouble Complement:")
println("(A^c)^c == A? $(Acc == A)")

# e. Idempotent Laws
println("\nIdempotent Laws:")
println("A ∪ A == A? $((A ∪ A) == A)")
println("A ∩ A == A? $((A ∩ A) == A)")

# f. Set Difference
println("\nSet Difference:")
Bc = complement(B, U)
println("A - B == A ∩ B^c? $((setdiff(A, B)) == (A ∩ Bc))")


## Problem 7: DeMorgan's Laws
Ac = complement(A, U)
Bc = complement(B, U)
println("\nDeMorgan's Laws:")
println("(A ∪ B)^c == A^c ∩ B^c? $(complement(A ∪ B, U) == (Ac ∩ Bc))")
println("(A ∩ B)^c == A^c ∪ B^c? $(complement(A ∩ B, U) == (Ac ∪ Bc))")


## Problem 8: Cardinality and Subsets
S = randset(10)
n = length(S)
println("\nSet S = $S")
println("Cardinality: $n")
println("Number of subsets: 2^$n = $(2^n)")


## Problem 9: Cartesian Product
product = Set([(x, y) for x in Set([1, 2, 3]) for y in Set([2, 5])])
println("\n{1,2,3} × {2,5} = $product")


## Problem 10: Venn Diagram (code reference)
println("\nVenn diagram code requires VennEuler.jl package")
println("See lab materials for plotting example")
