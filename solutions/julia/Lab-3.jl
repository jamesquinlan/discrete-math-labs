# Discrete Mathematics Lab 3 - Solutions

# Reusable functions from previous labs
function is_prime_custom(n)
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

function factorial_custom(n)
    if n == 0
        return 1
    end
    result = 1
    for i in 2:n
        result *= i
    end
    return result
end


## Problem 1: Sum Square Difference
# Find difference: (1+2+...+100)^2 - (1^2+2^2+...+100^2)

n = 100
sum_then_square = sum(1:n)^2
square_then_sum = sum(i^2 for i in 1:n)
difference = sum_then_square - square_then_sum
println("Problem 1: Difference = $difference")

# Verify with n=5 example
n = 5
sum_then_square = sum(1:n)^2
square_then_sum = sum(i^2 for i in 1:n)
println("For n=$n: $(sum(1:n))^2 - $square_then_sum = $(sum_then_square - square_then_sum)")


## Problem 2: Primes 1 and 3 More Than Multiple of 4
# Count primes that are ≡ 1 (mod 4) and ≡ 3 (mod 4)

primes_mod1 = Int[]
primes_mod3 = Int[]

for p in 3:2:999  # Check odd numbers
    if is_prime_custom(p)
        if p % 4 == 1
            push!(primes_mod1, p)
        elseif p % 4 == 3
            push!(primes_mod3, p)
        end
    end
end

println("\nProblem 2:")
println("Primes ≡ 1 (mod 4): $(length(primes_mod1)) primes")
println("First few: $(primes_mod1[1:10])")
println("Primes ≡ 3 (mod 4): $(length(primes_mod3)) primes")
println("First few: $(primes_mod3[1:10])")


## Problem 3: Next Prime and Previous Prime Functions
# Find the next/previous prime after/before a given integer

function nextprime_custom(n)
    """Find the next prime after n"""
    candidate = n % 2 == 0 ? n + 1 : n + 2
    while !is_prime_custom(candidate)
        candidate += 2
    end
    return candidate
end

function prevprime_custom(n)
    """Find the previous prime before n"""
    if n <= 2
        return nothing
    end
    candidate = n % 2 == 0 ? n - 1 : n - 2
    while candidate > 1 && !is_prime_custom(candidate)
        candidate -= 2
    end
    return candidate > 1 ? candidate : nothing
end

# Test
println("\nProblem 3:")
println("nextprime(17) = $(nextprime_custom(17))")
println("prevprime(17) = $(prevprime_custom(17))")
println("nextprime(20) = $(nextprime_custom(20))")
println("prevprime(20) = $(prevprime_custom(20))")


## Problem 4: Smallest Prime Factor of n! + 1
# For n <= 20, find smallest prime factor of n! + 1

println("\nProblem 4: Smallest prime factor of n! + 1")
for n in 1:20
    value = factorial_custom(n) + 1
    # Find smallest prime factor
    found = false
    for p in 2:isqrt(value)
        if is_prime_custom(p) && value % p == 0
            println("n=$n: $n! + 1 = $value, smallest prime factor = $p")
            found = true
            break
        end
    end
    if !found
        println("n=$n: $n! + 1 = $value is prime")
    end
end


## Problem 5: Twin Prime Conjecture
# Find all twin primes less than 10,000

twin_primes = []
for p in 3:9998
    if is_prime_custom(p) && is_prime_custom(p + 2)
        push!(twin_primes, (p, p + 2))
    end
end

println("\nProblem 5: Twin Primes < 10,000")
println("Count: $(length(twin_primes))")
println("First 10: $(twin_primes[1:10])")
println("Last 10: $(twin_primes[end-9:end])")


## Problem 6: Goldbach's Conjecture
# Verify every even number > 2 is sum of two primes, for n <= 10000

# Generate set of primes up to 10000
primes = [p for p in 2:10000 if is_prime_custom(p)]
prime_set = Set(primes)

println("\nProblem 6: Goldbach's Conjecture verification")
verified_count = 0
counterexample = nothing

for n in 4:2:10000  # Even numbers from 4 to 10000
    found = false
    for p in primes
        if p > n
            break
        end
        if (n - p) in prime_set
            verified_count += 1
            found = true
            break
        end
    end
    if !found
        counterexample = n
        break
    end
end

if counterexample !== nothing
    println("Counterexample found: $counterexample")
else
    println("Verified for all even numbers 4 to 10000: $verified_count numbers")
end


## Problem 7: Modular Inverse
# Find modular inverse using extended Euclidean algorithm

function extended_gcd(a, b)
    """Extended Euclidean Algorithm"""
    if a == 0
        return b, 0, 1
    end
    gcd_val, x1, y1 = extended_gcd(b % a, a)
    x = y1 - (b ÷ a) * x1
    y = x1
    return gcd_val, x, y
end

function modinv(a, m)
    """Find modular inverse of a mod m"""
    gcd_val, x, _ = extended_gcd(a, m)
    if gcd_val != 1
        return nothing  # Modular inverse doesn't exist
    end
    return (x % m + m) % m
end

# Test cases
println("\nProblem 7: Modular Inverse")
test_cases = [(3, 26), (7, 33), (10, 17), (4, 10)]
for (a, m) in test_cases
    inv = modinv(a, m)
    if inv !== nothing
        println("modinv($a, $m) = $inv, verification: $a*$inv mod $m = $((a*inv) % m)")
    else
        println("modinv($a, $m) = nothing (no inverse exists)")
    end
end


## Problem 8: Collatz Conjecture
# Generate Collatz sequence for a given n

function collatz_sequence(n)
    """Return the Collatz sequence starting from n"""
    sequence = [n]
    while n > 1
        if n % 2 == 0
            n = n ÷ 2
        else
            n = 3n + 1
        end
        push!(sequence, n)
    end
    return sequence
end

# Test
println("\nProblem 8: Collatz Conjecture")
for start in [10, 27, 19]
    seq = collatz_sequence(start)
    preview = length(seq) > 20 ? string(seq[1:20], "...") : string(seq)
    println("n=$start: length=$(length(seq)), sequence=$preview")
end


## Problem 9: Digital Sum
# Calculate digital sum by repeatedly summing digits

function digital_sum(n)
    """Calculate digital sum of n"""
    while n >= 10
        n = sum(parse(Int, d) for d in string(n))
    end
    return n
end

# Test
println("\nProblem 9: Digital Sum")
test_values = [591, 519, 18974, factorial_custom(100)]
for val in test_values
    ds = digital_sum(val)
    display_val = val < 1000000 ? string(val) : "100!"
    println("digital_sum($display_val) = $ds")
end


println("\n" * "="^60)
println("Lab 3 Complete - All 9 Problems Solved")
println("="^60)
