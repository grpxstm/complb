%{
#include "y.tab.h"
%}
%%
"a" {return a;}
"b" {return B;}
"c" {return C;}
"d" {return D;}
[\n|.] {return yytext[0];}
%%
