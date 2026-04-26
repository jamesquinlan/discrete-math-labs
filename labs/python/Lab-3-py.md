# Discrete Mathematics Lab 3

## Overview

In this lab, you will explore conjectures and code to solve mathematical problems such as finding the smallest prime factor of a given number or determining the digital sum of a positive integer.  You are encouraged to reuse and adapt functions developed in previous labs, such as `is_prime` and `factorial`, as well as list-processing tools, to solve these problems efficiently.

## Learning Objectives

* Identify and classify integers as prime or composite using algorithmic checks.
* Implement algorithms to generate, filter, and compare prime numbers efficiently.
* Explore and experimentally verify classical number-theoretic conjectures (Goldbach's, Twin Prime).
* Apply modular arithmetic to solve congruence problems using the extended Euclidean algorithm.
* Compare recursive and iterative programming approaches for mathematical computation.
* Develop reusable functions to solve number-theoretic problems computationally.
* Interpret computational evidence in support of mathematical reasoning and proof.

## Problems

1. (Sum Square Difference).  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. For example, the difference between the sum of the squares of the first five natural numbers and the square of their sum is:
$$
(1+2+3+4+5)^2  -  (1^2 + 2^2 + 3^2 + 4^2 + 5^2) = 170.
$$

2. Count and track the odd prime numbers that are 1 more and 3 more than a multiple of 4.  For example, the primes 3, 7, 11, 19 are all three more than a multiple of 4. The primes 5,13, and 17 are just 1 more than a multiple of 4.

3. Write a function that finds the "next prime" given any integer.  Write another function that finds the previous prime number.  For example, `nextprime(17)` returns 19 and `prevprime(17)` returns 13.  Use your `isprime` function from previous lab.

4. Find the smallest prime factor of $n! + 1$ for all positive integers $n \le 20$.

5. The Twin Prime Conjecture states there are an infinite number of twin primes (pairs of primes that differ by two, such as $(11,13), (17,19), (29,31), \dots$ .  Find all twin primes less than 10,000 and count how many there are.  (*Optional challenge*) Increase this limit and compare how the count grows.

6. Goldbach's Conjecture states that every even natural number greater than $2$ is the sum of two primes.  Verify this for $n \le 10000$.  *Hint*: use the prime functions from previous lab(s). 

7. A **modular inverse** of an integer $a$ modulo $m$ is an integer $x$ such that
$$
a \cdot x \equiv 1 \pmod{m}.
$$
This only exists when $\gcd(a, m) = 1$. Write a function `modinv(a, m)` that returns the modular inverse of $a$ modulo $m$, or indicates that no inverse exists. Use the **extended Euclidean algorithm** to compute this.

Test your function on the following inputs:
* $a = 3, m = 26$
* $a = 7, m = 33$
* $a = 10, m = 17$
* $a = 4, m = 10$ *(What happens here?)* 

8. Collatz Conjecture states that for any positive integer $n$, the sequence 
$$
C_n=\left\{
\begin{array}{ll}
3n + 1 &\text{if } n \text{ is odd} \\ 
 \frac{n}{2} &\text{if } n \text{ is even}.
\end{array} 
\right.
$$
always terminates at $1$.  Write a function that returns the sequence for a given integer $n$.

9. The digital sum is a number between $0$ and $9$ obtained by repeatedly summing the digits of a number.  For example, the digital sum of $591 \rightarrow  5 + 9 + 1 = 15 \rightarrow 1 + 5 = 6$.  That is, the digital sum of $591$ is $6$.  Write a digital sum function, $d(n)$, that takes a positive integer and returns the digital sum.  Then, find the digital sum of $519,\; 18974$, and  $100!$.  *Hint*: If using Python, use the log function from the math library, i.e., `import math`, to get digits.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sat, February 2, 2026 08:45:26 PM EDT
</i>
