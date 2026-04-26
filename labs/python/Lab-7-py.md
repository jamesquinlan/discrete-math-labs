# Discrete Mathematics Lab 7


## Overview

This lab introduces sets and dictionaries, two foundational structures in discrete mathematics and computer science. You will work with Python’s built-in set and dictionary types to explore core concepts such as set membership, subset relations, and basic set operations (union, intersection, difference). Sets model unordered collections of unique elements, while dictionaries associate keys to values, enabling efficient lookups and data organization.

By completing this lab, you will gain experience constructing, comparing, and manipulating sets and dictionaries using Python syntax and logic. These skills will support your understanding of relations, functions, and data representation in future labs.

## Learning Objectives

By the end of this lab, students will be able to:

* Construct sets and dictionaries using Python syntax.
* Perform standard set operations: union, intersection, and difference.
* Test for set membership, equality, and subset relationships.
* Iterate over sets and dictionaries using loop constructs.
* Implement and manipulate dictionaries to store and retrieve key-value pairs.
* Analyze the behavior of sets and dictionaries under common operations and constraints (e.g., immutability, uniqueness).




## Problems

1. A **set** is an unordered collection of unique values. Sets are enclosed by curly brackets, `{}`. For example, $\{1, 2, 3\}$ is a set.  This set is the same as the sets: $\{2, 3, 1\}$ and $\{2,2,2,1,3,3,1\}$.  For the last one to be different, we must consider it a **multi-set** (which we do not).  Sets do not need to be numeric.  Enter the following sets into Python.  Assign each to a variable (or label), e.g., `x = {1,2,3}`. 
 		
 	a. {'Red', 'Green', 'Blue'}
 	
 	b. {2, 3, 4, 6, 5, 1}
 	
 	c. {2, 3, 3, 4, 5, 6, 1}
 
 	d. {1, 'fish', 2, 'fish', 'green fish', 'blue fish'}
 	
2. Loop over the elements of a set of colors above by accessing values directly (not using the `range()` function) to print the colors. *Hint*: Use `for x in A:` where `A` is your set variable.


3. Create an empty set using `set()`. Try using `{}` — what type does this create? Use `type()` to check. Why is this important?



4. Create sets $A = \{1, 2, 3\}$, $B = \{3, 1, 2\}$, $C = \{3, 1, 2, 4, 6, 5\}$, and $D = \{2, 5\}$. Determine the truth of:  $A = B$, $A = C$.  How does Python determine set equality?




5. Using the sets from Problem 4, test membership: Is $2 \in A$? Is $5 \in C$? Is $7 \in C$?  Use the `in` keyword in Python.



6. $A$ is a **subset** of the set $B$ if every element of $A$ is an element of $B$.  We write $A \subseteq B$.  We can see, for example, that $D \subseteq C$ since elements $2$ and $5$ of $D$ are elements of $C$.  Determine whether $A \subseteq B$, $A \subseteq C$, and $C \subseteq D$. In LaTeX, `\subseteq`.  *Hint*: What keyboard character(s) does the subset symbol look like? 

    

7. A **proper subset** satisfies $A \subset B$ when $A \subseteq B$ but $A \ne B$. Test whether $A \subset B$, $A \subset C$, and $C \subset D$.  What Python operator can you use for proper subsets?



8. There are three binary operations on sets: union, intersection, and set difference.  Symbolically, $\cup$, $\cap$, $\setminus$.  Find the union, intersection, and difference of: $A \cup C$, $A \cap C$, and $C \setminus D$, where $A, B, C$, and $D$ are defined above in Problem 4. *Hint*: Use `|`, `&`, and `-` operators respectively.


 

9.  A **dictionary** is an unordered collection (set) of _key-value_ pairs that map immutable keys to values. _Keys_ must be unique (and immutable).  For example, `areacodes = {'207':'Maine','213':'LA','304':'West Virginia','302':'LA','312':'LA'}` is a dictionary containing area codes for several locations in the United States.  Create a dictionary of "grades" that associates an 'A' with the value 90, 'B' with 80, 'C' with 70, etc.  How do you create an empty dictionary (see #3)?  



10.  Use the `areacodes` dictionary above. Loop through and print each key-value pair.  *Hint*: Use `for key, value in areacodes.items():`. 
  

<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sun Jul 27 2025 12:49:10 PM EDT
</i>
