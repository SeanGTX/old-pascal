uses
  crt;

var
  a, b, c, d, f, e: Integer;

begin
  clrscr;
  WriteLn('3-камень, 2-ножницы, 1-бумага');
  WriteLn('введите количество игроков(от 1 до 3)');
  readln(c);
  clrscr;
  //один игрок
  if c = 1 then
    begin
      writeln('ваш выбор');
      readln(d);
      f := random(3);
      clrscr;
      if (f > d) or ((f = 1) and (d = 3)) then
        WriteLn('ты проиграл')  
      else 
        writeln('ты выиграл');
        if f=d then writeln('ничья');
    end ;
  //два игрока
  if c = 2 then
    begin
      writeln('игра началась');
      writeln('игрок один');
      writeln('ваш выбор:');
      read(a);
      clrscr;
      WriteLn('игрок два');
      writeln('ваш выбор:');
      read(b);
    end ;
  if a = b then
    begin
      clrscr;
      WriteLn('ничья');
    end ;
  if a > b then
    begin
      clrscr;
      writeln('игрок один победил');
    end ;
  if a < b then
    begin
      clrscr;
      WriteLn('игрок два победил');
    end ;
  if (a = 3) and (b = 1) then
    begin
      clrscr;
      writeln('игрок два победил');
    end ;
  if (a = 1) and (b = 3) then
    begin
      clrscr;
      WriteLn('игрок один победил');
    end ;
  //три игрока
  if c = 3 then
    begin
      clrscr;
      writeln('игра началась');
      writeln('игрок один');
      writeln('ваш выбор:');
      read(a);
      clrscr;
      WriteLn('игрок два');
      writeln('ваш выбор:');
      read(b);
      clrscr;
      writeln('игрок три');
      writeln('ваш выбор:');
      readln(e);
    end ;
  if (a > b) or ((a = 1) and (b = 3)) and ((a > e) or ((a = 1) and (e = 3))) then
    writeln('игрок 1 выиграл') ;
  if (a = b) and (b = e) and (a = e) then
    writeln('ничья') ;
  if (b > a) or ((b = 1) and (a = 3)) and ((b > e) or ((b = 1) and (e = 3))) then
    writeln('игрок 2 выиграл') ;
  if (e > b) or ((e = 1) and (b = 3)) and ((e > a) or ((e = 1) and (a = 3))) then
    writeln('игрок 3 выиграл') ;
  readln;
end.
