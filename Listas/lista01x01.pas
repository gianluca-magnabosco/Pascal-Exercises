{1) Complete o programa abaixo para mostrar o que é pedido USANDO APENAS A INSTRUÇÃO DE ATRIBUIÇÃO (:=) 
 ENTRE VARIÁVEIS. }
Program lista01x1;
Var A,B,C,D:string[9]; {declarar as variáveis que serão utilizadas}
 Begin
   A:='CORITIBA';
   B:='ATHLETICO';
   C:='PARANA';
//adicionar as instruções de atribuição entre variáveis (Z:=X) 
   D:=A;//mp=>A=CORITIBA, B=ATHLETICO, C=PARANA, D=CORITIBA
	 A:=B;//mp=>A=ATHLETICO, B=ATHLETICO, C=PARANA, D=CORITIBA
	 B:=C;//mp=>A=ATHLETICO, B=PARANA, C=PARANA, D=CORITIBA
	 C:=D;//mp=>A=ATHLETICO, B=PARANA, C=CORITIBA, D=CORITIBA
	 readln;
   WRITELN('  ',A);//DEVERÁ MOSTRAR ATHLETICO
   WRITELN('  ',B);//DEVERÁ MOSTRAR PARANA
   WRITELN('  ',C);//DEVERÁ MOSTRAR CORITIBA
   write('enter para encerrar');
   readln;
End.
