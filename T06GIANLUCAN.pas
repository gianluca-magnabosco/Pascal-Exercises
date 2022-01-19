Program T06GIANLUCAN;
// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621) 
//
{Faça um programa que leia uma série de no máximo 50 nomes (30 caracteres), 
encerrada por nome igual a “FIM” (que não deve fazer parte da lista), colocando-os em um vetor. 
Após o encerramento da leitura, mostrar os nomes lidos menores ou iguais a LUIZ SALGADO, 
em ordem alfabética crescente (A  menor ou igual a LUIZ SALGADO) e os nomes maiores que LUIZ SALGADO,
em ordem alfabética decrescente (Z  menor que LUIZ SALGADO). 
Usar o algoritmo de ordenação apresentado na aula do dia 28/10/2021, OBRIGATORIAMENTE. }

VAR VET:ARRAY[1..50] OF STRING[30];
		NOM,AUX:STRING[30];
		TOT,TT,JAORD,A,B,C:INTEGER;
		TROCA:BOOLEAN;
Begin
	TOT:=1;
	write('   Digite o nome => ');  
	readln(NOM);                                
	NOM:=UPCASE(NOM);
	WHILE(NOM <> 'FIM') AND (TOT<50) DO
		Begin 
			VET[TOT]:=NOM;
			TOT:=TOT+1;
			write('   Digite o nome => ');  
			readln(NOM);                                
			NOM:=UPCASE(NOM);
		End;
	TT:=TOT;				
	JAORD:=1;
	REPEAT
		TROCA:=TRUE;
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
//MOSTRAR
	writeln;
	writeln('   Menores que LUIZ SALGADO (ordem crescente)');
	FOR B:=1 TO TT DO
		IF (VET[B] <= 'LUIZ SALGADO') THEN
			writeln('   ',VET[B]);
	writeln;
	writeln('   Maiores que LUIZ SALGADO (ordem decrescente)');
	writeln;
	FOR C:=TT DOWNTO 1 DO
		IF (VET[C] > 'LUIZ SALGADO') THEN
			writeln('   ',VET[C]);
	writeln;
	write('   Digite enter para encerrar.');
	readln;
End.