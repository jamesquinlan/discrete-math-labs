# Discrete Mathematics Lab 1 

### Learning Objectives

By the end of this lab, students will be able to:

* Identify and use single-line and block comments to annotate code and improve readability.
* Assign values to variables and trace changes in program state through variable manipulation.
* Perform basic mathematical operations (addition, subtraction, multiplication, division, modulus, exponentiation) in Julia expressions.
* Use modular arithmetic to explore number-theoretic properties.
* Use logical (`&&`, `||`, `!`) and relational operators (`==`, `!=`, `<`, `>`, etc.) to control flow and compare values.
* Construct conditional statements using `if`, `elseif`, and `else` to implement decision-making logic.
* Write loops (`for`, `while`) to perform iterative tasks and analyze how loop conditions affect program behavior.
* Create and manipulate arrays to store, retrieve, and modify collections of data.
* Import and apply external packages (e.g., Random).
* Generate random numbers using Julia's built-in libraries and apply them in simple simulations or randomized tasks.
* Define and call functions to encapsulate logic and organize code into reusable components.

---

## Comments

Comments are one of the most important parts of any program.
A single-line comment starts with the hash symbol, `#`. These can be used as a prefix or inline. For example:

```julia
# This is a comment
```

Block comments (multi-line comments) are denoted with `#=` and `=#`:

```julia
#= This is a comment 
   using multi-line syntax =#
```

Comments can span multiple lines:

```julia
#=
This is first line
This is second line
Here is a third line
=#
```

## Variables and Assignment Statements

Julia expressions (e.g., 4+9) may contain **variables** which store values for later use in code. For example, the variable `x` can store the integer `5`. That is, we assign the value `5` to the variable `x` by creating the **statement** `x = 5`.

```julia
x = 5
println(x)
```

### Variable Names

A variable name (also called an __identifier__) can contain:

* letters (including Unicode characters)
* digits (_Note_: cannot begin with digit)
* underscores

> Julia is __case sensitive__; therefore, `total` differs from `Total`.

### Variable Types

Every value has a __type__ (e.g., `Int64`, `Float64`). Use the `typeof` function to view the _value type_.

```julia
# Determine the types of the following by using the `typeof()` function.
println(typeof("Hello World"))
println(typeof(123))
println(typeof(3.1415))
```

## Arithmetic

The following table summarizes arithmetic operations.

| Operation          | Operator | Example Expression |
|--------------------|----------|--------------------|
| Addition           | +        | 2 + 3              |
| Subtraction        | -        | 9 - 5              |
| Multiplication     | *        | 5 * 6              |
| Exponentiation     | ^        | x ^ y              |
| Division           | /        | 10 / 2             |
| Integer Division   | ÷ or div | 10 ÷ 3             |
| Remainder (modulo) | % or mod | 9 % 5              |

```julia
# Perform the following arithmetic in the cell below using Julia.
# 3.75 + 19.23842
println(3.75 + 19.23842)

# (5-3) + 23 + 4/7
# Note: In Julia, mathematical notation is more natural
println((5-3) + 23 + 4/7)

# Find the remainder when 178 is divided by 56
println(178 % 56)
# or equivalently
println(mod(178, 56))
```

## Even and Odd Integers

You can use the modulo operator to determine if an integer is even or odd. Recall that an **even** integer $n$ can be written as $n = 2k$ for some integer $k$. An **odd** integer $m$ can be written as $m = 2j+1$ for some integer $j$.

The mod operator (`%`) can be used to test if even by:
```julia
n % 2 == 0
```
and odd by:
```julia
m % 2 == 1
```

Julia also provides convenient functions `iseven()` and `isodd()`:

```julia
# Determine if 234 is even or odd. Print the result.
number = 234
if iseven(number)
    println("$number is Even")
else
    println("$number is Odd")
end
```

## Decision Making: `if` statement and comparison operators

* Practical construct - Flow control
* Decision structure = Branching

**Boolean expressions** evaluate to `true` or `false`. A **condition** is a Boolean expression. The comparison operators are listed in the table below.

| Operation          | Operator | Example Expression |
|--------------------|----------|--------------------|
| Equal              | ==       | 2 == 3             |
| Less than          | <        | 2 < 3              |
| Greater than       | >        | 9 > 5              |
| Less than or equal | <=       | 5 <= 6             |
| Greater or equal   | >=       | x >= y             |
| Not equal          | !=       | 10 != 2            |

```julia
# Evaluate the Boolean expressions (record its value)
println(1 < 2)

# Evaluate the Boolean expression (note its value)
println(3 != 5)
```

Conditions often use **comparison operators**, i.e., `>`, `<`, `>=`, `<=`, `==`, `!=`. Be aware of the precedence of these operators.

### `if` statements (branching structure)

The basic syntax of an `if` statement is:

```julia
if condition
    # code_block
end
```

Notice there is no colon, but `end` is required.

Assign values for integer values for x and y to make the following print 'Yes'

```julia
x = 3
y = 5
if x < y
    println("Yes")
end
```

Try again, this time picking values to produce 'Yes' and then changing only one value to produce 'No'.

```julia
x = 5
y = 10

if x < y
    println("Yes")
else
    println("No")
end

x = 10  # Changing only x to produce 'No'
y = 5

if x < y
    println("Yes")
else
    println("No")
end
```

## For Loops

A for loop is a repetition structure to perform a task a known number of times.

The syntax is:

```julia
for i in 1:10
    # do something
end
```

Note: Julia uses 1-based indexing by default.

```julia
# Print the numbers 1 to 10 using a for loop
for i in 1:10
    println(i)
end
```

## While Loops

A `while` loop is a repetition structure that executes a block of code as long as a condition is true.

The syntax is:

```julia
while condition
    # do something
end
```

```julia
# Print numbers from 1 to 5 using a while loop
count = 1
while count <= 5
    println(count)
    count += 1
end
```

## Arrays

An array (vector) is a fundamental data structure. Square brackets denote arrays. For example, the first four prime numbers are: 2, 3, 5, 7.

In Julia, as an array:
```julia
[2, 3, 5, 7]
```

```julia
# Make an array of the first seven positive composite numbers
composite_numbers = [4, 6, 8, 9, 10, 12, 14]
println(composite_numbers)
```

**Tip**: Preallocating your array with ones or zeros is often necessary. The following code creates an array of length 10 with zeros in each entry:
```julia
x = zeros(Int, 10)
# or for floating point
x = zeros(10)
```

## Random Numbers

You must import the `Random` module by typing `using Random`. Then, a random integer can be generated using `rand(range)`. Note: Julia's `rand(a:b)` includes both `a` and `b`.

```julia
# import the Random package
using Random

# 1. Generate a random integer between 3 and 13 (inclusive).
random_int = rand(3:13)
println("Random integer between 3 and 13: $random_int")

# 2. Use a loop to generate an array of 20 random integers between 1 and 100
r = zeros(Int, 20)   # preallocate array with zeros
for i in 1:length(r)
    r[i] = rand(1:100)
end
println("Array of 20 random integers: $r")

# Alternative using array comprehension
r = [rand(1:100) for _ in 1:20]
println("Array of 20 random integers: $r")
```

## Functions

A function takes value(s) and either returns value(s), prints to the screen, or writes to a file. The syntax is:

```julia
function f(x)
    # do something, calculate y
    return y
end

# call function like:
f(5)
```

Compact form for simple functions:
```julia
f(x) = 2x + 3  # Note: Julia allows mathematical notation
```

Write two functions, `iseven_manual` and `isodd_manual`, that will return true or false depending on whether the input is even (or odd).

Do not use an `if` statement.

```julia
function iseven_manual(n)
    # The result of n % 2 == 0 is already a boolean (true or false)
    return n % 2 == 0
end

function isodd_manual(n)
    # The result of n % 2 == 1 is already a boolean (true or false)
    return n % 2 == 1
end

# Test the functions
println("Is 4 even? $(iseven_manual(4))")
println("Is 7 odd? $(isodd_manual(7))")
println("Is 5 even? $(iseven_manual(5))")
println("Is 8 odd? $(isodd_manual(8))")
```

## Problems

1. Calculate the area of a triangle with a base 6 and a height 4.

2. Write code that prints "Even" if a number is even and "Odd" if it's odd. Test with `x = 7` and `x = 12`.

3. Print every third number from 1 to 20. *Expected output*: 1, 4, 7, 10, 13, 16, 19

4. Create a simple dice rolling program that rolls two dice and prints their sum
   
   ```julia
   using Random
   ```

5. Write a function that returns the factorial of a number. Example: `factorial_custom(4)` should return 24 i.e., (4 * 3 * 2 * 1). Note: Julia has a built-in `factorial()` function, so name yours differently.

   ```julia
   function factorial_custom(n)
       # your code here
   end
   ```

6. Write a function that determines if a positive integer is prime.

7. Write a function that lists all primes less than or equal to a given positive integer.

8. Use a loop and the above function to determine whether $2^p - 1$ is prime for each prime not exceeding 100.

9. (Challenge) Show that $n^2 + n + 41$ is prime for all integers $n$ with $0 \le n \le 39$, but is not prime when $n = 40$. Is there a polynomial in $n$ with integer coefficients and a degree greater than zero that always takes on a prime value when $n$ is a positive integer?

10. (Challenge) Find all pseudoprimes to the base 2, composite integers $n$ such that $2^{n-1} \equiv 1 \pmod{n}$, where $n$ does not exceed 10000.

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Thu, January 30, 2026 03:47:16 PM EDT
</i>
