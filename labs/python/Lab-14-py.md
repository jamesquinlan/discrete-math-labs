# Discrete Mathematics Lab 14
 

## Overview

Regular expressions (regex) offer a powerful and concise syntax for matching, validating, and manipulating text patterns. In this lab, students will learn to apply regular expressions (regex) through Python’s re module to perform tasks such as validating data formats (e.g., ZIP codes, email addresses), extracting relevant substrings, and transforming textual content. These skills are widely applicable in various fields, including data cleaning, software development, bioinformatics, and natural language processing.

  
The `re` module in Python can be used to work with regular expressions. It contains several functions, including `fullmatch()`, `findall()`, `search()`, `sub()` (substitution), and `split()`.  The `match()` function is particularly useful.  Although not necessary for all regular expressions, prefixing them with an `r` is a good habit.  The most basic form of regex involves matching a sequence of characters, similarly to how you can do with `Ctrl-F` in a text editor. Here are a few examples of matching patterns using the `re` module.




## Learning Objectives

* Recall the syntax and core functions of the Python re module.
* Recognize and interpret common regex metacharacters and pattern-matching rules.
* Apply regular expressions to search, match, and substitute text in Python.
* Construct regular expressions to validate structured formats such as phone numbers, email addresses, and loop syntax.
* Analyze and interpret complex regex behavior through test cases and logical explanation.
* Evaluate matching results for correctness and refine regex patterns accordingly.
* Generate random inputs and verify pattern conformance using regex in computational experiments.




```
import re

# Example 1:
regex = r'Hello'
text = 'Hello World!'

'True' if re.match(regex,text) else 'False'

# Example 2:
regex = r'[^(04)1..]'
text = '04106'

'True' if re.match(regex,text) else 'False'
```

In Python's `re` module, `re.compile()` compiles a regular expression pattern into a regular expression object. This compiled representation of the regular expression can be used for efficient matching of patterns in strings. The main advantage of using `re.compile()` is that it allows you to reuse the compiled pattern multiple times without recompiling it each time you want to perform a matching operation.



For convenience, some metacharacters are provided in the table below.


| Character | Description                          | Example    |
|-----------|--------------------------------------|------------|
| []        | Set of Characters                    | [a-n]      |
| \         | Escape character or special sequence | \$         |
| .         | Any character (wildcard)             | he..o      |
| ^         | Starts with (exception)              | ^he        |
| $         | Ends with                            | es$        |
| *         | Zero or more occurrences             | hel*o      |
| +         | One or more occurences               | hel+o      |
| ?         | Zero or one occurence                | hel?o      |
| {}        | Exactly specified occurences         | hel{2}o    |
| \|        | Either or                            | dog \| cat |
| ( )       | Group                                | (ab)       |
| \w        | Word  (equivalent [a-zA-Z0-9]        |            |
| \d        | digits                               | [0-9]      |
| \s and \S | Space and Nonspace                   | (ab)       |




## Problems


1. Write a regex to search for the substring "lar be" in the string `"Contrary to popular belief, regex is easy!"` using `re.search()`. This problem uses basic substring matching—no metacharacters are needed.<!-- Basic Search -->



2. Use `re.sub()` to replace `"perfect"` with `"purr-fect"` in the string `"cats are perfect"`.<!-- Substitution -->


3. Write a regex that matches `"http://"` or `"https://"` at the beginning of a string using `re.match()`. Test with a few strings.<!-- Pattern Matching: Optional Character -->


4. Write a regex to match strings that either start with `"cat"` or end with `"dog"`. Test with examples such as `"catnip"`, `"mydog"`, `"catdog"`.<!-- Pattern Matching: Start/End Alternatives -->


5. Write a regex to match any string that starts with `"abc"` followed by digits (e.g., `"abc123"`). Test it on various strings.<!-- Pattern Matching: Prefix + Digits -->


6. Write regex patterns to match phone numbers in the forms `"123-456-7890"` and `"(123) 456-7890"`. Test with valid and invalid examples.<!-- Phone Number Formats -->


7. Write a regex to detect street addresses of the form `"Number StreetName"`, such as `"123 Main St."`, `"8 Weber Way"`, or `"34567 5th Ave."`.<!-- Address Matching -->


8. Explain what the regex `^(?!.*xyz).*$` does. Run the provided code to verify and describe why it matches or doesn't match certain strings.<!-- Regex Analysis -->


9. Write a regex to validate C-style for-loops like `for (int i = 0; i < 10; i++)`. Test with both valid and invalid loop strings.<!-- Complex Pattern: C for-loop Syntax -->


10. Use the function `generate_words()` and the regex `01[0-1]*` to generate and print 10 valid binary strings from this language. Example valid strings include `"01"`, `"010"`, `"011101"`, etc.<!-- Word Generation via Regex -->


```python
import re
import random

def generate_words(pattern, num_words):
    words = []
    while len(words) < num_words:
        candidate = ''.join(random.choice("01") for _ in range(random.randint(1, 10)))
        match = re.match(pattern, candidate)
        if match:
            words.append(match.group())
    return words

# Example usage:
# words = generate_words(r'01[0-1]*', 10)
# print(words)
```


<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Sun Jul 28 2025 09:14:29 PM EDT
</i>
