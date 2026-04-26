# Discrete Mathematics Lab 5

## Overview

The Principle of Mathematical Induction (or the equivalent **well-ordering principle**--every nonempty set of nonnegative integers has a least element) is a technique to prove universal statements.

## Learning Objectives

* Generate and analyze terms of numerical sequences using Julia anonymous functions.
* Verify arithmetic and geometric summation formulas through computational experimentation.
* Formulate and test conjectures based on observed numerical patterns.
* Apply mathematical induction concepts to support or refute general statements.
* Implement recursive and iterative approaches to compute and explore integer sequences.
* Use functional programming techniques to generalize sequence operations (e.g., sum, product, convolution).
* Interpret numerical evidence to reason about universal mathematical claims.

## Problems

1. Write an anonymous function that represents a sequence $f_k = \frac{1}{k(k+1)}$ for $k = 1, 2, \dots$. Use this function to find the first ten terms of the sequence.
   
   Note: the syntax for an anonymous function in Julia is: `x -> expression`. For example, the mathematical function, $f(x) = 2x+3$ would be `f = x -> 2x + 3` or for a named function `f(x) = 2x + 3`.

2. Write a function that returns the sum of a sequence. This function should take any function (anonymous or named), the starting index $m$, and the number of terms $n$, as input. Test the sequence in Problem 1.

3. Write a function that returns the product of a sequence. This function should take any function (anonymous or named), the starting index $k$, and the number of terms $n$, as input. Test the sequence in Problem 1.

4. Write an anonymous function for $f_k = 1 + \left(\frac{1}{2}\right)^k$ for $k \ge 0$. List the first five terms of the sequence.

5. Write a recursive function that converts a positive integer into its binary representation by repeatedly dividing the number by 2 and recording the remainders. Then, analyze how the length of the binary representation (number of bits) grows as the input number increases. Use your function to find the binary forms of several values (e.g., 5, 16, 31, 64, 127) and observe the pattern. Formulate a conjecture relating the input number $n$ to the length of its binary representation, and explain why this makes sense mathematically.
   
   Note: Julia has `string(n, base=2)` and `bitstring()` built-in, but implement your own for this exercise.

6. Gather evidence as to the truth of the following formula by testing for several $n$ of increasing size. We will prove this formula by mathematical induction.
   $$
   1 + 2 + 3 + \cdots + n = \frac{n(n+1)}{2}.
   $$

7. "*Prove*" $1 + 3 + \cdots + (2n - 1) = n^2$. (See previous lab).

8. A **convolution** of two equal sized arrays, `[a₁, a₂, …, aₙ]` and `[b₁, b₂, …, bₙ]` is given by: $a_1 b_1 + a_2 b_2 + \cdots + a_n b_n$, that is the sum of element-wise products. Write a function that returns the convolution of two equally sized arrays (or finite sequences). Test with `[1,2,3,4,5]` and `[2,3,4,5,6]`. Can you conjecture what the convolution of `[1,2,…,n]` and `[2,3,…,(n+1)]` is equal to? Run for several values of $n$ and record the returned value.
   
   Note: Julia has the dot product operator `⋅` (type `\cdot<TAB>`) and `dot()` function, but implement your own.

9. The finite **geometric** series formula with $r \ne 1$ is
   $$
   \sum_{i=0}^{n-1} r^i = \frac{1-r^n}{1 - r}.
   $$
   Write a function to calculate this series for any $r \ne 1$ and any $n \ge 1$.

10. Recursion is a standard method for solving a problem by solving a reduced problem. The classic example is the Fibonacci sequence defined recursively by: $f_0 = 0$, $f_1 = 1$, and for $n > 1$
    $$
    f_n = f_{n-1} + f_{n-2}.
    $$
    Write a recursive function to find the $n$-th term of the Fibonacci sequence. What is $f(5), f(10), f(20), f(40), f(50)$? What about $f(100)$? For large $n$, consider how efficient your recursive function is; could it be improved?
    
    Note: Julia's type system supports `BigInt` for arbitrary precision integers, which is useful for large Fibonacci numbers.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Fri, January 30, 2026 11:49:46 AM EDT
</i>
