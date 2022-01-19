Program T08GIANLUCAN_LUCASM;
// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621) 
// 						LUCAS MACHADO 											(GRR: 20211590) 
//
// FUP que possibilite mostrar os dados (veja leinddir.pas) do arquivo CAND.IND em ordem:
// 1 – Inscrição ou, 2 – Alfabética ou, 3 – Cpf ou, 4 - Cargo e alfabética dentro do cargo. Dar as quatro opções para o 
// usuário escolher uma delas.
// (VER O PROGRAMA LISTANASCI.PAS) 
//
USES BIBLIONT;


CONST CARGOS:ARRAY [1..12] OF STRING[22]=
('ENGANADOR DE CHEFE    ','ENROLADOR DE TRABALHO ','PENSADOR              ','ANALISTA DE SISTEMAS  ',
 'DEGUSTADOR DE CERVEJA ','TECNICO EM REDES      ','CONTADOR DE ESTORIAS  ','PEDREIRO DE PRIMEIRA  ',
 'ACOUGUEIRO LIMPINHO   ','SEGURANCA DE BANHEIRO ','GESTOR DE BORBOLETAS  ','AGENTE LEVA E TRAZ    ' );

VAR ARQ:FILE OF REGIS;
    REG:REGIS;
    A,E,TAMNUM,TAMCAR,CONTLIN,TOT,posi,X,TN,CARANT:INTEGER;
    NUMS,CARS:STRING[4];
    TOTCAR:ARRAY[1..12] OF INTEGER;
    OPC:STRING[1];
    vet:vetor;
    
Begin
	ASSIGN(ARQ,'CAND.IND'); 
	RESET(ARQ);
 	REPEAT
		Begin
			WRITELN;
			WRITELN('  OPÇÕES DE ORDENAÇÃO DISPONIVEIS: ');
			WRITELN('  1- POR NÚMERO DE INSCRIÇÃO;');
			WRITELN('  2- EM ORDEM ALFABÉTICA;');
			WRITELN('  3- POR NÚMERO DE CPF;');
			WRITELN('  4- POR CARGO E ORDEM ALFABÉTICA DENTRO DO CARGO;');
			WRITELN;
			WRITE('  INSIRA A OPÇÃO DESEJADA => ');
			READLN(OPC);
			WRITELN;
			IF (OPC <= '0') OR (OPC > '4') THEN
				WRITELN('  OPÇÃO INVÁLIDA!');
		End;
	UNTIL (OPC > '0') AND (OPC <= '4'); 
// Inscrição	
	IF(OPC='1') THEN	
		REPEAT
   		A:=A+1;
   		vet[A].pf:=posi;
   		READ(ARQ,REG);
   		STR(REG.NUM,NUMS);
   		TAMNUM:=LENGTH(NUMS);
   		IF (TAMNUM < 4) THEN
   			FOR TN:=1 TO 4-TAMNUM DO
   				insert('0',NUMS,TN);    
   		vet[A].cc:=NUMS;
   		posi:=posi+1;
  	UNTIL EOF(ARQ);

// Alfabética	
	IF(OPC='2') THEN
  	REPEAT
   		A:=A+1;
   		vet[A].pf:=posi;
   		READ(ARQ,REG);
   		vet[A].cc:=REG.nome;
   		posi:=posi+1;
  	UNTIL EOF(ARQ);
	
// CPF
	IF(OPC='3') THEN
  	REPEAT
   		A:=A+1;
   		vet[A].pf:=posi;
   		READ(ARQ,REG);
   		vet[A].cc:=REG.cpf;
   		posi:=posi+1;
  	UNTIL EOF(ARQ);
  
// Cargo e alfabética dentro do cargo
	IF (OPC='4') THEN
 		REPEAT
   		A:=A+1;
   		vet[A].pf:=posi;
   		READ(ARQ,REG);
   		STR(REG.car,CARS);
   		TAMCAR:=LENGTH(CARS);
   		IF(TAMCAR < 2) THEN
   			insert('0',CARS,1);
   		vet[A].cc:=CARS+REG.nome;
   		posi:=posi+1;
  	UNTIL EOF(ARQ);
	
	TOT:=A;						 
// Ordena
	writeln;
  writeln('  Ordenando...');
  ordem(vet,TOT);
  clrscr;
  writeln('  ...');
  writeln('  Fim da ordenação!');
  writeln;

// Mostra
	writeln('   PF CC ');
  FOR A:=1 TO 20 DO
			writeln(vet[A].pf:5,' ',vet[A].cc);
	writeln;
	write('  Pressione enter para continuar.');
	readln;  
	 
	FOR X:=1 TO TOT DO 
		Begin
	  	SEEK(ARQ,vet[X].pf);
	  	READ(ARQ,REG);  
	  	E:=E+1;
	  	IF(REG.car>0)THEN
	   		TOTCAR[REG.car]:=TOTCAR[REG.car]+1;
	  	IF((CONTLIN MOD 25=0) OR (CARANT <> REG.car) AND (OPC='4')) THEN
     		Begin
	    		READLN;
	    		CLRSCR;
	    		WRITELN;
      		WRITE('  ORD  NUM N O M E                             ===C P F=== NASCIMENTO CS  N1');
      		WRITELN('  N2  N3  N4  N5  N6   SO   CG  CC CV');
      		CONTLIN:=0;
	   		End;
//FIM DA IMPRESSAO DO CABECALHO
			WRITE(E:5,REG.NUM:5,' ',REG.nome,' ',REG.cpf,' ',REG.data.dia,'/',REG.data.mes,'/',REG.data.ano,REG.car:3);
			FOR A:=1 TO 6 DO
				WRITE(REG.NOTAS[A]:4);
			WRITELN(REG.SOM:5,REG.CLG:5,REG.CLC:4,REG.CCL:3);
//FIM DA LINHA DETALHE
			CONTLIN:=CONTLIN+1;
			CARANT:=REG.car; 
	 	End;
	 	
	CLOSE(ARQ);
	WRITELN;
	WRITELN;
	WRITELN('  TOTAL DE INSCRITOS POR CARGO:');
	FOR A:=1 TO 12 DO
		WRITELN(A:3,' -- ',CARGOS[A],' -->',TOTCAR[A]:4);
	writeln;
	writeln('  TOTAL DE REGISTROS LIDOS:',E:5);
	writeln; 
	write('  Pressione enter para encerrar.');
	readln;	 
End.