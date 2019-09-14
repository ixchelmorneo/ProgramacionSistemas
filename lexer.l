%{
	#include <string.h>
enum  {
	ENTERO = 258,    // int
	SUMA	= 259,      // Operador aritmético
	RESTA = 260,     // Operador aritmético  
	LEQ = 	261,     // Operador relacional
	MAYOR = 	262,     // Operador relacional
	IF = 263,                      // KEYWORD O PALABRA RESERVADA
	ELSE = 264,                // KEYWORD O PALABRA RESERVADA
	WHILE = 265,            // KEYWORD O PALABRA RESERVADA
	FOR = 266,                 // KEYWORD O PALABRA RESERVADA
	PROGRAM = 267,      // KEYWORD O PALABRA RESERVADA
	PRINT = 268,            // KEYWORD O PALABRA RESERVADA
	READ = 269,              // KEYWORD O PALABRA RESERVADA
	ERROR = 270
};
int yylval;
char cadena[30];
%}


%%

"+"        					{ strcpy(cadena,yytext);  return SUMA;  }
"-"          					{ strcpy(cadena,yytext);  return RESTA;  }
"<="       				    { strcpy(cadena,yytext);  return LEQ;  }
">"         					{ strcpy(cadena,yytext);   return MAYOR;   }
"if"         				    { strcpy(cadena,yytext);  return IF;  }
"else"         			    { strcpy(cadena,yytext);  return ELSE;  }
"while"         			{ strcpy(cadena,yytext);   return WHILE;  }
"for"        				{ strcpy(cadena,yytext);  return FOR;  }
"program"         	    { strcpy(cadena,yytext);  return PROGRAM;  }
"print"                     { strcpy(cadena,yytext);  return PRINT;  }
"read"                      { strcpy(cadena,yytext);   return READ;  }
[0-9]+    				    { yylval = atoi(yytext);  return ENTERO;    }
[a-zA-Z]+                { strcpy(cadena,yytext);  return ERROR;    }
\n							{/* Solo ignorar */}
[\t ()]                     {/*Solo ignorar */}



%%


main(int argc, char **argv)
{
	int tok;
	while(tok = yylex()) {
		/*
		Si el lexema está dentro de este rango de
		valores, dados en "enum", entonces es un
		identificador de variable. Así que por ejemplo
		si el lexema es "if", entonces el renglón
		correspondiente en la tabla de símbolos
		deberá tener la información siguiente:
		if 	id_var    263
		*/
		if(tok >= IF && tok <= READ)
			printf("\n%s	 keyword   %d", cadena, tok);
		if(tok >= SUMA && tok <= RESTA)
			printf("\n%s	 op_arit   %d", cadena, tok);
		if(tok == ENTERO)
			printf("\n%d	 int   %d", yylval, tok);
		if(tok >= LEQ && tok <= MAYOR)
			printf("\n%s	 op_rel   %d", cadena, tok);
		if(tok == ERROR)
			printf("\n%s Palabra no reconocida",cadena);
		printf("\n");
	}
}




























