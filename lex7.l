%{
#include<stdio.h>
%}
scomd \/\/.*
dcomd \/\*(.|\n)*\*\/
%%
{scomd} {}
{dcomd} {}
%%
