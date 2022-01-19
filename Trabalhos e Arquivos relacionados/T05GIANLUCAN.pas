Program T05GIANLUCAN;
// FEITO POR: GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)
//
{Faça um programa que leia uma série de CPF’s e informe se o CPF lido é válido ou não. 
CPF “00000000000” (onze zeros) encerra o programa. Use o exercício 10 da lista 2 (enviado) 
como referência.}
VAR CPF:string[11];
		VET:array[1..11] OF INTEGER;
		SOMAJ,SOMAK,J,K,RESJ,RESK,ERR,TAM,i:integer; 
Begin
	REPEAT
  	write('   Digite o CPF (11 dígitos) => ');
  	readln(CPF);
		TAM:=length(CPF);
		IF(TAM<>11) THEN  
	 		writeln('   CPF ilegal, o CPF é composto por 11 dígitos!');
	 		writeln;
 	UNTIL(TAM=11);
 	WHILE CPF <> '00000000000' DO
  	Begin
			FOR i:=1 TO 11 DO
	  		val(CPF[i],VET[i],ERR); 
  		SOMAJ:=0;
  		SOMAK:=0;
  		J:=0;
  		K:=0;
			FOR i:=1 TO 9 DO 				
	  		SOMAJ:=SOMAJ+VET[i]*(11 - i);	
	 			RESJ:=SOMAJ MOD 11;
				 	FOR i:=1 TO 10 DO 						
	  			SOMAK:=SOMAK+VET[i]*(12 - i);	
	 				RESK:=SOMAK MOD 11;               
	  	IF(RESJ>=2) AND (RESJ<=10) THEN
	  		J:=11-RESJ;
	  	IF(RESK>=2) AND (RESK<=10) THEN
	  		K:=11-RESK;
	 		IF(J<>VET[10]) THEN
	 		Begin
	  		writeln('   CPF digitado inválido!','  O décimo dígito(J) calculado foi: ',J);
	  		writeln;
	  	End
	  	ELSE	       
	 			IF(K<>VET[11]) THEN
	 				Begin
	  				writeln('   CPF digitado inválido!','  O décimo primeiro dígito(K) calculado foi: ',K);
	  				writeln;
	  			End
	 			ELSE
	 				Begin
			 			writeln('   CPF lido válido! => ',CPF);                                
			 			writeln;
			 		End;
		REPEAT
			write('   Digite o CPF (11 dígitos) => ');
			readln(CPF);
			TAM:=length(CPF);
			IF(TAM<>11) THEN  
	 			writeln('   CPF ilegal, o CPF é composto por 11 dígitos!');
	 			writeln;
	 	UNTIL(TAM=11);
		End;		
	writeln('   Pressione enter para encerrar.');
	readln;
End.