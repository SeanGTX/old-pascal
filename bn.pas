program bn;
uses crt;
var
  a:char;
  i:integer;
begin
  clrscr();
  while true do
  begin
    writeln(a, ' - ', i);
    inc(a);
    inc(i);
    delay(100);
  end;
  readln;
end.
