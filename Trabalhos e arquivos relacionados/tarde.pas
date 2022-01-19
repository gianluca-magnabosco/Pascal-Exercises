//
// cria��o de biblioteca de m�dulos a serem usadas pelos programas/m�dulos
//
unit tarde; // obrigatoriedade do nome da unit ser igual ao nome do arquivo
// defini��o de novos tipos de vari�veis (globais) e descrever quais m�dulos fazem parte da UNIT
interface
procedure baskara; // sem par�metros

procedure baskara1(A,B,C:real); // com 3 par�metros passados por valor

function POT1(A,B:integer):integer;

procedure POT2(A,B:integer; VAR SAI:integer);

procedure TERMINE;
// -----------------------------------------------------------------------------------
implementation
procedure baskara;
	VAR A,B,C,DELTA,X1,X2,RAIZ:REAL; // vari�veis locais
	Begin
		write('   Digite o coeficiente A=> ');
		readln(A);
		WHILE A<>0 DO
			Begin
				write('   Digite o coeficiente B=> ');
				readln(B);
				write('   Digite o coeficiente C=> ');
				readln(C);
				DELTA:=B*B-4*A*C;
				IF DELTA<0 THEN
					writeln('   Ra�zes Imagin�rias')
				ELSE IF
					DELTA=0 THEN
						Begin
							writeln('   Ra�z �nica');
							x1:=-B/(2*A);
							writeln('   X1 = X2 =',X1:8:2);
						End
			  ELSE
			  	Begin
			  		writeln('   Ra�zes Distintas');
			  		RAIZ:=SQRT(DELTA); // SQRT = SQUARE ROOT - RA�Z QUADRADA
			  		X1:=(-B+RAIZ)/(2*A);
			  		X2:=(-B-RAIZ)/(2*A);
			  		writeln('   X1 =',X1:8:2,'   X2 =',X2:8:2);
			  	End;
			  write('   Digite o coeficiente A => ');
			  readln(A);
		 End;
	End; 
// ------------------------------------------------------------------------------------
procedure baskara1(A,B,C:real); // par�metros formais
  VAR DELTA,X1,X2,RAIZ:REAL; // vari�veis locais
		Begin
				DELTA:=B*B-4*A*C;
				IF DELTA<0 THEN
					writeln('   Ra�zes Imagin�rias')
				ELSE IF
					DELTA=0 THEN
						Begin
							writeln('   Ra�z �nica');
							x1:=-B/(2*A);
							writeln('   X1 = X2 =',X1:8:2);
						End
			  ELSE
			  	Begin
			  		writeln('   Ra�zes Distintas');
			  		RAIZ:=SQRT(DELTA); // SQRT = SQUARE ROOT - RA�Z QUADRADA
			  		X1:=(-B+RAIZ)/(2*A);
			  		X2:=(-B-RAIZ)/(2*A);
			  		writeln('   X1 =',X1:8:2,'   X2 =',X2:8:2);
			  	End;

		 End;

// ------------------------------------------------------------------------------------
function POT1(A,B:integer):integer; // Calcula A elevado a B
	VAR X,i:integer;
	Begin
		X:=1;
		FOR i:=1 TO B DO
			X:=X*A;
		POT1:=X;
	End;
// ------------------------------------------------------------------------------------
procedure POT2(A,B:integer; VAR SAI:integer); // Calcula A elevado a B
// A e B passados por valor e SAI passado for refer�ncia (3 par�metros formais)
	VAR X,i:integer;
	Begin
		X:=1;
		FOR i:=1 TO B DO
			X:=X*A;
		SAI:=X;
	End;
// ----------------------------------------------------------------------------------------
procedure TERMINE;
	Begin
		writeln('   Pressione enter para encerrar.');
		readln;
	End;





End.