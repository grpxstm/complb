#include<stdio.h>
#include<string.h>
#include<stdlib.h>
char input[20];
int lookahead=0;
void E();
void E1();
void T();
void T1();
void F();
int L1=1;
void match(char t);
int main()
{
printf("enter the input string:");
gets(input);
E();
if((input[lookahead]=='$') && L1==1)
{
printf(" accepted \n");
}
else
{
printf("not accepted \n");
}
}
void E()
{
T();
E1();
}
void E1()
{
if(input[lookahead]=='+')
{
match('+');
T();
E1();
}
else if(input[lookahead]=='-')
{
match('-');
T();
E1();
}
else
{
return;
}
}
void T()
{
F();
T1();
}
void T1()
{
if(input[lookahead]=='*')
{
match('*');
F();
T1();
}
else if(input[lookahead]=='/')
{
match('/');
F();
T1();
}
else
{
return;
}
}
void F()
{
if(input[lookahead]=='i')
{
match('i');
}
else if(input[lookahead]=='(')
{
match('(');
E();
match(')');
}
else
{
return;
}
}
void match(char t)
{
//printf("\n matching");
if(input[lookahead]==t)
{
lookahead++;
}
else
{
printf(" error \n");
L1=0;
}
}


