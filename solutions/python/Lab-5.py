# Discrete Mathematics Lab 5 - Solutions
def factorial(n):
    result = 1
    for i in range(2, n+1):
        result *= i
    return result


## Problem 1: Lambda Function for Sequence
f = lambda k: 1/(k*(k+1))
print("First 10 terms:")
for k in range(1, 11):
    print(f"f({k}) = {f(k):.6f}")


## Problem 2: Sum of Sequence
def sum_sequence(func, m, n):
    return sum(func(k) for k in range(m, n+1))

result = sum_sequence(f, 1, 10)
print(f"\nSum of sequence: {result:.6f}")


## Problem 3: Product of Sequence
def prod_sequence(func, m, n):
    product = 1
    for k in range(m, n+1):
        product *= func(k)
    return product

result = prod_sequence(f, 1, 10)
print(f"Product of sequence: {result:.10e}")


## Problem 4: Lambda with Exponentiation
g = lambda k: 1 + (0.5)**k
print("\nFirst 5 terms of g(k) = 1 + (1/2)^k:")
for k in range(5):
    print(f"g({k}) = {g(k)}")


## Problem 5: Binary Representation
def to_binary(n):
    if n == 0:
        return "0"
    binary = ""
    while n > 0:
        binary = str(n % 2) + binary
        n //= 2
    return binary

print("\nBinary representations:")
for n in [5, 16, 31, 64, 127]:
    b = to_binary(n)
    print(f"{n} = {b} (length: {len(b)} bits)")


## Problem 6: Verify Sum Formula
print("\nVerifying 1+2+...+n = n(n+1)/2:")
for n in [5, 10, 50, 100]:
    lhs = sum(range(1, n+1))
    rhs = n*(n+1)//2
    print(f"n={n}: {lhs} == {rhs}? {lhs == rhs}")


## Problem 7: Sum of Odd Integers
def sum_odd(n):
    return sum(range(1, 2*n, 2))

print("\nVerifying 1+3+...+(2n-1) = n^2:")
for n in [3, 5, 10, 20]:
    print(f"n={n}: sum={sum_odd(n)}, n^2={n**2}, Equal: {sum_odd(n)==n**2}")


## Problem 8: Convolution
def convolve(a, b):
    return sum(a[i]*b[i] for i in range(len(a)))

a = [1,2,3,4,5]
b = [2,3,4,5,6]
print(f"\nConvolution of {a} and {b}: {convolve(a,b)}")

# Pattern for [1..n] and [2..n+1]
for n in [5, 10, 20]:
    a = list(range(1, n+1))
    b = list(range(2, n+2))
    print(f"n={n}: convolution = {convolve(a,b)}")


## Problem 9: Geometric Series
def geometric_sum(r, n):
    if r == 1:
        return n
    return (1 - r**n) / (1 - r)

print("\nGeometric series verification:")
for r in [0.5, 2, 3]:
    for n in [5, 10]:
        calc = geometric_sum(r, n)
        direct = sum(r**i for i in range(n))
        print(f"r={r}, n={n}: formula={calc:.4f}, direct={direct:.4f}")


## Problem 10: Fibonacci
def fib_recursive(n):
    if n <= 1:
        return n
    return fib_recursive(n-1) + fib_recursive(n-2)

def fib_iterative(n):
    if n <= 1:
        return n
    a, b = 0, 1
    for _ in range(2, n+1):
        a, b = b, a + b
    return b

print("\nFibonacci numbers:")
for n in [5, 10, 20, 30]:
    print(f"f({n}) = {fib_iterative(n)}")
