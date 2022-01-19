Program MODEX1;
uses tarde;  // Informo ao compilador que usarei uma biblioteca de módulos não pública
VAR X,Y,Z:real; // Variáveis globais!!!
Begin
// chamada do módulo sem parâmetros 
	writeln('   Execução sem passar parâmetros');
  baskara;
  writeln('   Fim da execução sem parâmetros');
// chamada do módulo passando informações via parâmetros reais
	writeln('   Execução passando parâmetros.');
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
			writeln('    Fim da execução com parâmetros');
	  End;
	write('   Enter para encerrar.');
	readln;
			

End.