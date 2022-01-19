Program T04GIANLUCAN;
// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
//
{Uma determinada escola possui 10 cursos, numerados de 1 at� 10. FUP que leia dados dos alunos 
desta escola (c�digo do curso, matr�cula e nota final � por exemplo de matem�tica. C�digo do curso 
igual ou menor que zero, encerra a leitura) e antes de encerrar o programa, mostre a m�dia das notas 
de matem�tica por curso. Caso n�o exista alunos no curso, informar que o curso n�o possui alunos.Ex.: 
curso 1 media = 56.47
curso 2 m�dia = 49.16
curso 3 n�o possui alunos 
etc...  }
VAR TOTAL,SOMA:ARRAY[1..10] OF INTEGER;
		COD,NOTA,X:integer;
		MAT:string[13];
		MEDIA:real;
Begin
	writeln('   PARA ENCERRAR O PROGRAMA E MOSTRAR A LISTA DIGITE 0 NO C�DIGO DO CURSO a qualquer momento!!!');
	writeln;
	REPEAT
		write('   Digite o c�digo do curso => '); 
		readln(COD);
		IF (COD>10) THEN
			writeln('   Existem apenas 10 turmas, digite um c�digo entre 1 e 10!');
	UNTIL (COD<=10);
	WHILE (COD>0) DO
		Begin
			write('   Digite o n�mero de matr�cula => ');
			readln(MAT);
			write('   Digite a nota final => ');
			readln(NOTA);
			TOTAL[COD]:= TOTAL[COD]+1;
			SOMA[COD]:= SOMA[COD] + NOTA;
			REPEAT
				write('   Digite o c�digo do curso => ');
				readln(COD);
				IF (COD>10) THEN
					writeln('   Existem apenas 10 turmas, digite um c�digo entre 1 e 10!');
			UNTIL (COD<=10);
		End;
	writeln;
// Calcula e mostra as m�dias
	FOR X:=1 TO 10 DO
		IF (TOTAL[X] > 0) THEN
			Begin
				MEDIA:= SOMA[X]/TOTAL[X];
				writeln('   Curso: ',X:2,' - M�dia = ',MEDIA:8:2);
			End
		ELSE
			writeln('   Curso: ',X:2,' n�o possui alunos');
End.
