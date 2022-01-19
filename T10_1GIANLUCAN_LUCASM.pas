Program T10_1GIANLUCAN_LUCASM;

// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621) 
// 						LUCAS MACHADO 											(GRR: 20211590) 
//
// FUP que atualize os campos CLG (classificação geral), CLC (classificação no cargo) e 
// CCL (cargo de classificação) no arquivo CAND.IND, conforme critérios da folha anterior.
//

USES BIBLIONT;

CONST CARGOS:ARRAY [1..12] OF STRING[22]=
('ENGANADOR DE CHEFE    ',
 'ENROLADOR DE TRABALHO ',
 'PENSADOR              ',
 'ANALISTA DE SISTEMAS  ',
 'DEGUSTADOR DE CERVEJA ',
 'TECNICO EM REDES      ',
 'CONTADOR DE ESTORIAS  ',
 'PEDREIRO DE PRIMEIRA  ',
 'ACOUGUEIRO LIMPINHO   ',
 'SEGURANCA DE BANHEIRO ',
 'GESTOR DE BORBOLETAS  ',
 'AGENTE LEVA E TRAZ    ');


VAR REG:REGIS;
		VET:VETOR;
		ARQ:FILE OF REGIS;
		ARQ1:TEXT;
		NOTAS:ARRAY[1..6] OF STRING[3];
		SOMA:STRING[3];
		DDAA:STRING[8];
		A,C,DATAF,ERR,T,TOT:INTEGER;
		DATAFS:STRING[6];
		TCAR:ARRAY[1..12] OF INTEGER;
		CARGO:ARRAY[1..12] OF STRING[32];
		VAGAS,CLC:ARRAY[1..12] OF INTEGER;

Begin
	ASSIGN(ARQ1,'VAGAS.TXT');
	RESET(ARQ1);
	FOR A:=1 TO 12 DO 
		Begin
			READLN(ARQ1,CARGO[A]);
			VAL(COPY(CARGO[A],30,2),VAGAS[A],ERR);
		End;
	ASSIGN(ARQ,'CAND.IND');
	RESET(ARQ);
	WHILE NOT(EOF(ARQ)) DO
		Begin
			READ(ARQ,REG);
			T:=T+1;
			VET[T].PF:=T-1;
			IF(REG.SOM<>1) THEN
				Begin
					INSERT(REG.DATA.DIA,DDAA,1);
					INSERT(REG.DATA.MES,DDAA,1);
					INSERT(REG.DATA.ANO,DDAA,1);
					VAL(DDAA,DATAF,ERR);
					DATAF:=20211212-DATAF;
					STR(DATAF,DATAFS);
					FOR A:=1 TO 6 DO 
						STR(REG.NOTAS[A],NOTAS[A]);
					STR(REG.SOM,SOMA);
					VET[T].CC:=SOMA+NOTAS[4]+NOTAS[5]+NOTAS[3]+NOTAS[2]+NOTAS[6]+NOTAS[1]+DATAFS;
				End
			ELSE 
				VET[T].CC:='  0  0  0  0  0  0  0       0';
		End;
	TOT:=T;
	writeln('  Pressione enter para atualizar os campos de classificação no arquivo CAND.IND.');
	readln;
	writeln('  Atualizando, aguarde...');
	ordem(VET,TOT);
	T:=0;
	FOR A:=TOT DOWNTO 1 DO
		Begin
			T:=T+1;
			SEEK(ARQ,VET[A].PF);
			READ(ARQ,REG);
			C:=REG.CAR;
			CLC[C]:=CLC[C]+1;
			REG.CLG:=T;
			REG.CLC:=CLC[C];
			IF(CLC[C] <= VAGAS[C]) THEN
				Begin
					REG.CCL:=C;
					TCAR[REG.CAR]:=TCAR[REG.CAR]+1;
				End;
			SEEK(ARQ,VET[A].PF);
			WRITE(ARQ,REG);
		End;
		CLOSE(ARQ);
		CLOSE(ARQ1);
		clrscr;
		writeln;
		writeln('  ...Atualizado com sucesso! Execute o programa LISTAINDDIR.pas para listar o conteúdo do arquivo CAND.IND.');
		writeln; 
		WRITELN('  Lidos',T:5,' registros.');
		writeln;
		FOR A:=1 TO 12 DO
			WRITELN('  Cargo ',A:2,' - ',CARGOS[A],' => ',TCAR[A]:2,' vagas disponiveis');
		writeln;
		write('  Pressione enter para encerrar.');
		readln; 
End.