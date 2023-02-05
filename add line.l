%{
#include<stdio.h>
int l=1;
%}
nl .*\n
%%
{nl} {printf("%d %s",l++,yytext);}
%%
