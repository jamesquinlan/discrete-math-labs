# Discrete Mathematics Lab 9 - Solutions

import random

# Random set generator
def randset(M):
    """Generate random subset of {1,...,M-1}"""
    list1 = list(range(1, M))
    n = random.choice(list1)
    S = set(list1)
    for _ in range(n):
        if S:
            x = random.choice(list(S))
            S.discard(x)
    return S


## Problem 1: issubset Function
def issubset(A, B):
    """Check if A is a subset of B"""
    for elem in A:
        if elem not in B:
            return False
    return True

A = randset(20)
B = randset(20)
print(f"A = {A}")
print(f"B = {B}")
print(f"A ⊆ B? {issubset(A, B)}")


## Problem 2: Complement Function
def complement(A, U):
    """Return A^c with respect to U"""
    return U - A

U = set(range(1, 30))
A = randset(30)
Ac = complement(A, U)
print(f"\nU = {{1,...,29}}")
print(f"A = {A}")
print(f"A^c = {Ac}")


## Problem 3: Verify A ∩ B ⊆ A and A ∩ B ⊆ B
A = randset(20)
B = randset(20)
intersection = A & B
print(f"\nA = {A}")
print(f"B = {B}")
print(f"A ∩ B = {intersection}")
print(f"(A ∩ B) ⊆ A? {issubset(intersection, A)}")
print(f"(A ∩ B) ⊆ B? {issubset(intersection, B)}")


## Problem 4: Verify A ⊆ (A ∪ B) and B ⊆ (A ∪ B)
union = A | B
print(f"\nA ∪ B = {union}")
print(f"A ⊆ (A ∪ B)? {issubset(A, union)}")
print(f"B ⊆ (A ∪ B)? {issubset(B, union)}")


## Problem 5: Transitive Property
A = randset(20)
B = A.copy()
B.update(randset(5))
C = B.copy()
C.update(randset(5))
print(f"\nA ⊆ B? {issubset(A, B)}")
print(f"B ⊆ C? {issubset(B, C)}")
print(f"A ⊆ C? {issubset(A, C)}")


## Problem 6: Set Identities
A, B, C = randset(20), randset(20), randset(20)

# a. Commutative Laws
print(f"\nCommutative Laws:")
print(f"A ∩ B == B ∩ A? {(A & B) == (B & A)}")
print(f"A ∪ B == B ∪ A? {(A | B) == (B | A)}")

# b. Associative Laws
print(f"\nAssociative Laws:")
print(f"(A ∪ B) ∪ C == A ∪ (B ∪ C)? {((A | B) | C) == (A | (B | C))}")
print(f"(A ∩ B) ∩ C == A ∩ (B ∩ C)? {((A & B) & C) == (A & (B & C))}")

# c. Distributive Laws
print(f"\nDistributive Laws:")
print(f"A ∪ (B ∩ C) == (A ∪ B) ∩ (A ∪ C)? {(A | (B & C)) == ((A | B) & (A | C))}")
print(f"A ∩ (B ∪ C) == (A ∩ B) ∪ (A ∩ C)? {(A & (B | C)) == ((A & B) | (A & C))}")

# d. Double Complement
U = set(range(1, 30))
A = randset(30)
Ac = complement(A, U)
Acc = complement(Ac, U)
print(f"\nDouble Complement:")
print(f"(A^c)^c == A? {Acc == A}")

# e. Idempotent Laws
print(f"\nIdempotent Laws:")
print(f"A ∪ A == A? {(A | A) == A}")
print(f"A ∩ A == A? {(A & A) == A}")

# f. Set Difference
print(f"\nSet Difference:")
Bc = complement(B, U)
print(f"A - B == A ∩ B^c? {(A - B) == (A & Bc)}")


## Problem 7: DeMorgan's Laws
Ac = complement(A, U)
Bc = complement(B, U)
print(f"\nDeMorgan's Laws:")
print(f"(A ∪ B)^c == A^c ∩ B^c? {complement(A | B, U) == (Ac & Bc)}")
print(f"(A ∩ B)^c == A^c ∪ B^c? {complement(A & B, U) == (Ac | Bc)}")


## Problem 8: Cardinality and Subsets
S = randset(10)
n = len(S)
print(f"\nSet S = {S}")
print(f"Cardinality: {n}")
print(f"Number of subsets: 2^{n} = {2**n}")


## Problem 9: Cartesian Product
product = {(x, y) for x in {1, 2, 3} for y in {2, 5}}
print(f"\n{{1,2,3}} × {{2,5}} = {product}")


## Problem 10: Venn Diagram (code provided)
print("\nVenn diagram code requires matplotlib-venn package")
print("Example usage provided in lab materials")


# NOTE: Unicode characters are:
# U+2286 = Subset
# U+2282 = Proper subset
# U+2229 = Intersection∪
# U+222A = Union
# U+2205 = Empty set

