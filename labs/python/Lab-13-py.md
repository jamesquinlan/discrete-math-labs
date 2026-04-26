# Discrete Mathematics Lab 13


## Overview

This lab focuses on the time complexity of algorithms through experimental analysis. Students will implement and evaluate sorting and search algorithms, benchmark their performance using Python’s `timeit` module, and visualize results using plotting tools. By working with **best, average, and worst-case scenarios**, students will gain a deeper understanding of how input characteristics and algorithm design influence efficiency. The lab culminates in advanced algorithm evaluation tasks, such as matrix multiplication and recursive Fibonacci computation, that promote critical thinking about **operation counts** and **performance optimization**.



This lab is designed to deepen your understanding of time complexity by exploring the performance of different algorithms on various input scenarios. We will focus on sorting algorithms and other basic algorithms, analyzing their behavior on nearly sorted and reverse-sorted lists. The lab also uses Python's `timeit` module to measure the execution time of algorithms.  For example, the following code calculates the sum of the first 1000 positive integers 100 times.  

```
import timeit

def f(x):
  s = 0
  for i in x:
    s += i
  return s

# Timeit
x = range(1,1001)
tictoc = timeit.timeit(lambda:f(x), number = 100)
print(f'Function took an average of {tictoc} seconds')
```

The `timeit` module measures the time it takes for each algorithm to process its input. The number parameter in `timeit.timeit` specifies the number of executions, and the lambda function contains the algorithm to be tested. Experiment with different input sizes and analyze how the time complexity behaves.


## Learning Objectives

* Implement sorting, searching, and recursive algorithms in Python for performance evaluation.
* Measure and record execution times using benchmarking tools (e.g., `timeit`).
* Compare algorithmic efficiency across different input scenarios (e.g., sorted vs. reverse-sorted data).
* Visualize time complexity trends using graphing tools (e.g., `matplotlib`).
* Analyze the growth rate of operation counts and relate them to theoretical time complexity.
* Evaluate the effects of algorithm design on computational performance.
* Propose and justify optimizations for inefficient algorithms (e.g., naive recursion).



## Problems

	
1. Use the `timeit` module in Python to measure the time it takes to run the following statement **1,000,000 times**:<!-- Basic Timing Practice -->

   ```python
   x = 5 + 7
   ```
   Record the result. Then repeat using a more complex operation, e.g., `x = sum([i for i in range(100)])`. What do you observe about the execution time?
   
   
2. Compare the performance of the following two list creation methods using `timeit`:
   a) List comprehension: `[i for i in range(1000)]`
   b) Using `list(range(1000))`
   Which method is faster? What does this suggest about Python’s internal optimizations?<!-- Timing List Creation -->
   
  
3. Write and time a sorting algorithm such as **bubble sort** or **selection sort** on three types of input arrays (size 1000):
   a) Already sorted list
   b) Random list
   c) Reverse sorted list
   Compare the execution times for each case. What conclusions can you draw about **best**, **average**, and **worst-case** complexity? <!-- Sorting Algorithms - Timing Study -->
   
   
  
4. Use the `matplotlib` library to plot execution time vs. input size for your sorting algorithm. Generate inputs of size 100, 200, …, 1000. Plot the results and describe the observed **growth rate**. Does it appear linear, quadratic, or something else? <!-- Visualizing Sorting Times -->
   
   
   
  
5. Implement both **linear search** and **binary search**. For various list sizes (e.g., 1000, 5000, 10000), time how long it takes to find an element **near the end** of the list. Which search method is more efficient? Why? <!-- Search Algorithms Comparison -->



6. Write a **recursive Fibonacci function** and use `timeit` to measure execution times for `fib(n)` where `n = 10, 20, 30, 35`.
   What do you observe? Estimate how the time grows with `n`. What can you say about the **time complexity**?<!-- Measuring Recursive Fibonacci Performance -->
   
   
   
   
7. Modify your Fibonacci function to use **memoization**. Measure the execution times again for the same values of `n`. Compare the results. How does memoization affect performance? Why?<!-- Optimizing Fibonacci with Memoization -->




8. Write a function to multiply two **n × n matrices** and time it for `n = 10, 50, 100`. Record the times and analyze the **growth of computation time**. What is the time complexity of matrix multiplication?<!-- Matrix Multiplication Timing -->




9. Write a loop that counts how many **additions** are made during matrix multiplication. Compare this operation count to the measured time from Problem 8. Do they show similar growth patterns?<!-- Operation Counting vs Time Measurement -->




10. Use timing and plotting to compare the time it takes to compute `log(n)` for `n = 10^3, 10^4, ..., 10^7`.  What do you observe about the growth of logarithmic functions compared to polynomial functions?<!-- Optional Challenge - Logarithmic Complexity -->

 

<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sun Jul 28 2025 09:14:29 PM EDT
</i>
