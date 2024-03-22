#ifndef LEX_HEADER_H
#define LEX_HEADER_H

#define TYPE_INTEGER 1
#define TYPE_FLOAT 2
#define TYPE_CHAR 3
#define TYPE_STRING 4
#define TYPE_BOOLEAN 5

#define INTEGER 6
#define FLOATING_POINT 7
#define CHARACTER 8
#define STRING 9
#define TRUE 10
#define FALSE 11

#define IF 12
#define ELSE 13
#define WHILE 14
#define FOR 15
#define PRINT 16
#define SCAN 17


#define IDENTIFIER 18
#define LEFT_PARENTHESIS 19
#define RIGHT_PARENTHESIS 20
#define LEFT_BRACE 21
#define RIGHT_BRACE 22
#define SEMICOLON 23
#define ASSIGNMENT_OPERATOR 24
#define COMMA 25
#define ARITHMETIC_OPERATOR 26
#define COLON 27

#define COMPARISON_OPERATOR 28
#define LOGICAL_AND_OPERATOR 29
#define LOGICAL_OR_OPERATOR 30
#define LOGICAL_NOT_OPERATOR 31
#define FUNCTION 32
#define RETURN 33

int yylex();

#endif 
