// 5)	FUP que leia três nomes MAX 30 CARACTERES, e mostre-os em ordem alfabética. 
Program tlista01x05;
	VAR nome1,nome2,nome3,nomeA,nomeB,nomeC:string[30];

Begin
	writeln;
	writeln('  FUP que leia três nomes MAX 30 CARACTERES, e mostre-os em ordem alfabética. ');
	writeln;
	write('  Digite o primeiro nome => ');
	readln(nome1);
	nome1:=UPCASE(nome1);	  	
	write('  Digite o segundo nome => ');
	readln(nome2);
	nome2:=UPCASE(nome2);	  
	write('  Digite o terceiro nome => ');
	readln(nome3);
	nome3:=UPCASE(nome3);	  
	IF ((nome1 > nome2) and (nome1 > nome3)) THEN
		nomeC:=nome1
	ELSE IF ((nome2 > nome1) and (nome2 > nome3)) THEN
		nomeC:=nome2
	ELSE IF ((nome3 > nome2) and (nome3 > nome1)) THEN
		nomeC:=nome3;
	
	IF (nomeC = nome1) THEN
		Begin
			IF (nome2 > nome3) THEN
				Begin
					nomeA:=nome3;
					nomeB:=nome2;
				End
	    ELSE 
	    	Begin
					nomeA:=nome2;
					nomeB:=nome3;
				End;
		End;
		
	IF (nomeC = nome2) THEN
		Begin
			IF (nome1 > nome3) THEN
				Begin
					nomeA:=nome3;
					nomeB:=nome1;
	    	End
			ELSE
				Begin 
					nomeA:=nome1;
					nomeB:=nome3;
				End;
		End;
		
	IF (nomeC = nome3) THEN
		Begin
			IF (nome1 > nome2) THEN
				Begin
					nomeA:=nome2;
					nomeB:=nome1;
				End
	    ELSE 
				Begin
					nomeA:=nome1;
					nomeB:=nome2;
				End;
		End;		

	writeln;
	writeln('  ',nomeA);
	writeln('  ',nomeB);
	writeln('  ',nomeC);
End.