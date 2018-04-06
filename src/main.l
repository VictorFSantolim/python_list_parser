
%{
// Victor Ferrao Santolim
// Parser de Python, parte Lex

#include <stdlib.h>
void yyerror(char *);
#include "y.tab.h"

%}


%%

([ ]*[0-9]+[ ]*) {return INT;} 

([ ]*[A-Za-z0-9]+[ ]*) {return CONST;}

([ ]*["][A-Za-z0-9]*["][ ]*) {return STRING;}

[\n] {return EOL;}

"[" {return '[';}

"]" {return ']';}

[,] {return ',';}

%%

int yywrap() {
  return 1;
}
