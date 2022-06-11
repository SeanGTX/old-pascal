
uses
  crt;


var
  tab: array [1..10] of Integer;
  i, i1, c, min: Integer;


begin
  min := 9999999;
  clrscr;
  for i := 1 to 10 do 
    begin
      Write('элемент ', i, ' = ');
      readln(tab[i]);
    end;
  WriteLn('Сортировка по возрастанию - 1');
  WriteLn('Сортировка по убыванию - 2');
  WriteLn('Случайная сортировка - 3');
  Readln(c);
  if c = 1 then
    begin
      for i1 := 1 to 10 do 
        begin
          writeln(min);
          for i := 1 to 10 do 
            if min > tab[i] then
              min := tab[i] ;
        end;
    end ;
  readln;
end.
