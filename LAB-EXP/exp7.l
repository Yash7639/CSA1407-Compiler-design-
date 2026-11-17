%{
#include <stdio.h>
%}

%%
if|else|while|int|switch|for|char|float|return
{
    printf("%s is a KEYWORD\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]*
{
    printf("%s is an IDENTIFIER\n", yytext);
}

[ \t\n]+ ;

. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}