%{
#include<stdio.h>
    int vc=0;
    int cc =0;
%}
vowels [aeiouAEIOU]
letters [bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]
%%
{vowels} {vc++;}
{letters} {cc++;}
\n {return 0;}
%%
int main()
{
printf("\n enter the string:");
yylex();
    printf("Number of vowels are:  %d\n", vc);
    printf("Number of consonants are:  %d\n", cc);
}
