%{
#include <stdio.h>

int vowels = 0, consonants = 0, digits = 0;
int spaces = 0, special = 0;
%}

%%
[AEIOUaeiou]          { vowels++; }
[A-Za-z]              { consonants++; }
[0-9]                 { digits++; }
[ \t\n]               { spaces++; }
.                     { special++; }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the text:\n");
    yylex();

    printf("\nResult:\n");
    printf("Vowels      : %d\n", vowels);
    printf("Consonants  : %d\n", consonants);
    printf("Digits      : %d\n", digits);
    printf("Spaces      : %d\n", spaces);
    printf("Special Chars : %d\n", special);

    return 0;
}