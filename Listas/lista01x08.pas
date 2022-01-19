Program tlista01x08;
// 8)	FUP que utilizando o IMC (Índice de Massa Corporal) = peso/altura², leia o peso
// e a altura de um adulto, mostre a sua condição segundo a tabela abaixo: 
// IMC em adultos 				Condição 
// Abaixo de 18,5 				Abaixo do peso 
// Acima de 18,5 e 25 		Peso normal 
// Acima de 25 e 30 			Acima do peso 
// Acima de 30 						Obeso 

VAR	peso:integer;
		altura,imc:real;
		
Begin
	writeln;
	write('  Digite sua altura em metros (Ex: 1.75) => ');
	readln(altura);
	write('  Digite seu peso em kilogramas => ');
	readln(peso);
	
	altura:=altura*altura;
	imc:=peso/altura;
	
	writeln;
	writeln('  Seu índice de massa corporal (IMC) é: ',imc);
	
	IF (imc < 18.5) THEN
		writeln('  Você está abaixo do peso!')
	ELSE IF (imc >= 18.5) and (imc < 25) THEN
		writeln('  Você está no peso normal!')
	ELSE IF (imc >= 25) and (imc < 30) THEN
		writeln('  Você está acima do peso!')
	ELSE IF (imc > 30) THEN
		writeln('  Você está obeso!');			  
End.