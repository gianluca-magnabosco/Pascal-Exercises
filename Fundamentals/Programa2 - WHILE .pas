Program Programa2;
{F.U.P. que LEIA um n�mero que tem que ser diferente de zero, calcule e MOSTRE a divis�o 
de 100 pelo n�mero lido. (Validar informa��o de entrada).}
// validar---validar---validar---validar!!!!!
var num:integer;
		divi:real;
Begin
// usando while
 write(' Digite por gentileza querido usu�rio um n�mero diferente de zero => ');
 readln(num);
// in�cio da valida��o
 WHILE (num = 0) DO
  Begin  
   writeln(' Idiota, "DIFERENTE DE ZERO"!!!!!!!!!');
   write(' Digite por gentileza querido usu�rio um n�mero diferente de zero => ');
   readln(num);
  End;
// fim da valida��o
 divi:= 100/num;
 writeln(' Resultado = ', divi:10:4);
 write(' Digite enter para encerrar');
 readln; 
End.