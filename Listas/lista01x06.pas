// 6)	FUP que leia o ano de nascimento de uma pessoa, calcule e mostre sua idade e,
// também, verifique e mostre se ele já tem idade para votar (16 anos ou mais) e para 
// conseguir a CNH (18 anos ou mais). 
Program tlista01x06;

	VAR dataatual,idades:string[8];
			anos:string[4];
			mess,dias:string[2];
			ano,mes,dia,semana,tamdia,tammes,err,dataatuali,nasc,idade:integer;
			
Begin
	write('  Digite sua data de nascimento (Formato AAAAMMDD) => ');
	readln(nasc);
	getdate(ano,mes,dia,semana);
	str(ano,anos);
	str(mes,mess);
	str(dia,dias);
	tamdia:=length(dias);
	tammes:=length(mess);
	IF (tamdia < 2) THEN
		insert('0',dias,1);
	IF (tammes < 2) THEN
		insert('0',mess,1);
	dataatual:=anos+mess+dias;
	val(dataatual,dataatuali,err);
	
	idade:=dataatuali-nasc;
	str(idade,idades);
	idades:=copy(idades,0,2);
	val(idades,idade,err);
	
	writeln;
	writeln('  Você tem ',idade,' anos!');
	IF (idade > 16) THEN
		writeln('  Você já pode votar!')
	ELSE
		writeln('  Você ainda não pode votar!');
	IF (idade > 18) THEN
		writeln('  Você já pode tirar sua Carteira de Habilitação (CNH)!') 
	ELSE
		writeln('  Você ainda não pode tirar sua Carteira de Habilitação (CNH)!') 
End.