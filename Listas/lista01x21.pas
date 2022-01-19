Program lista01x21 ;
//21) FUP que informe se um número lido é primo ou não.
// É mais fácil provar que não é
// 11 -> Vou dividindo por 2 até metade de 11(11 DIV 10), 2,3,4,5 ==> Não é divisível por nenhum
// Logo, 11 é primo
// 25 -> Idem até 12 (se precisar) 2,3,4 (Não é divisível) - 5 é, logo 25 não é primo
var NUM, MEIO, CONT:integer;
		CHAV:boolean; 
Begin
  write('   Digite um número => ');
  readln(NUM);
  MEIO:=NUM DIV 2;
  CHAV:=TRUE;             // Afirmo que número lido é primo
// Verifico o resto do NUM por CONTADOR iniciando em 2
  CONT:=1;
  REPEAT
   CONT:=CONT+1;
   IF(((NUM MOD CONT) = 0) and (NUM<>2)) THEN
    CHAV:=FALSE;         // Se é divisível pelo contador, não é primo
  UNTIL ((CONT>=MEIO) OR (NOT CHAV)); // NUNCA, NUNCA, MAS NUNCA MESMO FAZER CHAV=FALSE
  IF (CHAV) THEN
   writeln(NUM:15,' -  PRIMO!!!!!!')
  ELSE
   writeln(NUM:15,' -  NÃO É PRIMO!!!');
  write('   Pressione enter para encerrar.');
  readln;
End.