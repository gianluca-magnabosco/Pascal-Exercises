Program tlista01x11;
// 11)	FUP que mostre a tabuada dos números entre 1 e 10. 

VAR	A,B,res:integer;

Begin
	writeln;
	FOR A:=1 TO 10 DO
		FOR B:=1 TO 10 DO
			Begin
				res:=A*B;
				writeln('  ',A,' x ',B:2,' = ',res); 
				IF (B = 10) THEN
					writeln;
			End;
End.