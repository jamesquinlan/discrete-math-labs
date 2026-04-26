# Discrete Mathematics Lab 1 - Solutions

## Problem 1: Triangle Area
# Calculate the area of a triangle with base 6 and height 4

base = 6
height = 4
area = 0.5 * base * height
print(f"The area of the triangle is: {area}")


## Problem 2: Even or Odd Test
# Print "Even" or "Odd" for given numbers

def check_even_odd(x):
    if x % 2 == 0:
        print(f"{x} is Even")
    else:
        print(f"{x} is Odd")

# Test with x = 7
check_even_odd(7)

# Test with x = 12
check_even_odd(12)


## Problem 3: Every Third Number
# Print every third number from 1 to 20

for i in range(1, 20, 3):  # range(start, stop, step)
    print(i, end=", ")
print()  # Newline


## Problem 4: Dice Rolling Program
# Roll two dice and print their sum

import random

die1 = random.randint(1, 6)
die2 = random.randint(1, 6)
dice_sum = die1 + die2
print(f"Die 1: {die1}, Die 2: {die2}, Sum: {dice_sum}")


## Problem 5: Factorial Function
# Return factorial of a number

def factorial(n):
    """Calculate factorial using iteration"""
    if n == 0 or n == 1:
        return 1
    result = 1
    for i in range(1, n + 1):
        result *= i
    return result

# Alternative recursive version
def factorial_recursive(n):
    """Calculate factorial using recursion"""
    if n == 0 or n == 1:
        return 1
    return n * factorial_recursive(n - 1)

# Test
print(f"Factorial of 4: {factorial(4)}")
print(f"Factorial of 0: {factorial(0)}")
print(f"Factorial of 5: {factorial(5)}")


## Problem 6: Prime Number Test
# Determine if a positive integer is prime

def is_prime(n):
    """Check if n is prime"""
    if n < 2:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    # Check odd divisors up to sqrt(n)
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False
    return True

# Test
print(f"Is 7 prime? {is_prime(7)}")
print(f"Is 10 prime? {is_prime(10)}")
print(f"Is 2 prime? {is_prime(2)}")
print(f"Is 1 prime? {is_prime(1)}")


## Problem 7: List All Primes
# List all primes less than or equal to n

def list_primes(n):
    """Return list of all primes <= n"""
    primes = []
    for i in range(2, n + 1):
        if is_prime(i):
            primes.append(i)
    return primes

# Test
print(f"Primes up to 10: {list_primes(10)}")
print(f"Primes up to 20: {list_primes(20)}")


## Problem 8: Mersenne Numbers
# Check if 2^p - 1 is prime for primes p <= 100

primes_up_to_100 = list_primes(100)

print("Checking Mersenne numbers (2^p - 1) for primality:")
mersenne_primes = []
for p in primes_up_to_100:
    mersenne_candidate = (2**p) - 1
    if is_prime(mersenne_candidate):
        mersenne_primes.append(p)
        print(f"2^{p} - 1 = {mersenne_candidate} is prime (Mersenne prime)")

print(f"\nMersenne primes found for p in: {mersenne_primes}")


## Problem 9: Polynomial Prime Generator (Challenge)
# Show n^2 + n + 41 is prime for 0 <= n <= 39, but not for n = 40

print("\nChecking n^2 + n + 41 for primality (0 <= n <= 39):")
all_prime = True
for n in range(40):  # 0 to 39
    value = n**2 + n + 41
    if not is_prime(value):
        print(f"n = {n}: {value} is NOT prime")
        all_prime = False
        break

if all_prime:
    print("n^2 + n + 41 is prime for all integers n with 0 <= n <= 39.")

# Check n = 40
print("\nChecking n^2 + n + 41 for primality (n = 40):")
n = 40
value_at_40 = n**2 + n + 41
print(f"n = {n}: {value_at_40} = {40**2 + 40 + 41} = {1681}")
if is_prime(value_at_40):
    print(f"{value_at_40} IS prime")
else:
    print(f"{value_at_40} is NOT prime. {value_at_40} = 41 × 41")

# Answer to theoretical question
print("\nRegarding a polynomial that always produces prime values:")
print("No, it has been proven that no non-constant polynomial exists")
print("that generates only primes for all positive integers n.")


## Problem 10: Pseudoprimes to Base 2 (Challenge)
# Find composite numbers n such that 2^(n-1) ≡ 1 (mod n), n <= 10000

def modular_power(base, exp, mod):
    """Calculate (base^exp) % mod efficiently"""
    result = 1
    base %= mod
    while exp > 0:
        if exp % 2 == 1:
            result = (result * base) % mod
        base = (base * base) % mod
        exp //= 2
    return result

pseudoprimes_base_2 = []
print("\nFinding pseudoprimes to base 2 up to 10000:")
for n in range(2, 10001):
    if not is_prime(n):  # Check only composite numbers
        # Check if 2^(n-1) ≡ 1 (mod n)
        if modular_power(2, n - 1, n) == 1:
            pseudoprimes_base_2.append(n)

print(f"Pseudoprimes to base 2 up to 10000:")
print(pseudoprimes_base_2)
print(f"Total count: {len(pseudoprimes_base_2)}")
