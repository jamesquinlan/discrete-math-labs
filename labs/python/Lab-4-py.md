# Discrete Mathematics Lab 4


## Overview

This lab continues your exploration of discrete mathematics through computation. You will analyze integer properties, such as divisibility and summation patterns, and implement functions to test mathematical conjectures. Several problems guide you to gather evidence and form conjectures based on numerical patterns.
You are encouraged to reuse and adapt functions developed in previous labs, such as `is_prime`, `factorial`, and list-processing tools, to solve these problems efficiently.

## Learning Objectives

* Implement functions to compute arithmetic and number-theoretic quantities.
* Analyze divisibility properties, including modular congruences.
* Verify summation formulas through computation and pattern recognition.
* Formulate conjectures based on observed numerical evidence.
* Investigate integer patterns using loops, conditionals, and function design.


## Problems

1. Find the quotient $q$ and remainder $r$ for each of the following values of $n$ and $d$ where $n = nq + r$.<br>
	* $n = 54, d = 4$	
	* $n = 37, d = 3$
	* $n = 54, d = 70$<br> 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
2. Given a positive integer $n > 1$, find a list of its prime factors and their powers.  For example, if $n = 60$, you will have two lists, `p = [2,3,5]` and `e = [2,1,1]`, where `p` are the prime factors and `e` are the corresponding exponents.  You may use prime functions from previous labs.  Coding Hint: One strategy is to start with an empty list `x` and append to it using `x.append(y)`, where `y` is the value being appended to the list. 
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

3. Write a function, `divides`, that accepts two integers, $a$ and $b$, and returns a boolean indicating whether $a | b$.  Use to test whether $a | bc$ implies $a | b$ or $a | c$.  Test whether $ab | c$ implies that $a | c$ and $b | c$.  
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

4. Generate code to test whether the square of any odd integer has the form $8m + 1$ for some integer $m$.  
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

5. Write a function to compute $n! + k$ for a given integer $n \ge 0$ and constant $k \ge 1 $. Test whether the result is divisible by $ k $ for various values of $ n $ and $ k $. For example, is $ n! + 2 $ divisible by 2? What about $ n! + 3 $ divisible by 3?
**Conjecture:** For which values of $ k $ does $ k \mid n! + k $ hold for all $ n \ge k $? Support your answer with computational evidence.
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


6. Write a function that returns the result of the following sum:
$$
\frac{1}{2!} + \frac{2}{3!} + \frac{3}{4!} + \cdots + \frac{n}{(n+1)!}
$$
What is the sum for larger and larger values of $n$?   
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

7. Write a function that returns the sum of the first $n$ integers.  That is, 
$$
1 + 2 + 3 + \cdots + n .
$$
Modify your function to allow arbitrary starting values, e.g., $7$, 
$$
7 + 8 + 9 + \cdots + n
$$
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


8. Write a function to compute the sum of the first $ n $ positive odd integers:
\[
1 + 3 + 5 + \cdots + (2n - 1).
\]
Verify that the result equals $ n^2 $ for several values of $ n $.
Write a function to compute the sum of the first $ n $ positive even integers. Conjecture a formula for this sum.
Write a function to compute the sum of the squares of the first $ n $ odd integers:
\[
1^2 + 3^2 + 5^2 + \cdots + (2n - 1)^2.
\]
Use numerical evidence to guess a closed-form formula.
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


9. Find the smallest set of $n$ consecutive composite integers for each positive integer $n \le 10$.
<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


10.  Find all integers $n$ between $1$ and $100$ for which $7n \equiv 3\; (\rm{mod }\; 17)$ .
Write a function to solve this congruence using brute-force (test all $ n $ from 1 to 100).
**Challenge:** Use the **modular inverse** of $7 \; (\rm{mod }\; 17)$ to solve for $ n $ directly. Write a function to compute the modular inverse of an integer modulo $ m $, and use it to find the solution.



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
The Fibonacci sequence is $1,1,2,3,5,8,\dots$, where $f_n = f_{n-1}+f_{n-2}$.  Determine which Fibonacci numbers are divisible by are divisible by 5, by 7, and by 11.  Make a conjecture and attempt to prove your conjecture.
 
1.  Find all integers $n$ between $1$ and $100$ for which $7n \equiv 3\; (\rm{mod }\; 17)$ .

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
1.  Verify experimentally that $n^4$ is even.  Verify experimentally that $4^n$ is even.  Then prove each.  What can you say about $n^4 + 4^n$?  



<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sat Jul 26 2025 08:56:37 PM EDT</i>  
