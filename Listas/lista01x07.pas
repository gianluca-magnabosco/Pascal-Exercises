//  7)	FUP que leia dois n�meros e a opera��o aritm�tica desejada (+, �, *, /).
// Ap�s a leitura (LEIA N1, N2, OP) calcule e mostre a resposta da opera��o realizada

Program tlista01x07;

VAR num1,num2:integer;
		op:string[1];
		res:real;
		bool:boolean;
		
Begin
	REPEAT
		writeln;
		writeln('  ---CALCULADORA ARITM�TICA---');
		writeln;
		write('  Digite o primeiro n�mero => ');
		readln(num1);
		write('  Digite o operando (+,-,*,/) => ');
		readln(op);
		write('  Digite o segundo n�mero => ');
		readln(num2);
	
		IF (op = '+') THEN
			Begin 
				res:=num1+num2;
				bool:=TRUE;
			End
		ELSE IF (op = '-') THEN
			Begin
				res:=num1-num2;
				bool:=TRUE;
			End
		ELSE IF (op = '*') THEN
			Begin
				res:=num1*num2;
				bool:=TRUE;
			End
		ELSE IF (op = '/') THEN
			Begin
				res:=num1/num2;
			  bool:=TRUE;
			End;
		IF (bool = FALSE) THEN
			Begin
				writeln;
				writeln('  ERRO! Operando inv�lido!');
			End;
	UNTIL (op = '+') or (op = '-') or (op = '*') or (op = '/');
	
	writeln;
	writeln('  O resultado da opera��o ',num1,' ',op,' ',num2,' = ',res);  
	
End.