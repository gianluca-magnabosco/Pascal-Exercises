Program tlista01x13;
// 13)	FUP que leia 10 números. Antes de encerrar, mostre a soma dos 10 números lidos. 

VAR i,B,res,num:integer;
Begin
	REPEAT
		write('  Digite um número => ');
		readln(B);
		i:=i+1;
		res:=res+B;
	UNTIL (i=10);
	writeln('  ',res); 
End.