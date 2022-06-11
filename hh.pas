program hh;
uses crt;
var i:Integer;
procedure gg();

begin
  Writeln(i);
  inc(i);
  //delay(1);
  gg();
end;
begin
i:=1;
  gg();
  readln;
end.
