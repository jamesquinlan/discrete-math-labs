# Discrete Mathematics Lab 13 - Solutions

import timeit
import random
import math

## Problem 1: Basic Timing
time_simple = timeit.timeit("x = 5 + 7", number=1000000)
time_complex = timeit.timeit("x = sum([i for i in range(100)])", number=1000000)
print(f"Simple operation: {time_simple:.6f}s")
print(f"Complex operation: {time_complex:.6f}s")


## Problem 2: List Creation Methods
t1 = timeit.timeit("[i for i in range(1000)]", number=10000)
t2 = timeit.timeit("list(range(1000))", number=10000)
print(f"\nList comprehension: {t1:.6f}s")
print(f"list(range()): {t2:.6f}s")
print(f"Faster method: {'list(range())' if t2 < t1 else 'comprehension'}")


## Problem 3: Sorting Algorithm Timing
def bubble_sort(arr):
    """Bubble sort implementation"""
    n = len(arr)
    for i in range(n):
        for j in range(n-1-i):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]

size = 1000
sorted_list = list(range(size))
random_list = list(range(size))
random.shuffle(random_list)
reverse_list = list(range(size, 0, -1))

for label, lst in [("Sorted", sorted_list), ("Random", random_list), ("Reverse", reverse_list)]:
    lst_copy = lst.copy()
    t = timeit.timeit(lambda: bubble_sort(lst_copy), number=1)
    print(f"{label:10s}: {t:.6f}s")


## Problem 4: Visualization (code skeleton)
print("\n# Plotting code:")
print("# import matplotlib.pyplot as plt")
print("# sizes = [100, 200, ..., 1000]")
print("# times = [time for each size]")
print("# plt.plot(sizes, times)")
print("# plt.xlabel('Input size')")
print("# plt.ylabel('Time (s)')")
print("# plt.show()")


## Problem 5: Search Algorithms
def linear_search(lst, target):
    """Linear search"""
    for x in lst:
        if x == target:
            return True
    return False

def binary_search(lst, target):
    """Binary search"""
    left, right = 0, len(lst) - 1
    while left <= right:
        mid = (left + right) // 2
        if lst[mid] == target:
            return True
        elif lst[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return False

lst = list(range(10000))
target = 9999
t_linear = timeit.timeit(lambda: linear_search(lst, target), number=1000)
t_binary = timeit.timeit(lambda: binary_search(lst, target), number=1000)
print(f"\nLinear search: {t_linear:.6f}s")
print(f"Binary search: {t_binary:.6f}s")


## Problem 6: Recursive Fibonacci
def fib(n):
    """Naive recursive Fibonacci"""
    if n <= 1:
        return n
    return fib(n-1) + fib(n-2)

print("\nRecursive Fibonacci timing:")
for n in [10, 20, 30]:
    t = timeit.timeit(lambda: fib(n), number=1)
    print(f"fib({n}): {t:.6f}s")


## Problem 7: Memoized Fibonacci
def fib_memo(n, memo={}):
    """Memoized Fibonacci"""
    if n in memo:
        return memo[n]
    if n <= 1:
        return n
    memo[n] = fib_memo(n-1, memo) + fib_memo(n-2, memo)
    return memo[n]

print("\nMemoized Fibonacci timing:")
for n in [10, 30, 50]:
    memo = {}
    t = timeit.timeit(lambda: fib_memo(n, memo), number=1)
    print(f"fib_memo({n}): {t:.6f}s")


## Problem 8: Matrix Multiplication
def mat_mult(A, B):
    """Matrix multiplication"""
    n = len(A)
    C = [[0]*n for _ in range(n)]
    for i in range(n):
        for j in range(n):
            for k in range(n):
                C[i][j] += A[i][k] * B[k][j]
    return C

for n in [10, 50, 100]:
    A = [[1]*n for _ in range(n)]
    B = [[1]*n for _ in range(n)]
    t = timeit.timeit(lambda: mat_mult(A, B), number=1)
    print(f"Matrix {n}×{n}: {t:.6f}s")


## Problem 9: Operation Counting
n = 50
count = n**3  # Triple nested loop
print(f"\nOperations for {n}×{n} matrix: {count}")


## Problem 10: Logarithmic Complexity
print("\nLogarithmic timing:")
for exp in range(3, 8):
    n = 10**exp
    t = timeit.timeit(lambda: math.log(n), number=100000)
    print(f"log(10^{exp}): {t:.8f}s")
