# dothehe
## Project Group Members
- 20200808070 Buse Çoban
- 20200808019 İbrahim Duman

## Design of Our Language
Hehe is a programming language encompassing fundamental features such as variable declarations, assignments, arithmetic and logical operations, conditional statements, iterative constructs, function definitions, and input/output capabilities.
## BNF
```
<program> ::= <statement> | <program> <statement>

<statement> ::= <variable_declaration> | <assignment_statement> | <function_declaration>
| <if_statement> | <loop_statement> | <io_statement> | <comment>

<variable_declaration> ::= <type> <identifier>

<type> ::= "numi" | "numf" | "strc" | "str" | "tf"

<identifier> ::= <letter> | <identifier> <letter> | <identifier> <digit>

<letter> ::= "A" | "B" | ... | "Z" | "a" | "b" | ... | "z"

<digit> ::= "0" | "1" | ... | "9"

<assignment_statement> ::= <identifier> "=" <expression>

<expression> ::= <logical_term> | <expression> "|" <logical_term>

<logical_term> ::= <logical_factor> | <logical_term> "&" <logical_factor>

<logical_factor> ::= <comparison> | "!" <logical_factor> | "(" <expression> ")"

<comparison> ::= <additive_expression> <comparison_operator> <additive_expression>

<comparison_operator> ::= "==" | "!=" | ">" | "<" | ">=" | "<="

<additive_expression> ::= <term> | <additive_expression> "+" <term> | <additive_expression> "-" <term>

<term> ::= <factor> | <term> "*" <factor> | <term> "/" <factor>

<factor> ::= <number> | <identifier> | "(" <expression> ")" 

<number> ::= <integer> | <floating_point>

<integer> ::= <digit> | <integer> <digit>

<floating_point> ::= <integer> "." <integer>

<function_declaration> ::= "fun" <identifier> "(" <parameters> ")" <statement>

<parameters> ::= <type> <identifier> | <parameters> "," <type> <identifier>

<if_statement> ::= "if" "(" <condition> ")" <statement> | "if" "(" <condition> ")" <statement> "else" <statement>

<condition> ::= <expression> <comparison_operator> <expression>

<loop_statement> ::= "while" "(" <condition> ")" <statement>

<io_statement> ::= "print" <expression> | "scanner" <identifier>

<comment> ::= "--" <text>

<text> ::= <letter> | <text> <letter>
```
## Design Decision
While we designing Hehe, we made the following decisions:

- The language is statically typed, meaning that variable types must be declared before they are used.
- Variables can only be assigned values of the same type. For example, an integer variable cannot be assigned a string value.
- We chose to use curly braces to delimit blocks of code, as they are easy to read and commonly used in other programming languages.
- We chose to use the if statement for conditional branching and the while statement for loops, as they are simple and widely used constructs.
- We chose to use '&', '|', and '!' for logical operators, as they are commonly used in other programming languages and are intuitive.
- We chose to use print and scan statements for input/output, as they are easy to understand and commonly used in other programming languages.
- We chose to use the BNF grammar notation to specify the syntax of the language, as it is a standard notation used in language design.

  


