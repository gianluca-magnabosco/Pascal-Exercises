Program tlista01x16;
// 16)	Imagine uma brincadeira entre duas pessoas, na qual um pensa um n�mero inteiro e o outro deve fazer
// chutes at� acertar o n�mero imaginado. Como dica, a cada chute � dito se o chute foi alto ou foi baixo. 
// FUP que leia o n�mero imaginado, ap�s leia os chutes. Antes de encerrar, mostre quantos chutes foram dados para 
// descobrir o n�mero. 

VAR i,chute,num:integer;

Begin
	write('  Digite o n�mero imaginado => ');
	readln(num);
	REPEAT
		write('  Digite o chute => ');
		readln(chute);
		i:=i+1;
	UNTIL (chute = num);
	
	writeln;
	writeln('  Voc� acertou o n�mero imaginado (',num,') depois de ',i,' tentativas!');  
End.