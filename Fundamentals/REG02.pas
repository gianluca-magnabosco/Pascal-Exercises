Program REG02;
//FUP QUE LEIA UMA SERIE DE NOMES E NOTAS, ENCERRADA POR NOME ='FIM', MAXIMO 40 DUPLAS, 
//ANTES DE ENCERRAR, MOSTRAR A SERIE LIDA EM ORDEM DE CLASSIFICAÇÃO DE NOTAS. (MAIOR PARA MENOR)
//LEU
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
//usando o conceito de registro
//
TYPE
 NONO=RECORD
     NOM:STRING[20];  //8*20=160BITS
     NOTA:INTEGER;    //      32BITS ===>192BITS
     END;
VAR VET:ARRAY[1..40] OF NONO;
{        1                   2                 3               4.........40         <==INDICES
[NOME....../NOTA..][NOME....../NOTA..][NOME....../NOTA][......  .............NOTA]  <INFORMAÇOES
}
    NOM:STRING[20];
		A,B,TOT,TT,C:INTEGER;
		AUX:NONO;
		TROCA:BOOLEAN; 
Begin
//MONTAGEM DOS VETORES
	write('   NOME => ');                             //REPEAT
	readln(NOM);                                    // UNTIL (NOME='FIM') OR (TOT=40)
	NOM:=UPCASE(NOM);
	WHILE(NOM <>'FIM') AND (TOT<40) DO
  	BEGIN
   		C:=LENGTH(NOM);          //DETERMINA TOTAL DE CARACTERES NUM STRING
   		FOR B:=C+1 TO 20 DO      //VARIA DE TOTAL DE CARAC ATE O FIM DO STRING
    		INSERT('   ',NOM,B);      //INSERE ESPAÇO NA POSICAO INDICADA POR B
   		TOT:=TOT+1;
   		VET[TOT].NOM:=NOM;       //TRANSFERE O NOME PARA VET[TOT] no CAMPO NOM
   		write('   NOTA => ');
   		readln(VET[TOT].NOTA);   //TRANSFERE O QUE FOI DIGITADO PARA VET[TOT] no CAMPO NOTA
   		write('   NOME=> ');
   		readln(NOM);
   		NOM:=UPCASE(NOM);
  	END;
	TT:=TOT; //SALVA O VALOR DE TOT
//FIM DA MONTAGEM
//ORDENAÇÃO
	FOR A:=1 TO TT DO
  	writeln('   ',VET[A].NOM,VET[A].NOTA:6);
	REPEAT
  	TROCA:=TRUE;
		TOT:=TOT-1;  
  	FOR A:=1 TO TOT DO
   		IF(VET[A].NOTA>VET[A+1].NOTA)THEN    //compara o campo nota de vet
	  		BEGIN
	   			AUX:=VET[A];                       //transfere o registro (vet[a].nom + vet[a].nota)
		 			VET[A]:=VET[A+1];                  //idem
		 			VET[A+1]:=AUX;                     //idem
		 			TROCA:=FALSE;
	  		END;
	UNTIL TROCA;
	writeln('    Ordenado');  
	FOR A:=TT DOWNTO 1 DO
  	writeln('   ',VET[A].NOM,VET[A].NOTA:6);
	write('   Pressione enter para encerrar.');
	readln;  
End.