Program tlista01x16;
// 16)	Imagine uma brincadeira entre duas pessoas, na qual um pensa um número inteiro e o outro deve fazer
// chutes até acertar o número imaginado. Como dica, a cada chute é dito se o chute foi alto ou foi baixo. 
// FUP que leia o número imaginado, após leia os chutes. Antes de encerrar, mostre quantos chutes foram dados para 
// descobrir o número. 

VAR i,chute,num:integer;

Begin
	write('  Digite o número imaginado => ');
	readln(num);
	REPEAT
		write('  Digite o chute => ');
		readln(chute);
		i:=i+1;
	UNTIL (chute = num);
	
	writeln;
	writeln('  Você acertou o número imaginado (',num,') depois de ',i,' tentativas!');  
End.