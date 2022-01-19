Program T10_2GIANLUCAN_LUCASM;

// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621) 
// 						LUCAS MACHADO 											(GRR: 20211590) 
//
// FUP que possibilite mostrar os dados do arquivo CAND.IND conforme abaixo:
// 1 – Todos os candidatos CLASSIFICADOS nos cargos em ordem alfabética ou, 
// 2 – Todos os candidatos em ordem de classificação por cargo ou, 
// 3 – Todos os candidatos em ordem de classificação geral. 
// Dar as três opções para o usuário escolher uma.
//

USES BIBLIONT;


VAR REG:REGIS;
		ARQ:FILE OF REGIS;
		ARQ1:TEXT;
		VET:VETOR;
		CARGOS:ARRAY[1..12] OF STRING[32];
		VAGAS:ARRAY[1..12] OF INTEGER;
		A,B,CARANT,ERR,T,TOT:INTEGER;
		CCLS,CARS,CLCS,CLGS:STRING[4];
		OPC:STRING[1];

Begin
	ASSIGN(ARQ1,'VAGAS.TXT');
	RESET(ARQ1);
	REPEAT
		Begin
			WRITELN;
			WRITELN('  OPCOES DE ORDENACAO DISPONIVEIS: ');
			WRITELN('  1 - CANDIDATOS APROVADOS EM CADA CARGO EM ORDEM ALFABETICA;');
			WRITELN('  2 - CLASSIFICACAO DENTRO DO CARGO, POR CARGO;');
			WRITELN('  3 - CLASSIFICACAO GERAL;');
			WRITELN;
			WRITE('  INSIRA A OPCAO DESEJADA => ');
			READLN(OPC);
			WRITELN;
			IF (OPC <= '0') OR (OPC > '3') THEN
				WRITELN('  OPCAO INVALIDA!');
		End;
	UNTIL (OPC > '0') AND (OPC <= '3');
	T:= 0;
	
	FOR A:= 1 TO 12 DO
		BEGIN
			READLN(ARQ1,CARGOS[A]);
			VAL(COPY(CARGOS[A],30,2),VAGAS[A],ERR);
			WRITELN(CARGOS[A]:50);
		END;
	ASSIGN(ARQ,'CAND.IND');
	RESET(ARQ);
	
	WHILE NOT(EOF(ARQ)) DO
		Begin
			READ(ARQ,REG);
			T:=T+1;
			IF(OPC='1') THEN
				Begin
					IF(REG.CCl>0) THEN
						Begin
							B:=B+1;
							VET[B].PF:=T-1;
							STR(REG.CCl:4,CCLS);
							VET[B].CC:=CCLS+REG.NOME;
						End;
	  		End
			ELSE
			IF(OPC='2') THEN
				Begin
					VET[T].PF:=T-1; 
					STR(REG.CAR:4,CARS);
					INSERT(CARS,VET[T].CC,1);
					STR(REG.CLC:4,CLCS);
					INSERT(CLCS,VET[T].CC,5);
				End
			ELSE
				Begin
					VET[T].PF:=T-1;
					STR(REG.CLG:4,CLGS);
					VET[T].CC:=CLGS;
				End;
		End; 
		
	IF(OPC = '1') THEN
		T:=B;
	ordem(VET,T);
	TOT:=T;
	T:=0;
	WRITELN;
	WRITELN('            ',TOT:10,' registros, ','pressione enter para continuar.');
	
	FOR A:=1 TO TOT DO
		Begin
			SEEK(ARQ,VET[A].PF);
			READ(ARQ,REG);
			IF(CARANT <> REG.CAR) AND (OPC<'3') OR ((T MOD 25)=0) THEN
				Begin
					READLN;
					CLRSCR;
					WRITELN;
					WRITELN;
					IF(OPC<'3') THEN
						Begin                              
							WRITELN('    CARGO ',REG.CAR:2,' - ',COPY(CARGOS[REG.CAR],3,25));
							WRITELN;
							IF(OPC='1') THEN
								WRITELN('    ORD NUM NOME                                NASCIMENTO CAR');
						End
					ELSE
						Begin
							WRITELN('   ORDEM DE CLASSIFICACAO GERAL');
							WRITELN;
						End;
					IF(OPC>'1') THEN
						WRITELN('   ORD  NUM NOME			    	SOM  N4  N5  N3  N2  N6  N1 NASCIMENTO CAR  OBSERVACAO');
					IF(CARANT <> REG.CAR) AND (OPC<'3') THEN
						T:=0;
						CARANT:=REG.CAR;
				End;
				
			T:=T+1;
			IF(OPC='1') THEN
				WRITELN(T:6,REG.NUM:5,' ',REG.NOME,' ',REG.DATA.DIA,'/',REG.DATA.MES,'/',REG.DATA.ANO,REG.CAR:3)
			ELSE
				Begin
					WRITE(T:6,REG.NUM:5,' ',REG.NOME,REG.SOM:4,REG.NOTAS[4]:4,REG.NOTAS[5]:4,
					REG.NOTAS[3]:4,REG.NOTAS[2]:4,REG.NOTAS[6]:4,REG.NOTAS[1]:4,' ',
					REG.DATA.DIA,'/',REG.DATA.MES,'/',REG.DATA.ANO,REG.CAR:3,' ');
					IF(REG.CCL>0) THEN
						WRITELN(' CLAS CAR = ', REG.CCl)
					ELSE
						WRITELN;
				END;
		END;
		
	CLOSE(ARQ);
	CLOSE(ARQ1);
	
	WRITELN;
	WRITE('   Pressione enter para encerrar.');
	READLN; 
End.