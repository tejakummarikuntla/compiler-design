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
INT		{$$=$1;}
|expr '+' expr	{$$=$1+$3;}
|expr '-' expr	{$$=$1-$3;}
|expr '*' expr	{$$=$1*$3;}
|expr '/' expr  {$$=$1/$3;}
|'(' expr ')'	{$$=$2;}
%%
void yyerror(char*s)
{
printf("%s",s);
}
int main()
{ 
yyparse();
return 0;
}
