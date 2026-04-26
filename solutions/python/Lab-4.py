# Discrete Mathematics Lab 4 - Solutions

# Helper functions
def is_prime(n):
    if n < 2: return False
    if n == 2: return True
    if n % 2 == 0: return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0: return False
    return True

def primes_up_to(n):
    return [p for p in range(2, n+1) if is_prime(p)]

def factorial(n):
    result = 1
    for i in range(2, n+1):
        result *= i
    return result


## Problem 1: Quotient and Remainder
cases = [(54, 4), (37, 3), (54, 70)]
for n, d in cases:
    q, r = divmod(n, d)
    print(f"n={n}, d={d}: q={q}, r={r}, check: {d}*{q}+{r}={d*q+r}")


## Problem 2: Prime Factorization
def prime_factorization(n):
    factors = []
    exponents = []
    for p in primes_up_to(n):
        if n % p == 0:
            factors.append(p)
            exp = 0
            while n % p == 0:
                exp += 1
                n //= p
            exponents.append(exp)
    return factors, exponents

n = 60
p, e = prime_factorization(n)
print(f"\nPrime factorization of {n}:")
print(f"Primes: {p}, Exponents: {e}")
# Verify
product = 1
for i in range(len(p)):
    product *= p[i]**e[i]
print(f"Verification: {product} == {60}")


## Problem 3: Divisibility Function
def divides(a, b):
    return b % a == 0

# Test: Does a|bc imply a|b or a|c?
a, b, c = 6, 2, 3
print(f"\na={a}, b={b}, c={c}")
print(f"{a}|{b*c}: {divides(a, b*c)}")
print(f"{a}|{b} or {a}|{c}: {divides(a,b) or divides(a,c)}")


## Problem 4: Odd Integer Squares
# Test if n^2 has form 8m+1 for odd n
print("\nOdd squares mod 8:")
for n in range(1, 20, 2):
    print(f"{n}^2 mod 8 = {n**2 % 8}", end=", ")
print()


## Problem 5: Factorial Divisibility  
print("\nn! + k divisible by k?")
for k in [2, 3, 4, 5]:
    divisible = all((factorial(n) + k) % k == 0 for n in range(k, 20))
    print(f"k={k}: {divisible}")


## Problem 6: Summation Formula
def sum_frac_factorial(n):
    return sum(k/factorial(k+1) for k in range(1, n+1))

for n in [10, 50, 100]:
    print(f"Sum for n={n}: {sum_frac_factorial(n):.10f}")


## Problem 7: Sum of First n Integers
def sum_n(n):
    return sum(range(1, n+1))

def sum_a_to_n(a, n):
    return sum(range(a, n+1))

print(f"\nsum(1 to 10) = {sum_n(10)}, formula: {10*11//2}")
print(f"sum(7 to 10) = {sum_a_to_n(7, 10)}")


## Problem 8: Sum of Odd Integers
def sum_odd(n):
    return sum(range(1, 2*n, 2))

for n in [5, 10, 25]:
    s = sum_odd(n)
    print(f"Sum of first {n} odd integers: {s}, n^2={n**2}, Equal: {s==n**2}")


## Problem 9: Consecutive Composites
def is_composite(n):
    return n > 1 and not is_prime(n)

composites = [n for n in range(4, 200) if is_composite(n)]
print("\nSmallest consecutive composites:")
for length in range(1, 11):
    for i in range(len(composites) - length):
        if composites[i:i+length] == list(range(composites[i], composites[i]+length)):
            print(f"n={length}: {composites[i:i+length]}")
            break


## Problem 10: Linear Congruence
# Find n: 7n ≡ 3 (mod 17)
solutions = [n for n in range(1, 101) if (7*n) % 17 == 3]
print(f"\nSolutions to 7n ≡ 3 (mod 17): {solutions}")
