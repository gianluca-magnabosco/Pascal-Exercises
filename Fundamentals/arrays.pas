Program arrays;
// FUP que leia dez n�meros e mostre-os na ordem inversa da leitura.
VAR num:array[1..10] of integer;
		A,B:integer;
Begin
  FOR A:=1 TO 10 DO 
  	readln(num[A]);
  FOR B:=10 DOWNTO 1 DO
  	writeln(num[B]);
End.