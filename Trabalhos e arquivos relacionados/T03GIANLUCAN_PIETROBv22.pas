{FUP que leia uma lista de n�meros terminada pelo n�mero 0 e que, para cada n�mero lido,
 mostre o pr�prio n�mero e a rela��o de seus divisores. }
// ---------------------------------------------------------------------------------------------------------
Program T03GIANLUCAN_PIETROB;
// FEITO POR:
// GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
// PIETRO BORGES PARRI (GRR: 20204445)
VAR X,resultado,contador:integer;
    CHAV:BOOLEAN;
// ---------------------------------------------------------------------------------------------------------
Begin
	CHAV:=TRUE;
	REPEAT
		write('   Digite um n�mero terminado em 0 => ');
		readln(X);
		writeln;
		IF ((X MOD 10) <> 0) THEN
		 Begin
		  CHAV:=FALSE;
		  writeln('   N�mero inserido (',X,') n�o terminado em 0. O programa ser� encerrado!');
		 End
		ELSE 
		IF (X=0) THEN
		 Begin
		  writeln('   O n�mero 0 � indivis�vel!');
		  writeln;
		 End
		ELSE
		 Begin
		 	writeln('   N�mero: ',X);
		 	writeln('   Os divisores de ',X,' s�o: ');
		 	FOR contador:=1 TO X DO
		 	 Begin
		 	  IF ((X MOD contador) = 0) THEN
		 	    writeln('   ',contador,'.');
		 	 End;
		 	 writeln;
		 End;
	UNTIL not(CHAV);
	writeln('   Pressione enter para encerrar.');
	readln;
End.