 INPUT:
 ```
 Enter the no.of terminals:4
 Enter the terminals:* $ + &gt;
 Enter the table values:
 ```

 OUTPUT:
 ```
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
 ```
