Program tlista02x06;
//6) FUP que leia um n�mero inteiro na base 10 (maior que zero e menor que 32768, validar) 
//e mostre-o na base 2 (use a divis�o sucessiva por 2).
VAR BINAR:ARRAY[1..15] OF INTEGER; // VETOR QUE CONTER� OS RESTOS DA DIVIS�O POR 2
		NUM,AUX,RESTO,A,B:INTEGER;
Begin
	REPEAT
		write('    Digite o n�mero => ');
		readln(NUM);
		IF (NUM<0) OR (NUM>32767) THEN
			writeln('    Ilegal');
	UNTIL (NUM>0) AND (NUM<32768);
	
	AUX:=NUM;
	A:=0;
	REPEAT
		A:=A+1;
		RESTO:=NUM MOD 2;
		NUM:=NUM DIV 2;
		BINAR[A]:=RESTO;
	UNTIL (NUM=0);
	
	writeln;
	writeln;
	write('   Bin�rio de ',AUX:5,' = ');
	FOR B:=A DOWNTO 1 DO
		write(BINAR[B]);
	writeln;
	write('   Enter para encerrar.');
	readln;
End.