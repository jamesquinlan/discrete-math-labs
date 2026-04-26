# Discrete Mathematics Lab 6

## Overview

This lab focuses on verifying mathematical formulas and properties through computational experimentation. Rather than proving statements formally, you will gather numerical evidence using `for` loops and recursive functions. These problems emphasize numerical verification of summation formulas, inequalities, divisibility, and sequences, continuing your exploration of mathematical induction and discrete patterns. You are encouraged to reuse functions from previous labs, such as `factorial_custom`, to support your work.

## Learning Objectives

* Implement `for` loops and recursive functions to compute numerical sequences and patterns.
* Verify mathematical statements using computational evidence and test cases.
* Compare symbolic expressions involving powers, factorials, and summations.
* Explore divisibility and inequalities using code-based experimentation.
* Formulate and test conjectures based on observed numerical results.
* Apply integer decomposition techniques and algorithmic problem-solving to real-world or number-theoretic contexts.

## Problems

1. For various values of $n$, compute the ratio
   $$
   \frac{1 + 3 + 5 + \cdots + (2n-1)}{(2n+1) + (2n+3) + \cdots + (4n - 1)}.
   $$
   Use a loop to compute both sums and observe whether the ratio approaches a consistent value as $n$ increases.

2. By using several values of $n$, verify the inequality
   $$
   2^n < (n+1)!
   $$
   for $n \ge 1$. You will need a factorial function to compute $(n+1)!$.

3. Let $a_1 = 1$ and define the sequence $a_2, a_3, \dots$ recursively by
   $$
   a_n = 5a_{n-1}, \quad \text{for } n \ge 2.
   $$
   Write a function that generates the first 10 terms of this sequence.

4. Show that all amounts greater than or equal to \$8 can be formed using only \$3 and \$5 bills. Write a program that checks every integer amount $n \ge 8$ up to a reasonable limit (e.g., \$30), and reports whether it can be expressed as $3x + 5y$ for nonnegative integers $x$ and $y$.

5. Show that $2^{2n} - 1$ is divisible by $3$ for all integers $n \ge 0$. Compute this expression for several values of $n$ and use the modulo operator to test divisibility.

6. For $n = 100$, compute the sum
   $$
   \sum_{k=1}^n \left(\frac{k}{k+1} + \frac{n + 1}{n + 2} \right).
   $$
   Break this into two parts: the sum over $k$, and the constant term. Analyze how the total grows with $n$.

7. Verify that if $p$ is a prime number and $k$ is an integer with $0 < k < p$, then the binomial coefficient
   $$
   \binom{p}{k}
   $$
   is divisible by $p$. Test this property for several small primes $p$.

8. Verify that the following formula holds for various values of $n$ and $x \ne 1$:
   $$
   \sum_{k=1}^n kx^k = \frac{nx^{n+2} - (n+1)x^{n+1} + x}{(1 - x)^2}.
   $$
   Compare the left-hand side and right-hand side numerically for multiple inputs.

9. Verify numerically that
   $$
   \sqrt{n} < \sum_{k=1}^n \frac{1}{\sqrt{k}}
   $$
   holds for several values of $n$. Plot or compare the results to observe how the inequality behaves.

10. Show that $n^3 - n$ is divisible by $6$ for each integer $n \ge 0$. Compute this expression for several values of $n$ and check divisibility.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sun, January 30, 2026 12:34:04 PM EDT
</i>
