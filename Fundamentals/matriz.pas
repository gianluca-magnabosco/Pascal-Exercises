Program matriz;
// FUP que gere uma matriz 10 x 6, sendo que cada elemento deve ser o resultado da multiplica��o 
// dos dois �ndices que indicam a sua posi��o dentro da matriz. Ap�s gerar a matriz, mostr�-la. 
VAR mat:array[1..10,1..6] of integer;
		a,b:integer;
Begin
	FOR A:=1 TO 10 DO
	 FOR B:=1 TO 6 DO
		 MAT[A,B]:=A*B;
	FOR A:=1 TO 10 DO
	 FOR B:=1 TO 6 DO
	 	writeln(MAT[A,B]);
	 	 writeln(' Pressione enter para encerrar...');
		 readln;
End.