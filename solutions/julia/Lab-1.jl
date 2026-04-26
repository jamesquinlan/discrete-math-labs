# Discrete Mathematics Lab 1 - Solutions

## Problem 1: Triangle Area
# Calculate the area of a triangle with base 6 and height 4

base = 6
height = 4
area = 0.5 * base * height
println("The area of the triangle is: $area")


## Problem 2: Even or Odd Test
# Print "Even" or "Odd" for given numbers

function check_even_odd(x)
    if iseven(x)  # Julia has built-in iseven()
        println("$x is Even")
    else
        println("$x is Odd")
    end
end

# Test with x = 7
check_even_odd(7)

# Test with x = 12
check_even_odd(12)


## Problem 3: Every Third Number
# Print every third number from 1 to 20

for i in 1:3:19  # start:step:stop
    print(i, ", ")
end
println()  # Newline


## Problem 4: Dice Rolling Program
# Roll two dice and print their sum

using Random

die1 = rand(1:6)
die2 = rand(1:6)
dice_sum = die1 + die2
println("Die 1: $die1, Die 2: $die2, Sum: $dice_sum")


## Problem 5: Factorial Function
# Return factorial of a number

function factorial_custom(n)
    """Calculate factorial using iteration"""
    if n == 0 || n == 1
        return 1
    end
    result = 1
    for i in 1:n
        result *= i
    end
    return result
end

# Alternative recursive version
function factorial_recursive(n)
    """Calculate factorial using recursion"""
    if n == 0 || n == 1
        return 1
    end
    return n * factorial_recursive(n - 1)
end

# Test
println("Factorial of 4: $(factorial_custom(4))")
println("Factorial of 0: $(factorial_custom(0))")
println("Factorial of 5: $(factorial_custom(5))")


## Problem 6: Prime Number Test
# Determine if a positive integer is prime

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
    # Check odd divisors up to sqrt(n)
    for i in 3:2:isqrt(n)
        if n % i == 0
            return false
        end
    end
    return true
end

# Test
println("Is 7 prime? $(is_prime_custom(7))")
println("Is 10 prime? $(is_prime_custom(10))")
println("Is 2 prime? $(is_prime_custom(2))")
println("Is 1 prime? $(is_prime_custom(1))")


## Problem 7: List All Primes
# List all primes less than or equal to n

function list_primes(n)
    """Return array of all primes <= n"""
    primes = Int[]
    for i in 2:n
        if is_prime_custom(i)
            push!(primes, i)
        end
    end
    return primes
end

# Test
println("Primes up to 10: $(list_primes(10))")
println("Primes up to 20: $(list_primes(20))")


## Problem 8: Mersenne Numbers
# Check if 2^p - 1 is prime for primes p <= 100

primes_up_to_100 = list_primes(100)

println("\nChecking Mersenne numbers (2^p - 1) for primality:")
mersenne_primes = Int[]
for p in primes_up_to_100
    mersenne_candidate = (2^p) - 1
    if is_prime_custom(mersenne_candidate)
        push!(mersenne_primes, p)
        println("2^$p - 1 = $mersenne_candidate is prime (Mersenne prime)")
    end
end

println("\nMersenne primes found for p in: $mersenne_primes")


## Problem 9: Polynomial Prime Generator (Challenge)
# Show n^2 + n + 41 is prime for 0 <= n <= 39, but not for n = 40

println("\nChecking n^2 + n + 41 for primality (0 <= n <= 39):")
all_prime = true
for n in 0:39
    value = n^2 + n + 41
    if !is_prime_custom(value)
        println("n = $n: $value is NOT prime")
        global all_prime = false
        break
    end
end

if all_prime
    println("n^2 + n + 41 is prime for all integers n with 0 <= n <= 39.")
end

# Check n = 40
println("\nChecking n^2 + n + 41 for primality (n = 40):")
n = 40
value_at_40 = n^2 + n + 41
println("n = $n: $value_at_40 = $(40^2 + 40 + 41) = $(1600 + 40 + 41) = 1681")
if is_prime_custom(value_at_40)
    println("$value_at_40 IS prime")
else
    println("$value_at_40 is NOT prime. $value_at_40 = 41 × 41")
end

# Answer to theoretical question
println("\nRegarding a polynomial that always produces prime values:")
println("No, it has been proven that no non-constant polynomial exists")
println("that generates only primes for all positive integers n.")


## Problem 10: Pseudoprimes to Base 2 (Challenge)
# Find composite numbers n such that 2^(n-1) ≡ 1 (mod n), n <= 10000

function modular_power(base, exp, modulus)
    """Calculate (base^exp) % modulus efficiently"""
    result = 1
    base %= modulus
    while exp > 0
        if exp % 2 == 1
            result = (result * base) % modulus
        end
        base = (base * base) % modulus
        exp ÷= 2
    end
    return result
end

pseudoprimes_base_2 = Int[]
println("\nFinding pseudoprimes to base 2 up to 10000:")
for n in 2:10000
    if !is_prime_custom(n)  # Check only composite numbers
        # Check if 2^(n-1) ≡ 1 (mod n)
        if modular_power(2, n - 1, n) == 1
            push!(pseudoprimes_base_2, n)
        end
    end
end

println("Pseudoprimes to base 2 up to 10000:")
println(pseudoprimes_base_2)
println("Total count: $(length(pseudoprimes_base_2))")
