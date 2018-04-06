
%{
	// Victor Ferrao Santolim
	// Parser de Python, parte Yacc

	#include <stdio.h>
  	#include <stdlib.h>
	void yyerror(char *c);
	int yylex(void);
%}

%token INT STRING CONST EOL

%%
	PROGRAMA:
			PROGRAMA LISTA EOL {printf("OK\n");}
			|
			;

	LISTA:	
			'['']'
		|	'['ELEMENTO']'

	ELEMENTO:
			LISTA
		|	ELEMENTO','ELEMENTO	
		|	INT
		|	STRING
		|	CONST
		;

%%

void yyerror(char *s) {
	printf("ERRO\n");
}

int main() {
  yyparse();
    return 0;

}
