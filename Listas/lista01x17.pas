Program tlista01x17;
// 17)	FUP para apurar o resultado de uma eleição entre três candidatos (A, B, C). A entrada é encerrada 
// quando for lido o caractere *. Votos válidos: entrada A, B ou C, votos em um dos candidatos. “Espaço”, considerar voto em branco.
// Qualquer outro caractere de entrada considerar voto inválido. Antes de encerrar o programa, calcular a porcentagem de votos para 
// cada candidato, porcentagem de votos brancos e porcentagem de votos inválidos. Mostrar a quantidade de votos e respectivas 
// porcentagens para cada caso. 

VAR A,B,C,branco,invalido,tot:integer;
		voto:string[1];
		pcA,pcB,pcC,pcbranco,pcinvalido:real;
		bool:boolean;
		
Begin
	REPEAT
		bool:=FALSE; 
		write('  Entre com seu voto (A,B,C, ) (* encerra a entrada) => ');
		readln(voto);
		voto:=UPCASE(voto);
		IF (voto = 'A') THEN
			Begin
				A:=A+1;
				bool:=TRUE;
			End;
		IF (voto = 'B') THEN
			Begin
				B:=B+1;
				bool:=TRUE;
			End;
		IF (voto = 'C') THEN
			Begin
				C:=C+1;
				bool:=TRUE;
			End;
		IF (voto = ' ') THEN
			Begin
				branco:=branco+1;
				bool:=TRUE;
			End;
		IF (bool=FALSE) THEN 
				invalido:=invalido+1;
	UNTIL (voto = '*');
	
	tot:=A+B+C+branco+invalido;
	pcA:=A/tot*100;
	pcB:=B/tot*100;
	pcC:=C/tot*100;
	pcbranco:=branco/tot*100;
	pcinvalido:=invalido/tot*100;
	
	writeln;
	writeln('  Candidato A: ',pcA:2:2,' por cento de votos. Total de votos: ',A);
	writeln('  Candidato B: ',pcB:2:2,' por cento de votos. Total de votos: ',B);
	writeln('  Candidato C: ',pcC:2:2,' por cento de votos. Total de votos: ',C);
	writeln('  Votos em branco: ',pcbranco:2:2,' por cento de votos. Total de votos: ',branco);
	writeln('  Votos inválidos: ',pcinvalido:2:2,' por cento de votos. Total de votos: ',invalido);	   
End.