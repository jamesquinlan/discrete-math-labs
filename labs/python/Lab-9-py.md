# Discrete Mathematics Lab 9

## Overview

In this lab, you will use Python to test and verify key set identities, subset relations, and DeMorgan’s Laws using randomized sets and algorithmic checks. You will also compute set cardinalities, enumerate subsets, and visualize set relationships with Venn diagrams.

## Learning Objectives

* Test and verify subset relations using algorithmic methods.
* Analyze and confirm standard set identities including commutative, associative, and distributive laws.
* Apply and evaluate DeMorgan’s Laws using computational checks.
* Compute set cardinality and enumerate the number of subsets of a finite set.
* Generate Cartesian products using set comprehension.
* Visualize set relationships using Venn diagrams to support verification of set identities.

## Directions

You will need the following random set generator. Use `&` for intersection and `|` for union. Define the universal set `U = set(range(1,N))` for some suitable integer `N`.

```python
import random

def randset(M):
    list1 = list(range(1, M))
    n = random.choice(list1)
    S = set(list1)
    for _ in range(n):
        x = random.choice(sorted(S))
        S = S - {x}
    return S

# Example usage: A = randset(20)
```

## Problems

1. Write a function `issubset` that determines whether \$A \subseteq B\$ for any two sets \$A\$ and \$B\$. The function should return `True` or `False`.

2. Write a function that returns the complement \$A^c\$ of \$A\$ with respect to the universal set \$U\$.

3. Verify for any two sets generated with `randset()`, that \$A \cap B \subseteq A\$ and \$A \cap B \subseteq B\$.

4. Verify that \$A \subseteq A \cup B\$ and \$B \subseteq A \cup B\$ using randomly generated sets.

5. Generate three sets and verify the transitive property of subsets:

$$
A \subseteq B \land B \subseteq C \Rightarrow A \subseteq C
$$

6. Verify the following set identities using random sets:

   a. **Commutative Laws**: \$A \cap B = B \cap A\$ and \$A \cup B = B \cup A\$

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

   d. **Double Complement**: \$(A^c)^c = A\$

   e. **Idempotent Laws**:

   $$
   A \cup A = A \quad \text{and} \quad A \cap A = A
   $$

   f. **Set Difference**: \$A - B = A \cap B^c\$

   g. **Absorption Laws**:

   $$
   A \cup (A \cup B) = A \quad \text{and} \quad A \cap (A \cup B) = A
   $$

7. Verify **DeMorgan’s Laws**:

$$
(A \cup B)^c = A^c \cap B^c \quad \text{and} \quad (A \cap B)^c = A^c \cup B^c
$$

8. Use `len()` to compute the size of a set. Then determine how many subsets exist for a randomly generated set.

9. Use set comprehension to create the Cartesian product \${1,2,3} \times {2,5}\$.

10. Use the following code to plot Venn diagrams for two sets. Test with random sets and explore whether it supports three sets.

```python
import matplotlib.pyplot as plt
from matplotlib_venn import venn2

A = set([1,2,3,4,5])
B = set([1,3,5,6,7,8])
venn2([A, B], ('A', 'B'))
plt.show()
```



<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sun Jul 27 2025 12:49:10 PM EDT
</i>
