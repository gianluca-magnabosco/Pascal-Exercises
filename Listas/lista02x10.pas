Program tlista02x10;
{10.	FUP que verifica se um n�mero inteiro lido com oito d�gitos (ABCDEFGH) � v�lido ou n�o.
 A regra para verificar se o n�mero lido � v�lido ou n�o � a descrita:
o d�gito H � chamado de digito verificador do n�mero lido. Calcular a SOMA de
(8*A) + (7*B) + (6*C) + (5*D) + (4*E) + (3*F) + (2*G). Calcular o RESTO da divis�o
da soma por 11, ou seja, RESTO = SOMA mod 11. O D�gito Verificador Calculado ser�
igual 11 menos o RESTO, ou seja, DVC = 11 � RESTO, observando ainda que, 
se DVC = 11 ou 10, fazer DVC = 1. Se DVC = H, mostrar o n�mero lido e o DVC 
com a mensagem, v�lido, caso contr�rio, mostrar o n�mero lido com a mensagem, inv�lido. 
usar um string 8 para ler ao inv�s do inteiro. Ler varios numeros, '00000000' encerra}
//
//feito por professor Luiz
//
//como falado na ultima aula, todo string pode ser tratado com um array (vetor)
//
var num:string[8];  	// o numero lido ser� colocado em um string de 8 caracteres
    vet:array[1..8] of integer;
		soma,dvc,res,err,tam,i:integer; 
Begin
//validacao
 repeat
  write('     num (8 digitos)=>');
  readln(num);
	tam:=length(num); 	//determina a quantidade de caracteres no string num
	if(tam<>8)then      //tem que ser oito
	 writeLN('     ilegal, 8 digitos');
 until(tam=8);
//fim da validacao
 while num <> '00000000' do
  begin
	 for i:= 1 to 8 do
	  val(num[i],vet[i],err); //converte caractere a caractere para inteiro e poe no vetor
	 writeln(num,'  ');
	 for i:=1 to 8 do
	  write(vet[i]);
	  writeln;
//inicio do calculo (8*A) + (7*B) + (6*C) + (5*D) + (4*E) + (3*F) + (2*G)
   soma:=0;
	 for i:= 1 to 7 do 						//letras '1=>A, 2=>, 3=>C,....
	  soma:=soma+vet[i]*(9 - i );	//<<<para somar usar essa constru��o
	                              //I=1, 9-I=8; I=2, 9-I=7; I=3, 9-I=6;....
	 res:=soma mod 11;
	 dvc:=11-res;
	 if(dvc>9)then
	  dvc:=1;
	 if(dvc=vet[8])then
	  writeln('     num ok')
	 else
	  writeln('     num ilegal',dvc:6);
	writeln('     proximo');
   repeat
    write('     num (8 digitos)=>');
    readln(num);
	  tam:=length(num);
	  if(tam<>8)then
	   writeln('     ilegal, 8 digitos');
   until(tam=8);
	end;
	WRITE('     ENTER PARA ENCERRAR');
	READLN;
End.