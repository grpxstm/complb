%{
#include<stdio.h>
  int vc=0;
  int cc=0;
  int r=0;
%}
numbers [0123456789]
operators "+"|"/"|"-"|"="|"*"
relational "<"|">"|"!="
%%
{numbers} {vc++;}
{operators} {cc++;}
{relational} {r++;}
"\n" {return 0;}
%%
int main()
{
printf("\n enter the expression:");
yylex();
   printf("Number of digit are: %d\n",vc);
   printf("Number of operators are: %d\n",cc);
printf("Number of relational operators: %d\n",r);
   } 
