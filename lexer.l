%{
	#include <string.h>
enum  {
   PUNTO=248,
   DOSPUNTOS=249,
   PUNTOCOMA=250,
   COMA=251,
   PARENTESISABRE=252,
   PARENTESISCIERRA=253,
   CORCHETEABRE=254,
   CORCHETECIERRA=255,
   LLAVEABRE=256,
   LLAVECIERRA=257,
   SI = 258, // KEYWORD O PALABRA RESERVADA SI
   ENTONCES = 259, // KEYWORD O PALABRA RESERVADA ENTONCE
   OTRO = 260,// KEYWORD O PALABRA RESERVADA OTRO
   MIENTRAS = 261, // KEYWORD O PALABRA RESERVADA MIENTRAS
   PARA = 262, // KEYWORD O PALABRA RESERVADA PARA
   HASTA = 263, // KEYWORD O PALABRA RESERVADA HASTA
   HAZ = 264, // KEYWORD O PALABRA RESERVADA HAZ
   LEER = 265, // KEYWORD O PALABRA RESERVADA LEER
   IMPRIMIR = 266, // KEYWORD O PALABRA RESERVADA IMPRIMIR
   PROGRAMA = 267, // KEYWORD O PALABRA RESERVADA PROGRAMA
   CONSTANTE = 268, // KEYWORD O PALABRA RESERVADA CONSTANTE
   ENTERO = 269, // KEYWORD O PALABRA RESERVADA ENTERO
   FLOTANTE = 270, // KEYWORD O PALABRA RESERVADA FLOTANTE
   CARACTER = 271, // KEYWORD O PALABRA RESERVADA CARACTER
   CADENA = 272, // KEYWORD O PALABRA RESERVADA CADENA
   ARREGLO = 273, // KEYWORD O PALABRA RESERVADA ARREGLO
   FUNCION = 274, // KEYWORD O PALABRA RESERVADA FUNCION
   POTENCIA = 275, // KEYWORD O PALABRA RESERVADA POTENCIA
   SQRT = 276, // KEYWORD O PALABRA RESERVADA SQRT
   SENO = 277, // KEYWORD O PALABRA RESERVADA SENO
   COSENO=278, // KEYWORD O PALABRA RESERVADA COSENO
   TANGENTE=279, // KEYWORD O PALABRA RESERVADA TANGENTE
   LOG=280, // KEYWORD O PALABRA RESERVADA LOG
   EXPONENTE=281, // KEYWORD O PALABRA RESERVADA EXP
   SUMA=282, // Operador aritmético
   RESTA=283, // Operador aritmético
   MULTIPLICACION=284, // Operador aritmético
   DIVISION=285, // Operador aritmético
   MODULO=286, // Operador aritmético
   MENORQUE=287, // Operador relacional
   MAYORQUE=288, //Operador relacional
   MENORIGUAL=289, //Operador relacional
   MAYORIGUAL=290, //Operador relacional
   EQUALS=291, //Operador relacional
   NOTEQUALS=292, //Operador relacional
   AND=293, //Operador relacional
   OR=294, //Operador relacional
   NEGACIONLOGICA=295, //Operador relacional
   SUMAASIG=296, //Operador asignacion
   RESASIG=297, //Operador asignacion
   MULTASIG=298, //Operador asignacion
   DIVASIG=299, ////Operador asignacion
   MODASIG=300, //Operador asignacion
   INCREMENTO=301, //Operador asignacion
   DECREMENTO=302, //Operador asignacion
   NUMEROENTERO=303, //NUMERO ENTERO
   NUMEROFLOTANTE=304,//NUMERO FLOTANTE
   IDVARIABLE=305, // ID VARIABLE
   IDFUNCION=306 //ID FUNCION   
};

int yylval;
char cadena[30];
%}


%%


"."							{ strcpy(cadena,yytext);  return PUNTO;}	
":"							{ strcpy(cadena,yytext);  return DOSPUNTOS;}
";"							{ strcpy(cadena,yytext);  return PUNTOCOMA; }
","							{ strcpy(cadena,yytext);  return COMA; }
"("							{ strcpy(cadena,yytext);  return PARENTESISABRE; }
")"							{ strcpy(cadena,yytext);  return PARENTESISCIERRA; }	
"["							{ strcpy(cadena,yytext);  return LLAVEABRE; }
"]"							{ strcpy(cadena,yytext);  return LLAVECIERRA; }
"if"						{ strcpy(cadena,yytext);  return SI;  }	
"else"						{ strcpy(cadena,yytext);  return ENTONCES;  }
"other"						{ strcpy(cadena,yytext);  return OTRO;  }
"while"						{ strcpy(cadena,yytext);  return MIENTRAS;  }
"for"						{ strcpy(cadena,yytext);  return PARA;  }
"do"						{ strcpy(cadena,yytext);  return HASTA;  }
"read"						{ strcpy(cadena,yytext);  return LEER;  }
"print"						{ strcpy(cadena,yytext);  return IMPRIMIR;  }
"program"					{ strcpy(cadena,yytext);  return PROGRAMA;  }
"const"						{ strcpy(cadena,yytext);  return CONSTANTE;  }
"int"						{ strcpy(cadena,yytext);  return ENTERO;  }
"float"						{ strcpy(cadena,yytext);  return FLOTANTE;  }
"char"						{ strcpy(cadena,yytext);  return CARACTER;  }	
"String"					{ strcpy(cadena,yytext);  return CADENA;  }	
""							{ strcpy(cadena,yytext);  return ARREGLO;  }	
"function"					{ strcpy(cadena,yytext);  return FUNCION;  }
"pow"						{ strcpy(cadena,yytext);  return POTENCIA;  }	
"sqrt"						{ strcpy(cadena,yytext);  return SQRT;  }	
"sin"						{ strcpy(cadena,yytext);  return SENO;  }	
"cos"						{ strcpy(cadena,yytext);  return COSENO;  }	
"tan"						{ strcpy(cadena,yytext);  return TANGENTE;  }	
"log"						{ strcpy(cadena,yytext);  return LOG;  }
"exp"						{ strcpy(cadena,yytext);  return EXPONENTE;  }
"+"        					{ strcpy(cadena,yytext);  return SUMA;  }
"-"          				{ strcpy(cadena,yytext);  return RESTA;  }	
"*"							{ strcpy(cadena,yytext);  return MULTIPLICACION;  }	
"/"							{ strcpy(cadena,yytext);  return DIVISION;  }	
"%"							{ strcpy(cadena,yytext);  return MODULO;  }
"<"							{ strcpy(cadena,yytext);  return MENORQUE;  }
">"							{ strcpy(cadena,yytext);  return MAYORQUE;  }
"<="						{ strcpy(cadena,yytext);  return  MENORIGUAL;  }
">="						{ strcpy(cadena,yytext);  return  MAYORIGUAL;  }
"=="						{ strcpy(cadena,yytext);  return  EQUALS;  }
"!="						{ strcpy(cadena,yytext);  return  NOTEQUALS;  }
"&&"						{ strcpy(cadena,yytext);  return  AND;  }
"||"						{ strcpy(cadena,yytext);  return  OR;  }
"!"							{ strcpy(cadena,yytext);  return  NEGACIONLOGICA;  }
"+="						{ strcpy(cadena,yytext);  return  SUMAASIG;  }
"-="						{ strcpy(cadena,yytext);  return  RESASIG;  }
"*="						{ strcpy(cadena,yytext);  return  MULTASIG;  }
"=/"						{ strcpy(cadena,yytext);  return  DIVASIG;  }												
"mod="						{ strcpy(cadena,yytext);  return  MODASIG;  }						
"++"						{ strcpy(cadena,yytext);  return  INCREMENTO;  }					
"--"						{ strcpy(cadena,yytext);  return  DECREMENTO;  }
[0-9]+						{ yylval = atoi(yytext); return  NUMEROENTERO;  }
[0-9]+[.][0-9]+				{ yylval = atof(yytext);  return  NUMEROFLOTANTE;  }

[\t]                     	{/*Solo ignorar */}
[\n]						{/*Solo ignorar */}
#.*							{/*Solo ignorar */}


[a-z][a-zA-Z0-9_]*  	{ strcpy(cadena,yytext);  return IDVARIABLE;  }	
[A-Z][a-zA-Z0-9_]*			{ strcpy(cadena,yytext);  return IDFUNCION;  }
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



		if(tok >= PUNTO && tok <= LLAVECIERRA)
			printf("\n%s	 SIGNO PUNTUACION   %d", cadena, tok);
		
		if(tok >= SI && tok <= EXPONENTE)
			printf("\n%s	 PALABRA RESERVADA   %d", cadena, tok);

		if(tok >= SI && tok <= EXPONENTE)
			printf("\n%s	 PALABRA RESERVADA   %d", cadena, tok);


		if(tok >= SUMA && tok <= MODULO)
			printf("\n%s	 OPERADOR ARITMETICO   %d", cadena, tok);

		if(tok >= MENORQUE && tok <= NOTEQUALS)
			printf("\n%s	 OPERADOR RELACIONAL   %d", cadena, tok);			

		if(tok >= AND && tok <= NEGACIONLOGICA)
			printf("\n%s	 OPERADOR LOGICO   %d", cadena, tok);

		if(tok==NUMEROENTERO)	
		printf("\n%d	 int   %d", yylval, tok);

		if(tok==NUMEROFLOTANTE)	
		printf("\n%f	 float   %d",yylval, tok);

		if(tok == IDVARIABLE)
			printf("\n%s IDENTIFICADOR VARIABLE",cadena);

		if(tok == IDFUNCION)
			printf("\n%s IDENTIFICADOR FUNCION",cadena);

		printf("\n");	


	}
}








