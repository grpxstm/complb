%{
#include<stdio.h>
    int dc=0;
    int oc =0;
%}
digit [0-9]
oper "+"|"-"|"*"|"/"|"="
%%
{digit} {dc++;}
{oper} {oc++;}
\n {return 0;}
%%
int main()
{
printf("\n enter the expression:");
yylex();
    printf("Number of digit are:  %d\n", dc);
    printf("Number of operator are:  %d\n", oc);
}
