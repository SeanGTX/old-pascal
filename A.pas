program A;
uses crt;
  var
    P:Integer;
begin
  write('Ваша оценка = ');
  readln(P);
  if P = 5 then writeln('Молодец!');
  if P = 4 then writeln('Хорошо!');
  if P <= 3 then writeln('Лентяй!');
  readln;
end.
