#include<stdio.h>
#include<conio.h>
void main()
{
char stack[20],ip[20],opt[10][10],ter[10];
int i,j,k,n,top=0,col,row;
clrscr();
/*	for(i=0;i<5;i++)
{
stack[i]=NULL;
ip[i]=NULL;
for(j=0;j<5;j++)
{
opt[i][j]=NULL;
}
}*/
printf("Enter the no.of terminals:");
scanf("%d",&n);
printf("\nEnter the terminals:");
scanf(" %s",ter);
printf("\nEnter the table values:\n");
for(i=0;i<n;i++)
{
for(j=0;j<n;j++)
{
printf("\nEnter the value for %c %c:",ter[i],ter[j]);
opt[i][j]=getche();
}
}
printf("\nOPERATOR PRECEDENCE TABLE:\n");
for(i=0;i<n;i++){printf("\t%c",ter[i]);}
printf("\n");
for(i=0;i<n;i++)
{
printf("\n%c",ter[i]);
for(j=0;j<n;j++)
{
printf("\t%c",opt[i][j]);

}
}
stack[top]='$';
printf("\nEnter the input string:");
scanf(" %s",ip);
i=0;
printf("\nSTACK\t\t\tINPUT STRING\t\t\tACTION\n");
printf("\n%s\t\t\t%s\t\t\t",stack,ip);
while(i<=strlen(ip))
{
for(k=0;k<n;k++)
{
if(stack[top]==ter[k])
row=k;
if(ip[i]==ter[k])
col=k;
}
if((stack[top]=='$')&&(ip[i]=='$'))
{
printf("String is accepted");
break;
}
else if((opt[row][col]=='<') ||(opt[row][col]=='='))
{
stack[++top]=opt[row][col];
stack[++top]=ip[i];
printf("Shift %c",ip[i]);
i++;
}
else
{
if(opt[row][col]=='>')
{
while(stack[top]!='<')
--top;
top=top-1;
printf("Reduce");
}
else
{
printf("\nString is not accepted");
break;
}
}
printf("\n");
for(k=0;k<=top;k++)
printf("%c",stack[k]);
printf("\t\t\t");
for(k=i;k<strlen(ip);k++)
printf("%c",ip[k]);
printf("\t\t\t");
}
getch();
}


###########################################
INPUT:
Enter the no.of terminals:4
Enter the terminals:* $ + &gt;
Enter the table values:

OUTPUT:
Enter the value for * *:&gt;
Enter the value for * $:&gt;                                                       
Enter the value for $ i:&lt;                                                       
Enter the value for $ +:&lt;

Enter the value for $ *:&lt;                                                       
Enter the value for $ $:accept                                                  
                                                                                
**** OPERATOR PRECEDENCE TABLE
****                                             
        i       +       *       $                                               
                                                                                
i       e       &gt;       &gt;       &gt;                                               
+       &lt;       &gt;       &lt;       &gt;                                               
*       &lt;       &gt;       &gt;       &gt;                                               
$       &lt;       &lt;       &lt;       a
*/
Enter the input string:                                                         
i*i                                                                             
                                                                                
STACK                   INPUT STRING                    ACTION                  
                                                                                
$                       i*i                     Shift i                         
$&lt;i                     *i                      Reduce                          
$                       *i                      Shift *                         
$&lt;*                     i                       Shift i                         
$&lt;*&lt;i                                                                           
String is not accepted
