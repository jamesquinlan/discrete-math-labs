# Discrete Mathematics Lab 2 - Solutions

## Problem 1: Sum of List
# Produce the sum of [5,1,4,9,3,2]

numbers = [5, 1, 4, 9, 3, 2]
total = sum(numbers)
print(f"Sum: {total}")

# Alternative using a loop
s = 0
for i in numbers:
    s += i
print(f"Sum (loop): {s}")


## Problem 2: Product of List
# Yield the product of [5,1,4,9,3,2]

numbers = [5, 1, 4, 9, 3, 2]
product = 1
for i in numbers:
    product *= i
print(f"Product: {product}")


## Problem 3: Factorial Function
# Return factorial of a nonnegative integer

def factorial(n):
    """Iterative factorial"""
    if n == 0:
        return 1
    result = 1
    for i in range(2, n + 1):
        result *= i
    return result

# Recursive version
def factorial_rec(n):
    """Recursive factorial"""
    if n == 0 or n == 1:
        return 1
    return n * factorial_rec(n - 1)

# Test
print(f"5! = {factorial(5)}")
print(f"0! = {factorial(0)}")


## Problem 4: Binomial Coefficient
# Return binomial coefficient C(n,k) = n! / (k!(n-k)!)

def binomial(n, k):
    """Calculate binomial coefficient"""
    return factorial(n) // (factorial(k) * factorial(n - k))

# Test
print(f"C(5,2) = {binomial(5, 2)}")
print(f"C(10,3) = {binomial(10, 3)}")


## Problem 5: Selection Sort Analysis
# Given A = [2,7,1,3,9,5,6,8,4], analyze the sorting code

A = [2, 7, 1, 3, 9, 5, 6, 8, 4]
print(f"Original: {A}")

# Selection sort
n = len(A)
for i in range(0, n-1):
    for j in range(i+1, n):
        if A[i] > A[j]:
            A[i], A[j] = A[j], A[i]

print(f"Sorted: {A}")

# Count comparisons
A = [2, 7, 1, 3, 9, 5, 6, 8, 4]
count = 0
n = len(A)
for i in range(0, n-1):
    for j in range(i+1, n):
        count += 1
        if A[i] > A[j]:
            A[i], A[j] = A[j], A[i]

print(f"Number of comparisons: {count}")
print(f"Theoretical: n(n-1)/2 = {n*(n-1)//2}")


## Problem 6: Sum of Squares of Odd Integers
# Find sum of squares of odd integers from 1 to 20

total = 0
for i in range(1, 21, 2):  # Odd numbers 1, 3, 5, ..., 19
    total += i**2
print(f"Sum of squares of odd integers 1-20: {total}")

# Alternative using list comprehension
total = sum(i**2 for i in range(1, 21, 2))
print(f"Sum (comprehension): {total}")


## Problem 7: Stars and Bars - Solutions to x1 + x2 + x3 = 10
# Verify 66 solutions when xi >= 0 and 36 when xi > 0

# Count solutions with xi >= 0
count_nonneg = 0
solutions_nonneg = []
for x1 in range(0, 11):
    for x2 in range(0, 11):
        for x3 in range(0, 11):
            if x1 + x2 + x3 == 10:
                solutions_nonneg.append((x1, x2, x3))
                count_nonneg += 1

print(f"\nSolutions with xi >= 0: {count_nonneg}")
print(f"Formula: C(10+3-1, 3-1) = C(12,2) = {binomial(12, 2)}")

# Count solutions with xi > 0
count_pos = 0
solutions_pos = []
for x1 in range(1, 11):
    for x2 in range(1, 11):
        for x3 in range(1, 11):
            if x1 + x2 + x3 == 10:
                solutions_pos.append((x1, x2, x3))
                count_pos += 1

print(f"Solutions with xi > 0: {count_pos}")
print(f"Formula: C(10-1, 3-1) = C(9,2) = {binomial(9, 2)}")


## Problem 8: GCF and Relatively Prime
# Check if two numbers are relatively prime

def gcf(x, y):
    """Greatest common factor using Euclidean algorithm"""
    if y > x:
        x, y = y, x
    if y == 0:
        return x
    else:
        return gcf(y, x % y)

def is_relatively_prime(a, b):
    """Check if two numbers are relatively prime"""
    return gcf(a, b) == 1

# Test
print(f"\ngcf(12, 18) = {gcf(12, 18)}")
print(f"gcf(15, 28) = {gcf(15, 28)}")
print(f"Are 15 and 28 relatively prime? {is_relatively_prime(15, 28)}")
print(f"Are 14 and 25 relatively prime? {is_relatively_prime(14, 25)}")


## Problem 9: Fermat's Little Theorem (Challenge)
# Verify: For prime p and a not multiple of p, a^(p-1) ≡ 1 (mod p)

def is_prime(n):
    """Check if n is prime"""
    if n < 2:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False
    return True

print("\nVerifying Fermat's Little Theorem:")
# Test with several primes
test_primes = [5, 7, 11, 13, 17, 19, 23]
for p in test_primes:
    # Test with a = 2 (not a multiple of p)
    a = 2
    result = pow(a, p-1, p)  # Efficient modular exponentiation
    print(f"p={p}, a={a}: {a}^{p-1} mod {p} = {result}")

# Test with various a values for a specific prime
p = 13
print(f"\nFor prime p={p}, testing various values of a:")
for a in range(1, p):
    result = pow(a, p-1, p)
    print(f"a={a}: {a}^{p-1} mod {p} = {result}")


## Problem 10: RSA Key Generation (Challenge)
# Choose primes p, q; find e and d for RSA

import random

# Choose two "large" primes
p = 61
q = 53
print(f"\nChosen primes: p={p}, q={q}")

n = p * q
phi_n = (p - 1) * (q - 1)
print(f"n = p*q = {n}")
print(f"φ(n) = (p-1)(q-1) = {phi_n}")

# Choose e relatively prime to φ(n)
e = 17
while not is_relatively_prime(e, phi_n):
    e += 2
print(f"Chosen e = {e} (relatively prime to φ(n))")

# Find d such that e*d ≡ 1 (mod φ(n))
for d in range(1, phi_n):
    if (e * d) % phi_n == 1:
        print(f"Found d = {d}")
        print(f"Verification: {e}*{d} mod {phi_n} = {(e*d) % phi_n}")
        break

# Test encryption/decryption
message = 42
encrypted = pow(message, e, n)
decrypted = pow(encrypted, d, n)
print(f"\nRSA Test:")
print(f"Original message: {message}")
print(f"Encrypted: {encrypted}")
print(f"Decrypted: {decrypted}")
