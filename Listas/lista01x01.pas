{1) Complete o programa abaixo para mostrar o que � pedido USANDO APENAS A INSTRU��O DE ATRIBUI��O (:=) 
 ENTRE VARI�VEIS. }
Program lista01x1;
Var A,B,C,D:string[9]; {declarar as vari�veis que ser�o utilizadas}
 Begin
   A:='CORITIBA';
   B:='ATHLETICO';
   C:='PARANA';
//adicionar as instru��es de atribui��o entre vari�veis (Z:=X) 
   D:=A;//mp=>A=CORITIBA, B=ATHLETICO, C=PARANA, D=CORITIBA
	 A:=B;//mp=>A=ATHLETICO, B=ATHLETICO, C=PARANA, D=CORITIBA
	 B:=C;//mp=>A=ATHLETICO, B=PARANA, C=PARANA, D=CORITIBA
	 C:=D;//mp=>A=ATHLETICO, B=PARANA, C=CORITIBA, D=CORITIBA
	 readln;
   WRITELN('  ',A);//DEVER� MOSTRAR ATHLETICO
   WRITELN('  ',B);//DEVER� MOSTRAR PARANA
   WRITELN('  ',C);//DEVER� MOSTRAR CORITIBA
   write('enter para encerrar');
   readln;
End.
