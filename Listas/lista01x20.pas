Program lista01x21 ;
{20) FUP que leia uma série de alturas de pessoas, encerrada por uma altura negativa.
Antes de terminar o programa mostrar: a maior e a menor altura que foi lida. }
var ALT, MAIOR, MENOR:integer;
Begin
// SEMPRE QUE AINFORMAÇÃO DE ENTRADA FOR CON DIÇÃO DE ENCERRAMENTO, DEVO USAR O WHILE
 write('   Entre com a altura => ');
 readln(ALT);
 MAIOR:=ALT;
 MENOR:=ALT;
// OU SE SEI COMO SE COMPORTA A VARIÁVEL QUE ESTOU LENDO...
// MAIOR:=0;
// MENOR:=300;
 WHILE(ALT>=0) DO
  Begin
	 IF(ALT>MAIOR) THEN
	  MAIOR:=ALT;
	 IF(ALT<MENOR) THEN
	  MENOR:=ALT;
	 WRITE('   Entre com a altura => ');
	 readln(ALT);
	End;
	writeln('   Maior => ', MAIOR:5,'   Menor => ', MENOR:5);
	write('   Pressione enter para encerrar.');
	readln;  
End.