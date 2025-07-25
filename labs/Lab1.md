# Discrete Mathematics Lab 1


### Learning Objectives

By the end of this lab, students will be able to:

* Identify and use single-line and block comments to annotate code and improve readability.
* Assign values to variables and trace changes in program state through variable manipulation.
* Perform basic mathematical operations (addition, subtraction, multiplication, division, modulus, exponentiation) in Python expressions.
* Use modular arithmetic to explore number‑theoretic properties.
* Use logical (`and`, `or`, `not`) and relational operators (`==`, `!=`, `<`, `>`, etc.) to control flow and compare values.
* Construct conditional statements using `if`, `elif`, and `else` to implement decision-making logic.
* Write loops (`for`, `while`) to perform iterative tasks and analyze how loop conditions affect program behavior.
* Create and manipulate lists to store, retrieve, and modify collections of data.
* Import and apply external modules (e.g., random).
* Generate random numbers using Python’s built-in libraries and apply them in simple simulations or randomized tasks.
* Define and call functions to encapsulate logic and organize code into reusable components.

--

### Comments
Comments are one of the most important parts of any program.
A single-line comment starts with the hashtag symbol, `#`. These can be used as a prefix or inline.  For Example,

```
# This is a comment
```

Block comments (or "Docstrings") are denoted with triple quotes.

```
''' This is a comment using string literals with triple quotes '''
```

Comments can span multiple lines:

```
'''
This is first line
This is second line
Here is a third line
'''
```

## Variables and Assignment Statements

Python expressions (e.g., 4+9) may contain **variables** which store values for later use in code.  For example the variable ```x``` can store the integer ```5```.  That is, we assignment the value ```5``` to the variable ```x``` by creating the **statement**  ```x=5```.


```
x = 5
print(x)
```


### Variable Names

A variable name (also called an __identifier__) can contain:

* letters
* digits (_Note_: cannot begin with digit)
* underscores

> Python is __case sensitive__; therefore, `total` differs from `Total`.


### Variable Types
Every value has a __type__ (e.g., `int`, `float`).  Use the `type` function to view the _value type_.

```
# Determine the types of the following by using the `type()` function.
print(type('Hello World'))
print(type(123))
print(type(3.1415))
```

## Arithmetic

The following table summarizes arithmetic operations.

| Operation          | Operator | Example Expression |
|--------------------|----------|--------------------|
| Addition           | +        | 2 + 3              |
| Subtraction        | -        | 9 - 5              |
| Multiplication     | *        | 5 * 6              |
| Exponentiation     | **       | x ** y             |
| Division           | /        | 10 / 2             |
| Floor Division     | //       | 10 // 3            |
| Remainder (modulo) | %        | 9 % 5              |

```py
# Perform the following arithmetic in the cell below using python.
# 3.75 + 19.23842
print(3.75 + 19.23842)

# (5-3) + 23_4/7
# Note: In Python, 23 and 4/7 would be represented as 23 + 4/7
print((5-3) + (23 + 4/7))

# Find the remainder when 178 is divided by 56
print(178 % 56)
```



## Even and Odd Integers

You can use the modulo operator to determine if an integer is even or odd.  Recall that an **even** integer $n$ can be written as $n = 2k$ for some integer $k$.  An **odd** integer $m$ can be written as $m = 2j+1$ for some integer $j$.  

The mod operator (`%`) can be used to test if, even by
```
n % 2 == 0
```
and odd by
```
m % 2 == 1
```
 
```
# Determine if 234 is even or odd.  Print the result.
number = 234
if number % 2 == 0:
    print(f"{number} is Even")
else:
    print(f"{number} is Odd")
```

## Decision Making: `if` statement and comparison operators

* Practical construct - Flow control
* Decision structure = Branching

**Boolean expressions** evaluate to TRUE or FALSE.  A **condition** is a Boolean expression. The comparison operators are listed in the table below.

| Operation          | Operator | Example Expression |
|--------------------|----------|--------------------|
| Equal              | ==       | 2 == 3             |
| Less than          | <        | 2 < 3              |
| Greater than       | >        | 9 > 5              |
| Less than or equal | <=       | 5 <= 6             |
| Greater or equal   | >=       | x >= y             |
| Not equal          | !=       | 10 != 2            |


```
# Evaluate the Boolean expressions (record its value)
print(1 < 2)

# Evaluate the Boolean expression (note its value)
print(3 != 5)
```

Conditions often use **comparison operators**, i.e., ```>, <, >=, <=, ==, !=```.  Be aware of the precedence of these operators; the first four have the same precedence, but higher than the last two (which have the same precedence).  That is, ```<``` and ```>``` have the same precedence, which is higher than ```==```.  

Also, be aware of syntax errors such as ``` < = ```.  The correct syntax is ```<=```.  


### ```if``` statements (branching structure)

The basic syntax of an ```if``` statement is:

```
if condition:
    code_block
```
Notice the colon (:) and the indentation.  

Assign values for integer values for x and y to make the following print 'Yes'

```
x =
y =
if x < y:
    print('Yes')
```

Try again, this time picking values to produce 'Yes' and then changing only one value to produce 'No'.

```python
x = 5
y = 10

if x < y:
    print('Yes') 

x = 10 # Changing only x to produce 'No'
y = 5

if x < y:
    print('Yes')
else:
    print('No') 
```


## For Loops

A for loop is a repetition structure to perform a task a known number of times.

The syntax is:

```
for i in range(10):
    # do something
```

```
# Print the numbers 1 to 10 using a for loop
for i in range(1, 11): # range(start, stop+1) to include the stop number
    print(i)
```




## While Loops

A `while` loop is a repetition structure that executes a block of code as long as a condition is true.

The syntax is:

```
while condition:
    # do something
```

```python
# Print numbers from 1 to 5 using a while loop
count = 1
while count <= 5:
    print(count)
    count += 1
```





## Lists

A list (array or vector) is a fundamental data structure.  Square brackets denote lists.  For example, the first four prime numbers are: 2, 3, 5, 7.  

In Python, as a list:
```
[2, 3, 5, 7]
```


```
# Make a list of the first seven positive composite numbers
composite_numbers = [4, 6, 8, 9, 10, 12, 14]
print(composite_numbers)
```

**Tip**: Preallocating your list with ones or zeros is often necessary.  The following code creates a list of length 10 with zeros in each entry, ```x = [0]*10```.

## Random Numbers

You must import the `random` module by typing `import random`. Then, a random integer can be generated using `randint(start, stop)`. You can alias the library as desired, e.g., `as rnd`. Note: `randint(a, b)` includes both `a` and `b`.

```python
# import the random library
import random

# 1. Generate a random integer between 3 and 13 (inclusive).
random_int = random.randint(3, 13)
print(f"Random integer between 3 and 13: {random_int}")

# 2. Use a loop to generate a list of 20 random integers between 1 and 100
r = [0]*20   # preallocate list with zeros
for i in range(len(r)):
    r[i] = random.randint(1, 100)
print(f"List of 20 random integers: {r}")
```







## Functions
A function takes a value(s) and either returns a value(s), prints to the screen, or writes to a file.  The syntax is:

```
def f(x):
    # do something, calculate y
    return y

# call function like:
f(5)
```


Write two functions, `iseven` and `isodd`, that will return true or false depending on whether it is even (or odd).  

Do not use an `if` statement.

```python
def iseven(n):
    # The result of n % 2 == 0 is already a boolean (True or False)
    return n % 2 == 0

def isodd(n):
    # The result of n % 2 == 1 is already a boolean (True or False)
    return n % 2 == 1

# Test the functions
print(f"Is 4 even? {iseven(4)}")
print(f"Is 7 odd? {isodd(7)}")
print(f"Is 5 even? {iseven(5)}")
print(f"Is 8 odd? {isodd(8)}")
```



## Problems

1.  Calculate the area of a triangle with a base 6 and a height 4.

1.  Write code that prints "Even" if a number is even and "Odd" if it's odd.  Test with `x = 7` and `x = 12`.

1. Print every third number from 1 to 20. *Expected output*: 1, 4, 7, 10, 13, 16, 19

1. Create a simple dice rolling program that rolls two dice and prints their sum
	
	```
	import random
	```



1. Write a function that returns the factorial of a number. Example: factorial(4) should return 24 i.e., (4 * 3 * 2 * 1)

	```
	def factorial(n):
   	    # your code here
   ```

1. Write a function that determines if a positive integer is prime.

1. Write a function that lists all primes less than or equal to a given positive integer.


1. Use a loop and the above function to determine whether $2^p - 1$ is prime for each prime not exceeding 100.


1. (Challenge) Show that $n^2 + n + 41$ is prime for all integers $n$ with $0 \le n \le 39$, but is not prime when $n = 40$.  Is there a polynomial in $n$ with integer coefficients and a degree greater than zero that always takes on a prime value when $n$ is a positive integer?



1. (Challenge) Find all pseudoprimes to the base 2, composite integers $n$ such that $2^{n-1} \equiv 1 \,(mod\ n)$, where $n$ does not exceed 10000.



<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Thu, Jul 03 2025 01:20:32 PM EDT
</i>  
