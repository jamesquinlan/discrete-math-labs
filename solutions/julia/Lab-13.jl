# Discrete Mathematics Lab 13 - Solutions

using BenchmarkTools
using Random

## Problem 1: Basic Timing
time_simple = @belapsed x = 5 + 7
time_complex = @belapsed x = sum([i for i in 1:100])
println("Simple operation: $(round(time_simple, digits=9))s")
println("Complex operation: $(round(time_complex, digits=9))s")


## Problem 2: Array Creation Methods
t1 = @belapsed [i for i in 1:1000]
t2 = @belapsed collect(1:1000)
println("\nArray comprehension: $(round(t1, digits=9))s")
println("collect(range): $(round(t2, digits=9))s")
println("Faster method: $(t2 < t1 ? "collect(range)" : "comprehension")")


## Problem 3: Sorting Algorithm Timing
function bubble_sort!(arr)
    """Bubble sort implementation"""
    n = length(arr)
    for i in 1:n
        for j in 1:(n-i)
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
end

size = 1000
sorted_list = collect(1:size)
random_list = shuffle(collect(1:size))
reverse_list = collect(size:-1:1)

for (label, lst) in [("Sorted", sorted_list), ("Random", random_list), ("Reverse", reverse_list)]
    lst_copy = copy(lst)
    t = @belapsed bubble_sort!($lst_copy)
    println("$label: $(round(t, digits=6))s")
end


## Problem 4: Visualization (code skeleton)
println("\n# Plotting code:")
println("# using Plots")
println("# sizes = 100:100:1000")
println("# times = [time for each size]")
println("# plot(sizes, times, xlabel=\"Input size\", ylabel=\"Time (s)\")")


## Problem 5: Search Algorithms
function linear_search(lst, target)
    """Linear search"""
    for x in lst
        if x == target
            return true
        end
    end
    return false
end

function binary_search(lst, target)
    """Binary search"""
    left, right = 1, length(lst)
    while left <= right
        mid = (left + right) ÷ 2
        if lst[mid] == target
            return true
        elseif lst[mid] < target
            left = mid + 1
        else
            right = mid - 1
        end
    end
    return false
end

lst = collect(1:10000)
target = 9999
t_linear = @belapsed linear_search($lst, $target)
t_binary = @belapsed binary_search($lst, $target)
println("\nLinear search: $(round(t_linear, digits=9))s")
println("Binary search: $(round(t_binary, digits=9))s")


## Problem 6: Recursive Fibonacci
function fib(n)
    """Naive recursive Fibonacci"""
    if n <= 1
        return n
    end
    return fib(n-1) + fib(n-2)
end

println("\nRecursive Fibonacci timing:")
for n in [10, 20, 30]
    t = @belapsed fib($n)
    println("fib($n): $(round(t, digits=6))s")
end


## Problem 7: Memoized Fibonacci
function fib_memo(n, memo=Dict{Int,Int}())
    """Memoized Fibonacci"""
    if haskey(memo, n)
        return memo[n]
    end
    if n <= 1
        return n
    end
    memo[n] = fib_memo(n-1, memo) + fib_memo(n-2, memo)
    return memo[n]
end

println("\nMemoized Fibonacci timing:")
for n in [10, 30, 50]
    memo = Dict{Int,Int}()
    t = @belapsed fib_memo($n, $memo)
    println("fib_memo($n): $(round(t, digits=9))s")
end


## Problem 8: Matrix Multiplication
function mat_mult(A, B)
    """Matrix multiplication"""
    n = size(A, 1)
    C = zeros(Int, n, n)
    for i in 1:n
        for j in 1:n
            for k in 1:n
                C[i, j] += A[i, k] * B[k, j]
            end
        end
    end
    return C
end

for n in [10, 50, 100]
    A = ones(Int, n, n)
    B = ones(Int, n, n)
    t = @belapsed mat_mult($A, $B)
    println("Matrix $(n)×$(n): $(round(t, digits=6))s")
end


## Problem 9: Operation Counting
n = 50
count = n^3  # Triple nested loop
println("\nOperations for $(n)×$(n) matrix: $count")


## Problem 10: Logarithmic Complexity
println("\nLogarithmic timing:")
for exp in 3:7
    n = 10^exp
    t = @belapsed log($n)
    println("log(10^$exp): $(round(t, digits=9))s")
end
