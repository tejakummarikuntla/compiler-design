%{
 #include<stdio.h>
#include<stdlib.h>
extern int yylex(void);
void yyerror(char *);
%}
%token INT
%%
program:
program expr '\n'		{printf("%d\n",$2);}
|
;
expr:
T		{$$=$1;}
|expr '+' T	{$$=$1+$3;}
|expr '-' T	{$$=$1-$3;}
;
T:
F		{$$=$1;}
|T '*' F	{$$=$1*$3;}
|T '/' F	{$$=$1/$3;}
;
F:
INT		{$$=$1;}
|'(' expr ')'	{$$=$2;}
%%
void yyerror(char *s)
{
printf("%s",s);
}
int main()
{ 
yyparse();
return 0;
}
