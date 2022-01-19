Program lista01x03 ;
{3) FUP que, tendo como entrada o preço e o código de origem de um produto, mostre o preço junto com 
a sua procedência. Caso o código não seja nenhum dos especificados, indicar que o produto é importado. 
Use a tabela abaixo: 

Código de origem 	            Procedência 
0 ou negativo                   Importado
1 															Sul 
Maior que 1 e menor que 5 			Norte 
Maior que 4 e menor que 10 			Sudeste 
Maior que 9 e menor que 14 	    Nordeste 
Maior ou igual a 14 						Outra Região    }

Var COD:integer;
		PRE:real;
Begin
  write('    Digite o preço=> ');
  readln(PRE);
  write('    Digite o código=> ');
  readln(COD);
  write(PRE:15:2);
// SOLUÇÃO DE BEBADO
  IF(COD<1) THEN
    writeln('    Importado');
  IF(COD=1) THEN
  	writeln('    Sul');
  IF(COD>1) and (COD<5) THEN
  	writeln('    Norte');
  IF(COD>4) and (COD<10) THEN
  	writeln('    Sudeste');
  IF(COD>9) and (COD<14) THEN
  	writeln('    Nordeste');
  IF(COD>=14) THEN
  	writeln('    Outra Região');
// FIM DA SOLUÇÃO DE BEBADO
//
//ABAIXO SOLUÇÃO OK
//
  write(PRE:15:2);
  IF(COD<1) THEN
    writeln('    Importado')
  ELSE 
	 IF(COD=1) THEN
  	writeln('    Sul')
	 ELSE
	  IF(COD<5) THEN
		 writeln('    Norte')
		ELSE
		 IF(COD<10) THEN
		  writeln('    Sudeste')
		 ELSE
		  IF(COD<14) THEN
			 writeln('    Nordeste')
			ELSE
			 writeln('    Outra Região');
	write(' Pressione enter para encerrar');
	readln;
End.