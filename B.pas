program B;
uses crt;
  var
    b:array[1..5] of integer;
    i,sum:integer;
    sred:real;
begin
  for i := 1 to 5 do
    begin
      write('b',i,' = ');
      readln(b[i]);
      sum := sum + b[i];
    end;
    sred := sum / 5;
    writeln('Сумма = ',sum);
    WriteLn('среднее арифметическое = ',sred);
  readln;
end.
'
