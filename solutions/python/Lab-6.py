# Discrete Mathematics Lab 6 - Solutions

import math

def factorial(n):
    result = 1
    for i in range(2, n+1):
        result *= i
    return result

def binomial(n, k):
    return factorial(n) // (factorial(k) * factorial(n-k))


## Problem 1: Ratio of Sums
def ratio_sums(n):
    num = sum(range(1, 2*n, 2))  # 1+3+...+(2n-1)
    den = sum(range(2*n+1, 4*n, 2))  # (2n+1)+(2n+3)+...+(4n-1)
    return num / den if den != 0 else 0

print("Problem 1: Ratio for various n")
for n in [5, 10, 50, 100]:
    print(f"n={n}: ratio = {ratio_sums(n):.6f}")


## Problem 2: Verify 2^n < (n+1)!
print("\nProblem 2: Verify 2^n < (n+1)!")
for n in range(1, 15):
    lhs = 2**n
    rhs = factorial(n+1)
    print(f"n={n}: 2^{n}={lhs} < {rhs}? {lhs < rhs}")


## Problem 3: Recursive Sequence a_n = 5*a_{n-1}
def recursive_seq(n):
    a = [0, 1]  # a[0] unused, a[1] = 1
    for i in range(2, n+1):
        a.append(5 * a[i-1])
    return a[1:]

print("\nProblem 3: First 10 terms of a_n = 5*a_{n-1}")
print(recursive_seq(10))


## Problem 4: $3 and $5 Bills
print("\nProblem 4: Amounts >= $8 using $3 and $5 bills")
for amount in range(8, 31):
    found = False
    for x in range(amount//3 + 1):
        for y in range(amount//5 + 1):
            if 3*x + 5*y == amount:
                print(f"${amount} = {x}($3) + {y}($5)")
                found = True
                break
        if found:
            break


## Problem 5: Divisibility by 3
print("\nProblem 5: 2^(2n) - 1 divisible by 3")
for n in range(0, 10):
    value = 2**(2*n) - 1
    print(f"n={n}: {value} mod 3 = {value % 3}")


## Problem 6: Sum Computation
n = 100
s = sum(k/(k+1) for k in range(1, n+1))
s += n * (n+1)/(n+2)
print(f"\nProblem 6: Sum for n={n}: {s:.6f}")


## Problem 7: Binomial Divisibility
def is_prime(n):
    if n < 2: return False
    if n == 2: return True
    if n % 2 == 0: return False
    for i in range(3, int(n**0.5)+1, 2):
        if n % i == 0: return False
    return True

print("\nProblem 7: C(p,k) divisible by p")
for p in [5, 7, 11]:
    if is_prime(p):
        print(f"p={p}:")
        for k in range(1, p):
            b = binomial(p, k)
            print(f"  C({p},{k})={b}, divisible by {p}? {b % p == 0}")


## Problem 8: Sum Formula Verification
print("\nProblem 8: Verify sum formula")
for n in [5, 10]:
    for x in [0.5, 2]:
        if x != 1:
            lhs = sum(k * x**k for k in range(1, n+1))
            rhs = (n*x**(n+2) - (n+1)*x**(n+1) + x) / (1-x)**2
            print(f"n={n}, x={x}: LHS={lhs:.4f}, RHS={rhs:.4f}, Equal: {abs(lhs-rhs)<0.0001}")


## Problem 9: Inequality Verification
print("\nProblem 9: Verify sqrt(n) < sum(1/sqrt(k))")
for n in [5, 10, 50, 100]:
    lhs = math.sqrt(n)
    rhs = sum(1/math.sqrt(k) for k in range(1, n+1))
    print(f"n={n}: sqrt({n})={lhs:.4f} < {rhs:.4f}? {lhs < rhs}")


## Problem 10: n^3 - n Divisibility
print("\nProblem 10: n^3 - n divisible by 6")
for n in range(0, 10):
    value = n**3 - n
    print(f"n={n}: {value} mod 6 = {value % 6}")
