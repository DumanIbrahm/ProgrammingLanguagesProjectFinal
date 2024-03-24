# .hehe
## Project Group Members
- [20200808070 Buse Çoban](https://github.com/busecoban)
- [20200808019 İbrahim Duman](https://github.com/DumanIbrahm)

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

<function_declaration> ::= "fnc" <identifier> "(" <parameters> ")" <statement>

<parameters> ::= <type> <identifier> | <parameters> "," <type> <identifier>

<if_statement> ::= "if" "(" <condition> ")" <statement> | "if" "(" <condition> ")" <statement> "else" <statement>

<condition> ::= <expression> <comparison_operator> <expression>

<loop_statement> ::= "while" "(" <condition> ")" <statement>

<for_loop_statement> ::= "for" "(" <initialization> ";" <condition> ";" <increment> ")" <statement>

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

 ## Variable Declarations and Assignments 

 - Variables in heh are declared using the following syntax:
```
<type> <identifier> "=" <literal> ";"
```
- Here, <type> is one of the supported types (int, float, char, string, or bool), <identifier> represents a name for the variable (it must start with a letter and can contain letters, digits, and underscores), <literal> denotes a value of the specified type, and ";" serves as the statement terminator.
- integer
```
numi x = 1;
```
- float
```
numf y = 3.14;
```
- char
```
strc letter = 'Z';
```
- string
```
str greeting = "Hello,Akdeniz University!";
```
- boolean
```
tf is_false = false;
```
- To assign a value to an existing variable, use the following syntax:
```
<identifier> "=" <expression> ";"
```
- Here, <identifier> represents the name of the variable, <expression> denotes an arithmetic or logical expression that evaluates to the same type as the variable, and ";" serves as the statement terminator.
- For example,to assign a new value to the variable x, you can write:
```
x = 13;
```

## Language Keywords
- > if
- > else
- > while
- > for 

## Predefined functions
- > print
- > scan

## Operators

- > ``` == ```    ->```is equal ```
- > ```!= ```   -> ```not equals ```
- >```!```      -> ```logical not```
- > ```|```     -> ```logical or```
- > ```§```     -> ```logical and```
- > ```+```     -> ```addition```
- > ```- ```    -> ```subtraction```
- > ```*```     -> ```multiplication```
- > ```> ```    -> ```greater than```
- > ```< ```    -> ```less than```
- > ```>=```    -> ```greater than or equals```
- >```<=```     -> ```less than or equals```
- > ```()```    -> ```function call```

## Other Features
- Hehe allows you to add comments to your code using the '--' syntax. Any text that follows '--' on a line is ignored by the compiler."
```
--this is a comment
numi x=13; --this is another comment
--this is another comment
 ```
- Hehe allows conditional statements in the form of if statements.The basic syntax is like that:
 ```
if (<expression>) <statement> [else <statement>]
 ```
- Here, <expression> represents a logical condition that determines whether to execute the subsequent <statement>. If <expression> evaluates to true, the first <statement> is executed. If <expression> evaluates to false and an else clause is present, the second <statement> is executed instead.
 ```
numi x = 5 ;
tf is_positive;
if(x > 0 ){
tf=true;
print( tf + " x is positive ");
}else {
print(tf + " x is negative ")
}
 ```
- Hehe supports while loops, which repeatedly execute a block of statements as long as a specified condition remains true. The basic syntax is:
```
  while (x < 13) {
  x = x + 1;
  print(x);
  }
```
- Also Hehe supports for loops, which iterate over a sequence of elements and execute a block of statements for each element. The basic syntax is:
```
for(numi i = 0; i<13 & i>0; i++){
    print(i);
}
```
- Hehe allows you to define and call functions.fnc keyword is used to define a function.
```
  numi fnc method(numi a, numi b){
    ret a + b;
}
```
- Hehe supports two basic input/output statements: print and scan.
```
print("hehe will be the best programming language because we developed that :) ")
```
# Commands
- lex hehe.l
   * The lex command stands for "Lexical Analyzer Generator" and is used in Unix/Linux operating systems. The command lex hehe.l takes this Lex file and generates a C program based on it. This C program parses the tokens of the specified input language according to certain rules and provides these tokens as output.
 - gcc hehe.c lex.yy.c -o hehe
    * The command 'gcc hehe.c lex.yy.c -o hehe' compiles the files 'hehe.c' and 'lex.yy.c' written in C language, producing an executable file named 'hehe'.
       - hehe.c: This file typically contains the C source code generated by the Lex program. The Lex program was created using a definition file (hehe.l).
       - lex.yy.c: This file contains the source code of the lexer in C language generated by the Lex program.
 - ./hehe <exampleporg1.in
    * The command './hehe <exampleporg1.in' runs the executable file named filename and redirects the contents of the file 'exampleporg1.in' to the standard input of the program.
# Compile
Our header file : ![8b7f6f71-d9de-4921-a519-443f8c0e90c1](https://github.com/DumanIbrahm/ProgrammingLanguagesProject/assets/94488767/8a0e04ac-3df7-4bdb-b9f0-c242da727fd4)
Output : ![746ffb0e-b081-4421-853e-454b7fe61d44](https://github.com/DumanIbrahm/ProgrammingLanguagesProject/assets/94488767/d75c8f1f-1f6f-460c-bad2-a5cfe6d3e9cb)

<img width="896" alt="Screenshot 2024-03-24 at 16 03 33" src="https://github.com/busecoban/ProgrammingLanguagesProject/assets/73944611/703c5805-7924-41c3-9a17-811061f154db">



## Conclusion
- Hehe is a straightforward programming language crafted for simplicity in learning and application. It encompasses fundamental programming structures including variables, functions, conditional statements, loops, and input/output operations. 

make ./hehe < exampleprog1.hehe
