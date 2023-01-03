%{
#include<stdio.h>
#include<ctype.h>
#include<stdlib.h>
#include<string.h>
int yylex();
int yytext();
int yyerror();
%}
%token ID NUM
%right'='
%left'+''-'
%left '*''/'
%left UMINUS
%%
S  :ID'='{push();} E{codegen_assign();}
   ;
E  :E'+'{push();} T{codegen();}
   |E'-'{push();} T{codegen();}
   |T
   ;
T  :T'*'{push();} F{codegen();}
   |T'/'{push();} F{codegen();}
   |F
   ;
F  :'('E')'
   |'-'{push();} F{codegen_umin();} %prec UMINUS
   |ID{push();}
   |NUM{push();}
   ;
%%

char st[100][10];
int top=0;
char i_[2]="0";
char temp[2]="t";

void main()
{
printf("Enter the expression: ");
yyparse();
}

int push()
{
strcpy(st[++top],yytext);
}

int codegen()
{
strcpy(temp,"t");
strcat(temp,i_);
printf("%s = %s %s %s\n",temp,st[top-2],st[top-1],st[top]);
top-=2;
strcpy(st[top],temp);
i_[0]++;
}

int codegen_umin()
{
strcpy(temp,"t");
strcat(temp,i_);
printf("%s=-%s\n",temp,st[top]);
top--;
strcpy(st[top],temp);
i_[0]++;
}

int codegen_assign()
{
printf("%s = %s\n",st[top-2],st[top]);
top-=2;
}
