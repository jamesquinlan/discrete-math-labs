# Discrete Mathematics Lab 8 - Solutions

## Problem 1: issubset Function
def issubset(A, B):
    """Check if A is a subset of B"""
    for x in A:
        if x not in B:
            return False
    return True

# Test
A = {1, 2, 3}
B = {1, 2, 3, 4, 5}
C = {4, 5, 6}
print(f"issubset({A}, {B}) = {issubset(A, B)}")
print(f"issubset({A}, {C}) = {issubset(A, C)}")


## Problem 2: Set Equality Using issubset
def sets_equal(A, B):
    """Check if sets are equal using issubset"""
    return issubset(A, B) and issubset(B, A)

print(f"\nsets_equal({A}, {B}) = {sets_equal(A, B)}")
print(f"sets_equal({A}, {A}) = {sets_equal(A, A)}")


## Problem 3: Build Universal Set
def uni(N):
    """Build universal set from 1 to N"""
    U = set()
    for i in range(1, N+1):
        U.add(i)
    return U

U = uni(10)
print(f"\nUniversal set U(10): {U}")


## Problem 4: Set Complement
def complement(A, U):
    """Return complement of A with respect to U"""
    return U - A

A = {1, 2, 3, 4}
U = uni(10)
print(f"complement({A}, {U}) = {complement(A, U)}")


## Problem 5: Set Operations
U = set(range(1, 11))
A = {1, 2, 3, 7}
B = {2, 3, 5, 7, 9}

print(f"\nU = {U}")
print(f"A = {A}")
print(f"B = {B}")
print(f"A ∪ B = {A | B}")
print(f"A ∩ B = {A & B}")
print(f"A - B = {A - B}")
print(f"A ∩ B^c = {A & complement(B, U)}")


## Problem 6: Partition
def partition(A, n):
    """Partition set A into n disjoint subsets"""
    A_list = sorted(list(A))
    size = len(A_list) // n
    parts = []
    for i in range(n-1):
        parts.append(set(A_list[i*size:(i+1)*size]))
    parts.append(set(A_list[(n-1)*size:]))  # Last partition gets remainder
    return parts

A = {1, 2, 3, 4, 5, 6, 7, 8}
parts = partition(A, 3)
print(f"\nPartition of {A} into 3 sets:")
for i, p in enumerate(parts, 1):
    print(f"  Part {i}: {p}")


## Problem 7: Cartesian Product
def cartesian_product(S):
    """Return S × S"""
    return {(x, y) for x in S for y in S}

S = {1, 2, 3}
SxS = cartesian_product(S)
print(f"\n{S} × {S} = {SxS}")


## Problem 8: Verify Distributive Law
def verify_distributive(A, B, C):
    """Verify A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C)"""
    lhs = A | (B & C)
    rhs = (A | B) & (A | C)
    return lhs == rhs

A = {1, 2, 3, 4, 5}
B = {1, 3, 5, 7, 9}
C = {1, 2, 4, 6, 7}
print(f"\nDistributive law holds? {verify_distributive(A, B, C)}")


## Problem 9: Random Set Generation
import random

def genset(n, m):
    """Generate random set with n elements from {1,...,m}"""
    if n > m:
        return None
    return set(random.sample(range(1, m+1), n))

print(f"\nRandom set (5 elements from 1-20): {genset(5, 20)}")


## Problem 10: All Nonempty Subsets
def all_subsets(n):
    """List all nonempty subsets of {1,...,n}"""
    subsets = []
    for i in range(1, 2**n):
        subset = set()
        for j in range(n):
            if i & (1 << j):
                subset.add(j + 1)
        subsets.append(subset)
    return subsets

n = 3
subsets = all_subsets(n)
print(f"\nAll nonempty subsets of {{1,...,{n}}}:")
for s in subsets:
    print(f"  {s}")
