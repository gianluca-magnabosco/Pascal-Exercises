Program ORDE;
//FUP que monte um vetor com 10000 números e mostre-os em ordem crescente.
//após montar o vetor, classifica-lo
//depois de classificado, ordenar de novo
//depois de ordenar o vetor classificado, classificar de novo usando um método não indicado.
//comparar os tempos de execução das tres ordenações.
//usar o gettime
VAR VET:ARRAY[1..10000] OF INTEGER;
		AUX,A,B,TOT,H,M,S,MS,JAORD:INTEGER;
		TROCA:BOOLEAN;
Begin
// MONTA O VETOR COM 10000 ALEATÓRIOS ENTRE 1 E 10000
	FOR A:=1 TO 10000 DO
		VET[A]:=RANDOM(10000)+1;
	FOR A:1 TO 20 DO 
		WRITELN(VET[A]:20);
	writeln;
// ORDENA
	TOT:=10000;
	JAORD:=1;
	gettime(H,M,S,MS);
	writeln('   Início da ordenação (aleatório) => ',H:2,':',M:2,':',S:2,':',MS:3);
	REPEAT
		TROCA:=TRUE
		TOT:=TOT-JAORD;
		FOR A:=1 TO TOT DO
			IF(VET[A]>VET[A+1]) THEN
				Begin
					AUX:=VET[A];
					VET[A]:=VET[A+1];
					VET[A+1]:=AUX;
					TROCA:=FALSE;
					JAORD:=1;
				End
			ELSE
				JAORD:=JAORD-1;
	UNTIL TROCA;
// FIM DA ORDENAÇÃO
	gettime(H,M,S,MS);
	writeln('   Fim da ordenação (já ordenado) => ',H:2,':',M:2,':',S:2,':',MS:3);
	FOR A:=1 TO 20 DO 
		writeln(VET[A]:20);
	write('   Enter para continuar.');
	readln;
	writeln;
// ORDENA (NUNCA USAR O MÉTODO ABAIXO)
	gettime(H,M,S,MS);
	writeln('   Início da ordenação - NUNCA USAR ESSE MÉTODO /(já ordenado) => ',H:2,':',M:2,':',S:2,':',MS:3);
	writeln;
	TOT:=10000;
	FOR B:1 TO TOT DO
		FOR A:=1 TO TOT-1 DO
			IF(VET[A]>VET[A+1])THEN
				Begin
					AUX:=VET[A];
					VET[A]:=VET[A+1];
					VET[A+1]:=AUX;
				End;
// FIM DA ORDENAÇÃO DO MÉTODO QUE NUNCA DEVE SER USADO
	gettime(H,M,S,MS);
	writeln('   Fim da ordenação PELO MÉTODO QUE NUNCA DEVE SER USADO (já ordenado) => ',H:2,':',M:2,':',S:2,':',MS:3);
	writeln;
	FOR A:=1 TO 20 DO 
		writeln(VET[A]);
	write('   Pressione enter para encerrar.');
	readln;
End.