%{
#include <stdio.h>

int nc = 0;
%}

%%
"/*"([^*]|\*+[^*/])*\*+"/"    { nc++; }
"//".*                        { nc++; }
.|\n                          ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the program (Press Ctrl+D to stop):\n");
    yylex();

    printf("\nNumber of comment lines = %d\n", nc);

    return 0;
}