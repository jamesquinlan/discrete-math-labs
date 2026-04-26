
---
title: 'Computational Labs for Discrete Mathematics in Python and Julia'
tags:
  - Python
  - Julia
  - discrete mathematics
  - CS curriculum
 authors:
  - name: James Quinlan
    orcid: 0000-0002-2628-1651
    affiliation: 1
  affiliations:
 - name: Department of Computer Science, University of Southern Maine
   index: 1
date: 03 April 2026
bibliography: paper.bib



## Summary

_Discrete Math Labs_ is a collection of computer-based labs designed to reinforce key concepts from an undergraduate discrete mathematics course. The labs provide hands-on practice in applying mathematical ideas through computational examples. Students gain insight into theoretical material while developing programming skills. The collection comprises approximately 14 sequential labs spanning core topics in discrete mathematics, each accompanied by fully worked solutions in both Python and Julia.

The topics covered in these labs are standard within discrete mathematics texts (e.g., see [@epp:2010; @rosen:2019]), including:

* Number theory
* Set theory
* Recurrence relations
* Proof techniques (induction, cases, contrapositive, contradiction)
* Graphs (including trees, representations, and traversal)
* Algorithms and complexity
* Formal languages (regular expressions)

These labs bridge mathematical theory and practical computation, enabling students to develop intuition grounded in concrete examples. They complement traditional pencil-and-paper problem sets with interactive coding activities. All labs are designed for use in the Google Colab notebook environment and are available as open-source resources.



## Statement of Need

Discrete mathematics is a crucial part of the computer science curriculum, as recognized by the Joint Task Force on Computer Science Curricula, a collaboration among the Association for Computing Machinery (ACM), the IEEE Computer Society, and the Association for the Advancement of Artificial Intelligence (AAAI) [@kumar:2024].  Discrete mathematics is a requirement in ABET accreditation criteria [@abetcs:2026]. According to [@brodley:2024], 99% of Computer Science (BA/BS) programs require discrete mathematics. 

Despite its significance, students often find the subject challenging due to its abstract nature. Traditional courses focus on formal proof and symbolic reasoning, often without including any computational work. As a result, students may not see how discrete mathematics relates to applications in computer science. 

Resources that currently exist tend to be narrow. Many concentrate on specific topics like logic or basic set operations. This lab series covers a wide range of core topics and links them to programming practice. This approach lets students test their ideas, spot patterns, and confront abstract concepts in a tangible way. Students can improve their coding skills while also enhancing their mathematical knowledge. 

Traditional teaching methods depend on solving problems with pencil and paper. This method helps develop deductive reasoning but provides little chance for experimentation. There is a disconnect between mathematical theory and computational practice. These labs directly tackle that disconnect.

By integrating programming and data-driven exploration, students can:

* Actively test and explore mathematical ideas [@mcmaster:2007]  
* Develop intuition through computational experimentation [@liu:2021]  
* Recognize the relevance of discrete structures in algorithms and software [@friend:2023]  
* Reinforce formal concepts through concrete examples [@raykova:2018]  

Analogous to laboratory experiences in the natural sciences, these computational labs provide a structured environment for experimentation in discrete mathematics. They support conceptual understanding while promoting engagement, confidence, and skill development in both mathematics and programming.


## Course Description and Learning Objectives

This table maps the course learning objectives to the corresponding ABET student outcomes, demonstrating how the lab-based discrete mathematics course supports core computing competencies. The objectives emphasize applying mathematical concepts through programming, designing and analyzing computational solutions, and using experimentation to evaluate results. Strong alignment is evident with ABET outcomes 1 - 4, reflecting a focus on problem-solving, solution design, and evidence-based reasoning, while also incorporating communication skills through the interpretation and presentation of computational findings [@abetcs:2026].

### ABET Outcomes

1. Analyze complex computing problems and apply computing and mathematics
2. Design solutions to meet specified needs
3. Communicate effectively
4. Make informed judgments based on analysis and evaluation
5. Function effectively on a team

| Course Learning Objective                                                                                                                 | ABET Outcome(s) |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ------------------- |
| 1. Apply discrete mathematical concepts using computational methods in Python and Julia.                                                  | 1                   |
| 2. Analyze mathematical structures and relationships through algorithmic implementations and experimental verification.                   | 1, 4                |
| 3. Construct functions and programs that model discrete processes such as recursion, iteration, and combinatorial computation.            | 1, 2                |
| 4. Evaluate mathematical conjectures and identities using computational evidence and pattern recognition.                                 | 4                   |
| 5. Interpret connections between discrete mathematics and core computer science topics such as algorithms, data structures, and networks. | 1, 2                |
| 6. Design computational solutions that represent and manipulate abstract structures, including sets, graphs, and matrices.                | 2                   |
| 7. Compare theoretical results with computational outcomes to understand correctness, efficiency, and growth.                             | 1, 4                |
| 8. Develop problem-solving strategies integrating mathematical reasoning with programming-based experimentation.                          | 2, 4                |
| 9. Communicate results and interpretations of computational experiments clearly in written or code-based form.                            | 3, 4                |

The labs can be adapted for collaborative work to address ABET Outcome #5.  


## Lab Development

These labs were developed over several semesters for a four-credit undergraduate discrete mathematics course with an integrated laboratory component. Students use the Google Colab environment to avoid software installation and to support accessibility. The notebooks support both Python and Julia, allowing flexibility in language choice while maintaining a consistent computational framework.



# Acknowledgements

We thank the teaching assistants and students for sharing feedback to improve the laboratory assignments, including code debugging, clarification of problem statements, and length.  



# References
