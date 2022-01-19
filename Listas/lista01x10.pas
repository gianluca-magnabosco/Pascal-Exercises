Program tlista01x10;
// 10)	FUP que leia um número (maior que zero e menor que 11 – VALIDAR), 
// após mostre a tabuada do número lido. (Ex.: leu 5, mostrar 5x1=5; 5x2=10; etc.) 

VAR num,A,res:integer;

Begin
	REPEAT
		writeln;
		write('  Digite um número entre 1 e 10 para ver sua tabuada => ');
		readln(num);
		writeln;
		IF (num > 0) and (num < 11) THEN
			FOR A:=1 TO 10 DO
				Begin
					res:=num*A; 
					writeln('  ',num,' x ',A:2,' = ', res);  
				End
		ELSE
			writeln('  Digite um número entre 1 e 10!');
	UNTIL (num > 0) and (num < 11);
	writeln;
End.