### Steps to Run
```
1. $ gcc shift_reduce_rarser.c
This Generates a.out 
2. ./a.out
```
Input:
```
(a+a)*a
```
Output:
```
Stack   Input   Action
(       a+a)*a  Shifted
(a      +a)*a   Shifted
(E      +a)*a   Reduced
(E+     a)*a    Shifted
(E+a    )*a     Shifted
(E+E    )*a     Reduced
(E      )*a     Reduced
(E)     *a      Shifted
E       *a      Reduced
E*      a       Shifted
E*a             Shifted
E*E             Reduced
E               Reduced
String Accepted

```
