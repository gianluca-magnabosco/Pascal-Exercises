{FUP que leia uma lista de n�meros terminada pelo n�mero 0 e que, para cada n�mero lido,
 mostre o pr�prio n�mero e a rela��o de seus divisores. }
// ---------------------------------------------------------------------------------------------------------
Program T03GIANLUCAN_PIETROB;
// FEITO POR:
// GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
// PIETRO BORGES PARRI (GRR: 20204445)
VAR X,contador:integer;
// ---------------------------------------------------------------------------------------------------------
Begin
  REPEAT
		write('   Digite um n�mero para ver seus divisores. Encerre a listagem digitando "0" => ');
		readln(X);
		writeln;	
		 Begin
		  IF (X <> 0) THEN
		   Begin
		 		writeln('   N�mero: ',X);
		 		writeln('   Os divisores de ',X,' s�o: ');
		 		FOR contador:=1 TO X DO
		 	 	Begin
		 	  	IF ((X MOD contador) = 0) THEN
		 	    	writeln('   ',contador,'.')
		 	 	End;
		 	 	writeln
		 	 End
		 	ELSE IF (X=0) THEN
		 	 Begin
		 	  writeln('   N�mero 0 digitado. Encerrando o programa...');
		 	  writeln;
		 	 End;
		 End;
	 UNTIL (X=0);
	writeln('   Pressione enter para encerrar.');
	readln;
End.