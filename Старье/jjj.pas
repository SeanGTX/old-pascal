program jjj;
uses crt;
var
  a:string;
  i:integer;
begin
  a:='Лвлалмл';
  for i:=1 to Length(a) do
  writeln(a[i], ' - ', (a[i] >= 65) and (a[i] <= 90));
  readln;
end.
