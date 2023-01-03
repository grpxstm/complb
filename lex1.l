%{
#include<stdio.h>
int w=0;
%}
whitespace [\t" "]+
letters [a-z A-Z]
%%
{whitespace} {w++;}
{letters} { }
\n {return 0;}
%%
int main()
{
printf("\n enter the string:");
yylex();
printf("Number of spaces are %d\n",w);
}
