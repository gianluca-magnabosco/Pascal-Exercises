Program tlista02x04;
uses tarde;
//4) FUP que leia linha a linha os elementos de uma matriz 3 x 8 e mostre-os coluna a coluna.
{ LEITURA
	11 12 13 14 15 16 17 18
	21 22 23 24 25 26 27 28
	31 32 33 34 35 36 37 38
	
	MOSTRAR
	11 21 31 
	12 22 32
	13 23 33
	14 24 34
	15 25 35
	16 26 36
	17 27 37
	18 28 38
}
VAR MAT:ARRAY[1..3,1..8] OF INTEGER;
		L,C:INTEGER;
Begin
	FOR L:=1 TO 3 DO
		FOR C:=1 TO 8 DO
			Begin
				write('    Digite o elemento da linha: ', L:2,' Coluna: ',C:2,' => ');
				readln(MAT[L,C]);
			End;
//MOSTRA LINHA A LINHA
	clrscr;
	writeln('          Linha a linha: ');
	writeln;
	FOR L:=1 TO 3 DO
		Begin
			writeln;
			write('                     ');
			FOR C:=1 TO 8 DO
				write(MAT[L,C]:3);
			write('                     ');
			writeln;
			writeln;
		End;   
//MOSTRA COLUNA A COLUNA
	writeln('          Coluna a coluna: ');
	writeln;
	FOR C:=1 TO 8 DO 
		Begin
			writeln;
			write('                     ');
			FOR L:=1 TO 3 DO 
				write(MAT[L,C]:3);
			write('                     ');
			writeln; 
			writeln;
		End;
	TERMINE;
End.