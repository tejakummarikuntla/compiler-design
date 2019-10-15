### Steps to Compile and Run

```
1. $ flex f.l
This Generates `lex.yy.c` file.
2. $ cc lex.yy.c -ll
This Generates `a.out` file.
3. $ ./a.out input.c
```

This Generates the output

```
void is a keyword
main is a keyword
( is open paranthesis
) is close paranthesis

{ is open braces

int is a keyword
a is an identifier
= is assignment operator
10 is a number
; is semi colon

int is a keyword
b is an identifier
= is assignment operator
20 is a number
; is semi colon

float is a keyword
c is an identifier
= is assignment operator
a is an identifier
/ is a back slash
b is an identifier
; is semi colon

print is an identifier
( is open paranthesis
“%f is a data type
”, is a comma
c is an identifier
) is close paranthesis
; is semi colon

} is close braces
```
