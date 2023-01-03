%{
#include<stdio.h>
  int ic=0;
%}
digit [0-9]
char [a-z|A-Z]
comb {char}({char}|{digit})*
nre {digit}({char}|{digit})*
ident {comb}
%%
{ident} {ic++;}
{nre}  {}
"\n"  {return 0;}
%%
int main()
{
printf("\n enter the string:");
yylex();
   printf("\nNumber of identifier are: %d\n",ic);
 } 

