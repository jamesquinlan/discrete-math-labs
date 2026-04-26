# Discrete Mathematics Labs: Python & Julia

This repository provides a comprehensive collection of lab exercises designed to supplement a standard undergraduate Discrete Mathematics course. The labs are available in both Python and Julia, enabling students to develop intuition and test ideas in a hands-on manner using their preferred language. These labs are meant to support—not substitute for—the theoretical foundations of a discrete mathematics course, while offering a more interactive and computational approach to learning.

## Course Description

Discrete mathematics is the mathematics of computing. This course lays the foundation for students to succeed in upper-level computer science courses, many of which require an understanding of concepts from discrete mathematics. This course is designed to teach students how to think logically and mathematically, and to practice fundamental techniques for solving problems in computer science. Topics include sequences, mathematical induction, recursion, set theory, graphs, trees, analysis of algorithms, and regular expressions.

## Covered Topics

* Set theory and set operations
* Number theory, divisibility, and modular arithmetic
* Introduction to proof techniques (e.g., direct proof, induction)
* Graph theory, with representations using dictionaries and adjacency matrices
* Recursion, with examples and trace exercises
* Algorithm analysis and Big-O, illustrated via sorting algorithms

Rather than focusing purely on symbolic manipulation or abstract reasoning, these labs guide students to *generate evidence*, test conjectures, and explore structures computationally. For instance, students may write code to verify formulas, such as the sum of the first $n$ integers, compare recursive and closed-form Fibonacci calculations, or visualize graphs and trace traversal algorithms.

## Repository Structure

```
discrete-math-labs/
├── labs/
│   ├── python/
│   │   ├── Lab-1-py.md
│   │   ├── Lab-2-py.md
│   │   └── ... (14 labs total)
│   └── julia/
│       ├── Lab-1-Julia.md
│       ├── Lab-2-Julia.md
│       └── ... (14 labs total)
├── solutions/
│   ├── python/
│   │   ├── Lab-1.py
│   │   ├── Lab-2.py
│   │   └── ... (14 solutions)
│   └── julia/
│       ├── Lab-1.jl
│       ├── Lab-2.jl
│       └── ... (14 solutions)
├── literature/
│   ├── ... (PDF papers)
│   └── README.md
├── Authors.md
├── LICENSE
└── README.md (this file)
```

## Lab Coverage Summary

| Lab | Topic | Python | Julia | Problems |
|-----|-------|:------:|:-----:|:--------:|
| 1 | Fundamentals | ✓ | ✓ | 10 |
| 2 | Lists & Number Theory | ✓ | ✓ | 10 |
| 3 | Conjectures & Algorithms | ✓ | ✓ | 9 |
| 4 | Integer Properties | ✓ | ✓ | 10 |
| 5 | Induction & Sequences | ✓ | ✓ | 10 |
| 6 | Formula Verification | ✓ | ✓ | 10 |
| 7 | Sets & Dictionaries | ✓ | ✓ | 10 |
| 8 | Set Operations | ✓ | ✓ | 10 |
| 9 | Set Identities | ✓ | ✓ | 10 |
| 10 | Graph Dictionaries | ✓ | ✓ | 10 |
| 11 | Graph Matrices | ✓ | ✓ | 10 |
| 12 | Trees | ✓ | ✓ | 10 |
| 13 | Algorithm Timing | ✓ | ✓ | 10 |
| 14 | Regular Expressions | ✓ | ✓ | 10 |

**Total: 139 problems across 14 labs × 2 languages = 28 lab files + 28 solution files**

## Getting Started

### Quick Start (5 minutes):

1. **Choose your language**: Python or Julia (or use both!)
2. **Navigate to lab assignments**: `labs/python/` or `labs/julia/`
3. **Review the first lab**: Start with `Lab-1-py.md` or `Lab-1-Julia.md`
4. **Check solutions after completing**: `solutions/python/` or `solutions/julia/`

### For Instructors:

1. **Assign labs**: Distribute from `labs/python/` or `labs/julia/` directories
2. **Use solutions for grading**: Reference implementations in `solutions/`
3. **Flexible deployment**: Use one language or offer students a choice

### For Students:

1. **Pick your language**: Choose Python or Julia based on course requirements
2. **Work through labs sequentially**: They build on previous knowledge
3. **Test your understanding**: Try problems before consulting solutions
4. **Experiment freely**: Labs encourage exploration and computational thinking

## Weekly Lab Schedule

| **Lab** | **Focus** | **Skills Progression** |
|---------|-----------|------------------------|
| Lab 1 | Language basics: variables, loops, conditionals | Programming foundation |
| Lab 2 | Arithmetic, number theory, modular arithmetic | Number-theoretic computation, evidence generation |
| Lab 3 | Conjectures: prime-related, recursion | Experimental verification, prime generation |
| Lab 4 | Divisibility, summations, odd/even properties | Factoring, coding for patterns, introductory formulas |
| Lab 5 | Induction, sequences, summation/product functions | Recursive programming, inductive thinking |
| Lab 6 | Verification of formulas, more induction | Advanced evidence via loops/recursion, inequalities |
| Lab 7 | Introduction to sets and dictionaries | Set construction, membership, basic operations |
| Lab 8 | Advanced set functions and properties | Complements, partitions, Cartesian products, identities |
| Lab 9 | Set laws and DeMorgan's laws | Proof testing, identity verification, set comprehension |
| Lab 10 | Graphs via dictionaries and adjacency matrices | Graph representation, degree sums, walk-finding |
| Lab 11 | Matrix operations, walks in graphs | Matrix manipulation, walk counting, adjacency powers |
| Lab 12 | Random graphs, tree detection, DFS/BFS, BSTs | Graph traversal, tree structures, recursion in trees |
| Lab 13 | Algorithm timing and complexity analysis | Time measurement, growth rates, recursive optimization |
| Lab 14 | Regular expressions and pattern matching | Text pattern matching, data validation |



## Key Features

### Python Implementation:
- Clean, readable code following PEP 8 guidelines
- Educational comments explaining mathematical concepts
- Multiple solution strategies demonstrated
- Standard library usage (minimal dependencies)
- Suitable for CS1/CS2 students

### Julia Implementation:
- Mathematical notation similarity (e.g., `2x` instead of `2*x`)
- Unicode operators for mathematical clarity (∈, ∪, ∩, ⊆)
- Performance-oriented when appropriate
- Type system demonstrations
- Broadcasting and vectorization examples
- Package ecosystem introduction (Random, BenchmarkTools, etc.)

## Project Statistics

- **Total Problems**: 139 (13 labs × 10 problems + 1 lab × 9 problems)
- **Languages**: Python, Julia
- **Topics Covered**: 14 major discrete math areas
- **Learning Objectives**: 85+ across all labs
- **Files Created**: 56 (including labs, solutions)

## Learning Outcomes

By completing these labs, students will be able to:

* **Apply** code-based experiments to explore and validate mathematical propositions, reinforcing proof techniques through concrete evidence
* **Create** executable solutions for sequential, recursive, set-oriented, and number-theoretic problems, translating abstract ideas into working programs
* **Construct and manipulate** computational models of graphs, trees, and finite-state machines to address authentic, domain-specific scenarios
* **Analyze and evaluate** empirical data (e.g., run-time measurements, recursion depth) to substantiate formal Big-O reasoning
* **Evaluate and articulate** practical uses of discrete structures in software and real-world systems, drawing on insights gained from lab investigations

## Statement of Need

Discrete Mathematics is a foundational course for students in computer science, data science, and mathematics, but it is often taught with limited opportunities for exploration or active experimentation. Traditional lecture and problem-set formats emphasize symbolic manipulation and formalism, which can be difficult for many students to internalize without concrete experience.

This project provides a **computational lab component** to Discrete Mathematics, a feature rarely included in such courses. The labs bring abstract concepts to life by allowing students to:

* Explore ideas dynamically and interactively
* Test and debug conjectures using real data and computation
* Visualize and simulate discrete structures
* Reinforce formal reasoning with hands-on intuition

By offering **both Python and Julia implementations**, this repository accommodates diverse student backgrounds and institutional preferences, while maintaining consistent pedagogical quality across both languages.

Adding labs helps address a persistent challenge in mathematics and computer science education: how to help students develop insight into the "why" behind formulas and theorems, not just the "how" to apply them.

## Prerequisites

### For Python Labs:
- Python 3.8 or higher
- Basic programming knowledge (variables, loops, functions)
- Standard library only (no external dependencies required for most labs)
- Optional: Jupyter Notebook for interactive exploration

### For Julia Labs:
- Julia 1.6 or higher
- Basic programming knowledge (variables, loops, functions)
- Optional packages: BenchmarkTools, Random, Plots (installed as needed)
- REPL or Jupyter notebook for interactive use

### Mathematical Background:
- Grade of C or higher in Calculus I (or equivalent)
- Comfort with algebraic manipulation
- Willingness to engage with mathematical reasoning

## Recommended Textbooks

<!--
<img align="right" style="float:right;" src="epp.jpg" width="200">
-->

**Primary:**
Epp, S. S. (2020). *Discrete Mathematics with Applications* (5th ed.). 
Cengage Learning. ISBN: 978-1-337-69419-3.

**Supplementary:**
- **Rosen, K. H.** *Discrete Mathematics and its Applications* - Widely used, comprehensive coverage
- **Graham, Knuth, & Patashnik.** *Concrete Mathematics* - Advanced, algorithmic focus
- **Levin, O.** *Discrete Mathematics: An Open Introduction* - Free online, interactive
- **Lehman, Leighton, & Meyer.** *Mathematics for Computer Science* - CS-focused approach

## Contributing

We welcome and encourage all contributions to help improve these labs. If you have questions, encounter issues, or require guidance, please reach out.

Before getting started, please check the current list of [issues](https://github.com/) and follow the GitHub flow for contributions.

Look for issues labeled ![good first issue](https://img.shields.io/badge/-good%20first%20issue-gold.svg) — these are great entry points for new contributors.

## Authors

A list of contributors to the lesson can be found in [Authors.md](Authors.md)

## License

This work is licensed under MIT.


*Last updated: April, 25 2026*
