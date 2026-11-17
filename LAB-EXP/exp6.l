%{
#include <stdio.h>
%}

%%
\<[^>]*\>      ;
[^<>\n]+       { printf("%s", yytext); }
\n             { printf("\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter HTML code:\n");
    yylex();

    return 0;
}