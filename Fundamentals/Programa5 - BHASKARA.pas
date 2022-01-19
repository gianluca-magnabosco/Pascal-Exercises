Program BHASKARA;
{F.U.P. que CALCULE e ENCONTRE as ra�zes de equa��es de segundo grau}
var a,b,c,delta,x1,x2,raiz:real;
Begin
 write(' Digite o coeficiente A => ');
 readln(A);
  WHILE A<>0 DO
   Begin 
	  write(' Digite o coeficiente B => ');
		readln(B);
		write(' Digite o coeficiente C => ');
		readln(C);
		delta:=b*b-4*a*c;
		IF delta<0 THEN
		 writeln(' Ra�zes Imagin�rias ')
		ELSE
		 IF delta = 0 THEN
		  Begin
		   write(' Ra�z �nica ');
		   x1:=-b/(2*a);
		   writeln(' X1 = X2 = ', X1:8:2);
		  End
		 ELSE
		  Begin
		   write(' Ra�zes Distintas ');
		   raiz:=SQRT(DELTA);
		   x1:=(-b+raiz)/(2*a);
		   x2:=(-b-raiz)/(2*a);
		   writeln(' x1 = ', x1:8:2, ' x2 = ', x2:8:2);
		  End;
		readln(a);
	End;
End.