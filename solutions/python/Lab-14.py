# Discrete Mathematics Lab 14 - Solutions

import re
import random

## Problem 1: Basic Search
text = "Contrary to popular belief, regex is easy!"
pattern = r"lar be"
match = re.search(pattern, text)
print(f"Pattern '{pattern}' found: {match is not None}")


## Problem 2: Substitution
text = "cats are perfect"
new_text = re.sub(r"perfect", "purr-fect", text)
print(f"\nOriginal: {text}")
print(f"Modified: {new_text}")


## Problem 3: Optional Protocol
pattern = r"^https?://"
tests = ["http://example.com", "https://example.com", "ftp://example.com"]
print("\nHTTP/HTTPS matching:")
for test in tests:
    match = re.match(pattern, test)
    print(f"  {test}: {match is not None}")


## Problem 4: Start/End Alternatives
pattern = r"^cat|dog$"
tests = ["catnip", "mydog", "catalog", "underdog"]
print("\nStart with 'cat' or end with 'dog':")
for test in tests:
    match = re.search(pattern, test)
    print(f"  {test}: {match is not None}")


## Problem 5: Prefix + Digits
pattern = r"^abc\d+$"
tests = ["abc123", "abc", "abc0", "abcd123"]
print("\n'abc' followed by digits:")
for test in tests:
    match = re.match(pattern, test)
    print(f"  {test}: {match is not None}")


## Problem 6: Phone Numbers
pattern1 = r"^\d{3}-\d{3}-\d{4}$"
pattern2 = r"^\(\d{3}\) \d{3}-\d{4}$"
tests = ["123-456-7890", "(123) 456-7890", "1234567890"]
print("\nPhone number formats:")
for test in tests:
    m1 = re.match(pattern1, test)
    m2 = re.match(pattern2, test)
    print(f"  {test}: Format1={m1 is not None}, Format2={m2 is not None}")


## Problem 7: Street Addresses
pattern = r"^\d+\s+\w+(\s+\w+\.?)?$"
tests = ["123 Main St.", "8 Weber Way", "34567 5th Ave.", "NoNumber St"]
print("\nStreet addresses:")
for test in tests:
    match = re.match(pattern, test)
    print(f"  {test}: {match is not None}")


## Problem 8: Negative Lookahead
pattern = r"^(?!.*xyz).*$"
tests = ["abc", "xyz123", "hello", "abcxyz"]
print("\nExclude 'xyz':")
for test in tests:
    match = re.match(pattern, test)
    print(f"  {test}: {match is not None}")
print("Explanation: (?!.*xyz) is negative lookahead - excludes any string containing 'xyz'")


## Problem 9: C For-Loop
pattern = r"for\s*\(\s*int\s+\w+\s*=\s*\d+\s*;\s*\w+\s*<\s*\d+\s*;\s*\w+\+\+\s*\)"
tests = [
    "for (int i = 0; i < 10; i++)",
    "for(int i=0;i<10;i++)",
    "for (int x = 5; x < 20; x++)"
]
print("\nC for-loop syntax:")
for test in tests:
    match = re.match(pattern, test)
    print(f"  Valid: {match is not None} - {test[:40]}")


## Problem 10: Word Generation
def generate_words(pattern, num_words):
    """Generate words matching binary pattern"""
    words = []
    while len(words) < num_words:
        length = random.randint(2, 10)
        candidate = ''.join(random.choice('01') for _ in range(length))
        if re.match(pattern, candidate):
            words.append(candidate)
    return words

pattern = r"^01[01]*$"
words = generate_words(pattern, 10)
print(f"\nGenerated words matching '01[01]*':")
print(words)
