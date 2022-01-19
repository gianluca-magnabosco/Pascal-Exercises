Program MODEX2;
// FUP QUE LEIA DOIS NÚMEROS (X,Y) E MOSTRE O RESULTADO DE X ELEVADO A Y
// VOU USAR MÓDULO QUE ESTÁ NA UNIT TARDE
uses tarde;  // Indica que usarei módulos implementados na biblioteca (unit) TARDE
VAR X,Y,POTE:integer;
Begin
	write('   Digite o valor de X => ');
	readln(X);
	write('   Digite o valor de Y => ');
	readln(Y);
	writeln('   Usando função');
	writeln(X:10,' Elevado a ',Y:5,' =',POT1(X,Y):10);
	writeln('   Usando procedimento');
	POT2(X,Y,POTE); // Parâmetros reais vai de valor de X, valor de Y e O ENDEREÇO DE POTE
	writeln(X:10,' Elevado a ',Y:5,' =',POTE:10);
	TERMINE;
End.