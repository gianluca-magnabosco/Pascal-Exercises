Program T04GIANLUCAN;
// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
//
{Uma determinada escola possui 10 cursos, numerados de 1 até 10. FUP que leia dados dos alunos 
desta escola (código do curso, matrícula e nota final – por exemplo de matemática. Código do curso 
igual ou menor que zero, encerra a leitura) e antes de encerrar o programa, mostre a média das notas 
de matemática por curso. Caso não exista alunos no curso, informar que o curso não possui alunos.Ex.: 
curso 1 media = 56.47
curso 2 média = 49.16
curso 3 não possui alunos 
etc...  }
VAR TOTAL,SOMA:ARRAY[1..10] OF INTEGER;
		COD,NOTA,X:integer;
		MAT:string[13];
		MEDIA:real;
Begin
	writeln('   PARA ENCERRAR O PROGRAMA E MOSTRAR A LISTA DIGITE 0 NO CÓDIGO DO CURSO a qualquer momento!!!');
	writeln;
	REPEAT
		write('   Digite o código do curso => '); 
		readln(COD);
		IF (COD>10) THEN
			writeln('   Existem apenas 10 turmas, digite um código entre 1 e 10!');
	UNTIL (COD<=10);
	WHILE (COD>0) DO
		Begin
			write('   Digite o número de matrícula => ');
			readln(MAT);
			write('   Digite a nota final => ');
			readln(NOTA);
			TOTAL[COD]:= TOTAL[COD]+1;
			SOMA[COD]:= SOMA[COD] + NOTA;
			REPEAT
				write('   Digite o código do curso => ');
				readln(COD);
				IF (COD>10) THEN
					writeln('   Existem apenas 10 turmas, digite um código entre 1 e 10!');
			UNTIL (COD<=10);
		End;
	writeln;
// Calcula e mostra as médias
	FOR X:=1 TO 10 DO
		IF (TOTAL[X] > 0) THEN
			Begin
				MEDIA:= SOMA[X]/TOTAL[X];
				writeln('   Curso: ',X:2,' - Média = ',MEDIA:8:2);
			End
		ELSE
			writeln('   Curso: ',X:2,' não possui alunos');
End.
