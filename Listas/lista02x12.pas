Program lista02x12;
{12.	FUP que realize a correção de uma prova de múltipla escolha com 60 questões 
de 5 alternativas cada (A,B,C,D,E) com apenas uma alternativa sendo a correta (ARQUIVO PROVA1.TXT).
A PROVA E COMPOSTA POR DISCIPLINAS COM 
DISCIPLINA 1 - 25 QUESTOES
DISCIPLINA 2 - 25 QUESTOES
DISCIPLINA 3 - 10 QUESTOES
O programa  deverá ler o GABARITO e após, uma série de dados que contém o número de inscrição
e as 60 respostas dos candidatos. Para cada conjunto de dados lido (inscrição e 60 respostas), CORRIGIR
a prova POR DISCIPLINA e mostrar, Inscrição, Número de respostas certas,  e a Nota = certas * (100 DIV questoe por dicilina.)
Após a correção e mostrar na telas as informações das 3 disciplinas, gravar no arquivo NOTAS.TXT um registro contendo
NUMERO-------------STRING[4]   -> 01-04
NOTA DISCIPLINA1---STRING[4]   -> 05-08
NOTA DISCIPLINA2---STRING[4]   -> 09-12
NOTA DISCIPLINA3---STRING[4]   -> 13-16
OU SEJA
0012 100 100 100
0120  40  60  80
A série de dados termina com uma matrícula com o fim do arquivo. Antes de encerrar o programa deve mostrar a média aritmética
das DISCIPLINAS}
//feito pelo profe Luiz.
USES BIBLIONT;
VAR GABA:string[60];
    RESP:string[64];//registro que contem numero (01-04) e as respostas (05-64)
    NUM:string[4];
    ALU:text;//cria o nome logico do arquivo, serve tambem para fornecer as caracteristicas do mesmo
		CE,TOT,i,x,err,TAM:integer;
		MED:real;
		CHAV:boolean; 
//VARIAVEIS PARA CORRIGIR A PROVA POR DISCIPLINA
    QUED,NOTAD,SOMD:ARRAY[1..3] OF INTEGER;
		NOTADS:ARRAY[1..4] OF STRING[4];
		ARQN:TEXT;          //NOME LOGICO ARQUIVO QUE CONTERÁ AS NOTAS
		INI,FIM:INTEGER;
		REGSAI:STRING[16];  // REGISTRO PARA ARQN
Begin
//DEFINE AS QUESTOES POR DISCIPLINA
  QUED[1]:=25;
  QUED[2]:=25;
  QUED[3]:=10;
//validar a leitura do gabarito
 REPEAT
  writeln('DIGITAR O GABARITO');
  writeln('000000000111111111122222222223333333333444444444455555555556');
	writeln('123456789012345678901234567890123456789012345678901234567890');
	readln(GABA);
	GABA:=upcase(GABA);
	i:=0;
	CHAV:=true;
	REPEAT
	 	i:=i+1;
	 		IF(GABA[i]<'A') OR (GABA[i]>'E')THEN
	  		CHAV:=false;
	UNTIL(i=60) OR (not CHAV);
	IF not chav THEN
		writeln('Gabarito ilegal');
 UNTIL(CHAV);
//fim da validacao gabarito
//
// 1-associar o nome logico do arquivo ao nome fisico do arquivo
//
  assign(alu,'prova1.txt'); //ARQUIVO DE ENTRADA
  ASSIGN(ARQN,'NOTASD.TXT');//ARQUIVO DE SAIDA
//
// 2-abrir o arquivo para leitura
//
  reset(alu);
//
// 3-ABRIR O ARQUIVO PARA GRAVAR
//
  REWRITE(ARQN); //O ARQUIVO DE SAIDA, SERA GERADO A PARTIR DE PROVA1.TXT
  REPEAT
   readln(alu,resp);
   num:=copy(resp,1,4);//copia de resp a partir da prim. posicao, 4 caractres e atribui a num....
   IF(TOT MOD 25) = 0 THEN
//IMPRESSAO DO CABECALHO A CADA XX ELEMENTOS MOSTRADOS (A PARTIR DO MOD)
   BEGIN
      WRITE('ENTER PARA CONTINUAR');
      READLN;
      CLRSCR;
	    WRITELN('   ORDEM  NUM.    CERTAS   NOTA1   CERTAS   NOTA2   CERTAS   NOTA3 ');
	 END;
//
// CORRIGE POR DISCIPLINA
//
   TOT:=TOT+1;
   WRITE('   ',TOT:5,'  ',NUM);
   INI:=1;
   FIM:=0;
	 FOR X:=1 TO 3 DO
    BEGIN
     CE:=0;              //SEMPRE ZERAR CONTADORES INDIVIDUAIS...
     FIM:=FIM+QUED[X];   //ULTIMA QUESTAO DA DISCIPLINA (COMEÇOU COM 0)
//INICIO DA CORRECAO
     FOR I:=INI TO FIM DO
      IF(GABA[I]  =  RESP[I+4])THEN
       CE:=CE+1;
//FIM DA CORRECAO
     NOTAD[X]:=CE*(100 DIV QUED[X]);
	   SOMD[X]:=SOMD[X]+NOTAD[X];
	   INI:=INI+QUED[X];   //PRIMEIRA QUESTAO DA DISCIPLINA (COMEÇOU COM 1)
	   WRITE(CE:10,NOTAD[X]:7); 
	   STR(NOTAD[X]:4,NOTADS[X]);// TRANSFORMA A NOTA INTEGER EM STRING[4]
	  END;
	 WRITELN;
//COLOCA AS INNFORMACOES EM REGSAI USANDO A INSERT
 	 FOR X:=3 DOWNTO 1 DO
		INSERT(NOTADS[X],REGSAI,1);   //COLOCA OS 4 CARACTERES DE NOTADS, STRING DE 4 DE TRAZ PARA FRENTE EM REGSAI(O INSERT DESLOCA...)
	 INSERT(NUM,REGSAI,1);          //IDEM PARA O NUMERO
	 WRITELN(ARQN,REGSAI);   // GRAVA O REGISTRO    
  UNTIL (EOF (ALU) or ( TOT= 60));
//CALCULA A MEDIA
  IF(TOT > 0)THEN
	 BEGIN
	  FOR X:=1 TO 3 DO
	   BEGIN
	    MED:=SOMD[X]/TOT;
	    WRITELN('MEDIA DA DISCIPLINA',X:2,'=>',MED:8:2);
	   END;
	 END
	ELSE
	 WRITELN('NADA FOI LIDO');
 CLOSE(ARQN);
 CLOSE(ALU);	    
 termine;	
End.