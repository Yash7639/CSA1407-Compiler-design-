%{
#include <stdio.h>

int positive_no = 0;
int negative_no = 0;
%}

%%
-[0-9]+      {
                negative_no++;
                printf("Negative Number = %s\n", yytext);
             }

[0-9]+       {
                positive_no++;
                printf("Positive Number = %s\n", yytext);
             }

[ \t\n]+     ;

.            ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter numbers:\n");
    yylex();

    printf("\nTotal Positive Numbers = %d\n", positive_no);
    printf("Total Negative Numbers = %d\n", negative_no);

    return 0;
}