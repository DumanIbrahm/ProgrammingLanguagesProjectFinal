/* 20200808070 Buse ÇOBAN */
/* 20200808019 İbrahim Duman */
%{
    #include "hehe.h"

%}


%%  


"numi"                                         printf("NUMİ - "); return TYPE_INTEGER; 
"numf"                                         printf("NUMF - "); return TYPE_FLOAT;
"strc"                                         printf("STRC - "); return TYPE_CHAR;
"str"                                          printf("STR - "); return TYPE_STRING;
"tf"                                           printf("TF - "); return TYPE_BOOLEAN;

[+-]?[0-9]+                                    printf("INTEGER - "); return INTEGER; 
[+-]?[0-9]*\.[0-9]+                            printf("FLOATING_POINT - "); return FLOATING_POINT;
'.'                                            printf("CHARACTER - "); return CHARACTER; 
\"([^\"\n]*|\\.)+\"                            printf("STRING - "); return STRING;
"true"                                         printf("TRUE - "); return TRUE;
"false"                                        printf("FALSE - "); return FALSE;



if                                             printf("IF - "); return IF;
else                                           printf("ELSE - "); return ELSE;
while                                          printf("WHILE - "); return WHILE;
for                                            printf("FOR - "); return FOR; 
print                                          printf("PRINT - "); return PRINT;
scan                                           printf("SCAN - "); return SCAN;
fn                                             printf("FUNCTION - "); return FUNCTION;
ret                                            printf("RETURN - "); return RETURN;



"=="|"!="|">"|"<"|">="|"<="                    printf("COMPARISON_OPERATOR - "); return COMPARISON_OPERATOR;
"&"                                            printf("LOGICAL_AND_OPERATOR - "); return LOGICAL_AND_OPERATOR;
"|"                                            printf("LOGICAL_OR_OPERATOR - "); return LOGICAL_OR_OPERATOR; 
"!"                                            printf("LOGICAL_NOT_OPERATOR - "); return LOGICAL_NOT_OPERATOR;


[[:alpha:]_][[:alnum:]_]*                      printf("IDENTIFIER - "); return IDENTIFIER;
"("                                            printf("LEFT_PARENTHESIS - "); return LEFT_PARENTHESIS;
")"                                            printf("RIGHT_PARENTHESIS - "); return RIGHT_PARENTHESIS;
"{"                                            printf("LEFT_BRACE - "); return LEFT_BRACE;
"}"                                            printf("RIGHT_BRACE - "); return RIGHT_BRACE;
";"                                            printf("SEMICOLON - "); return SEMICOLON;
"="                                            printf("ASSIGNMENT_OPERATOR - "); return ASSIGNMENT_OPERATOR;
","                                            printf("COMMA - "); return COMMA;
[+\-*\/]                                       printf("ARITHMETIC_OPERATOR - "); return ARITHMETIC_OPERATOR;

:                                              printf("COLON - "); return COLON;


[ \t]+                                          /* Ignore whitespace */

"--"(.)*\n                                      /* Ignore comments */

"."                                             printf("CHARACTER - "); return CHARACTER;

.                                               { printf("ERROR: unrecognized character\n"); } 

%%


int yywrap(void){
    return 1;
}