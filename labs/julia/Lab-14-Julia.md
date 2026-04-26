# Discrete Mathematics Lab 14

## Overview

Regular expressions (regex) offer a powerful and concise syntax for matching, validating, and manipulating text patterns. In this lab, students will learn to apply regular expressions through Julia's built-in regex support to perform tasks such as validating data formats (e.g., ZIP codes, email addresses), extracting relevant substrings, and transforming textual content. These skills are widely applicable in various fields, including data cleaning, software development, bioinformatics, and natural language processing.

Julia has built-in support for regular expressions using the `r"..."` syntax and provides functions like `match()`, `occursin()`, `replace()`, and `eachmatch()`. The most basic form of regex involves matching a sequence of characters, similarly to how you can do with `Ctrl-F` in a text editor. Here are a few examples of matching patterns using Julia's regex support.

## Learning Objectives

* Recall the syntax and core functionality of Julia's regex support.
* Recognize and interpret common regex metacharacters and pattern-matching rules.
* Apply regular expressions to search, match, and substitute text in Julia.
* Construct regular expressions to validate structured formats such as phone numbers, email addresses, and loop syntax.
* Analyze and interpret complex regex behavior through test cases and logical explanation.
* Evaluate matching results for correctness and refine regex patterns accordingly.
* Generate random inputs and verify pattern conformance using regex in computational experiments.

```julia
# Example 1:
regex = r"Hello"
text = "Hello World!"

occursin(regex, text)  # Returns true

# Example 2:
regex = r"^[^04]1.."
text = "04106"

match(regex, text) !== nothing  # Returns false (no match)
```

In Julia, `Regex` objects are created with the `r"..."` syntax. The `match()` function returns a `RegexMatch` object if a match is found, or `nothing` otherwise. The `occursin()` function returns a boolean indicating whether the pattern is found anywhere in the string.

For convenience, some metacharacters are provided in the table below.

| Character | Description                          | Example    |
|-----------|--------------------------------------|------------|
| []        | Set of Characters                    | [a-n]      |
| \         | Escape character or special sequence | \$         |
| .         | Any character (wildcard)             | he..o      |
| ^         | Starts with (or negation in [])      | ^he        |
| $         | Ends with                            | es$        |
| *         | Zero or more occurrences             | hel*o      |
| +         | One or more occurrences              | hel+o      |
| ?         | Zero or one occurrence               | hel?o      |
| {}        | Exactly specified occurrences        | hel{2}o    |
| \|        | Either or                            | dog \| cat |
| ( )       | Group                                | (ab)       |
| \w        | Word character [a-zA-Z0-9_]          |            |
| \d        | Digits                               | [0-9]      |
| \s and \S | Space and Non-space                  |            |

## Problems

1. Write a regex to search for the substring "lar be" in the string `"Contrary to popular belief, regex is easy!"` using `occursin()`. This problem uses basic substring matching—no metacharacters are needed.

2. Use `replace()` to replace `"perfect"` with `"purr-fect"` in the string `"cats are perfect"`.
   
   ```julia
   text = "cats are perfect"
   replace(text, r"perfect" => "purr-fect")
   ```

3. Write a regex that matches `"http://"` or `"https://"` at the beginning of a string using `match()`. Test with a few strings.

4. Write a regex to match strings that either start with `"cat"` or end with `"dog"`. Test with examples such as `"catnip"`, `"mydog"`, `"catdog"`.

5. Write a regex to match any string that starts with `"abc"` followed by digits (e.g., `"abc123"`). Test it on various strings.

6. Write regex patterns to match phone numbers in the forms `"123-456-7890"` and `"(123) 456-7890"`. Test with valid and invalid examples.

7. Write a regex to detect street addresses of the form `"Number StreetName"`, such as `"123 Main St."`, `"8 Weber Way"`, or `"34567 5th Ave."`.

8. Explain what the regex `r"^(?!.*xyz).*$"` does. Run code to verify and describe why it matches or doesn't match certain strings.
   
   Note: This uses a negative lookahead assertion `(?!...)`.

9. Write a regex to validate C-style for-loops like `for (int i = 0; i < 10; i++)`. Test with both valid and invalid loop strings.

10. Write a function `generate_words(pattern, num_words)` that generates random binary strings matching the pattern `r"01[0-1]*"`. Generate and print 10 valid binary strings from this language. Example valid strings include `"01"`, `"010"`, `"011101"`, etc.
    
    ```julia
    using Random
    
    function generate_words(pattern::Regex, num_words::Int)
        words = String[]
        while length(words) < num_words
            candidate = join(rand(['0', '1'], rand(1:10)))
            if match(pattern, candidate) !== nothing
                push!(words, candidate)
            end
        end
        return words
    end
    
    # Example usage:
    # words = generate_words(r"^01[0-1]*$", 10)
    # println(words)
    ```

---

<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified Sun, January 30, 2026 09:14:29 PM EDT
</i>
