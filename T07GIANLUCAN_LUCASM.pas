Program T07GIANLUCAN_LUCASM;
// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621) 
// 						LUCAS MACHADO 											(GRR: 20211590)
//
//
{Faça um programa que leia as respostas de uma prova de múltipla escolha de 6 (seis) disciplinas, constantes no arquivo de acesso sequencial tipo texto “prova.txt” (no anexo), cada registro é um string[94] e é composto por:
01-04 = número do candidato
05-94 = as noventa respostas da prova, assim divididas;
	05 – 14 = respostas da disciplina 1 (10 questões);
	15 – 24 = respostas da disciplina 2 (10 questões);
25 – 44 = respostas da disciplina 3 (20 questões);
	45 – 64 = respostas da disciplina 4 (20 questões);
	65 – 84 = respostas da disciplina 5 (20 questões);
	85 – 94 = respostas da disciplina 6 (10 questões);
Após ler o registro, o programa deverá corrigir a prova do candidato, por disciplina e gravar o número do candidato e as notas das 6 (seis) disciplinas no arquivo de acesso sequencial tipo texto “notas.txt”, cujo registro é um string[28]. A nota máxima de cada uma das 6 (seis) disciplinas  é 100. Os registros de “notas.txt” devem ficar como abaixo
01 – 04 = número do candidato
05 – 08 = nota da disciplina 1;
09 – 12 = nota da disciplina 2; 
13 – 16 = nota da disciplina 3;
17 – 20 = nota da disciplina 4; 
21 – 24 = nota da disciplina 5;
25 – 28 = nota da disciplina 6; 
Ou seja:
0002  40   0   0  30  45  50
0003  50  10  10  25  45  40
............................
.............
....
Para realizar o trabalho use como modelo o exercício da lista 2 de correção de prova já enviado (LE2EX12DIS.PAS). }
USES BIBLIONT;

var ARQPROVA,ARQNOTAS:TEXT;
		REG1:STRING[94];
		REG2:STRING[28];
		NUM:STRING[4];
		NOTA,QUEST,SOMA:ARRAY[1..6] OF INTEGER;
		NN:STRING[4];
		GABA:STRING[90];    
		i,TOT,CER,x,ini,fim:INTEGER;
		CHAV:BOOLEAN;
		
Begin 
	assign(ARQPROVA,'PROVA.TXT');
	assign(ARQNOTAS,'NOTAS.TXT');
	reset(ARQPROVA);
	rewrite(ARQNOTAS);
	REPEAT
		writeln(' DIGITE O GABARITO:');
		writeln('000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889');
		writeln('123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
		read(GABA);
		GABA:=UPCASE(GABA);
		CHAV:=TRUE;
		i:=0;
		REPEAT
			i:=i+1;
			IF(GABA[i] < 'A') OR (GABA[i] > 'E') THEN
				CHAV:=FALSE;
		UNTIL(i=90) OR (NOT CHAV);
		IF NOT CHAV THEN
			writeln('  GABARITO ILEGAL!');
			writeln;
	UNTIL(CHAV);
	REPEAT
		READLN(ARQPROVA,REG1);
		NUM:=COPY(REG1,1,4);
		IF((TOT MOD 25) = 0) THEN
		Begin
			write('   Pressione enter para continuar.');
			readln;
			clrscr;
			writeln('   Ordem  NUM.   Nota 1   Certas  Nota 2   Certas  Nota 3   Certas  Nota 4   Certas  Nota 5   Certas  Nota 6   Certas  ');
		End;
	
		QUEST[1]:=10;
  	QUEST[2]:=10;
  	QUEST[3]:=20;
  	QUEST[4]:=20;
  	QUEST[5]:=20;
  	QUEST[6]:=10; 
		TOT:=TOT+1;
		write('   ',TOT:5,'  ',NUM);
		ini:=1;
		fim:=0;

		FOR x:=1 TO 6 DO
		Begin
			CER:=0;
			fim:=fim+QUEST[x];
			FOR i:=ini TO fim DO
				IF(GABA[i] = REG1[i+4]) THEN
					CER:=CER+1;
					
			NOTA[x]:=CER*(100 DIV QUEST[x]);
			ini:=ini+QUEST[x];
			write(NOTA[x]:7,CER:10);
		End;
		writeln;
		 FOR x:=6 DOWNTO 1 DO
		 Begin	
			 str(NOTA[x]:4,NN);
			 insert(NN, REG2, 1);
		 End;
		 insert(NUM, REG2, 1);
     writeln(ARQNOTAS, REG2);
	UNTIL(EOF(ARQPROVA));
	close(ARQPROVA);
	close(ARQNOTAS);
	
	writeln;
	write('   Pressione enter para encerrar.');
	readln;
End.