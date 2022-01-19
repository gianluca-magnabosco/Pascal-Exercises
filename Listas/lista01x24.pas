Program lista01x24 ;
{24) FUP que leia dia, mês e ano de nascimento, após leia dia, mês e ano do dia de hoje.
Após calcule e mostre a idade em anos, em meses e em dias. (EX.:15 anos, 3 meses, 7 dias).}
// 2021 10 14
// 2000 06 14
var AA, MA, DA, SA, AN, MN, DN, AC1, MC1, DC1, AVI,MVI,DVI,DIAMAX:integer;
Begin
 GETDATE(AA,MA,DA,SA);
 write('   Dia => ');
 readln(DN);
 write('   Mês => ');
 readln(MN);
 write('   Ano => ');
 readln(AN);
 AC1:=AA-AN;
 MC1:=MA-MN;
 DC1:=DA-DN;
 AVI:=AC1;
 MVI:=MC1;
 DVI:=DC1;
 IF (DC1<0) THEN
  Begin
	 MC1:=MC1-1;
	 DVI:=DC1+31;
	End;
 IF (MC1<0) THEN
  Begin
   AVI:=AC1-1;
	 MVI:=MC1+12;
	End;
 writeln(AVI:10,'  Ano(s)', MVI:6,'  Mês(es)',' e', DVI:10,'  Dia(s)');
 write('   Pressione enter para encerrar.');
 readln;
End.