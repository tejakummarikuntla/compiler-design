letter [A-Za-z]
digit [0-9]
operator [+-*]
%%
void |
main |
if |
do |
float |
int |
printf |
char |
for |
while {printf("%s is a keyword\n",yytext);}
%s |
%d |
%c |
%f {printf("%s is a data type\n",yytext);}
{digit}({digit})* {printf("%s is a number\n",yytext);}
{letter}({letter}|{digit})* {printf("%s is an identifier\n",yytext);}
\( {printf("%s is open paranthesis\n",yytext);}
\) {printf("%s is close paranthesis\n",yytext);}
\; {printf("%s is semi colon\n",yytext);}
\. {printf("%s is a dot operator\n",yytext);}
\= {printf("%s is assignment operator\n",yytext);}
\{ {printf("%s is open braces\n",yytext);}
\} {printf("%s is close braces\n",yytext);}
\/ {printf("%s is a back slash\n",yytext);}
\, {printf("%s is a comma\n",yytext);}
\" {printf("%s is double qoute\n",yytext);}
%%
int main(int argc,char* argv[])
{
FILE *fp;
if((fp=fopen(argv[1],"r"))==NULL)
{
printf("FILE doesn&#39;t exist");
}
yyin=fp;
yylex();
return 0;
}
