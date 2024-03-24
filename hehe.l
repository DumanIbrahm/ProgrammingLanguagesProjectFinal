/* 20200808070 Buse ÇOBAN */
/* 20200808019 İbrahim Duman */
%{
    #include "hehe.h"

%}


%%  


"numi"                                           return TYPE_INTEGER;
"numf"                                           return TYPE_FLOAT;
"strc"                                           return TYPE_CHAR;
"str"                                            return TYPE_STRING;
"tf"                                             return TYPE_BOOLEAN;

[+-]?[0-9]+                                      return INTEGER;
[+-]?[0-9]*\.[0-9]+                              return FLOATING_POINT;
'.'                                              return CHARACTER;
\"([^\"\n]*|\\.)+\"                              return STRING;
"true"                                           return TRUE; 
"false"                                          return FALSE; 



if                                              return IF;
else                                            return ELSE;
while                                           return WHILE;
for                                             return FOR;
print                                           return PRINT;
scan                                            return SCAN;
fn                                              return FUNCTION;
ret                                             return RETURN;



"=="|"!="|">"|"<"|">="|"<="                     return COMPARISON_OPERATOR; 
"&"                                             return LOGICAL_AND_OPERATOR; 
"|"                                             return LOGICAL_OR_OPERATOR; 
"!"                                             return LOGICAL_NOT_OPERATOR; 


[[:alpha:]_][[:alnum:]_]*                        return IDENTIFIER;
"("                                              return LEFT_PARENTHESIS; 
")"                                              return RIGHT_PARENTHESIS; 
"{"                                              return LEFT_BRACE; 
"}"                                              return RIGHT_BRACE; 
";"                                              return SEMICOLON; 
"="                                              return ASSIGNMENT_OPERATOR;
","                                              return COMMA; 
[+\-*\/]                                         return ARITHMETIC_OPERATOR; 

:                                                return COLON;


[ \t]+                                          /* Ignore whitespace */

"--"(.)*\n                                      /* Ignore comments */

"."                                             return CHARACTER;

.                                               { printf("ERROR: unrecognized character\n"); } 

%%


int yywrap(void){
    return 1;
}