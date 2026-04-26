# Discrete Mathematics Lab 7 - Solutions
## Problem 1: Create Sets
A = Set(["Red", "Green", "Blue"])
B = Set([2, 3, 4, 6, 5, 1])
C = Set([2, 3, 3, 4, 5, 6, 1])  # Duplicates removed
D = Set([1, "fish", 2, "fish", "green fish", "blue fish"])

println("Sets created:")
println("A = $A")
println("B = $B")
println("C = $C")
println("D = $D")


## Problem 2: Loop Over Set
println("\nColors in set A:")
for color in A
    println(color)
end


## Problem 3: Empty Set
E = Set()  # Correct way
println("\nEmpty set: $E, type: $(typeof(E))")

# Note: In Julia, {} is not valid syntax for sets


## Problem 4: Set Equality
A = Set([1, 2, 3])
B = Set([3, 1, 2])
C = Set([3, 1, 2, 4, 6, 5])
D = Set([2, 5])

println("\nA = $A")
println("B = $B")
println("C = $C")
println("D = $D")
println("A == B? $(A == B)")
println("A == C? $(A == C)")


## Problem 5: Set Membership
println("\n2 in A? $(2 in A)")
println("2 ∈ A? $(2 ∈ A)")  # Unicode version
println("5 in C? $(5 in C)")
println("7 in C? $(7 in C)")


## Problem 6: Subset Relationships
println("\nA ⊆ B (subset)? $(A ⊆ B)")
println("A ⊆ C? $(A ⊆ C)")
println("C ⊆ D? $(C ⊆ D)")
# Alternative: issubset(A, B)


## Problem 7: Proper Subsets
println("\nA ⊂ B (proper subset)? $(A ⊂ B)")
println("A ⊂ C? $(A ⊂ C)")
println("C ⊂ D? $(C ⊂ D)")


## Problem 8: Set Operations
println("\nA ∪ C (union): $(A ∪ C)")
println("A ∩ C (intersection): $(A ∩ C)")
println("C \\ D (difference): $(setdiff(C, D))")
# Alternative operators: union(A, C), intersect(A, C), setdiff(C, D)


## Problem 9: Dictionary
grades = Dict('A' => 90, 'B' => 80, 'C' => 70, 'D' => 60, 'F' => 50)
println("\nGrades dictionary: $grades")

empty_dict = Dict()
println("Empty dictionary: $empty_dict, type: $(typeof(empty_dict))")


## Problem 10: Loop Over Dictionary
areacodes = Dict(
    "207" => "Maine",
    "213" => "LA",
    "304" => "West Virginia",
    "302" => "Delaware",
    "312" => "Chicago"
)

println("\nArea codes:")
for (code, location) in areacodes
    println("  $code -> $location")
end
