Program REG01 ;
//FUP QUE LEIA UMA SERIE DE NOMES E NOTAS, ENCERRADA POR NOME ='FIM', MAXIMO 40 DUPLAS, 
//ANTES DE ENCERRAR, MOSTRAR A SERIE LIDA EM ORDEM DE CLASSIFICAÇÃO DE NOTAS. (MAIOR PARA MENOR
// LEU
{
JOAO 10
MARIA 80
PEDRINHO 45
CARLOS 20
ZECA 60
FIM 
LIDOS 5 DUPLAS
MOSTRAR
MARIA 80
ZECA 60
PEDRINHO 45
CARLOS 20
JOAO 10}
//
//usando dois vetores... sem o conceito de registro
//
VAR VETNOM:ARRAY[1..40] OF STRING[20];//NOMES
    VETNOT:ARRAY[1..40] OF INTEGER;
    NOM:STRING[20];
		A,B,TOT,AUX,TT,C:INTEGER;
		AUX1:STRING[20];
		TROCA:BOOLEAN; 
Begin
//MONTAGEM DOS VETORES
	clrscr;
	WRITE('   NOME => ');                            //REPEAT
	READLN(NOM);                                    // UNTIL (NOME='FIM') OR (TOT=40
	NOM:=UPCASE(NOM);
	WHILE(NOM <>'FIM') AND (TOT<40) DO
  	BEGIN
   		C:=LENGTH(NOM);          //DETERMINA TOTAL DE CARACTERES NUM STRING
   		FOR B:=C+1 TO 20 DO      //VARIA DE TOTAL DE CARAC ATE O FIM DO STRING
    		INSERT('   ',NOM,B);      //INSERE ESPAÇO NA POSICAO INDICADA POR B
   		TOT:=TOT+1;
   		VETNOM[TOT]:=NOM;
   	{	WRITE('   NOTA => ');
   		READLN(VETNOT[TOT]);  }f
   		g
   		WRITE('   NOME => ');
   		READLN(NOM);
   		NOM:=UPCASE(NOM);
  	END;
	TT:=TOT; //SALVA O VALOR DE TOT
//FIM DA MONTAGEM
//ORDENAÇÃO
	FOR A:=1 TO TT DO
		WRITELN('   ',VETNOM[A],VETNOT[A]:6);
 		write('   Pressione enter para continuar');
 		readln;
 	REPEAT
  	TROCA:=TRUE;
		TOT:=TOT-1;  
  	FOR A:=1 TO TOT DO
   		IF(VETNOT[A]>VETNOT[A+1])THEN
	  		BEGIN
	   			AUX:=VETNOT[A];
	   			AUX1:=VETNOM[A];
		 			VETNOT[A]:=VETNOT[A+1];
		 			VETNOM[A]:=VETNOM[A+1];
		 			VETNOT[A+1]:=AUX;
		 			VETNOM[A+1]:=AUX1;
		 			TROCA:=FALSE;
	  		END;
	UNTIL TROCA; 
 	writeln('    Ordenado'); 
 	FOR A:=TT DOWNTO 1 DO
  	writeln('      ',VETNOM[A],VETNOT[A]:6);
	write('   Pressione enter para encerrar.');
	readln;  
End.