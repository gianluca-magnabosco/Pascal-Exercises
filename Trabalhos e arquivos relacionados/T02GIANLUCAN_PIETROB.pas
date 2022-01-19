{O programa nmod deverá ser modificado para a utilização dos módulos indicados abaixo.
Escrever os módulos em forma de procedure e function, na frente do arquivo que conterá o trabalho 02.

Colocar as respostas das perguntas (5) no final do arquivo que conterá o trabalho 02 }
// ---------------------------------------------------------------------------------
Program T02GIANLUCAN_PIETROB;
// FEITO POR: 
// GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
// PIETRO BORGES PARRI (GRR: 20204445)
VAR P1,P2,X,NUM,N,R:INTEGER;
// ---------------------------------------------------------------------------------

// -------------------- FUNÇÃO INTEIRO ---------------------

FUNCTION INTEIRO(NN:REAL):INTEGER;
	VAR MULT, INTE:INTEGER;
			DIV1, II:REAL;
  Begin
 	  DIV1:=NN;
	  MULT:=1;
	  IF (DIV1<0) THEN
	   MULT:=-1;
	  DIV1:=DIV1*MULT;
	  INTE:=0;
	  II:=0;
	  REPEAT
	 	 INTE:=INTE+1;
	 	 II:=II+1
	  UNTIL (II>DIV1);
	  INTEIRO:=(INTE-1)*MULT
  End;
	  
//-----------------------------------------------------------------------------------
// -------------------- FUNÇÃO RESTO ------------------------

FUNCTION RESTO(A,B:INTEGER):INTEGER;
   VAR INTE:INTEGER;
	  Begin
		  INTE:=INTEIRO(A/B);
			RESTO:=A-INTE*B
		End; 

//-----------------------------------------------------------------------------------
// -------------------- ROTINA/PROCEDIMENTO SAI ----------------------------------

PROCEDURE SAI;
		Begin
		  writeln(' Múltiplos de ',N,' = ',P1);
		  writeln(' Não múltiplos de ',N,' = ',P2)
		End;
		
//-----------------------------------------------------------------------------------  
// -------------------- ROTINA/PROCEDIMENTO TESTA --------------------------------

PROCEDURE TESTA(RES:INTEGER; VAR MU, NMU:INTEGER);
		Begin
			IF (RES=0) THEN
			 MU:=MU+1
			ELSE
			 NMU:=NMU+1
		End; 

// ----------------------------------------------------------------------------------  
// ------------------------ ALGORITMO PRINCIPAL ----------------------------------  

  Begin
	 P1:=0;
	 P2:=0;
	 N:=2;
	 FOR X:=1 TO 10 DO 
	  Begin
	   readln(NUM);
	   R:=RESTO(NUM,2);
	   TESTA(R,P1,P2)
	  End;
	SAI;
   
   P1:=0;
   P2:=0;
   N:=3;
   FOR X:=1 TO 10 DO
    Begin
     readln(NUM);
     R:=RESTO(NUM,3);
     TESTA(R,P1,P2)
    End;
  SAI;
  write(' Pressione enter para encerrar.');
  readln;
  End.


{EXERCÍCIO DE FIXAÇÃO: (usando a solução acima e sempre de acordo com as definições)  

1) Escreva os nomes das variáveis locais: 
    Resposta: MULT, INTE, DIV1, II, INTE.

2) Escreva os nomes das variáveis globais:  
		Resposta: P1, P2, X, NUM, N, R.
		
3) Escreva os nomes dos parâmetros formais:  
	  Resposta: NN:REAL;   A,B:INTEGER;   RES:INTEGER;   VAR MU,NMU:INTEGER;
	  
4) Escreva os nomes dos parâmetros reais: 
    Resposta: INTEIRO(A/B);  RESTO(NUM,2);  TESTA(R,P1,P2);  RESTO(NUM,3);  TESTA(R,P1,P2); 

5) Explique o motivo de existir passagem de parâmetros por valor e por referência,
   na rotina TESTA:
    Resposta: POR VALOR: POIS É PASSADO APENAS O VALOR DE RES, NÃO SENDO MODIFICADO. 
							POR REFERÊNCIA: POIS EXISTE O 'VAR' NO MÓDULO, ENTÃO O ENDEREÇO DA
							                VARIÁVEL É PASSADO, EXISTEM PARÂMETROS DE SAÍDA!!	
							OS PARÂMETROS SÃO PASSADOS POR VALOR E REFERÊNCIA!!!     
}
 