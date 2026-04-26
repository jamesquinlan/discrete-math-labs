# Discrete Mathematics Lab 13

## Overview

This lab focuses on the time complexity of algorithms through experimental analysis. Students will implement and evaluate sorting and search algorithms, benchmark their performance using Julia's `@time` and `@benchmark` macros, and visualize results using plotting tools. By working with **best, average, and worst-case scenarios**, students will gain a deeper understanding of how input characteristics and algorithm design influence efficiency. The lab culminates in advanced algorithm evaluation tasks, such as matrix multiplication and recursive Fibonacci computation, that promote critical thinking about **operation counts** and **performance optimization**.

This lab is designed to deepen your understanding of time complexity by exploring the performance of different algorithms on various input scenarios. We will focus on sorting algorithms and other basic algorithms, analyzing their behavior on nearly sorted and reverse-sorted arrays. The lab also uses Julia's timing tools to measure the execution time of algorithms. For example, the following code calculates the sum of the first 1000 positive integers:

```julia
using BenchmarkTools

function f(x)
    s = 0
    for i in x
        s += i
    end
    return s
end

# Timing
x = 1:1000
@btime f($x)  # The $ interpolates x to avoid measuring the cost of globals
```

The `@time` macro measures a single execution, while `@btime` from BenchmarkTools provides more accurate timing by running multiple iterations. The `@benchmark` macro provides detailed statistics.

## Learning Objectives

* Implement sorting, searching, and recursive algorithms in Julia for performance evaluation.
* Measure and record execution times using benchmarking tools (e.g., `@time`, `@btime`, `@benchmark`).
* Compare algorithmic efficiency across different input scenarios (e.g., sorted vs. reverse-sorted data).
* Visualize time complexity trends using graphing tools (e.g., Plots.jl).
* Analyze the growth rate of operation counts and relate them to theoretical time complexity.
* Evaluate the effects of algorithm design on computational performance.
* Propose and justify optimizations for inefficient algorithms (e.g., naive recursion).

## Problems

1. Use the `@time` or `@btime` macro in Julia to measure the time it takes to run the following statement:
   
   ```julia
   x = 5 + 7
   ```
   
   Record the result. Then repeat using a more complex operation, e.g., `x = sum([i for i in 1:100])`. What do you observe about the execution time?
   
   Note: Install BenchmarkTools with `using Pkg; Pkg.add("BenchmarkTools")`

2. Compare the performance of the following two array creation methods using `@btime`:
   
   a) Array comprehension: `[i for i in 1:1000]`
   
   b) Using `collect(1:1000)`
   
   Which method is faster? What does this suggest about Julia's internal optimizations?

3. Write and time a sorting algorithm such as **bubble sort** or **selection sort** on three types of input arrays (size 1000):
   
   a) Already sorted array
   
   b) Random array
   
   c) Reverse sorted array
   
   Compare the execution times for each case. What conclusions can you draw about **best**, **average**, and **worst-case** complexity?

4. Use the `Plots.jl` package to plot execution time vs. input size for your sorting algorithm. Generate inputs of size 100, 200, …, 1000. Plot the results and describe the observed **growth rate**. Does it appear linear, quadratic, or something else?
   
   ```julia
   using Plots
   
   # Example plotting code
   sizes = 100:100:1000
   times = []  # Fill this with your timing results
   plot(sizes, times, xlabel="Input Size", ylabel="Time (s)", 
        title="Sorting Algorithm Performance", legend=false)
   ```

5. Implement both **linear search** and **binary search**. For various array sizes (e.g., 1000, 5000, 10000), time how long it takes to find an element **near the end** of the array. Which search method is more efficient? Why?

6. Write a **recursive Fibonacci function** and use `@btime` to measure execution times for `fib(n)` where `n = 10, 20, 30, 35`.
   
   What do you observe? Estimate how the time grows with `n`. What can you say about the **time complexity**?

7. Modify your Fibonacci function to use **memoization**. Measure the execution times again for the same values of `n`. Compare the results. How does memoization affect performance? Why?
   
   Hint: Use a dictionary to store computed values.

8. Write a function to multiply two **n × n matrices** and time it for `n = 10, 50, 100`. Record the times and analyze the **growth of computation time**. What is the time complexity of matrix multiplication?
   
   Note: Julia has built-in matrix multiplication with `*`, but implement your own.

9. Write a loop that counts how many **additions** are made during matrix multiplication. Compare this operation count to the measured time from Problem 8. Do they show similar growth patterns?

10. Use timing and plotting to compare the time it takes to compute `log(n)` for `n = 10^3, 10^4,..., 10^7`. What do you observe about the growth of logarithmic functions compared to polynomial functions?

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sun, January 30, 2026 09:14:29 PM EDT
</i>
