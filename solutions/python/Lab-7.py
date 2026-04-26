# Discrete Mathematics Lab 7 - Solutions

## Problem 1: Create Sets
A = {'Red', 'Green', 'Blue'}
B = {2, 3, 4, 6, 5, 1}
C = {2, 3, 3, 4, 5, 6, 1}  # Duplicates removed
D = {1, 'fish', 2, 'fish', 'green fish', 'blue fish'}

print("Sets created:")
print(f"A = {A}")
print(f"B = {B}")
print(f"C = {C}")
print(f"D = {D}")


## Problem 2: Loop Over Set
print("\nColors in set A:")
for color in A:
    print(color)


## Problem 3: Empty Set
E = set()  # Correct way
print(f"\nEmpty set: {E}, type: {type(E)}")

F = {}  # This creates empty dict, not set!
print(f"Empty braces: {F}, type: {type(F)}")


## Problem 4: Set Equality
A = {1, 2, 3}
B = {3, 1, 2}
C = {3, 1, 2, 4, 6, 5}
D = {2, 5}

print(f"\nA = {A}")
print(f"B = {B}")
print(f"C = {C}")
print(f"D = {D}")
print(f"A == B? {A == B}")
print(f"A == C? {A == C}")


## Problem 5: Set Membership
print(f"\n2 in A? {2 in A}")
print(f"5 in C? {5 in C}")
print(f"7 in C? {7 in C}")


## Problem 6: Subset Relationships
print(f"\nA <= B (subset)? {A <= B}")
print(f"A <= C? {A <= C}")
print(f"C <= D? {C <= D}")


## Problem 7: Proper Subsets
print(f"\nA < B (proper subset)? {A < B}")
print(f"A < C? {A < C}")
print(f"C < D? {C < D}")


## Problem 8: Set Operations
print(f"\nA | C (union): {A | C}")
print(f"A & C (intersection): {A & C}")
print(f"C - D (difference): {C - D}")


## Problem 9: Dictionary
grades = {'A': 90, 'B': 80, 'C': 70, 'D': 60, 'F': 50}
print(f"\nGrades dictionary: {grades}")

empty_dict = {}
print(f"Empty dictionary: {empty_dict}, type: {type(empty_dict)}")


## Problem 10: Loop Over Dictionary
areacodes = {
    '207': 'Maine',
    '213': 'LA',
    '304': 'West Virginia',
    '302': 'Delaware',
    '312': 'Chicago'
}

print("\nArea codes:")
for code, location in areacodes.items():
    print(f"  {code} -> {location}")
