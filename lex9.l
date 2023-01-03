%{
#include<stdio.h>
%}
space [ \n\t]+
%%
{space} {}
. {printf("%s",yytext);}
%%
