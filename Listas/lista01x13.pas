Program tlista01x13;
// 13)	FUP que leia 10 n�meros. Antes de encerrar, mostre a soma dos 10 n�meros lidos. 

VAR i,B,res,num:integer;
Begin
	REPEAT
		write('  Digite um n�mero => ');
		readln(B);
		i:=i+1;
		res:=res+B;
	UNTIL (i=10);
	writeln('  ',res); 
End.