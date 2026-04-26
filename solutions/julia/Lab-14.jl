# Discrete Mathematics Lab 14 - Solutions

using Random

## Problem 1: Basic Search
text = "Contrary to popular belief, regex is easy!"
pattern = r"lar be"
match_result = occursin(pattern, text)
println("Pattern '$pattern' found: $match_result")


## Problem 2: Substitution
text = "cats are perfect"
new_text = replace(text, r"perfect" => "purr-fect")
println("\nOriginal: $text")
println("Modified: $new_text")


## Problem 3: Optional Protocol
pattern = r"^https?://"
tests = ["http://example.com", "https://example.com", "ftp://example.com"]
println("\nHTTP/HTTPS matching:")
for test in tests
    match_result = match(pattern, test) !== nothing
    println("  $test: $match_result")
end


## Problem 4: Start/End Alternatives
pattern = r"^cat|dog$"
tests = ["catnip", "mydog", "catalog", "underdog"]
println("\nStart with 'cat' or end with 'dog':")
for test in tests
    match_result = occursin(pattern, test)
    println("  $test: $match_result")
end


## Problem 5: Prefix + Digits
pattern = r"^abc\d+$"
tests = ["abc123", "abc", "abc0", "abcd123"]
println("\n'abc' followed by digits:")
for test in tests
    match_result = match(pattern, test) !== nothing
    println("  $test: $match_result")
end


## Problem 6: Phone Numbers
pattern1 = r"^\d{3}-\d{3}-\d{4}$"
pattern2 = r"^\(\d{3}\) \d{3}-\d{4}$"
tests = ["123-456-7890", "(123) 456-7890", "1234567890"]
println("\nPhone number formats:")
for test in tests
    m1 = match(pattern1, test) !== nothing
    m2 = match(pattern2, test) !== nothing
    println("  $test: Format1=$m1, Format2=$m2")
end


## Problem 7: Street Addresses
pattern = r"^\d+\s+\w+(\s+\w+\.?)?$"
tests = ["123 Main St.", "8 Weber Way", "34567 5th Ave.", "NoNumber St"]
println("\nStreet addresses:")
for test in tests
    match_result = match(pattern, test) !== nothing
    println("  $test: $match_result")
end


## Problem 8: Negative Lookahead
pattern = r"^(?!.*xyz).*$"
tests = ["abc", "xyz123", "hello", "abcxyz"]
println("\nExclude 'xyz':")
for test in tests
    match_result = match(pattern, test) !== nothing
    println("  $test: $match_result")
end
println("Explanation: (?!.*xyz) is negative lookahead - excludes any string containing 'xyz'")


## Problem 9: C For-Loop
pattern = r"for\s*\(\s*int\s+\w+\s*=\s*\d+\s*;\s*\w+\s*<\s*\d+\s*;\s*\w+\+\+\s*\)"
tests = [
    "for (int i = 0; i < 10; i++)",
    "for(int i=0;i<10;i++)",
    "for (int x = 5; x < 20; x++)"
]
println("\nC for-loop syntax:")
for test in tests
    match_result = match(pattern, test) !== nothing
    println("  Valid: $match_result - $(test[1:min(40, length(test))])")
end


## Problem 10: Word Generation
function generate_words(pattern::Regex, num_words::Int)
    """Generate words matching binary pattern"""
    words = String[]
    while length(words) < num_words
        len = rand(2:10)
        candidate = join(rand(['0', '1'], len))
        if match(pattern, candidate) !== nothing
            push!(words, candidate)
        end
    end
    return words
end

pattern = r"^01[01]*$"
words = generate_words(pattern, 10)
println("\nGenerated words matching '01[01]*':")
println(words)
