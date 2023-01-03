%{
#include<stdio.h>
%}
nl .*\n
%%
{nl} {printf("%d %s",l++,yytext);}
%%
