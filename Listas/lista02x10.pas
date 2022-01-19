Program tlista02x10;
{10.	FUP que verifica se um número inteiro lido com oito dígitos (ABCDEFGH) é válido ou não.
 A regra para verificar se o número lido é válido ou não é a descrita:
o dígito H é chamado de digito verificador do número lido. Calcular a SOMA de
(8*A) + (7*B) + (6*C) + (5*D) + (4*E) + (3*F) + (2*G). Calcular o RESTO da divisão
da soma por 11, ou seja, RESTO = SOMA mod 11. O Dígito Verificador Calculado será
igual 11 menos o RESTO, ou seja, DVC = 11 – RESTO, observando ainda que, 
se DVC = 11 ou 10, fazer DVC = 1. Se DVC = H, mostrar o número lido e o DVC 
com a mensagem, válido, caso contrário, mostrar o número lido com a mensagem, inválido. 
usar um string 8 para ler ao invés do inteiro. Ler varios numeros, '00000000' encerra}
//
//feito por professor Luiz
//
//como falado na ultima aula, todo string pode ser tratado com um array (vetor)
//
var num:string[8];  	// o numero lido será colocado em um string de 8 caracteres
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
	  soma:=soma+vet[i]*(9 - i );	//<<<para somar usar essa construção
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