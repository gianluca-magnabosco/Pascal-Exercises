Program T09GIANLUCAN_LUCASM;

// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621) 
// 						LUCAS MACHADO 											(GRR: 20211590) 
//
// FUP que atualize os campos das 6 notas e o campo soma das notas dos registros do arquivo CAND.IND. Para atualizar as notas, 
// utilize o arquivo NOTAS.TXT, criado pelo “trabalho 07” (use o arquivo “PROVATRA.TXT”). Antes de encerrar, mostrar a média das 
// 6 disciplinas, CONFORME ABAIXO:
//
// DISCIPLINA                         MEDIA
// L.E.M.                             43.27
// INFORMATICA                        58.12
// ......                             ...... 
//

USES BIBLIONT;

CONST DISCIPLINAS:ARRAY [1..6] OF STRING[40]=
('LINGUA ESTRANGEIRA MODERNA (L.E.M)',
 'MATEMATICA                        ',
 'LOGICA                            ',
 'CONHECIMENTO ESPECIFICO DO CARGO  ',
 'INFORMATICA                       ',
 'ATUALIDADES                       ');

VAR ARQ:FILE OF REGIS;
    REG:REGIS;
    NOTA:TEXT;
    A,TAMNUM,TOT,POSI,INDICE,TN,NOTAINT,ERR,i,SOMA,NTOTALCOMPARECIDOS,B,FALTAS:INTEGER;
    NUMS,NUMA,NOTA1:STRING[4];
    NOTAST:STRING[28];
    VET:vetor; 
    MEDIANOTAS:REAL;
    SOMATOTAL:ARRAY[1..6] OF INTEGER;
    
Begin
// ASSOCIA O NOME LOGICO DO ARQUIVO AO NOME FISICO DO ARQUIVO
	ASSIGN(ARQ,'CAND.IND');
	ASSIGN(NOTA,'NOTAS.TXT');
// ABRE O ARQUIVO PARA LEITURA 
	RESET(ARQ);
	RESET(NOTA);
	write('  Pressione enter para iniciar o programa.');
// ORDENA POR INSCRIÇÃO	
		REPEAT
		  READ(ARQ,REG);
   		A:=POSI+1;
   		VET[A].pf:=POSI;
   		STR(REG.NUM,NUMS);
   		TAMNUM:=LENGTH(NUMS);
   		IF (TAMNUM < 4) THEN
   			FOR TN:=1 TO 4 - TAMNUM DO
   				insert('0',NUMS,TN);       
   		VET[A].cc:=NUMS;
   		POSI:=POSI+1;
  	UNTIL EOF(ARQ);
  TOT:=A;
  ordem(VET,TOT);
	 
// ----------------------------------------INICIO DO TRABALHO 9-------------------------------------------------------
	writeln;
	write('  Pressione enter para atualizar os campos das notas no arquivo CAND.IND.');
	readln;
	REPEAT		
		READLN(NOTA,NOTAST);
		NUMA:=COPY(NOTAST,1,4);
		PEBIN1(VET,NUMA,TOT,INDICE);
		SEEK(ARQ,VET[INDICE].PF);
		READ(ARQ,REG);
		i:=5;
		FOR A:=1 TO 6 DO
		BEGIN
			NOTA1:=COPY(NOTAST,i,i+3);
			VAL(NOTA1,NOTAINT,ERR);
			SOMA:=SOMA + NOTAINT;
			REG.NOTAS[A]:=NOTAINT;
			SOMATOTAL[A]:=SOMATOTAL[A] + REG.NOTAS[A];                                                       
		  i:=i+4;
		END;
		REG.SOM:=SOMA;
		SEEK(ARQ,VET[INDICE].PF);
		WRITE(ARQ,REG);		
		IF(REG.SOM <> 1) THEN
				NTOTALCOMPARECIDOS:=NTOTALCOMPARECIDOS + 1; 		
		SOMA:=0;		        
	UNTIL EOF(NOTA);
		
	clrscr;
          	
	CLOSE(ARQ);
	CLOSE(NOTA);

	writeln;
	writeln('  Processo concluído! Utilize o arquivo LISTAINDDIR.pas para listar os conteúdos do arquivo CAND.IND.');
	writeln;
	writeln;
	
	writeln('  MEDIA GERAL DAS DISCIPLINAS:');	
	FOR A:=1 TO 6 DO
		Begin 
			MEDIANOTAS:=SOMATOTAL[A] / NTOTALCOMPARECIDOS;
			writeln('  ',DISCIPLINAS[A],' : ',MEDIANOTAS:3:3); 
		End;
	writeln;
	writeln('  (MEDIA DE TODOS OS ',NTOTALCOMPARECIDOS,'/',TOT,' ALUNOS QUE COMPARECERAM !!!!)');
	
	FALTAS:=TOT - NTOTALCOMPARECIDOS;
	writeln('  ',FALTAS,' ALUNOS FALTARAM A PROVA.');
	
	writeln;
	WRITE('  Pressione enter para encerrar.');
	READLN;	 
End.