Program MODEX2;
// FUP QUE LEIA DOIS N�MEROS (X,Y) E MOSTRE O RESULTADO DE X ELEVADO A Y
// VOU USAR M�DULO QUE EST� NA UNIT TARDE
uses tarde;  // Indica que usarei m�dulos implementados na biblioteca (unit) TARDE
VAR X,Y,POTE:integer;
Begin
	write('   Digite o valor de X => ');
	readln(X);
	write('   Digite o valor de Y => ');
	readln(Y);
	writeln('   Usando fun��o');
	writeln(X:10,' Elevado a ',Y:5,' =',POT1(X,Y):10);
	writeln('   Usando procedimento');
	POT2(X,Y,POTE); // Par�metros reais vai de valor de X, valor de Y e O ENDERE�O DE POTE
	writeln(X:10,' Elevado a ',Y:5,' =',POTE:10);
	TERMINE;
End.