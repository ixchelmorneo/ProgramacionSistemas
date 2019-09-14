%{
	#include <string.h>
enum  {
	
   IF = 258 // KEYWORD O PALABRA RESERVADA SI,ENTONCES
   ELSE = 259 // KEYWORD O PALABRA RESERVADA OTRO
   WHILE = 260 // KEYWORD O PALABRA RESERVADA MIENTRAS
   FOR = 261 // KEYWORD O PALABRA RESERVADA PARA HASTA
   DO = 261 // KEYWORD O PALABRA RESERVADA HAZ
   SCAN = 262 // KEYWORD O PALABRA RESERVADA LEER
   PRINT = 263 // KEYWORD O PALABRA RESERVADA IMPRIMIR
   PROGRAM = 264 // KEYWORD O PALABRA RESERVADA PROGRAMA
   PI = 265 // KEYWORD O PALABRA RESERVADA CONSTANTE
   INT = 266 // KEYWORD O PALABRA RESERVADA ENTERO
   FLOAT = 267 // KEYWORD O PALABRA RESERVADA FLOTANTE
   CHAR = 268 // KEYWORD O PALABRA RESERVADA CARACTER
   STRING = 269 // KEYWORD O PALABRA RESERVADA CADENA
   ARRAY = 270 // KEYWORD O PALABRA RESERVADA ARREGLO
   FUNCTION = 271 // KEYWORD O PALABRA RESERVADA FUNCION
   POW = 272 // KEYWORD O PALABRA RESERVADA POTENCIA
   SQRT = 273 // KEYWORD O PALABRA RESERVADA RAIZ
   SIN = 274 // KEYWORD O PALABRA RESERVADA SENO
   COS = 275 // KEYWORD O PALABRA RESERVADA COSENO
   TAN = 276 // KEYWORD O PALABRA RESERVADA TANGENTE
   LOG = 277 // KEYWORD O PALABRA RESERVADA LOGARITMO




     


   // estos son los que veninan en el ejercicio del profe no los borre para no perdernos

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

//3 OPERADORES ARITMETICOS,LOGICOS Y RELACIONALES

"+"        					{ strcpy(cadena,yytext);  return SUMA;  }
"/"                         { strcpy(cadena,yytext);  return DIVICION;  }
"*"        					{ strcpy(cadena,yytext);  return MULTIPLICACION;  }
"/"                         { strcpy(cadena,yytext);  return RESTA;  }
"mod"        					{ strcpy(cadena,yytext);  return MODULO;  }
"<"                         { strcpy(cadena,yytext);  return MENOR;  }
">"         					{ strcpy(cadena,yytext);   return MAYOR;   }
"<="       				    { strcpy(cadena,yytext);  return LEQ;  }
">="         					{ strcpy(cadena,yytext);   return MAYORIGUAL
"=="       				    { strcpy(cadena,yytext);  return IGUAL;  }
"!="         					{ strcpy(cadena,yytext);   return DIFERENTE;   }
"&&"       				    { strcpy(cadena,yytext);  return AND;  }
"||"         					{ strcpy(cadena,yytext);   return OR;   }
"!"       				    { strcpy(cadena,yytext);  return NEGACION;  }





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




























