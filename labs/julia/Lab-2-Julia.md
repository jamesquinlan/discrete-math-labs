# Discrete Mathematics Lab 2
## Learning Objectives

* Use `if`, `for`, and nested loops to process arrays and control program flow.
* Implement iterative and recursive functions that return integer or boolean results.
* Employ modular arithmetic and random or chosen primes to verify number-theoretic results, such as Fermat's Little Theorem.
* Analyze algorithms by counting operations and measuring computational complexity.
* Generate combinatorial objects and apply discrete math formulas (factorials, binomial coefficients).
* Solve discrete-mathematics problems by integrating programming constructs with mathematical reasoning.

 
## Problems

1. Write code that produces the sum of the array `[5,1,4,9,3,2]`.

2. Write code that yields the product of the array `[5,1,4,9,3,2]`.

3. Write a function that returns the factorial of a nonnegative integer.  Recall $n! = 1 \cdot 2 \cdot 3 \cdots (n-1) \cdot n$ and that $0! = 1$.  You can write either an iterative or a recursive function. Note: Julia has a built-in `factorial()` function, so name yours differently for this exercise.

4. Write a function to return the binomial coefficient, $\binom{n}{k} = \frac{n!}{(n-k)! k!}$. Julia has a built-in `binomial()` function, but implement your own for practice.

5. Given `A = [2,7,1,3,9,5,6,8,4]`, what does the following Julia code do?
   
   ```julia
   n = length(A)
   for i in 1:(n-1)
       for j in (i+1):n
           if A[i] > A[j]
               A[i], A[j] = A[j], A[i]
           end
       end
   end
   ```
   
   Modify the code above to **count** the number of comparisons `A[i] > A[j]`.

6. Find the sum of the squares of odd integers from $1$ to $20$.

7. Verify that $x_1 + x_2 + x_3 = 10$ has 66 solutions when $x_i \ge 0$ and 36 when $x_i > 0$. Look up the combinatorial formula for "stars and bars." Can you list all the solutions?

8. A function in Julia to calculate the **greatest common factor** of two integers is given below.
   
   ```julia
   function gcf(x, y)
       if y > x
           x, y = y, x
       end
       if y == 0
           return x
       else
           return gcf(y, x % y)
       end
   end
   ```
   
   Write a function that will check if two numbers are **relatively prime**, that is, only have $1$ as a common factor. Note you do *not* have to use an `if` statement. Include meaningful inline and docstring comments.

9. (*Challenge*) By writing code, experimentally verify that for a positive integer $a$ and prime $p$, if $a$ is not a multiple of $p$, then 
   $$a^{p-1} \mod p = 1.$$
   Recall in Julia, the mod operator is `%` or `mod()`. This is known as **Fermat's Little Theorem** and is at the heart of the RSA cryptosystem.

10. (*Challenge*) Choose two "large" prime numbers, $p$ and $q$ (you may use your function from Lab 1 to find prime numbers). Compute $n = pq$. Now, choose a number $e > 1$ that is relatively prime to the product $(p-1)(q-1)$ using your function above (this may require some trial and error). Find the inverse of $e$, call it $d$, by testing if 
    $$e \cdot d \equiv 1 \pmod{(p-1)(q-1)}.$$
    The letter choices, $e$ and $d$ are for "encryption" and "decryption", respectively.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Thu, February 2, 2026 03:47:16 PM EDT
</i>
