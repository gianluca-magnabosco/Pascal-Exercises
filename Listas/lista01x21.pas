Program lista01x21 ;
//21) FUP que informe se um n�mero lido � primo ou n�o.
// � mais f�cil provar que n�o �
// 11 -> Vou dividindo por 2 at� metade de 11(11 DIV 10), 2,3,4,5 ==> N�o � divis�vel por nenhum
// Logo, 11 � primo
// 25 -> Idem at� 12 (se precisar) 2,3,4 (N�o � divis�vel) - 5 �, logo 25 n�o � primo
var NUM, MEIO, CONT:integer;
		CHAV:boolean; 
Begin
  write('   Digite um n�mero => ');
  readln(NUM);
  MEIO:=NUM DIV 2;
  CHAV:=TRUE;             // Afirmo que n�mero lido � primo
// Verifico o resto do NUM por CONTADOR iniciando em 2
  CONT:=1;
  REPEAT
   CONT:=CONT+1;
   IF(((NUM MOD CONT) = 0) and (NUM<>2)) THEN
    CHAV:=FALSE;         // Se � divis�vel pelo contador, n�o � primo
  UNTIL ((CONT>=MEIO) OR (NOT CHAV)); // NUNCA, NUNCA, MAS NUNCA MESMO FAZER CHAV=FALSE
  IF (CHAV) THEN
   writeln(NUM:15,' -  PRIMO!!!!!!')
  ELSE
   writeln(NUM:15,' -  N�O � PRIMO!!!');
  write('   Pressione enter para encerrar.');
  readln;
End.