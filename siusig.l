%{
#include<stdio.h>
  int vc=0;
  int cc=0;
%}
digit [0-9]
num {digit}*
sign [-+]{num}
unsign {num}
%%
{sign} {vc++;}
{unsign} {cc++;}
\n {return 0;}
%%
int main()
{
printf("\n enter the number:");
yylex();
   printf("Number of signed are: %d\n",vc);
   printf("Number of unsigned are: %d\n",cc);
   } 

