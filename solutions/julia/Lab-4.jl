# Discrete Mathematics Lab 4 - Solutions
# Helper functions
function is_prime_custom(n)
    if n < 2 return false end
    if n == 2 return true end
    if n % 2 == 0 return false end
    for i in 3:2:isqrt(n)
        if n % i == 0 return false end
    end
    return true
end

function primes_up_to(n)
    return [p for p in 2:n if is_prime_custom(p)]
end

function factorial_custom(n)
    result = 1
    for i in 2:n
        result *= i
    end
    return result
end

function binomial_custom(n, k)
    return factorial_custom(n) ÷ (factorial_custom(k) * factorial_custom(n - k))
end


## Problem 1: Quotient and Remainder
cases = [(54, 4), (37, 3), (54, 70)]
for (n, d) in cases
    q, r = divrem(n, d)
    println("n=$n, d=$d: q=$q, r=$r, check: $d*$q+$r=$(d*q+r)")
end


## Problem 2: Prime Factorization
function prime_factorization(n)
    factors = Int[]
    exponents = Int[]
    for p in primes_up_to(n)
        if n % p == 0
            push!(factors, p)
            exp = 0
            while n % p == 0
                exp += 1
                n ÷= p
            end
            push!(exponents, exp)
        end
    end
    return factors, exponents
end

n = 60
p, e = prime_factorization(n)
println("\nPrime factorization of $n:")
println("Primes: $p, Exponents: $e")
# Verify
product = 1
for i in 1:length(p)
    product *= p[i]^e[i]
end
println("Verification: $product == 60")


## Problem 3: Divisibility Function
function divides(a, b)
    return b % a == 0
end

# Test: Does a|bc imply a|b or a|c?
a, b, c = 6, 2, 3
println("\na=$a, b=$b, c=$c")
println("$a|$(b*c): $(divides(a, b*c))")
println("$a|$b or $a|$c: $(divides(a,b) || divides(a,c))")


## Problem 4: Odd Integer Squares
# Test if n^2 has form 8m+1 for odd n
println("\nOdd squares mod 8:")
for n in 1:2:19
    print("$(n)^2 mod 8 = $(n^2 % 8), ")
end
println()


## Problem 5: Factorial Divisibility  
println("\nn! + k divisible by k?")
for k in [2, 3, 4, 5]
    divisible = all((factorial_custom(n) + k) % k == 0 for n in k:19)
    println("k=$k: $divisible")
end


## Problem 6: Summation Formula
function sum_frac_factorial(n)
    return sum(k/factorial_custom(k+1) for k in 1:n)
end

for n in [10, 50, 100]
    println("Sum for n=$n: $(round(sum_frac_factorial(n), digits=10))")
end


## Problem 7: Sum of First n Integers
function sum_n(n)
    return sum(1:n)
end

function sum_a_to_n(a, n)
    return sum(a:n)
end

println("\nsum(1 to 10) = $(sum_n(10)), formula: $(10*11÷2)")
println("sum(7 to 10) = $(sum_a_to_n(7, 10))")


## Problem 8: Sum of Odd Integers
function sum_odd(n)
    return sum(1:2:(2n-1))
end

for n in [5, 10, 25]
    s = sum_odd(n)
    println("Sum of first $n odd integers: $s, n^2=$(n^2), Equal: $(s==n^2)")
end


## Problem 9: Consecutive Composites
function is_composite(n)
    return n > 1 && !is_prime_custom(n)
end

composites = [n for n in 4:199 if is_composite(n)]
println("\nSmallest consecutive composites:")
for length in 1:10
    for i in 1:(length(composites) - length)
        if composites[i:(i+length-1)] == collect(composites[i]:(composites[i]+length-1))
            println("n=$length: $(composites[i:(i+length-1)])")
            break
        end
    end
end


## Problem 10: Linear Congruence
# Find n: 7n ≡ 3 (mod 17)
solutions = [n for n in 1:100 if (7n) % 17 == 3]
println("\nSolutions to 7n ≡ 3 (mod 17): $solutions")
