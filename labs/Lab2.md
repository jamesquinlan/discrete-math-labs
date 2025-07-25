# Discrete Mathematics Lab 2


## Learning Objectives


* Use `if`, `for`, and nested loops to process lists and control program flow.
* Implement iterative and recursive functions that return integer or boolean results.
* Employ modular arithmetic and random or chosen primes to verify number-theoretic results, such as Fermat’s Little Theorem experimentally.
* Measure algorithm behavior by counting operations.
* Generate and enumerate combinatorial objects using loops and list constructs.
* Recall and use discrete math formulas, such as factorials and binomial coefficients, within code-based problem-solving.
* Solve authentic discrete-mathematics problems through coding, integrating programming constructs, and mathematical reasoning.


 
## Problems

1. Write code that produces the sum of the list `[5,1,4,9,3,2]`.

1. Write code that yields the product of the list `[5,1,4,9,3,2]`.

1. Write a function that returns the factorial of a nonnegative integer.  Recall $n! = 1 \cdot 2 \cdot 3 \cdots (n-1) \cdot n$ and that $0! = 1$.  You can write either an iterative or a recursive function.  

1. Write a function to return the binomial coefficient, $\binom{n}{k} = \frac{n!}{(n-k)! k!}$.

1. Given `A = [2,7,1,3,9,5,6,8,4]`, what does the following Python code do?  If you're working in a different language (e.g., Java), you must translate into that language.
	
	```
	n = len(A)
	for i in range(0,n-1):
	  for j in range(i+1,n):
	    if (A[i] > A[j]):
	        A[i],A[j] = A[j],A[i]
	```

	Modify the code above to **count** the number of comparisons `A[i] > A[j]`.

1. Find the sum of the squares of odd integers from $1$ to $20$.

1. Verify that $x_1 + x_2 + x_3 = 10$ has 66 solution when $x_i \ge 0$ and 36 when $x_i > 0$.  Look up the combinatorial formula for "stars and bars."  Can you list all the solutions?



1. A function in Python to calculate the **greatest common factor** of two integers is given below. 

	```
    def gcf(x,y):
        if y > x:
 	         x,y = y,x
     	 if y == 0:
            return x
     	 else:
     	     return gcf(y,x%y)
  	```
	 Write a function that will check if two numbers are **relatively prime**, that is, only have $1$ as a common factor.  Note you do *not* have to use an `if` statement.  Include meaningful inline and docstring comments.

1. (*Challenge*) By writing code, experimentally verify that for a positive integer $a$ and prime $p$, if $a$ is not a multiple of $p$, then $$a^{p-1} \mod p = 1.$$ Recall in Python, the mod operator is `%`.  This is known as **Fermat's Little Theorem** and is at the heart of the RSA cryptosystem. 


1. (*Challenge*) Choose two "large" prime numbers, $p$ and $q$ (you may use your function from Lab 1 to find prime numbers).  Compute $n = pq$.  Now, choose a number $e > 1$ that is relatively prime to the product $(p-1)(q-1)$ using your function above (this may require some trial and error).  Find the inverse of $e$, call it $d$, by testing if $$e \cdot d = 1 \mod (p-1)(q-1).$$ The letter choices, $e$, and $d$ are for "encryption" and "decryption", respectively. 




<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-->

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Thu, July 25, 2025 03:47:16 PM EDT
</i>  
