%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
int yylex();
int yyerror();
%}
%token a B C D
%% 
S : A a{printf("\n Valid String \n ");exit(0);}
  | B A C{printf("\n Valid String \n ");exit(0);}
  | D C{printf("\n Valid String \n ");exit(0);}
  | B D a{printf("\n Valid String \n ");exit(0);}
  ;
A : D
  ;
%%
int main()
{
printf("Enter the string:");
yyparse();
exit(0);
}  

