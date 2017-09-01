%%

/* Não altere as configurações a seguir */

%line
%column
%unicode
//%debug
%public
%standalone
%class Minijava
%eofclose

/* Insira as regras léxicas abaixo */


whitespace    			= [ \n\t\r\f]
letter        			= [A-Za-z]
digit         			= [0-9]
alphanumeric  			= {letter}|{digit}
identifier   		 	= (\_|{letter})({alphanumeric}|\_)* 
integerlit    			= ([1-9])({digit})* 
onelinecomment 			= \/\/[^\n\r]*
nlinescomment 			= ( \/\*)((! \*\/)*)

%%

/* palavras reservadas */ 

boolean               	{System.out.println("Token boolean"); }
class                 	{System.out.println("Token class"); } 
public                	{System.out.println("Token public"); }
extends               	{System.out.println("Token extends"); }
static                	{System.out.println("Token static"); }
void                  	{System.out.println("Token void"); }
String 			   		{System.out.println("Token String"); }
int       				{System.out.println("Token int "); }
while     				{System.out.println("Token while"); }
if        				{System.out.println("Token if");}   
else      				{System.out.println("Token ELSE");}
return    				{System.out.println("Token return");}
length    				{System.out.println("Token length");}
true      				{System.out.println("Token true");}
false     				{System.out.println("Token false");}
this      				{System.out.println("Token this");} 
new       				{System.out.println("Token new");}
System.out.println      {System.out.println("Token System.out.println");}

{whitespace}            {}

/* operadores */ 

"+"                     {System.out.println("Token + ");}
"*"                     {System.out.println("Token *");}
"-"						{System.out.println("Token -");}
"&&"					{System.out.println("Token &&");}
"<"						{System.out.println("Token <");}
"=="					{System.out.println("Token ==");}
"!="					{System.out.println("Token !=");}
"!"                     {System.out.println("Token ! ");}

/* pontuacao */ 

"," 					{System.out.println("Token ,");}
"." 					{System.out.println("Token .");}
";" 					{System.out.println("Token ;");}
"=" 					{System.out.println("Token =");}
"(" 					{System.out.println("Token (");}
")" 					{System.out.println("Token )");}
"{" 					{System.out.println("Token {");}
"}" 					{System.out.println("Token }");}
"[" 					{System.out.println("Token [");}
"]" 					{System.out.println("Token ]");}

/* identificadores e comentarios */ 

{identifier}			{System.out.println("identificador: " +yytext());}
{integerlit}		  	{System.out.println("Literal Inteiro: \"" + yytext() + "\"");}
{digit}					{System.out.println("Intero: \"" + yytext() + "\"");}
{onelinecomment} 		{}
{nlinescomment} 		{}

%



/* Insira as regras léxicas no espaço acima */     
     
. { throw new RuntimeException("Caractere ilegal! '" + yytext() + "' na linha: " + yyline + ", coluna: " + yycolumn); }