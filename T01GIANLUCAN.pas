Program T01GIANLUCAN ;
// GIANLUCA NOTARI MAGNABOSCO DA SILVA (GRR: 20211621)

VAR DD,MM,AA,DMAX,CHA:INTEGER; 

Begin
	write('    Digite o Dia(DD) => ');
	readln(DD);
	write('    Digite o Mês(MM) => ');
	readln(MM); 
	write('    Digite o Ano(AAAA) => ');
	readln(AA);
	
  CHA:=0; 
	IF (AA<1940) THEN
	 CHA:=1
	ELSE 
	IF (MM<1) or (MM>12) THEN
   CHA:=1
  ELSE
    Begin
     DMAX:=31;
     IF (MM=4) or (MM=6) or (MM=9) or (MM=11) THEN
      DMAX:=30;
     IF (MM=2) THEN
		  Begin
       DMAX:=28;
        IF ((AA MOD 4)=0) THEN
         DMAX:=29
      End; 
	    IF (DD<1) or (DD>DMAX) THEN
       CHA:=1
    End;
   IF (CHA=1) THEN
	  writeln('    Data lida ilegal! ','- ',DD,'/',MM,'/',AA,';')
	 ELSE
	  writeln('    Data OK. ','- ',DD,'/',MM,'/',AA,';');
	write('    Pressione enter para encerrar. ');
	readln;
End. 