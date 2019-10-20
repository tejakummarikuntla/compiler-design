INTPUT:
```
Enter the set of intermediate code (terminated by exit):
d=2/3
c=4/5
a=2*e
exit
```

OUTPUT:
```
target code generation
Mov 2,R0
DIV 3,R0
Mov R0,d
Mov 4,R1
DIV 5,R1
Mov R1,c
Mov 2,R2
MUL e,R2
Mov R2,a
```
