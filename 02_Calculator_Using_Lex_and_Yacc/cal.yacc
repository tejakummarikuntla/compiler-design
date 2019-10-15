%{
 #include<stdio.h>
extern int yylex(void);
void yyerror(char *);
int x=0;
%}
%token INT
%%
program:
program expr '\n'		{x=$2;printf("%d\n",$2);}
|	
;
expr:
T		{$$=$1;}
|expr '+' T	{$$=$1+$3;}
|expr '-' T	{$$=$1-$3;}
|'+' T		{$$=x+$2;}
|'-' T		{$$=x-$2;}
;
T:
F		{$$=$1;}
|T '*' F	{$$=$1*$3;}
|T '/' F	{$$=$1/$3;}
|'*' F		{$$=x*$2;}
|'/' F		{$$=x/$2;}
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

