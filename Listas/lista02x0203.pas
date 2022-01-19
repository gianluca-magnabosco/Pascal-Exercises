Program lista02x0203;
uses tarde;
{2) FUP que leia uma lista de 30 números, colocando-os em um vetor, após o término da leitura, 
mostre apenas os elementos com índice maior ou igual a 15.   }
VAR VET:ARRAY[1..30] OF INTEGER;
		A:INTEGER;
Begin
	FOR A:=1 TO 30 DO
		Begin
			writeln('   Digite o elemento número',A:3,'. => ');
			readln(VET[A]);
		End;
	writeln;
	writeln('   Exercício 2');
	writeln;
	FOR A:=15 TO 30 DO
		writeln('   Índice: ',A:3,' Elemento => ',VET[A]);

{3) FUP que leia uma lista de 30 números, colocando-os em um vetor, após o término da leitura, 
mostre apenas os elementos maior ou igual a 15.      }
	writeln;
	writeln('   Exercício 3');
	writeln;
	FOR A:=1 TO 30 DO 
		IF(VET[A]>=15) THEN
		writeln('   Índice: ',A:3,' Elemento => ',VET[A]);
	TERMINE;  
End.


