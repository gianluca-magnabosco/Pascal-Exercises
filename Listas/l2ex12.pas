Program l2ex12 ;
{12.	FUP que realize a correção de uma prova de múltipla escolha com 60 questões 
de 5 alternativas cada (A,B,C,D,E) com apenas uma alternativa sendo a correta (ARQUIVO PROVA1.TXT).
O programa  deverá ler o GABARITO e após, uma série de dados que contém o número de inscrição
e as 60 respostas dos candidatos. Para cada conjunto de dados lido (inscrição e 60 respostas), 
corrigir a prova e mostrar, Inscrição, Número de respostas certas, erradas e deixadas em 
branco (sem resposta) e a Nota = certas * 2. A série de dados termina  com o fim do 
arquivo. Antes de encerrar o programa deve mostrar a média aritmética da prova.}
//feito pelo profe Luiz.
uses BIBLIONT;
var gaba:string[60];
    resp:string[64];//registro que contem numero (01-04) e as respostas (05-64)
    num:string[4];
    alu:text;//cria o nome logico do arquivo, serve tambem para fornecer as caracteristicas do mesmo
		ce,er,br,nota,som,tot,i,x,err,tam:integer;
		med:real;
		chav:boolean; 
Begin
//validar a leitura do gabarito
 repeat
  WRITELN('DIGITAR O GABARITO');
  writeln('000000000111111111122222222223333333333444444444455555555556');
	writeln('123456789012345678901234567890123456789012345678901234567890');
	readln(gaba);
	gaba:=upcase(gaba);
	i:=0;
	chav:=true;
	repeat
	 i:=i+1;
	 if(gaba[i]<'A') or (gaba[i]>'E')then
	  chav:=false;
	until(i=60) or (not chav);
	if not chav then
	 writeln('gabarito ilegal');
 until(chav);
//fim da validacao gabarito
//
// 1-associar o nome logico do arquivo ao nome fisico do arquivo
//
  assign(alu,'prova1.txt');
//
// 2-abrir o arquivo para leitura
//
  reset(alu);
 repeat
  readln(alu,resp);
  num:=copy(resp,1,4);//copia de resp a partir da prim. posicao, 4 caractres e atribui a num....
   CE:=0;        //SEMPRE ZERAR CONTADORES INDIVIDUAIS...
   ER:=0;
   BR:=0; 
//INICIO DA CORRECAO
   FOR I:=1 TO 60 DO
    IF(GABA[I]  =  RESP[I+4])THEN
     CE:=CE+1
    ELSE
     IF(RESP[I] = ' ')THEN
      BR:=BR+1
     ELSE
      ER:=ER+1;
//FIM DA CORRECAO
   NOTA:=CE*2;
	 SOM:=SOM+NOTA;
//IMPRESSAO DO CABECALHO A CADA XX ELEMENTOS MOSTRADOS (A PARTIR DO MOD)
   IF(TOT MOD 25) = 0 THEN
    BEGIN
     WRITELN('ENTER PARA CONTINUAR');
     READLN;
//     CLRSCR;
	   WRITELN('   ORDEM  NUM.    CERTAS ERR BRA  NOTA');
	  END; 
	 TOT:=TOT+1;
	 WRITELN('   ',TOT:5,'  ',NUM,CE:10,ER:4,BR:4,NOTA:6);      
 UNTIL EOF (ALU);// or ( TOT= 20));
//CALCULA A MEDIA
  IF(TOT > 0)THEN
	 BEGIN
	  MED:=SOM/TOT;
	  WRITELN('MEDIA DA PROVA =',MED:8:2);
	 END
	ELSE
	 WRITELN('NADA FOI LIDO');	    
 termine;	
End.