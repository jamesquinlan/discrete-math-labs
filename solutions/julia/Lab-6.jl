# Discrete Mathematics Lab 6 - Solutions

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


## Problem 1: Ratio of Sums
function ratio_sums(n)
    num = sum(1:2:(2n-1))  # 1+3+...+(2n-1)
    den = sum((2n+1):2:(4n-1))  # (2n+1)+(2n+3)+...+(4n-1)
    return den != 0 ? num / den : 0.0
end

println("Problem 1: Ratio for various n")
for n in [5, 10, 50, 100]
    println("n=$n: ratio = $(round(ratio_sums(n), digits=6))")
end


## Problem 2: Verify 2^n < (n+1)!
println("\nProblem 2: Verify 2^n < (n+1)!")
for n in 1:14
    lhs = 2^n
    rhs = factorial_custom(n+1)
    println("n=$n: 2^$n=$lhs < $rhs? $(lhs < rhs)")
end


## Problem 3: Recursive Sequence a_n = 5*a_{n-1}
function recursive_seq(n)
    a = [1]  # a[1] = 1
    for i in 2:n
        push!(a, 5 * a[i-1])
    end
    return a
end

println("\nProblem 3: First 10 terms of a_n = 5*a_{n-1}")
println(recursive_seq(10))


## Problem 4: \$3 and \$5 Bills
println("\nProblem 4: Amounts >= \$8 using \$3 and \$5 bills")
for amount in 8:30
    found = false
    for x in 0:(amount÷3)
        for y in 0:(amount÷5)
            if 3x + 5y == amount
                println("\$$amount = $x(\$3) + $y(\$5)")
                found = true
                break
            end
        end
        if found break end
    end
end


## Problem 5: Divisibility by 3
println("\nProblem 5: 2^(2n) - 1 divisible by 3")
for n in 0:9
    value = 2^(2n) - 1
    println("n=$n: $value mod 3 = $(value % 3)")
end


## Problem 6: Sum Computation
n = 100
s = sum(k/(k+1) for k in 1:n)
s += n * (n+1)/(n+2)
println("\nProblem 6: Sum for n=$n: $(round(s, digits=6))")


## Problem 7: Binomial Divisibility
function is_prime_custom(n)
    if n < 2 return false end
    if n == 2 return true end
    if n % 2 == 0 return false end
    for i in 3:2:isqrt(n)
        if n % i == 0 return false end
    end
    return true
end

println("\nProblem 7: C(p,k) divisible by p")
for p in [5, 7, 11]
    if is_prime_custom(p)
        println("p=$p:")
        for k in 1:(p-1)
            b = binomial_custom(p, k)
            println("  C($p,$k)=$b, divisible by $p? $(b % p == 0)")
        end
    end
end


## Problem 8: Sum Formula Verification
println("\nProblem 8: Verify sum formula")
for n in [5, 10]
    for x in [0.5, 2]
        if x != 1
            lhs = sum(k * x^k for k in 1:n)
            rhs = (n*x^(n+2) - (n+1)*x^(n+1) + x) / (1-x)^2
            println("n=$n, x=$x: LHS=$(round(lhs, digits=4)), RHS=$(round(rhs, digits=4)), Equal: $(abs(lhs-rhs)<0.0001)")
        end
    end
end


## Problem 9: Inequality Verification
println("\nProblem 9: Verify sqrt(n) < sum(1/sqrt(k))")
for n in [5, 10, 50, 100]
    lhs = sqrt(n)
    rhs = sum(1/sqrt(k) for k in 1:n)
    println("n=$n: sqrt($n)=$(round(lhs, digits=4)) < $(round(rhs, digits=4))? $(lhs < rhs)")
end


## Problem 10: n^3 - n Divisibility
println("\nProblem 10: n^3 - n divisible by 6")
for n in 0:9
    value = n^3 - n
    println("n=$n: $value mod 6 = $(value % 6)")
end
