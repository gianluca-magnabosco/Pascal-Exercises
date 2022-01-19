Program tlista01x15;
// 15)	FUP que leia uma série de notas. A leitura termina quando for lida uma nota negativa.
// Antes de encerrar o programa, mostrar o total de notas lidas e a média das notas. 

VAR nota,i:integer;
		media:real;
Begin
	REPEAT
		write('  Digite a nota => ');
		readln(nota);
		i:=i+1;
		media:=media+nota;
	UNTIL (nota < 0);
	
	media:=media/i;
	writeln;
	writeln('  Total de notas lidas = ',i);
	writeln('  Média = ',media);
	writeln;   
End.