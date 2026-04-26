# Discrete Mathematics Lab 3 - Solutions

# Reusable functions from previous labs
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

def factorial(n):
    """Calculate factorial"""
    if n == 0:
        return 1
    result = 1
    for i in range(2, n + 1):
        result *= i
    return result


## Problem 1: Sum Square Difference
# Find difference: (1+2+...+100)^2 - (1^2+2^2+...+100^2)

n = 100
sum_then_square = sum(range(1, n+1))**2
square_then_sum = sum(i**2 for i in range(1, n+1))
difference = sum_then_square - square_then_sum
print(f"Problem 1: Difference = {difference}")

# Verify with n=5 example
n = 5
sum_then_square = sum(range(1, n+1))**2
square_then_sum = sum(i**2 for i in range(1, n+1))
print(f"For n={n}: ({sum(range(1,n+1))})^2 - {square_then_sum} = {sum_then_square - square_then_sum}")


## Problem 2: Primes 1 and 3 More Than Multiple of 4
# Count primes that are ≡ 1 (mod 4) and ≡ 3 (mod 4)

primes_mod1 = []
primes_mod3 = []

for p in range(3, 1000, 2):  # Check odd numbers
    if is_prime(p):
        if p % 4 == 1:
            primes_mod1.append(p)
        elif p % 4 == 3:
            primes_mod3.append(p)

print(f"\nProblem 2:")
print(f"Primes ≡ 1 (mod 4): {len(primes_mod1)} primes")
print(f"First few: {primes_mod1[:10]}")
print(f"Primes ≡ 3 (mod 4): {len(primes_mod3)} primes")
print(f"First few: {primes_mod3[:10]}")


## Problem 3: Next Prime and Previous Prime Functions
# Find the next/previous prime after/before a given integer

def nextprime(n):
    """Find the next prime after n"""
    candidate = n + 1 if n % 2 == 0 else n + 2
    while not is_prime(candidate):
        candidate += 2
    return candidate

def prevprime(n):
    """Find the previous prime before n"""
    if n <= 2:
        return None
    candidate = n - 1 if n % 2 == 0 else n - 2
    while candidate > 1 and not is_prime(candidate):
        candidate -= 2
    return candidate if candidate > 1 else None

# Test
print(f"\nProblem 3:")
print(f"nextprime(17) = {nextprime(17)}")
print(f"prevprime(17) = {prevprime(17)}")
print(f"nextprime(20) = {nextprime(20)}")
print(f"prevprime(20) = {prevprime(20)}")


## Problem 4: Smallest Prime Factor of n! + 1
# For n <= 20, find smallest prime factor of n! + 1

print(f"\nProblem 4: Smallest prime factor of n! + 1")
for n in range(1, 21):
    value = factorial(n) + 1
    # Find smallest prime factor
    for p in range(2, int(value**0.5) + 1):
        if is_prime(p) and value % p == 0:
            print(f"n={n}: {n}! + 1 = {value}, smallest prime factor = {p}")
            break
    else:
        # value is prime itself
        print(f"n={n}: {n}! + 1 = {value} is prime")


## Problem 5: Twin Prime Conjecture
# Find all twin primes less than 10,000

def is_twin_prime(p, q):
    """Check if p and q are twin primes"""
    return is_prime(p) and is_prime(q) and abs(p - q) == 2

twin_primes = []
for p in range(3, 10000):
    if is_prime(p) and is_prime(p + 2):
        twin_primes.append((p, p + 2))

print(f"\nProblem 5: Twin Primes < 10,000")
print(f"Count: {len(twin_primes)}")
print(f"First 10: {twin_primes[:10]}")
print(f"Last 10: {twin_primes[-10:]}")


## Problem 6: Goldbach's Conjecture
# Verify every even number > 2 is sum of two primes, for n <= 10000

# Generate list of primes up to 10000
primes = [p for p in range(2, 10001) if is_prime(p)]
prime_set = set(primes)

print(f"\nProblem 6: Goldbach's Conjecture verification")
verified_count = 0
counterexample = None

for n in range(4, 10001, 2):  # Even numbers from 4 to 10000
    found = False
    for p in primes:
        if p > n:
            break
        if (n - p) in prime_set:
            verified_count += 1
            found = True
            break
    if not found:
        counterexample = n
        break

if counterexample:
    print(f"Counterexample found: {counterexample}")
else:
    print(f"Verified for all even numbers 4 to 10000: {verified_count} numbers")


## Problem 7: Modular Inverse
# Find modular inverse using extended Euclidean algorithm

def extended_gcd(a, b):
    """Extended Euclidean Algorithm"""
    if a == 0:
        return b, 0, 1
    gcd, x1, y1 = extended_gcd(b % a, a)
    x = y1 - (b // a) * x1
    y = x1
    return gcd, x, y

def modinv(a, m):
    """Find modular inverse of a mod m"""
    gcd, x, _ = extended_gcd(a, m)
    if gcd != 1:
        return None  # Modular inverse doesn't exist
    return (x % m + m) % m

# Test cases
print(f"\nProblem 7: Modular Inverse")
test_cases = [(3, 26), (7, 33), (10, 17), (4, 10)]
for a, m in test_cases:
    inv = modinv(a, m)
    if inv:
        print(f"modinv({a}, {m}) = {inv}, verification: {a}*{inv} mod {m} = {(a*inv) % m}")
    else:
        print(f"modinv({a}, {m}) = None (no inverse exists)")


## Problem 8: Collatz Conjecture
# Generate Collatz sequence for a given n

def collatz_sequence(n):
    """Return the Collatz sequence starting from n"""
    sequence = [n]
    while n > 1:
        if n % 2 == 0:
            n = n // 2
        else:
            n = 3 * n + 1
        sequence.append(n)
    return sequence

# Test
print(f"\nProblem 8: Collatz Conjecture")
for start in [10, 27, 19]:
    seq = collatz_sequence(start)
    print(f"n={start}: length={len(seq)}, sequence={seq[:20]}{'...' if len(seq) > 20 else ''}")


## Problem 9: Digital Sum
# Calculate digital sum by repeatedly summing digits

def digital_sum(n):
    """Calculate digital sum of n"""
    while n >= 10:
        n = sum(int(digit) for digit in str(n))
    return n

# Test
print(f"\nProblem 9: Digital Sum")
test_values = [591, 519, 18974, factorial(100)]
for val in test_values:
    ds = digital_sum(val)
    print(f"digital_sum({val if val < 1000000 else '100!'}) = {ds}")


## Problem 10: 2D Random Walk
# Simulate random walk on grid until boundary

import random

def random_walk_2d(grid_size, num_simulations=1000):
    """Simulate 2D random walk and return average steps"""
    total_steps = 0
    
    for _ in range(num_simulations):
        x, y = 0, 0
        steps = 0
        
        while abs(x) < grid_size and abs(y) < grid_size:
            direction = random.randint(1, 4)
            if direction == 1:    # North
                y += 1
            elif direction == 2:  # South
                y -= 1
            elif direction == 3:  # East
                x += 1
            else:                 # West
                x -= 1
            steps += 1
        
        total_steps += steps
    
    return total_steps / num_simulations

# Test
print(f"\nProblem 10: 2D Random Walk")
for size in [10, 20]:
    avg_steps = random_walk_2d(size, 1000)
    print(f"Average walk length on {size}×{size} grid: {avg_steps:.2f}")
