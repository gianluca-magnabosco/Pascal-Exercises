Program lista02x0203;
uses tarde;
{2) FUP que leia uma lista de 30 n�meros, colocando-os em um vetor, ap�s o t�rmino da leitura, 
mostre apenas os elementos com �ndice maior ou igual a 15.   }
VAR VET:ARRAY[1..30] OF INTEGER;
		A:INTEGER;
Begin
	FOR A:=1 TO 30 DO
		Begin
			writeln('   Digite o elemento n�mero',A:3,'. => ');
			readln(VET[A]);
		End;
	writeln;
	writeln('   Exerc�cio 2');
	writeln;
	FOR A:=15 TO 30 DO
		writeln('   �ndice: ',A:3,' Elemento => ',VET[A]);

{3) FUP que leia uma lista de 30 n�meros, colocando-os em um vetor, ap�s o t�rmino da leitura, 
mostre apenas os elementos maior ou igual a 15.      }
	writeln;
	writeln('   Exerc�cio 3');
	writeln;
	FOR A:=1 TO 30 DO 
		IF(VET[A]>=15) THEN
		writeln('   �ndice: ',A:3,' Elemento => ',VET[A]);
	TERMINE;  
End.


