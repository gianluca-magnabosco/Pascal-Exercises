Program tlista02x07;
uses tarde;
//6) FUP que leia um número inteiro na base 10 (maior que zero e menor que 32768, validar) 
//e mostre-o na base 2 (use as potências de 2).
VAR BINAR:ARRAY[1..15] OF INTEGER; // VETOR QUE CONTERÁ OS RESTOS DA DIVISÃO POR 2
		NUM,AUX,POT,ind,expo,b,ini:INTEGER;
Begin
	REPEAT
		write('    Digite o número => ');
		readln(NUM);
		IF (NUM<0) OR (NUM>32767) THEN
			writeln('    Ilegal');
	UNTIL (NUM>0) AND (NUM<32768);
	AUX:=NUM;
	ind:=0;
	expo:=15;
	ini:=0;
	REPEAT
		ind:=ind+1;
		expo:=expo-1;
		POT:=POT1(2,expo);
		IF (NUM>=POT) THEN
			Begin
				BINAR[IND]:=1;
				NUM:=NUM-POT;
				IF (ini=0) THEN
					ini:=ind;
			End;
	UNTIL (NUM=0);
	writeln;
	writeln;
	write('   Binário de ',AUX:5,' = ');
	FOR B:=INI TO 15 DO 
		WRITE(BINAR[B]);
	TERMINE;
End.