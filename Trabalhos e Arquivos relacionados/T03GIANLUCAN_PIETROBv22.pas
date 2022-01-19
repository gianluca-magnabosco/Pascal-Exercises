{FUP que leia uma lista de números terminada pelo número 0 e que, para cada número lido,
 mostre o próprio número e a relação de seus divisores. }
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
		write('   Digite um número terminado em 0 => ');
		readln(X);
		writeln;
		IF ((X MOD 10) <> 0) THEN
		 Begin
		  CHAV:=FALSE;
		  writeln('   Número inserido (',X,') não terminado em 0. O programa será encerrado!');
		 End
		ELSE 
		IF (X=0) THEN
		 Begin
		  writeln('   O número 0 é indivisível!');
		  writeln;
		 End
		ELSE
		 Begin
		 	writeln('   Número: ',X);
		 	writeln('   Os divisores de ',X,' são: ');
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