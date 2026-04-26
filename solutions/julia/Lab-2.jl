# Discrete Mathematics Lab 2 - Solutions

## Problem 1: Sum of Array
# Produce the sum of [5,1,4,9,3,2]

numbers = [5, 1, 4, 9, 3, 2]
total = sum(numbers)
println("Sum: $total")

# Alternative using loop
s = 0
for i in numbers
    s += i
end
println("Sum (loop): $s")


## Problem 2: Product of Array
# Yield the product of [5,1,4,9,3,2]

numbers = [5, 1, 4, 9, 3, 2]
product = 1
for i in numbers
    product *= i
end
println("Product: $product")

# Using prod() function
println("Product (built-in): $(prod(numbers))")


## Problem 3: Factorial Function
# Return factorial of a nonnegative integer

function factorial_custom(n)
    """Iterative factorial"""
    if n == 0
        return 1
    end
    result = 1
    for i in 2:n
        result *= i
    end
    return result
end

# Recursive version
function factorial_rec(n)
    """Recursive factorial"""
    if n == 0 || n == 1
        return 1
    end
    return n * factorial_rec(n - 1)
end

# Test
println("5! = $(factorial_custom(5))")
println("0! = $(factorial_custom(0))")


## Problem 4: Binomial Coefficient
# Return binomial coefficient C(n,k) = n! / (k!(n-k)!)

function binomial_custom(n, k)
    """Calculate binomial coefficient"""
    return factorial_custom(n) ÷ (factorial_custom(k) * factorial_custom(n - k))
end

# Test
println("C(5,2) = $(binomial_custom(5, 2))")
println("C(10,3) = $(binomial_custom(10, 3))")


## Problem 5: Selection Sort Analysis
# Given A = [2,7,1,3,9,5,6,8,4], analyze the sorting code

A = [2, 7, 1, 3, 9, 5, 6, 8, 4]
println("Original: $A")

# Selection sort
n = length(A)
for i in 1:(n-1)
    for j in (i+1):n
        if A[i] > A[j]
            A[i], A[j] = A[j], A[i]
        end
    end
end

println("Sorted: $A")

# Count comparisons
A = [2, 7, 1, 3, 9, 5, 6, 8, 4]
count = 0
n = length(A)
for i in 1:(n-1)
    for j in (i+1):n
        count += 1
        if A[i] > A[j]
            A[i], A[j] = A[j], A[i]
        end
    end
end

println("Number of comparisons: $count")
println("Theoretical: n(n-1)/2 = $(n*(n-1)÷2)")


## Problem 6: Sum of Squares of Odd Integers
# Find sum of squares of odd integers from 1 to 20

total = 0
for i in 1:2:19  # Odd numbers 1, 3, 5, ..., 19
    total += i^2
end
println("Sum of squares of odd integers 1-20: $total")

# Alternative using comprehension
total = sum(i^2 for i in 1:2:19)
println("Sum (comprehension): $total")


## Problem 7: Stars and Bars - Solutions to x1 + x2 + x3 = 10
# Verify 66 solutions when xi >= 0 and 36 when xi > 0

# Count solutions with xi >= 0
count_nonneg = 0
solutions_nonneg = []
for x1 in 0:10
    for x2 in 0:10
        for x3 in 0:10
            if x1 + x2 + x3 == 10
                push!(solutions_nonneg, (x1, x2, x3))
                count_nonneg += 1
            end
        end
    end
end

println("\nSolutions with xi >= 0: $count_nonneg")
println("Formula: C(10+3-1, 3-1) = C(12,2) = $(binomial_custom(12, 2))")

# Count solutions with xi > 0
count_pos = 0
solutions_pos = []
for x1 in 1:10
    for x2 in 1:10
        for x3 in 1:10
            if x1 + x2 + x3 == 10
                push!(solutions_pos, (x1, x2, x3))
                count_pos += 1
            end
        end
    end
end

println("Solutions with xi > 0: $count_pos")
println("Formula: C(10-1, 3-1) = C(9,2) = $(binomial_custom(9, 2))")


## Problem 8: GCF and Relatively Prime
# Check if two numbers are relatively prime

function gcf(x, y)
    """Greatest common factor using Euclidean algorithm"""
    if y > x
        x, y = y, x
    end
    if y == 0
        return x
    else
        return gcf(y, x % y)
    end
end

function is_relatively_prime(a, b)
    """Check if two numbers are relatively prime"""
    return gcf(a, b) == 1
end

# Test
println("\ngcf(12, 18) = $(gcf(12, 18))")
println("gcf(15, 28) = $(gcf(15, 28))")
println("Are 15 and 28 relatively prime? $(is_relatively_prime(15, 28))")
println("Are 14 and 25 relatively prime? $(is_relatively_prime(14, 25))")


## Problem 9: Fermat's Little Theorem (Challenge)
# Verify: For prime p and a not multiple of p, a^(p-1) ≡ 1 (mod p)

function is_prime_custom(n)
    """Check if n is prime"""
    if n < 2
        return false
    end
    if n == 2
        return true
    end
    if n % 2 == 0
        return false
    end
    for i in 3:2:isqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

println("\nVerifying Fermat's Little Theorem:")
# Test with several primes
test_primes = [5, 7, 11, 13, 17, 19, 23]
for p in test_primes
    # Test with a = 2 (not a multiple of p)
    a = 2
    result = powermod(a, p-1, p)  # Efficient modular exponentiation
    println("p=$p, a=$a: $a^$(p-1) mod $p = $result")
end

# Test with various a values for a specific prime
p = 13
println("\nFor prime p=$p, testing various values of a:")
for a in 1:(p-1)
    result = powermod(a, p-1, p)
    println("a=$a: $a^$(p-1) mod $p = $result")
end


## Problem 10: RSA Key Generation (Challenge)
# Choose primes p, q; find e and d for RSA

# Choose two "large" primes
p = 61
q = 53
println("\nChosen primes: p=$p, q=$q")

n = p * q
phi_n = (p - 1) * (q - 1)
println("n = p*q = $n")
println("φ(n) = (p-1)(q-1) = $phi_n")

# Choose e relatively prime to φ(n)
e = 17
while !is_relatively_prime(e, phi_n)
    e += 2
end
println("Chosen e = $e (relatively prime to φ(n))")

# Find d such that e*d ≡ 1 (mod φ(n))
for d in 1:(phi_n-1)
    if (e * d) % phi_n == 1
        println("Found d = $d")
        println("Verification: $e*$d mod $phi_n = $((e*d) % phi_n)")
        
        # Test encryption/decryption
        message = 42
        encrypted = powermod(message, e, n)
        decrypted = powermod(encrypted, d, n)
        println("\nRSA Test:")
        println("Original message: $message")
        println("Encrypted: $encrypted")
        println("Decrypted: $decrypted")
        break
    end
end
