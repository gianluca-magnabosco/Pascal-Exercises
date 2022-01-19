Program Programa1;
{F.U.P. que leia 2 notas. Calcule a media das notas lidas. Se media maior ou igual a 70
mostre que o aluno esta aprovado, caso contrario, mostre que o aluno vai para final}
var a,b,medi:integer;
    medr: real;
Begin
 write('  Digite a nota da prova 1 => ');
 readln(a);
 write('  Digite a nota da prova 2 => ');
 readln(b);
 medr:=(a+b)/2;
 medi:=(a+b) div 2;
 IF (medr>=70) THEN
  Begin
   writeln('  ALUNO APROVADO');
	 writeln('  PARABENS!!!');
	End 
 ELSE
  Begin
   writeln('  ALUNO EM FINAL');
   writeln('  PUATZ IRMAO FERROU ESTUDA MAIS AI!!!');
  End;
 writeln('  Media real => ', medr:6:2);
 writeln('  Media inteira => ', medi:3);
 write('  Digite enter para encerrar');
 readln;
End.