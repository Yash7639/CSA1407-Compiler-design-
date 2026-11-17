%{
#include <stdio.h>
%}

%%
[a-z0-9._]+@[a-z]+\.(com|in)    { printf("It is a valid email\n"); }
.+                              { printf("It is not a valid email\n"); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the email: ");
    yylex();
    return 0;
}