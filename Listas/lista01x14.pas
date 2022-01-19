Program tlista01x14;
// 14)	FUP que leia 50 notas. Antes de encerrar, mostre a média das notas lidas. 

VAR nota,i:integer;
		media:real;
Begin
	REPEAT
		write('  Digite a nota => ');
		readln(nota);
		i:=i+1;
		media:=media+nota;
	UNTIL (i=50);
	
	media:=media/i;
	writeln;
	writeln('  Média = ',media);
	writeln;   
End.