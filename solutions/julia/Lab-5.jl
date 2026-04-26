# Discrete Mathematics Lab 5 - Solutions

function factorial_custom(n)
    result = 1
    for i in 2:n
        result *= i
    end
    return result
end


## Problem 1: Anonymous Function for Sequence
f = k -> 1/(k*(k+1))
println("First 10 terms:")
for k in 1:10
    println("f($k) = $(round(f(k), digits=6))")
end


## Problem 2: Sum of Sequence
function sum_sequence(func, m, n)
    return sum(func(k) for k in m:n)
end

result = sum_sequence(f, 1, 10)
println("\nSum of sequence: $(round(result, digits=6))")


## Problem 3: Product of Sequence
function prod_sequence(func, m, n)
    product = 1.0
    for k in m:n
        product *= func(k)
    end
    return product
end

result = prod_sequence(f, 1, 10)
println("Product of sequence: $(result)")


## Problem 4: Anonymous Function with Exponentiation
g = k -> 1 + (0.5)^k
println("\nFirst 5 terms of g(k) = 1 + (1/2)^k:")
for k in 0:4
    println("g($k) = $(g(k))")
end


## Problem 5: Binary Representation
function to_binary(n)
    if n == 0
        return "0"
    end
    binary = ""
    while n > 0
        binary = string(n % 2) * binary
        n ÷= 2
    end
    return binary
end

println("\nBinary representations:")
for n in [5, 16, 31, 64, 127]
    b = to_binary(n)
    println("$n = $b (length: $(length(b)) bits)")
end


## Problem 6: Verify Sum Formula
println("\nVerifying 1+2+...+n = n(n+1)/2:")
for n in [5, 10, 50, 100]
    lhs = sum(1:n)
    rhs = n*(n+1)÷2
    println("n=$n: $lhs == $rhs? $(lhs == rhs)")
end


## Problem 7: Sum of Odd Integers
function sum_odd(n)
    return sum(1:2:(2n-1))
end

println("\nVerifying 1+3+...+(2n-1) = n^2:")
for n in [3, 5, 10, 20]
    println("n=$n: sum=$(sum_odd(n)), n^2=$(n^2), Equal: $(sum_odd(n)==n^2)")
end


## Problem 8: Convolution
function convolve(a, b)
    return sum(a[i]*b[i] for i in 1:length(a))
end

a = [1,2,3,4,5]
b = [2,3,4,5,6]
println("\nConvolution of $a and $b: $(convolve(a,b))")

# Pattern for [1..n] and [2..n+1]
for n in [5, 10, 20]
    a = collect(1:n)
    b = collect(2:(n+1))
    println("n=$n: convolution = $(convolve(a,b))")
end


## Problem 9: Geometric Series
function geometric_sum(r, n)
    if r == 1
        return n
    end
    return (1 - r^n) / (1 - r)
end

println("\nGeometric series verification:")
for r in [0.5, 2, 3]
    for n in [5, 10]
        calc = geometric_sum(r, n)
        direct = sum(r^i for i in 0:(n-1))
        println("r=$r, n=$n: formula=$(round(calc, digits=4)), direct=$(round(direct, digits=4))")
    end
end


## Problem 10: Fibonacci
function fib_recursive(n)
    if n <= 1
        return n
    end
    return fib_recursive(n-1) + fib_recursive(n-2)
end

function fib_iterative(n)
    if n <= 1
        return n
    end
    a, b = 0, 1
    for _ in 2:n
        a, b = b, a + b
    end
    return b
end

println("\nFibonacci numbers:")
for n in [5, 10, 20, 30]
    println("f($n) = $(fib_iterative(n))")
end

# Note: For large n, use BigInt
println("\nLarge Fibonacci with BigInt:")
function fib_big(n)
    if n <= 1
        return BigInt(n)
    end
    a, b = BigInt(0), BigInt(1)
    for _ in 2:n
        a, b = b, a + b
    end
    return b
end
println("f(100) = $(fib_big(100))")
