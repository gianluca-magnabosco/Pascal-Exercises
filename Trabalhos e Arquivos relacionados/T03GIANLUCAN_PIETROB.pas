{FUP que leia uma lista de números terminada pelo número 0 e que, para cada número lido,
 mostre o próprio número e a relação de seus divisores. }
// ---------------------------------------------------------------------------------------------------------
Program T03GIANLUCAN_PIETROB;
// FEITO POR:
// GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
// PIETRO BORGES PARRI (GRR: 20204445)
VAR X,contador:integer;
// ---------------------------------------------------------------------------------------------------------
Begin
  REPEAT
		write('   Digite um número para ver seus divisores. Encerre a listagem digitando "0" => ');
		readln(X);
		writeln;	
		 Begin
		  IF (X <> 0) THEN
		   Begin
		 		writeln('   Número: ',X);
		 		writeln('   Os divisores de ',X,' são: ');
		 		FOR contador:=1 TO X DO
		 	 	Begin
		 	  	IF ((X MOD contador) = 0) THEN
		 	    	writeln('   ',contador,'.')
		 	 	End;
		 	 	writeln
		 	 End
		 	ELSE IF (X=0) THEN
		 	 Begin
		 	  writeln('   Número 0 digitado. Encerrando o programa...');
		 	  writeln;
		 	 End;
		 End;
	 UNTIL (X=0);
	writeln('   Pressione enter para encerrar.');
	readln;
End.