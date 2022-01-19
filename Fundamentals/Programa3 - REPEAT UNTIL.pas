Program Programa3;
{F.U.P. que LEIA um n�mero que tem que ser diferente de zero, calcule e MOSTRE a divis�o 
de 100 pelo n�mero lido. (Validar informa��o de entrada).}
// validar---validar---validar---validar!!!!!
// USANDO REPEAT!!!!!!
var num:integer;
		divi:real;
Begin
  REPEAT
   write(' Digite por gentileza querido usu�rio um n�mero diferente de zero => ');
   readln(num);
    IF (num = 0) THEN
     writeln(' Idiota, "DIFERENTE DE ZERO"!!!!!!!!!');
  UNTIL (num<>0);  
 divi:= 100/num;
 writeln(' Resultado = ', divi:10:4);
 write(' Digite enter para encerrar');
 readln;
End.