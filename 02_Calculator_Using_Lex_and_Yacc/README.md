### Setps to Compile and Run

```
1. $ lex cal.l
This generates `lex.yy.c`
2. $ yacc -d cal.yacc
This generates `y.tab.h` and `y.tab.c`
3. $ cc lex.yy.c y.tab.c -ll -ly -lm
```

This Generates Output:

```
2*4
8

```
