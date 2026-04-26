# Discrete Mathematics Lab 9

## Overview

In this lab, you will use Julia to test and verify key set identities, subset relations, and DeMorgan's Laws using randomized sets and algorithmic checks. You will also compute set cardinalities, enumerate subsets, and visualize set relationships with Venn diagrams.

## Learning Objectives

* Test and verify subset relations using algorithmic methods.
* Analyze and confirm standard set identities, including commutative, associative, and distributive laws.
* Apply and evaluate DeMorgan's Laws using computational checks.
* Compute set cardinality and enumerate the number of subsets of a finite set.
* Generate Cartesian products using set comprehension.
* Visualize set relationships using Venn diagrams to support verification of set identities.

## Directions

You will need the following random set generator. Use `∩` (type `\cap<TAB>`) for intersection and `∪` (type `\cup<TAB>`) for union, or use `intersect()` and `union()`. Define the universal set `U = Set(1:N)` for some suitable integer `N`.

```julia
using Random

function randset(M)
    list1 = collect(1:M-1)
    n = rand(list1)
    S = Set(list1)
    for _ in 1:n
        x = rand(collect(S))
        delete!(S, x)
    end
    return S
end

# Example usage: A = randset(20)
```

## Problems

1. Write a function `issubset_manual` that determines whether $A \subseteq B$ for any two sets $A$ and $B$. The function should return `true` or `false`. Note: Julia has `issubset()` built-in, but implement your own.

2. Write a function that returns the complement $A^c$ of $A$ with respect to the universal set $U$.

3. Verify for any two sets generated with `randset()`, that $A \cap B \subseteq A$ and $A \cap B \subseteq B$.

4. Verify that $A \subseteq A \cup B$ and $B \subseteq A \cup B$ using randomly generated sets.

5. Generate three sets and verify the transitive property of subsets:
   $$
   A \subseteq B \land B \subseteq C \Rightarrow A \subseteq C
   $$

6. Verify the following set identities using random sets:
   
   a. **Commutative Laws**: $A \cap B = B \cap A$ and $A \cup B = B \cup A$
   
   b. **Associative Laws**:
   $$
   A \cup (B \cup C) = (A \cup B) \cup C \\
   A \cap (B \cap C) = (A \cap B) \cap C
   $$
   
   c. **Distributive Laws**:
   $$
   A \cup (B \cap C) = (A \cup B) \cap (A \cup C) \\
   A \cap (B \cup C) = (A \cap B) \cup (A \cap C)
   $$
   
   d. **Double Complement**: $(A^c)^c = A$
   
   e. **Idempotent Laws**:
   $$
   A \cup A = A \quad \text{and} \quad A \cap A = A
   $$
   
   f. **Set Difference**: $A - B = A \cap B^c$
   
   g. **Absorption Laws**:
   $$
   A \cup (A \cap B) = A \quad \text{and} \quad A \cap (A \cup B) = A
   $$

7. Verify **DeMorgan's Laws**:
   $$
   (A \cup B)^c = A^c \cap B^c \quad \text{and} \quad (A \cap B)^c = A^c \cup B^c
   $$

8. Use `length()` to compute the size of a set. Then determine how many subsets exist for a randomly generated set.

9. Use set comprehension to create the Cartesian product $\{1,2,3\} \times \{2,5\}$.
   
   In Julia: `Set([(a, b) for a in Set([1,2,3]) for b in Set([2,5])])`

10. Use the following code to plot Venn diagrams for two sets. Test with random sets and explore whether it supports three sets.
    
    Note: You may need to install VennEuler.jl: `using Pkg; Pkg.add("VennEuler")`
    
    ```julia
    using VennEuler
    using Plots
    
    A = Set([1,2,3,4,5])
    B = Set([1,3,5,6,7,8])
    
    # Convert to label format for VennEuler
    labels = ["A", "B"]
    sizes = [length(A), length(B), length(A ∩ B)]
    
    plot(VennEuler.compute_venn(sizes), 
         labels=labels,
         linecolor=:black,
         linewidth=2)
    ```

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sun, January 30, 2026 12:49:10 PM EDT
</i>
