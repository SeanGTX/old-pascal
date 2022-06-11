function tool():Integer;
begin
  Write(55);
  tool := 55;
end;

function tool(a:integer):integer;
begin
  writeln(a);
  tool := a;
end;

var
  s:integer;

begin
  tool();
  readln(s);
  tool(s);
end.
