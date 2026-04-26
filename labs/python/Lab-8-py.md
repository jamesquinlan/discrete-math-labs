# Discrete Mathematics Lab 8

## Overview

This lab explores fundamental set operations and introduces key concepts in set theory such as complements, Cartesian products, and partitions. You will use Python to build sets, analyze their relationships, and perform operations such as union, intersection, and difference. In addition, you will write functions to verify set identities, generate random sets, and enumerate subsets.

## Learning Objectives

By the end of this lab, students will be able to:

* Construct and manipulate sets using Python syntax and control structures.
* Test subset relationships and determine set equality using algorithmic methods.
* Perform standard set operations: union, intersection, difference, and complement.
* Generate partitions of a set into disjoint subsets.
* Compute the Cartesian product of a set with itself.
* Verify set identities (e.g., distributive laws) using computational checks.
* Generate random sets and enumerate all subsets of a finite set.

## Exercises

1. Given any two sets, \$A\$ and \$B\$, write a function `issubset` that determines whether \$A \subseteq B\$. The function should return `True` if all the elements of \$A\$ are also in \$B`; return `False\` otherwise.

2. Use `issubset` to determine whether two sets are equal. Test using various sets \$A\$ and \$B\$.

3. Write a function `uni` that builds a universal set of integers from \$1\$ to \$N\$ for some \$N \in \mathbb{Z}\$. Use a loop to add elements to an initially empty set.

4. Write a function that returns \$A^c\$ (complement of \$A\$) given that \$A \subseteq U\$, where \$U\$ is the universal set.

5. Given \$U = {1,2,\dots,10}\$, \$A = {1,2,3,7}\$, and \$B = {2,3,5,7,9}\$, compute \$A \cup B\$, \$A \cap B\$, \$A - B\$, and \$A \cap B^c\$.

6. Write a function that receives a set \$A\$ and an integer \$n \le |A|\$, and returns *a* partition of \$A\$ into \$n\$ disjoint subsets. Consider how many distinct partitions are possible.

7. Given a set \$S\$, find \$S \times S\$, the Cartesian product of \$S\$ with itself. Write a function that returns this product as a set of tuples.

8. Write a function that accepts sets \$A,B,C\$ and verifies whether the distributive law holds:

$$
A \cup (B \cap C) = (A \cup B) \cap (A \cup C)
$$

Return `True` or `False`.

9. Write a function `genset(n,m)` that returns a random set with \$n\$ unique elements drawn from \${1,2,\dots,m}\$. Ensure \$m > n\$.

10. Given a nonnegative integer \$n\$, list all the nonempty subsets of \${1,2,\dots,n}\$.
