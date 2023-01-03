%{
#include<stdio.h>
%}
%%
if | 
printf {printf("%s is a keyword",yytext);}
.|\n {ECHO;}
%%
int main()
{
printf("\n enter the string:");
yylex();
}
int yywrap()
{
return 1;
}
