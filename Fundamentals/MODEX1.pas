Program MODEX1;
uses tarde;  // Informo ao compilador que usarei uma biblioteca de m�dulos n�o p�blica
VAR X,Y,Z:real; // Vari�veis globais!!!
Begin
// chamada do m�dulo sem par�metros 
	writeln('   Execu��o sem passar par�metros');
  baskara;
  writeln('   Fim da execu��o sem par�metros');
// chamada do m�dulo passando informa��es via par�metros reais
	writeln('   Execu��o passando par�metros.');
	write('   Digite o coeficiente A => ');
	readln(X);
	WHILE X<>0 DO
		Begin
			write('    Digite o coeficiente B => ');
			readln(Y);
			write('    Digite o coeficiente C => ');
			readln(Z);
			baskara1(X,Y,Z);
			write('    Digite o coeficiente A => ');
			readln(X);
			writeln('    Fim da execu��o com par�metros');
	  End;
	write('   Enter para encerrar.');
	readln;
			

End.