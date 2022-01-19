//  7)	FUP que leia dois números e a operação aritmética desejada (+, –, *, /).
// Após a leitura (LEIA N1, N2, OP) calcule e mostre a resposta da operação realizada

Program tlista01x07;

VAR num1,num2:integer;
		op:string[1];
		res:real;
		bool:boolean;
		
Begin
	REPEAT
		writeln;
		writeln('  ---CALCULADORA ARITMÉTICA---');
		writeln;
		write('  Digite o primeiro número => ');
		readln(num1);
		write('  Digite o operando (+,-,*,/) => ');
		readln(op);
		write('  Digite o segundo número => ');
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
				writeln('  ERRO! Operando inválido!');
			End;
	UNTIL (op = '+') or (op = '-') or (op = '*') or (op = '/');
	
	writeln;
	writeln('  O resultado da operação ',num1,' ',op,' ',num2,' = ',res);  
	
End.